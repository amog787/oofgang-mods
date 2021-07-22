.class public Lcom/google/android/material/listview/ListItemView;
.super Landroid/widget/LinearLayout;
.source "ListItemView.java"


# instance fields
.field private mAvataIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mAvataIconView:Lcom/google/android/material/checkbox/SelectedAvatarView;

.field private mCustomViewLayout:Landroid/widget/LinearLayout;

.field private mDividerView:Landroid/view/View;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconView:Landroid/widget/ImageView;

.field private mImageFrame:Landroid/widget/LinearLayout;

.field private mIsListItemSelected:Z

.field private mListSummaryView:Landroid/widget/TextView;

.field private mListTitleView:Landroid/widget/TextView;

.field private mRootLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/listview/ListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$layout;->control_listitem_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 48
    sget-object v0, Lcom/google/android/material/R$styleable;->ListItemView:[I

    sget v1, Lcom/google/android/material/R$attr;->ListItemViewStyle:I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 50
    invoke-direct {p0}, Lcom/google/android/material/listview/ListItemView;->initView()V

    .line 51
    sget p2, Lcom/google/android/material/R$styleable;->ListItemView_itemIcon:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 52
    sget p2, Lcom/google/android/material/R$styleable;->ListItemView_itemIcon:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/listview/ListItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 54
    :cond_0
    sget p2, Lcom/google/android/material/R$styleable;->ListItemView_title:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/listview/ListItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 55
    sget p2, Lcom/google/android/material/R$styleable;->ListItemView_summary:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/listview/ListItemView;->setSummary(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getSummary()Ljava/lang/CharSequence;
    .locals 0

    .line 328
    iget-object p0, p0, Lcom/google/android/material/listview/ListItemView;->mListSummaryView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 329
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 321
    iget-object p0, p0, Lcom/google/android/material/listview/ListItemView;->mListTitleView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 322
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private initView()V
    .locals 1

    .line 60
    sget v0, Lcom/google/android/material/R$id;->icon:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mIconView:Landroid/widget/ImageView;

    .line 61
    sget v0, Lcom/google/android/material/R$id;->avatar_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/checkbox/SelectedAvatarView;

    iput-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mAvataIconView:Lcom/google/android/material/checkbox/SelectedAvatarView;

    .line 62
    sget v0, Lcom/google/android/material/R$id;->list_title:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mListTitleView:Landroid/widget/TextView;

    .line 63
    sget v0, Lcom/google/android/material/R$id;->list_summary:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mListSummaryView:Landroid/widget/TextView;

    .line 64
    sget v0, Lcom/google/android/material/R$id;->divider:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mDividerView:Landroid/view/View;

    .line 65
    sget v0, Lcom/google/android/material/R$id;->list_widget_frame:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mCustomViewLayout:Landroid/widget/LinearLayout;

    .line 66
    sget v0, Lcom/google/android/material/R$id;->root_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mRootLayout:Landroid/widget/LinearLayout;

    .line 67
    sget v0, Lcom/google/android/material/R$id;->icon_frame:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mImageFrame:Landroid/widget/LinearLayout;

    return-void
.end method

.method private isSummaryEmpty()Z
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mListSummaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/material/listview/ListItemView;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

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
.method public getAvataIconView()Lcom/google/android/material/checkbox/SelectedAvatarView;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/google/android/material/listview/ListItemView;->mAvataIconView:Lcom/google/android/material/checkbox/SelectedAvatarView;

    return-object p0
.end method

.method public getCustomView()Landroid/widget/LinearLayout;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/google/android/material/listview/ListItemView;->mCustomViewLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public getIconView()Landroid/widget/ImageView;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/google/android/material/listview/ListItemView;->mIconView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public getListItemSelected()Z
    .locals 0

    .line 81
    iget-boolean p0, p0, Lcom/google/android/material/listview/ListItemView;->mIsListItemSelected:Z

    return p0
.end method

.method public getSummaryView()Landroid/widget/TextView;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/google/android/material/listview/ListItemView;->mListSummaryView:Landroid/widget/TextView;

    return-object p0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/google/android/material/listview/ListItemView;->mListTitleView:Landroid/widget/TextView;

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 160
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 161
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 162
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mRootLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/material/listview/ListItemView;->mCustomViewLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 163
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$dimen;->op_control_margin_space2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/listview/ListItemView;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/listview/ListItemView;->mRootLayout:Landroid/widget/LinearLayout;

    .line 164
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    iget-object p0, p0, Lcom/google/android/material/listview/ListItemView;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result p0

    .line 163
    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 170
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mListSummaryView:Landroid/widget/TextView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 171
    invoke-direct {p0}, Lcom/google/android/material/listview/ListItemView;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .line 172
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 173
    iget-object v3, p0, Lcom/google/android/material/listview/ListItemView;->mListSummaryView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mListSummaryView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mListSummaryView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    goto :goto_0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mListSummaryView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mListTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 182
    invoke-direct {p0}, Lcom/google/android/material/listview/ListItemView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 183
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 184
    iget-object v3, p0, Lcom/google/android/material/listview/ListItemView;->mListTitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mListTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mListTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    .line 191
    iget-object v3, p0, Lcom/google/android/material/listview/ListItemView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_4

    .line 192
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 194
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 195
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 197
    :cond_5
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 200
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mAvataIconView:Lcom/google/android/material/checkbox/SelectedAvatarView;

    if-eqz v0, :cond_9

    .line 201
    iget-object v3, p0, Lcom/google/android/material/listview/ListItemView;->mAvataIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_7

    .line 202
    invoke-virtual {v0, v3}, Lcom/google/android/material/checkbox/SelectedAvatarView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 204
    :cond_7
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mAvataIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 205
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mAvataIconView:Lcom/google/android/material/checkbox/SelectedAvatarView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 207
    :cond_8
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mAvataIconView:Lcom/google/android/material/checkbox/SelectedAvatarView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mCustomViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_d

    .line 211
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    if-ne v0, v1, :cond_a

    goto :goto_4

    :cond_a
    move v1, v2

    .line 212
    :goto_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 213
    instance-of v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_b

    .line 214
    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 215
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_b
    if-eqz v1, :cond_c

    .line 219
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    iget-object v3, p0, Lcom/google/android/material/listview/ListItemView;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/listview/ListItemView;->mRootLayout:Landroid/widget/LinearLayout;

    .line 220
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/material/listview/ListItemView;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v5

    .line 219
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_7

    .line 223
    :cond_c
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    iget-object v3, p0, Lcom/google/android/material/listview/ListItemView;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v3

    .line 224
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/android/material/R$dimen;->op_control_margin_space2:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iget-object v5, p0, Lcom/google/android/material/listview/ListItemView;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v5

    .line 223
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_7

    .line 227
    :cond_d
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    if-ne v0, v1, :cond_e

    goto :goto_5

    :cond_e
    move v1, v2

    :goto_5
    if-nez v1, :cond_f

    .line 229
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    iget-object v3, p0, Lcom/google/android/material/listview/ListItemView;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v3

    .line 230
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/android/material/R$dimen;->op_control_margin_screen_right2:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iget-object v5, p0, Lcom/google/android/material/listview/ListItemView;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v5

    .line 229
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_6

    .line 232
    :cond_f
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/google/android/material/R$dimen;->op_control_margin_space2:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v3, p0, Lcom/google/android/material/listview/ListItemView;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/listview/ListItemView;->mRootLayout:Landroid/widget/LinearLayout;

    .line 233
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/material/listview/ListItemView;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v5

    .line 232
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 235
    :goto_6
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mListSummaryView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mListSummaryView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_10

    .line 236
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    iget-object v3, p0, Lcom/google/android/material/listview/ListItemView;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/listview/ListItemView;->mRootLayout:Landroid/widget/LinearLayout;

    .line 237
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    .line 236
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 238
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 239
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_10

    .line 240
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/material/R$dimen;->op_control_margin_screen_right2:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 241
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    :cond_10
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mListTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mListTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit16 v1, v1, -0x190

    if-le v0, v1, :cond_11

    .line 245
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    iget-object v3, p0, Lcom/google/android/material/listview/ListItemView;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/listview/ListItemView;->mRootLayout:Landroid/widget/LinearLayout;

    .line 246
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    .line 245
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 247
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 248
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_11

    .line 249
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/material/R$dimen;->op_control_margin_screen_right2:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 250
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    :cond_11
    :goto_7
    sget v0, Lcom/google/android/material/R$id;->text_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 261
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_13

    if-eqz v1, :cond_13

    .line 263
    invoke-direct {p0}, Lcom/google/android/material/listview/ListItemView;->isSummaryEmpty()Z

    move-result v3

    if-nez v3, :cond_12

    .line 264
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/material/R$dimen;->op_control_margin_list_top2:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 265
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/material/R$dimen;->op_control_margin_list_bottom2:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_8

    .line 267
    :cond_12
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/material/R$dimen;->op_control_margin_list_top4:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 268
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/material/R$dimen;->op_control_margin_list_bottom4:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 270
    :goto_8
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    :cond_13
    iget-object v1, p0, Lcom/google/android/material/listview/ListItemView;->mImageFrame:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_15

    .line 274
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_15

    if-eqz v1, :cond_15

    .line 276
    invoke-direct {p0}, Lcom/google/android/material/listview/ListItemView;->isSummaryEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    const v0, 0x800033

    .line 277
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 278
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/google/android/material/R$dimen;->op_control_margin_list_top3:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_9

    :cond_14
    const/16 v0, 0x10

    .line 280
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 281
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 283
    :goto_9
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mImageFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    :cond_15
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public setAvataIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 116
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mAvataIconView:Lcom/google/android/material/checkbox/SelectedAvatarView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/material/listview/ListItemView;->mAvataIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v1, p1, :cond_1

    .line 117
    iput-object p1, p0, Lcom/google/android/material/listview/ListItemView;->mAvataIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 118
    invoke-virtual {v0, p1}, Lcom/google/android/material/checkbox/SelectedAvatarView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    iget-object p1, p0, Lcom/google/android/material/listview/ListItemView;->mImageFrame:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 120
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 122
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/listview/ListItemView;->mIconView:Landroid/widget/ImageView;

    if-eqz p0, :cond_1

    const/16 p1, 0x8

    .line 123
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setDivider(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 142
    iget-object p0, p0, Lcom/google/android/material/listview/ListItemView;->mDividerView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 144
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/listview/ListItemView;->mDividerView:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 307
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 308
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mListTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mListSummaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 312
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mCustomViewLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 315
    iget-object p0, p0, Lcom/google/android/material/listview/ListItemView;->mCustomViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 103
    iget-object v0, p0, Lcom/google/android/material/listview/ListItemView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/material/listview/ListItemView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v1, p1, :cond_1

    .line 104
    iput-object p1, p0, Lcom/google/android/material/listview/ListItemView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 105
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    iget-object p1, p0, Lcom/google/android/material/listview/ListItemView;->mImageFrame:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 107
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 109
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/listview/ListItemView;->mAvataIconView:Lcom/google/android/material/checkbox/SelectedAvatarView;

    if-eqz p0, :cond_1

    const/16 p1, 0x8

    .line 110
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setListItemSelected(Z)V
    .locals 1

    .line 72
    iput-boolean p1, p0, Lcom/google/android/material/listview/ListItemView;->mIsListItemSelected:Z

    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/google/android/material/R$color;->op_control_bg_color_selected_default:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/google/android/material/R$color;->op_control_bg_color_default:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/google/android/material/listview/ListItemView;->mListSummaryView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 136
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/google/android/material/listview/ListItemView;->mListTitleView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 130
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
