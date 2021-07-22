.class public Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;
.super Landroid/widget/BaseAdapter;
.source "OPGloblaDarkModeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter$ItemViewHolder;
    }
.end annotation


# instance fields
.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEnableList:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSelectedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;->mAppList:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;->mSelectedList:Ljava/util/List;

    .line 31
    iput-object p2, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;->mAppList:Ljava/util/List;

    .line 32
    iput-object p1, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;->mContext:Landroid/content/Context;

    .line 33
    invoke-virtual {p0}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;->needEnableList()Z

    move-result p1

    iput-boolean p1, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;->mEnableList:Z

    .line 34
    iget-object p1, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public static isGrayList(I)Z
    .locals 1

    const/16 v0, 0x69

    if-eq p0, v0, :cond_1

    const/16 v0, 0x6c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x66

    if-eq p0, v0, :cond_1

    const/16 v0, 0x65

    if-eq p0, v0, :cond_1

    const/16 v0, 0x68

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public enableList(Z)V
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;->needEnableList()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;->mEnableList:Z

    .line 54
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;->mAppList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Lcom/oneplus/settings/better/OPAppModel;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;->mAppList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/settings/better/OPAppModel;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;->getItem(I)Lcom/oneplus/settings/better/OPAppModel;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getSelected(I)Z
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;->mSelectedList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 90
    iget-object p3, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;->mAppList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oneplus/settings/better/OPAppModel;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 92
    iget-object p2, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/settings/R$layout;->op_multi_app_item:I

    .line 93
    invoke-virtual {p2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 94
    new-instance v1, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter$ItemViewHolder;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter$ItemViewHolder;-><init>(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;)V

    .line 95
    sget v2, Lcom/android/settings/R$id;->parent:I

    .line 96
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 97
    sget v2, Lcom/android/settings/R$id;->tv:I

    .line 98
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    .line 99
    sget v2, Lcom/android/settings/R$id;->icon:I

    .line 100
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter$ItemViewHolder;->appIconIv:Landroid/widget/ImageView;

    .line 101
    sget v2, Lcom/android/settings/R$id;->name:I

    .line 102
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter$ItemViewHolder;->appNameTv:Landroid/widget/TextView;

    .line 103
    sget v2, Lcom/android/settings/R$id;->summary:I

    .line 104
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 105
    sget v2, Lcom/android/settings/R$id;->bottom_line:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter$ItemViewHolder;->bottomLine:Landroid/view/View;

    .line 106
    sget v2, Lcom/android/settings/R$id;->group_divider_area:I

    .line 107
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter$ItemViewHolder;->groupDivider:Landroid/view/View;

    .line 108
    sget v2, Lcom/android/settings/R$id;->switch_button:I

    .line 109
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, v1, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter$ItemViewHolder;->switchBt:Landroid/widget/Switch;

    .line 110
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter$ItemViewHolder;

    .line 114
    :goto_0
    iget-object v2, v1, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter$ItemViewHolder;->bottomLine:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 115
    iget-object v2, v1, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter$ItemViewHolder;->groupDivider:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_2

    .line 117
    iget-object v2, v1, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    invoke-virtual {p3}, Lcom/oneplus/settings/better/OPAppModel;->getAppopsMode()I

    move-result v2

    invoke-static {v2}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;->isGrayList(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 119
    iget-object v2, v1, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    sget v5, Lcom/android/settings/R$string;->op_global_drak_mode_not_full_support_list:I

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 121
    :cond_1
    iget-object v2, v1, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    sget v5, Lcom/android/settings/R$string;->op_global_drak_mode_full_support_list:I

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 124
    :cond_2
    invoke-virtual {p3}, Lcom/oneplus/settings/better/OPAppModel;->getAppopsMode()I

    move-result v2

    invoke-static {v2}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;->isGrayList(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;->mAppList:Ljava/util/List;

    add-int/lit8 v5, p1, -0x1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->getAppopsMode()I

    move-result v2

    invoke-static {v2}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;->isGrayList(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 125
    iget-object v2, v1, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    iget-object v2, v1, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    sget v5, Lcom/android/settings/R$string;->op_global_drak_mode_not_full_support_list:I

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 128
    :cond_3
    iget-object v2, v1, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    :goto_1
    iget-object v2, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_4

    invoke-virtual {p3}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p3}, Lcom/oneplus/settings/better/OPAppModel;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 134
    invoke-virtual {p2, v5}, Landroid/view/View;->setClickable(Z)V

    .line 135
    invoke-virtual {p2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 136
    iget-object v2, v1, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter$ItemViewHolder;->appNameTv:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 137
    iget-object v2, v1, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter$ItemViewHolder;->appIconIv:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    iget-object v2, v1, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter$ItemViewHolder;->switchBt:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setVisibility(I)V

    .line 139
    iget-object v2, v1, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter$ItemViewHolder;->appNameTv:Landroid/widget/TextView;

    sget v4, Lcom/android/settings/R$string;->oneplus_memc_support_no_apps:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 140
    iget-object v2, v1, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter$ItemViewHolder;->appNameTv:Landroid/widget/TextView;

    sget v4, Lcom/android/settings/R$color;->op_control_text_color_hint_default:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 142
    :cond_4
    invoke-virtual {p2, v3}, Landroid/view/View;->setClickable(Z)V

    .line 143
    invoke-virtual {p2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 144
    iget-object v2, v1, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter$ItemViewHolder;->appNameTv:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 145
    iget-object v2, v1, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter$ItemViewHolder;->appIconIv:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 146
    iget-object v2, v1, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter$ItemViewHolder;->switchBt:Landroid/widget/Switch;

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setVisibility(I)V

    .line 147
    iget-object v2, v1, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter$ItemViewHolder;->appIconIv:Landroid/widget/ImageView;

    invoke-virtual {p3}, Lcom/oneplus/settings/better/OPAppModel;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 148
    iget-object v2, v1, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter$ItemViewHolder;->appNameTv:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/oneplus/settings/better/OPAppModel;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    :goto_2
    iget-object v2, v1, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter$ItemViewHolder;->switchBt:Landroid/widget/Switch;

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setClickable(Z)V

    .line 151
    iget-object v2, v1, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter$ItemViewHolder;->switchBt:Landroid/widget/Switch;

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 152
    invoke-virtual {p3}, Lcom/oneplus/settings/better/OPAppModel;->isDisable()Z

    move-result p3

    if-nez p3, :cond_6

    iget-boolean p3, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;->mEnableList:Z

    if-nez p3, :cond_5

    goto :goto_3

    .line 155
    :cond_5
    iget-object p3, v1, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter$ItemViewHolder;->switchBt:Landroid/widget/Switch;

    invoke-virtual {p3, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_4

    .line 153
    :cond_6
    :goto_3
    iget-object p3, v1, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter$ItemViewHolder;->switchBt:Landroid/widget/Switch;

    invoke-virtual {p3, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 157
    :goto_4
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;->getSelected(I)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 158
    iget-object p0, v1, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter$ItemViewHolder;->switchBt:Landroid/widget/Switch;

    invoke-virtual {p0, v5}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_5

    .line 160
    :cond_7
    iget-object p0, v1, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter$ItemViewHolder;->switchBt:Landroid/widget/Switch;

    invoke-virtual {p0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_5
    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 2

    .line 185
    iget-boolean v0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;->mEnableList:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 188
    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;->mAppList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/settings/better/OPAppModel;

    .line 189
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPAppModel;->isDisable()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public needEnableList()Z
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;)V"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;->mAppList:Ljava/util/List;

    .line 39
    iget-object p1, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;->mSelectedList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    .line 40
    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;->mSelectedList:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->isSelected()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;->needEnableList()Z

    move-result p1

    iput-boolean p1, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;->mEnableList:Z

    .line 44
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSelected(IZ)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;->mSelectedList:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
