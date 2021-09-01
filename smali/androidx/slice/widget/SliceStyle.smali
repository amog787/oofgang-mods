.class public Landroidx/slice/widget/SliceStyle;
.super Ljava/lang/Object;
.source "SliceStyle.java"


# instance fields
.field private mGridAllImagesHeight:I

.field private mGridBigPicMaxHeight:I

.field private mGridBigPicMinHeight:I

.field private mGridBottomPadding:I

.field private mGridImageTextHeight:I

.field private mGridMaxHeight:I

.field private mGridMinHeight:I

.field private mGridSubtitleSize:I

.field private mGridTitleSize:I

.field private mGridTopPadding:I

.field private mHeaderSubtitleSize:I

.field private mHeaderTitleSize:I

.field private mListLargeHeight:I

.field private mListMinScrollHeight:I

.field private mRowInlineRangeHeight:I

.field private mRowMaxHeight:I

.field private mRowMinHeight:I

.field private mRowRangeHeight:I

.field private mRowSelectionHeight:I

.field private mRowSingleTextWithRangeHeight:I

.field private mRowSingleTextWithSelectionHeight:I

.field private mRowStyle:Landroidx/slice/widget/RowStyle;

.field private mRowTextWithRangeHeight:I

.field private mRowTextWithSelectionHeight:I

.field private mSubtitleColor:I

.field private mSubtitleSize:I

.field private mTintColor:I

.field private mTitleColor:I

.field private mTitleSize:I

.field private mVerticalGridTextPadding:I

.field private mVerticalHeaderTextPadding:I

