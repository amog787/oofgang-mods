.class public Lcom/oneplus/settings/gestures/OPGestureAppAdapter;
.super Landroid/widget/BaseAdapter;
.source "OPGestureAppAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultNum:I

.field private mGestureAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mGesturePackageName:Ljava/lang/String;

.field private mGestureSummary:Ljava/lang/String;

.field private mHasShortCut:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mShortcutName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mGestureAppList:Ljava/util/List;

    .line 37
    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mContext:Landroid/content/Context;

    .line 38
    iput-object p3, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mGestureSummary:Ljava/lang/String;

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/4 p1, 0x0

    .line 41
    iput p1, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mDefaultNum:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mGestureAppList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Lcom/oneplus/settings/better/OPAppModel;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mGestureAppList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/settings/better/OPAppModel;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->getItem(I)Lcom/oneplus/settings/better/OPAppModel;

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

    .line 89
    iget-object p3, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mGestureAppList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oneplus/settings/better/OPAppModel;

    if-nez p2, :cond_0

    .line 91
    iget-object p2, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/android/settings/R$layout;->op_gesture_app_item:I

    const/4 v1, 0x0

    .line 92
    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 93
    new-instance v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;-><init>(Lcom/oneplus/settings/gestures/OPGestureAppAdapter;)V

    .line 94
    sget v1, Lcom/android/settings/R$id;->parent:I

    .line 95
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 96
    sget v1, Lcom/android/settings/R$id;->tv:I

    .line 97
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    .line 98
    sget v1, Lcom/android/settings/R$id;->tv_margin:I

    .line 99
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->tvmargin:Landroid/view/View;

    .line 100
    sget v1, Lcom/android/settings/R$id;->icon:I

    .line 101
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->appIconIv:Landroid/widget/ImageView;

    .line 102
    sget v1, Lcom/android/settings/R$id;->name:I

    .line 103
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->appNameTv:Landroid/widget/TextView;

    .line 104
    sget v1, Lcom/android/settings/R$id;->summary:I

    .line 105
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->summaryTv:Landroid/widget/TextView;

    .line 109
    sget v1, Lcom/android/settings/R$id;->header_margin:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->headermargin:Landroid/view/View;

    .line 110
    sget v1, Lcom/android/settings/R$id;->radio_button:I

    .line 111
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->radioButton:Landroid/widget/RadioButton;

    .line 112
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;

    .line 116
    :goto_0
    iget-object v1, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    iget-object v1, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->tvmargin:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x1

    const/16 v3, 0x8

    if-ne p1, v1, :cond_1

    .line 119
    iget-object v4, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    sget v5, Lcom/android/settings/R$string;->oneplus_gestures_fast_entrance:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 120
    :cond_1
    iget v4, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mDefaultNum:I

    if-ne p1, v4, :cond_2

    .line 121
    iget-object v4, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    sget v5, Lcom/android/settings/R$string;->oneplus_gestures_open_apps:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 123
    :cond_2
    iget-object v4, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    iget-object v4, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->tvmargin:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 126
    :goto_1
    iget v4, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mDefaultNum:I

    if-ge p1, v4, :cond_3

    .line 127
    iget-object v4, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->appIconIv:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 129
    :cond_3
    iget-object v4, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->appIconIv:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    iget-object v4, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->appIconIv:Landroid/widget/ImageView;

    invoke-virtual {p3}, Lcom/oneplus/settings/better/OPAppModel;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    :goto_2
    iget-object v4, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->appNameTv:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/oneplus/settings/better/OPAppModel;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_4

    .line 140
    iget-object v4, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->headermargin:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 142
    :cond_4
    iget-object v4, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->headermargin:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 144
    :goto_3
    iget v4, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mDefaultNum:I

    if-ge p1, v4, :cond_5

    iget-object v4, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mGestureSummary:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/oneplus/settings/better/OPAppModel;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    iget v4, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mDefaultNum:I

    if-lt p1, v4, :cond_8

    iget-object p1, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mGesturePackageName:Ljava/lang/String;

    .line 145
    invoke-virtual {p3}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 146
    :cond_6
    iget-object p1, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 147
    iget-boolean p1, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mHasShortCut:Z

    if-eqz p1, :cond_7

    .line 148
    iget-object p1, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->summaryTv:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mShortcutName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object p0, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->summaryTv:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 151
    :cond_7
    iget-object p0, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->summaryTv:Landroid/widget/TextView;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object p0, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->summaryTv:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 155
    :cond_8
    iget-object p0, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {p0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 156
    iget-object p0, v0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->summaryTv:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    return-object p2
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;)V"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mGestureAppList:Ljava/util/List;

    .line 46
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setDefaultNum(I)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mDefaultNum:I

    return-void
.end method

.method public setSelectedItem(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mGestureSummary:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mGesturePackageName:Ljava/lang/String;

    .line 58
    iput-boolean p4, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mHasShortCut:Z

    .line 59
    iput-object p5, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter;->mShortcutName:Ljava/lang/String;

    .line 60
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
