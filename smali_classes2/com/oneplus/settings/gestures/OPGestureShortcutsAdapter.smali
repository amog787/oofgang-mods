.class public Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;
.super Landroid/widget/BaseAdapter;
.source "OPGestureShortcutsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGestureAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/gestures/OPGestureAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureSummary:Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/gestures/OPGestureAppModel;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;->mGestureAppList:Ljava/util/List;

    .line 32
    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;->mContext:Landroid/content/Context;

    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 34
    iput-object p2, p0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;->mGestureAppList:Ljava/util/List;

    .line 35
    iput-object p3, p0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;->mGestureSummary:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;->mGestureAppList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Lcom/oneplus/settings/gestures/OPGestureAppModel;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;->mGestureAppList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/settings/gestures/OPGestureAppModel;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 21
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;->getItem(I)Lcom/oneplus/settings/gestures/OPGestureAppModel;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 75
    iget-object p3, p0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;->mGestureAppList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oneplus/settings/gestures/OPGestureAppModel;

    if-nez p2, :cond_0

    .line 77
    iget-object p2, p0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/android/settings/R$layout;->op_gesture_app_item:I

    const/4 v1, 0x0

    .line 78
    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 79
    new-instance v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;-><init>(Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;)V

    .line 80
    sget v1, Lcom/android/settings/R$id;->parent:I

    .line 81
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 82
    sget v1, Lcom/android/settings/R$id;->tv:I

    .line 83
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    .line 84
    sget v1, Lcom/android/settings/R$id;->tv_margin:I

    .line 85
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;->tvmargin:Landroid/view/View;

    .line 86
    sget v1, Lcom/android/settings/R$id;->icon:I

    .line 87
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;->appIconIv:Landroid/widget/ImageView;

    .line 88
    sget v1, Lcom/android/settings/R$id;->name:I

    .line 89
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;->appNameTv:Landroid/widget/TextView;

    .line 93
    sget v1, Lcom/android/settings/R$id;->header_margin:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;->headermargin:Landroid/view/View;

    .line 94
    sget v1, Lcom/android/settings/R$id;->radio_button:I

    .line 95
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;->radioButton:Landroid/widget/RadioButton;

    .line 96
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;

    .line 100
    :goto_0
    iget-object v1, v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    iget-object v1, v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;->tvmargin:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x1

    const/16 v3, 0x8

    if-ne p1, v1, :cond_1

    .line 103
    iget-object v4, v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    sget v5, Lcom/android/settings/R$string;->oneplus_gestures_fast_entrance:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 105
    :cond_1
    iget-object v4, v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    iget-object v4, v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;->tvmargin:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 109
    :goto_1
    iget-object v4, v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;->appIconIv:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    iget-object v4, v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;->appIconIv:Landroid/widget/ImageView;

    invoke-virtual {p3}, Lcom/oneplus/settings/gestures/OPGestureAppModel;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    iget-object v4, v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;->appNameTv:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/oneplus/settings/gestures/OPGestureAppModel;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_2

    .line 119
    iget-object p1, v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;->headermargin:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 121
    :cond_2
    iget-object p1, v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;->headermargin:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 123
    :goto_2
    iget-object p0, p0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;->mGestureSummary:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/oneplus/settings/gestures/OPGestureAppModel;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 124
    iget-object p0, v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {p0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_3

    .line 126
    :cond_3
    iget-object p0, v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter$ItemViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {p0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_3
    return-object p2
.end method