.field private mVerticalTextPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 46
    iput v0, p0, Landroidx/slice/widget/SliceStyle;->mTintColor:I

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Landroidx/slice/view/R$styleable;->SliceView:[I

    invoke-virtual {v1, p2, v2, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 87
    :try_start_0
    sget p3, Landroidx/slice/view/R$styleable;->SliceView_tintColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    if-eq p3, v0, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    iget p3, p0, Landroidx/slice/widget/SliceStyle;->mTintColor:I

    :goto_0
    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mTintColor:I

    .line 89
    sget p3, Landroidx/slice/view/R$styleable;->SliceView_titleColor:I

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mTitleColor:I

    .line 90
    sget p3, Landroidx/slice/view/R$styleable;->SliceView_subtitleColor:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mSubtitleColor:I

    .line 92
    sget p3, Landroidx/slice/view/R$styleable;->SliceView_headerTitleSize:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mHeaderTitleSize:I

    .line 94
    sget p3, Landroidx/slice/view/R$styleable;->SliceView_headerSubtitleSize:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mHeaderSubtitleSize:I

    .line 96
    sget p3, Landroidx/slice/view/R$styleable;->SliceView_headerTextVerticalPadding:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mVerticalHeaderTextPadding:I

    .line 99
    sget p3, Landroidx/slice/view/R$styleable;->SliceView_titleSize:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mTitleSize:I

    .line 100
    sget p3, Landroidx/slice/view/R$styleable;->SliceView_subtitleSize:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mSubtitleSize:I

    .line 102
    sget p3, Landroidx/slice/view/R$styleable;->SliceView_textVerticalPadding:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mVerticalTextPadding:I

    .line 105
    sget p3, Landroidx/slice/view/R$styleable;->SliceView_gridTitleSize:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mGridTitleSize:I

    .line 106
    sget p3, Landroidx/slice/view/R$styleable;->SliceView_gridSubtitleSize:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mGridSubtitleSize:I

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Landroidx/slice/view/R$dimen;->abc_slice_grid_text_inner_padding:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 110
    sget v1, Landroidx/slice/view/R$styleable;->SliceView_gridTextVerticalPadding:I

    int-to-float p3, p3

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mVerticalGridTextPadding:I

    .line 112
    sget p3, Landroidx/slice/view/R$styleable;->SliceView_gridTopPadding:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mGridTopPadding:I

    .line 113
    sget p3, Landroidx/slice/view/R$styleable;->SliceView_gridBottomPadding:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mGridBottomPadding:I

    .line 115
    sget p3, Landroidx/slice/view/R$styleable;->SliceView_rowStyle:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eqz p3, :cond_1

    .line 117
    new-instance p4, Landroidx/slice/widget/RowStyle;

    invoke-direct {p4, p1, p3}, Landroidx/slice/widget/RowStyle;-><init>(Landroid/content/Context;I)V

    iput-object p4, p0, Landroidx/slice/widget/SliceStyle;->mRowStyle:Landroidx/slice/widget/RowStyle;

    .line 120
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Landroidx/slice/view/R$dimen;->abc_slice_row_max_height:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 122
    sget p4, Landroidx/slice/view/R$styleable;->SliceView_rowMaxHeight:I

    int-to-float p3, p3

    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mRowMaxHeight:I

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Landroidx/slice/view/R$dimen;->abc_slice_row_range_height:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 127
    sget p4, Landroidx/slice/view/R$styleable;->SliceView_rowRangeHeight:I

    int-to-float p3, p3

    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mRowRangeHeight:I

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Landroidx/slice/view/R$dimen;->abc_slice_row_range_single_text_height:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 132
    sget p4, Landroidx/slice/view/R$styleable;->SliceView_rowRangeSingleTextHeight:I

    int-to-float p3, p3

    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroidx/slice/widget/SliceStyle;->mRowSingleTextWithRangeHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 143
    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_row_range_multi_text_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/SliceStyle;->mRowTextWithRangeHeight:I

    .line 145
    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_row_min_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/SliceStyle;->mRowMinHeight:I

    .line 146
    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_row_selection_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/SliceStyle;->mRowSelectionHeight:I

    .line 147
    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_row_selection_multi_text_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/SliceStyle;->mRowTextWithSelectionHeight:I

    .line 149
    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_row_selection_single_text_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/SliceStyle;->mRowSingleTextWithSelectionHeight:I

    .line 151
    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_row_range_inline_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/SliceStyle;->mRowInlineRangeHeight:I

    .line 153
    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_big_pic_min_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/SliceStyle;->mGridBigPicMinHeight:I

    .line 154
    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_big_pic_max_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/SliceStyle;->mGridBigPicMaxHeight:I

    .line 155
    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_grid_image_only_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/SliceStyle;->mGridAllImagesHeight:I

    .line 156
    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_grid_image_text_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/SliceStyle;->mGridImageTextHeight:I

    .line 157
    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_grid_min_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/SliceStyle;->mGridMinHeight:I

    .line 158
    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_grid_max_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/SliceStyle;->mGridMaxHeight:I

    .line 160
    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_row_min_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/SliceStyle;->mListMinScrollHeight:I

    .line 161
    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_large_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/slice/widget/SliceStyle;->mListLargeHeight:I

    return-void

    :catchall_0
    move-exception p0

    .line 136
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 137
    throw p0
.end method


# virtual methods
.method public getGridBottomPadding()I
    .locals 0

    .line 225
    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mGridBottomPadding:I

    return p0
.end method

.method public getGridHeight(Landroidx/slice/widget/GridContent;Landroidx/slice/widget/SliceViewPolicy;)I
    .locals 6

    .line 275
    invoke-virtual {p2}, Landroidx/slice/widget/SliceViewPolicy;->getMode()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    .line 276
    :goto_0
    invoke-virtual {p1}, Landroidx/slice/widget/GridContent;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    .line 279
    :cond_1
    invoke-virtual {p1}, Landroidx/slice/widget/GridContent;->getLargestImageMode()I

    move-result v2

    .line 281
    invoke-virtual {p1}, Landroidx/slice/widget/GridContent;->isAllImages()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 282
    invoke-virtual {p1}, Landroidx/slice/widget/GridContent;->getGridContent()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v1, :cond_3

    if-eqz p2, :cond_2

    .line 283
    iget p2, p0, Landroidx/slice/widget/SliceStyle;->mGridBigPicMinHeight:I

    goto :goto_3

    :cond_2
    iget p2, p0, Landroidx/slice/widget/SliceStyle;->mGridBigPicMaxHeight:I

    goto :goto_3

    :cond_3
    if-nez v2, :cond_4

    .line 284
    iget p2, p0, Landroidx/slice/widget/SliceStyle;->mGridMinHeight:I

    goto :goto_3

    .line 285
    :cond_4
    iget p2, p0, Landroidx/slice/widget/SliceStyle;->mGridAllImagesHeight:I

    goto :goto_3

    .line 287
    :cond_5
    invoke-virtual {p1}, Landroidx/slice/widget/GridContent;->getMaxCellLineCount()I

    move-result v3

    if-le v3, v1, :cond_6

    move v3, v1

    goto :goto_1

    :cond_6
    move v3, v0

    .line 288
    :goto_1
    invoke-virtual {p1}, Landroidx/slice/widget/GridContent;->hasImage()Z

    move-result v4

    if-eqz v2, :cond_8

    const/4 v5, 0x5

    if-ne v2, v5, :cond_7

    goto :goto_2

    :cond_7
    move v1, v0

    :cond_8
    :goto_2
    if-eqz v3, :cond_a

    if-nez p2, :cond_a

    if-eqz v4, :cond_9

    .line 292
    iget p2, p0, Landroidx/slice/widget/SliceStyle;->mGridMaxHeight:I

    goto :goto_3

    :cond_9
    iget p2, p0, Landroidx/slice/widget/SliceStyle;->mGridMinHeight:I

    goto :goto_3

    :cond_a
    if-eqz v1, :cond_b

    .line 293
    iget p2, p0, Landroidx/slice/widget/SliceStyle;->mGridMinHeight:I

    goto :goto_3

    :cond_b
    iget p2, p0, Landroidx/slice/widget/SliceStyle;->mGridImageTextHeight:I

    .line 295
    :goto_3
    invoke-virtual {p1}, Landroidx/slice/widget/GridContent;->isAllImages()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p1}, Landroidx/slice/widget/SliceContent;->getRowIndex()I

    move-result v1

    if-nez v1, :cond_c

    .line 296
    iget v1, p0, Landroidx/slice/widget/SliceStyle;->mGridTopPadding:I

    goto :goto_4

    :cond_c
    move v1, v0

    .line 297
    :goto_4
    invoke-virtual {p1}, Landroidx/slice/widget/GridContent;->isAllImages()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {p1}, Landroidx/slice/widget/GridContent;->getIsLastIndex()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 298
    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mGridBottomPadding:I

    :cond_d
    add-int/2addr p2, v1

    add-int/2addr p2, v0

    return p2
.end method

.method public getGridSubtitleSize()I
    .locals 0

    .line 213
    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mGridSubtitleSize:I

    return p0
.end method

.method public getGridTitleSize()I
    .locals 0

    .line 209
    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mGridTitleSize:I

    return p0
.end method

.method public getGridTopPadding()I
    .locals 0

    .line 221
    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mGridTopPadding:I

    return p0
.end method

.method public getHeaderSubtitleSize()I
    .locals 0

    .line 189
    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mHeaderSubtitleSize:I

    return p0
.end method

.method public getHeaderTitleSize()I
    .locals 0

    .line 185
    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mHeaderTitleSize:I

    return p0
.end method

.method public getListHeight(Landroidx/slice/widget/ListContent;Landroidx/slice/widget/SliceViewPolicy;)I
    .locals 7

    .line 303
    invoke-virtual {p2}, Landroidx/slice/widget/SliceViewPolicy;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 304
    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getHeader()Landroidx/slice/widget/RowContent;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Landroidx/slice/widget/RowContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result p0

    return p0

    .line 306
    :cond_0
    invoke-virtual {p2}, Landroidx/slice/widget/SliceViewPolicy;->getMaxHeight()I

    move-result v0

    .line 307
    invoke-virtual {p2}, Landroidx/slice/widget/SliceViewPolicy;->isScrollable()Z

    move-result v2

    .line 309
    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Landroidx/slice/widget/SliceStyle;->getListItemsHeight(Ljava/util/List;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v3

    if-lez v0, :cond_1

    .line 312
    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getHeader()Landroidx/slice/widget/RowContent;

    move-result-object v4

    invoke-virtual {v4, p0, p2}, Landroidx/slice/widget/RowContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v4

    .line 313
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_1
    if-lez v0, :cond_2

    move v4, v0

    goto :goto_0

    .line 317
    :cond_2
    iget v4, p0, Landroidx/slice/widget/SliceStyle;->mListLargeHeight:I

    :goto_0
    sub-int v5, v3, v4

    .line 319
    iget v6, p0, Landroidx/slice/widget/SliceStyle;->mListMinScrollHeight:I

    if-lt v5, v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    move v3, v4

    goto :goto_2

    :cond_4
    if-gtz v0, :cond_5

    goto :goto_2

    .line 324
    :cond_5
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_2
    if-nez v2, :cond_6

    .line 326
    invoke-virtual {p0, p1, v3, p2}, Landroidx/slice/widget/SliceStyle;->getListItemsForNonScrollingList(Landroidx/slice/widget/ListContent;ILandroidx/slice/widget/SliceViewPolicy;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroidx/slice/widget/SliceStyle;->getListItemsHeight(Ljava/util/List;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v3

    :cond_6
    return v3
.end method

.method public getListItemsForNonScrollingList(Landroidx/slice/widget/ListContent;ILandroidx/slice/widget/SliceViewPolicy;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/slice/widget/ListContent;",
            "I",
            "Landroidx/slice/widget/SliceViewPolicy;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroidx/slice/widget/SliceContent;",
            ">;"
        }
    .end annotation

    .line 364
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 365
    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 368
    :cond_0
    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 371
    :goto_0
    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getSeeMoreItem()Landroidx/slice/widget/SliceContent;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 372
    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getSeeMoreItem()Landroidx/slice/widget/SliceContent;

    move-result-object v2

    invoke-virtual {v2, p0, p3}, Landroidx/slice/widget/SliceContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v2

    add-int/2addr v2, v3

    goto :goto_1

    :cond_2
    move v2, v3

    .line 374
    :goto_1
    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v3

    :goto_2
    if-ge v5, v4, :cond_4

    .line 376
    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/slice/widget/SliceContent;

    invoke-virtual {v6, p0, p3}, Landroidx/slice/widget/SliceContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v6

    if-lez p2, :cond_3

    add-int v7, v2, v6

    if-le v7, p2, :cond_3

    goto :goto_3

    :cond_3
    add-int/2addr v2, v6

    .line 381
    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/slice/widget/SliceContent;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 384
    :cond_4
    :goto_3
    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getSeeMoreItem()Landroidx/slice/widget/SliceContent;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lt p0, v1, :cond_5

    .line 385
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-eq p0, v4, :cond_5

    .line 387
    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getSeeMoreItem()Landroidx/slice/widget/SliceContent;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_6

    .line 391
    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/slice/widget/SliceContent;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_4
    return-object v0
.end method

.method public getListItemsHeight(Ljava/util/List;Landroidx/slice/widget/SliceViewPolicy;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/slice/widget/SliceContent;",
            ">;",
            "Landroidx/slice/widget/SliceViewPolicy;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 338
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 339
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/widget/SliceContent;

    .line 341
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, Landroidx/slice/widget/SliceContent;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v2

    const-string v3, "horizontal"

    invoke-virtual {v2, v3}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 342
    invoke-virtual {v1, p0, p2}, Landroidx/slice/widget/SliceContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result p0

    return p0

    :cond_2
    move v1, v0

    .line 344
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 345
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/widget/SliceContent;

    invoke-virtual {v2, p0, p2}, Landroidx/slice/widget/SliceContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public getRowHeight(Landroidx/slice/widget/RowContent;Landroidx/slice/widget/SliceViewPolicy;)I
    .locals 2

    .line 241
    invoke-virtual {p2}, Landroidx/slice/widget/SliceViewPolicy;->getMaxSmallHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Landroidx/slice/widget/SliceViewPolicy;->getMaxSmallHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mRowMaxHeight:I

    .line 243
    :goto_0
    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getRange()Landroidx/slice/SliceItem;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getSelection()Landroidx/slice/SliceItem;

    move-result-object v1

    if-nez v1, :cond_1

    .line 244
    invoke-virtual {p2}, Landroidx/slice/widget/SliceViewPolicy;->getMode()I

    move-result p2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    return v0

    .line 248
    :cond_1
    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getRange()Landroidx/slice/SliceItem;

    move-result-object p2

    const/4 v1, 0x1

    if-eqz p2, :cond_4

    .line 250
    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getStartItem()Landroidx/slice/SliceItem;

    move-result-object p2

    if-nez p2, :cond_3

    .line 253
    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getLineCount()I

    move-result p1

    if-le p1, v1, :cond_2

    iget p1, p0, Landroidx/slice/widget/SliceStyle;->mRowTextWithRangeHeight:I

    goto :goto_1

    .line 254
    :cond_2
    iget p1, p0, Landroidx/slice/widget/SliceStyle;->mRowSingleTextWithRangeHeight:I

    .line 255
    :goto_1
    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mRowRangeHeight:I

    :goto_2
    add-int/2addr p1, p0

    return p1

    .line 259
    :cond_3
    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mRowInlineRangeHeight:I

    return p0

    .line 263
    :cond_4
    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getSelection()Landroidx/slice/SliceItem;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 266
    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getLineCount()I

    move-result p1

    if-le p1, v1, :cond_5

    iget p1, p0, Landroidx/slice/widget/SliceStyle;->mRowTextWithSelectionHeight:I

    goto :goto_3

    .line 267
    :cond_5
    iget p1, p0, Landroidx/slice/widget/SliceStyle;->mRowSingleTextWithSelectionHeight:I

    .line 268
    :goto_3
    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mRowSelectionHeight:I

    goto :goto_2

    .line 271
    :cond_6
    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getLineCount()I

    move-result p2

    if-gt p2, v1, :cond_8

    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getIsHeader()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    iget v0, p0, Landroidx/slice/widget/SliceStyle;->mRowMinHeight:I

    :cond_8
    :goto_4
    return v0
.end method

.method public getRowMaxHeight()I
    .locals 0

    .line 165
    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mRowMaxHeight:I

    return p0
.end method

.method public getRowRangeHeight()I
    .locals 0

    .line 233
    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mRowRangeHeight:I

    return p0
.end method

.method public getRowSelectionHeight()I
    .locals 0

    .line 237
    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mRowSelectionHeight:I

    return p0
.end method

.method public getRowStyle()Landroidx/slice/widget/RowStyle;
    .locals 0

    .line 229
    iget-object p0, p0, Landroidx/slice/widget/SliceStyle;->mRowStyle:Landroidx/slice/widget/RowStyle;

    return-object p0
.end method

.method public getSubtitleColor()I
    .locals 0

    .line 181
    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mSubtitleColor:I

    return p0
.end method

.method public getSubtitleSize()I
    .locals 0

    .line 201
    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mSubtitleSize:I

    return p0
.end method

.method public getTintColor()I
    .locals 0

    .line 173
    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mTintColor:I

    return p0
.end method

.method public getTitleColor()I
    .locals 0

    .line 177
    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mTitleColor:I

    return p0
.end method

.method public getTitleSize()I
    .locals 0

    .line 197
    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mTitleSize:I

    return p0
.end method

.method public getVerticalGridTextPadding()I
    .locals 0

    .line 217
    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mVerticalGridTextPadding:I

    return p0
.end method

.method public getVerticalHeaderTextPadding()I
    .locals 0

    .line 193
    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mVerticalHeaderTextPadding:I

    return p0
.end method

.method public getVerticalTextPadding()I
    .locals 0

    .line 205
    iget p0, p0, Landroidx/slice/widget/SliceStyle;->mVerticalTextPadding:I

    return p0
.end method

.method public setTintColor(I)V
    .locals 0

    .line 169
    iput p1, p0, Landroidx/slice/widget/SliceStyle;->mTintColor:I

    return-void
.end method
