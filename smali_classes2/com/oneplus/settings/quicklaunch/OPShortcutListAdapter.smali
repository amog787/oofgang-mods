.class public Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter;
.super Landroid/widget/BaseAdapter;
.source "OPShortcutListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter$ItemViewHolder;
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

    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter;->mAppList:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter;->mSelectedList:Ljava/util/List;

    .line 27
    iput-object p2, p0, Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter;->mAppList:Ljava/util/List;

    .line 28
    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter;->mContext:Landroid/content/Context;

    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter;->mAppList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Lcom/oneplus/settings/better/OPAppModel;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter;->mAppList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/settings/better/OPAppModel;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter;->getItem(I)Lcom/oneplus/settings/better/OPAppModel;

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

    .line 47
    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter;->mSelectedList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 85
    iget-object p3, p0, Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter;->mAppList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/oneplus/settings/better/OPAppModel;

    if-nez p2, :cond_0

    .line 87
    iget-object p2, p0, Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/android/settings/R$layout;->op_app_list_item:I

    const/4 v1, 0x0

    .line 88
    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 89
    new-instance v0, Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter$ItemViewHolder;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter$ItemViewHolder;-><init>(Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter;)V

    .line 90
    sget v1, Lcom/android/settings/R$id;->parent:I

    .line 91
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 92
    sget v1, Lcom/android/settings/R$id;->tv:I

    .line 93
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    .line 94
    sget v1, Lcom/android/settings/R$id;->big_icon:I

    .line 95
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter$ItemViewHolder;->appIconIv:Landroid/widget/ImageView;

    .line 96
    sget v1, Lcom/android/settings/R$id;->small_icon:I

    .line 97
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter$ItemViewHolder;->smallAppIconIv:Landroid/widget/ImageView;

    .line 98
    sget v1, Lcom/android/settings/R$id;->name:I

    .line 99
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter$ItemViewHolder;->appNameTv:Landroid/widget/TextView;

    .line 100
    sget v1, Lcom/android/settings/R$id;->summary:I

    .line 101
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 102
    sget v1, Lcom/android/settings/R$id;->bottom_line:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 103
    sget v1, Lcom/android/settings/R$id;->group_divider_area:I

    .line 104
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter$ItemViewHolder;->groupDivider:Landroid/view/View;

    .line 105
    sget v1, Lcom/android/settings/R$id;->check_box:I

    .line 106
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, v0, Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter$ItemViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 107
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter$ItemViewHolder;

    :goto_0
    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_2

    .line 113
    iget-object v4, v0, Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    invoke-virtual {p3}, Lcom/oneplus/settings/better/OPAppModel;->getType()I

    move-result v4

    if-ne v4, v2, :cond_1

    .line 115
    iget-object v4, v0, Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/oneplus/settings/better/OPAppModel;->getAppLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 117
    :cond_1
    iget-object v4, v0, Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    sget v5, Lcom/android/settings/R$string;->oneplus_quickpay:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 120
    :cond_2
    invoke-virtual {p3}, Lcom/oneplus/settings/better/OPAppModel;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_6

    .line 121
    invoke-virtual {p3}, Lcom/oneplus/settings/better/OPAppModel;->getType()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    goto :goto_2

    .line 123
    :cond_3
    invoke-virtual {p3}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter;->mAppList:Ljava/util/List;

    add-int/lit8 v6, p1, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {v5}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p3}, Lcom/oneplus/settings/better/OPAppModel;->getType()I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {v5}, Lcom/oneplus/settings/better/OPAppModel;->getType()I

    move-result v5

    if-eq v4, v5, :cond_4

    goto :goto_1

    .line 127
    :cond_4
    iget-object v4, v0, Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 124
    :cond_5
    :goto_1
    iget-object v4, v0, Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    iget-object v4, v0, Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/oneplus/settings/better/OPAppModel;->getAppLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 122
    :cond_6
    :goto_2
    iget-object v4, v0, Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    :goto_3
    invoke-virtual {p3}, Lcom/oneplus/settings/better/OPAppModel;->getType()I

    move-result v4

    if-ne v4, v2, :cond_7

    .line 132
    iget-object v4, v0, Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter$ItemViewHolder;->appIconIv:Landroid/widget/ImageView;

    invoke-virtual {p3}, Lcom/oneplus/settings/better/OPAppModel;->getShortCutIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    iget-object v4, v0, Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter$ItemViewHolder;->smallAppIconIv:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    iget-object v4, v0, Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter$ItemViewHolder;->smallAppIconIv:Landroid/widget/ImageView;

    invoke-virtual {p3}, Lcom/oneplus/settings/better/OPAppModel;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 136
    :cond_7
    iget-object v4, v0, Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter$ItemViewHolder;->appIconIv:Landroid/widget/ImageView;

    invoke-virtual {p3}, Lcom/oneplus/settings/better/OPAppModel;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    iget-object v4, v0, Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter$ItemViewHolder;->smallAppIconIv:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    :goto_4
    iget-object v4, v0, Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter$ItemViewHolder;->appNameTv:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/oneplus/settings/better/OPAppModel;->getLabel()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object p3, v0, Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter$ItemViewHolder;->groupDivider:Landroid/view/View;

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 146
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter;->getSelected(I)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 147
    iget-object p0, v0, Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter$ItemViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_5

    .line 149
    :cond_8
    iget-object p0, v0, Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter$ItemViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_5
    return-object p2
.end method

.method public setAppType(I)V
    .locals 0

    return-void
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

    .line 33
    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter;->mAppList:Ljava/util/List;

    .line 34
    iget-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter;->mSelectedList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    .line 35
    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter;->mSelectedList:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter;->mAppList:Ljava/util/List;

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

    .line 38
    :cond_0
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSelected(IZ)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPShortcutListAdapter;->mSelectedList:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
