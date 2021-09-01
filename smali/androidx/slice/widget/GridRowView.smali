.class public Landroidx/slice/widget/GridRowView;
.super Landroidx/slice/widget/SliceChildView;
.source "GridRowView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final TEXT_LAYOUT:I

.field private static final TITLE_TEXT_LAYOUT:I


# instance fields
.field private mForeground:Landroid/view/View;

.field private mGridContent:Landroidx/slice/widget/GridContent;

.field private mGutter:I

.field private mIconSize:I

.field private mLargeImageHeight:I

.field private mLoc:[I

.field mMaxCellUpdateScheduled:Z

.field mMaxCells:I

.field private mMaxCellsUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mRowCount:I

.field private mRowIndex:I

.field private mSmallImageMinWidth:I

.field private mSmallImageSize:I

.field private mTextPadding:I

.field private mViewContainer:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    sget v0, Landroidx/slice/view/R$layout;->abc_slice_title:I

    sput v0, Landroidx/slice/widget/GridRowView;->TITLE_TEXT_LAYOUT:I

    .line 77
    sget v0, Landroidx/slice/view/R$layout;->abc_slice_secondary_text:I

    sput v0, Landroidx/slice/widget/GridRowView;->TEXT_LAYOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, p1, v0}, Landroidx/slice/widget/GridRowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 109
    invoke-direct {p0, p1, p2}, Landroidx/slice/widget/SliceChildView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 99
    iput p1, p0, Landroidx/slice/widget/GridRowView;->mMaxCells:I

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 100
    iput-object p2, p0, Landroidx/slice/widget/GridRowView;->mLoc:[I

    .line 549
    new-instance p2, Landroidx/slice/widget/GridRowView$1;

    invoke-direct {p2, p0}, Landroidx/slice/widget/GridRowView$1;-><init>(Landroidx/slice/widget/GridRowView;)V

    iput-object p2, p0, Landroidx/slice/widget/GridRowView;->mMaxCellsUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 110
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 111
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    .line 112
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 113
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 115
    sget v0, Landroidx/slice/view/R$dimen;->abc_slice_icon_size:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/GridRowView;->mIconSize:I

    .line 116
    sget v0, Landroidx/slice/view/R$dimen;->abc_slice_small_image_size:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/GridRowView;->mSmallImageSize:I

    .line 117
    sget v0, Landroidx/slice/view/R$dimen;->abc_slice_grid_image_only_height:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/GridRowView;->mLargeImageHeight:I

    .line 118
    sget v0, Landroidx/slice/view/R$dimen;->abc_slice_grid_image_min_width:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/GridRowView;->mSmallImageMinWidth:I

    .line 119
    sget v0, Landroidx/slice/view/R$dimen;->abc_slice_grid_gutter:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/GridRowView;->mGutter:I

    .line 120
    sget v0, Landroidx/slice/view/R$dimen;->abc_slice_grid_text_padding:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/slice/widget/GridRowView;->mTextPadding:I

    .line 122
    new-instance p2, Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroidx/slice/widget/GridRowView;->mForeground:Landroid/view/View;

    .line 123
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addCell(Landroidx/slice/widget/GridContent$CellContent;II)V
    .locals 23

    move-object/from16 v6, p0

    move/from16 v7, p2

    move/from16 v8, p3

    .line 318
    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/SliceChildView;->getMode()I

    move-result v0

    const/4 v10, 0x1

    if-ne v0, v10, :cond_0

    iget-object v0, v6, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_0

    move v11, v10

    goto :goto_0

    :cond_0
    const/4 v11, 0x2

    .line 320
    :goto_0
    new-instance v12, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v12, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 321
    invoke-virtual {v12, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 322
    invoke-virtual {v12, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 324
    invoke-virtual/range {p1 .. p1}, Landroidx/slice/widget/GridContent$CellContent;->getCellItems()Ljava/util/ArrayList;

    move-result-object v13

    .line 325
    invoke-virtual/range {p1 .. p1}, Landroidx/slice/widget/GridContent$CellContent;->getContentIntent()Landroidx/slice/SliceItem;

    move-result-object v14

    .line 330
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v10, :cond_1

    move/from16 v16, v10

    goto :goto_1

    :cond_1
    const/16 v16, 0x0

    :goto_1
    const-string v5, "text"

    if-nez v16, :cond_6

    .line 333
    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/SliceChildView;->getMode()I

    move-result v1

    if-ne v1, v10, :cond_6

    .line 335
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 336
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/slice/SliceItem;

    .line 337
    invoke-virtual {v3}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 338
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 342
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 343
    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v11, :cond_5

    .line 344
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/slice/SliceItem;

    const-string v4, "title"

    const-string v0, "large"

    .line 345
    filled-new-array {v4, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroidx/slice/SliceItem;->hasAnyHints([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 346
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    :cond_5
    move-object v4, v1

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    :goto_4
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v17, 0x0

    .line 351
    :goto_5
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_b

    .line 352
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/slice/SliceItem;

    .line 353
    invoke-virtual {v9}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v15

    .line 354
    invoke-direct {v6, v3}, Landroidx/slice/widget/GridRowView;->determinePadding(Landroidx/slice/SliceItem;)I

    move-result v18

    if-ge v1, v11, :cond_9

    .line 355
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_7

    const-string v10, "long"

    .line 356
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    :cond_7
    if-eqz v4, :cond_8

    .line 357
    invoke-interface {v4, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    move v15, v0

    move/from16 v20, v1

    move/from16 v21, v2

    move-object v10, v3

    move-object/from16 v22, v4

    move-object/from16 v18, v5

    goto/16 :goto_7

    .line 360
    :cond_8
    iget v10, v6, Landroidx/slice/widget/SliceChildView;->mTintColor:I

    move v15, v0

    move-object/from16 v0, p0

    move/from16 v20, v1

    move-object v1, v9

    move/from16 v21, v2

    move v2, v10

    move-object v10, v3

    move-object v3, v12

    move-object/from16 v22, v4

    move/from16 v4, v18

    move-object/from16 v18, v5

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Landroidx/slice/widget/GridRowView;->addItem(Landroidx/slice/SliceItem;ILandroid/view/ViewGroup;IZ)Z

    move-result v0

    if-eqz v0, :cond_a

    add-int/lit8 v1, v20, 0x1

    move-object v3, v9

    move v0, v15

    goto :goto_6

    :cond_9
    move v15, v0

    move/from16 v20, v1

    move/from16 v21, v2

    move-object v10, v3

    move-object/from16 v22, v4

    move-object/from16 v18, v5

    const/4 v0, 0x1

    if-ge v15, v0, :cond_a

    .line 365
    invoke-virtual {v9}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 366
    iget v2, v6, Landroidx/slice/widget/SliceChildView;->mTintColor:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v3, v12

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Landroidx/slice/widget/GridRowView;->addItem(Landroidx/slice/SliceItem;ILandroid/view/ViewGroup;IZ)Z

    move-result v0

    if-eqz v0, :cond_a

    add-int/lit8 v0, v15, 0x1

    move-object v3, v9

    move/from16 v1, v20

    :goto_6
    const/16 v17, 0x1

    goto :goto_8

    :cond_a
    :goto_7
    move-object v3, v10

    move v0, v15

    move/from16 v1, v20

    :goto_8
    add-int/lit8 v2, v21, 0x1

    move-object/from16 v5, v18

    move-object/from16 v4, v22

    const/4 v10, 0x1

    goto/16 :goto_5

    :cond_b
    if-eqz v17, :cond_e

    .line 374
    invoke-virtual/range {p1 .. p1}, Landroidx/slice/widget/GridContent$CellContent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 376
    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 378
    :cond_c
    iget-object v0, v6, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-direct {v1, v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v12, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v8, -0x1

    if-eq v7, v0, :cond_d

    .line 383
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 384
    iget v1, v6, Landroidx/slice/widget/GridRowView;->mGutter:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 385
    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_d
    if-eqz v14, :cond_e

    .line 388
    new-instance v0, Landroidx/slice/widget/EventInfo;

    invoke-virtual/range {p0 .. p0}, Landroidx/slice/widget/SliceChildView;->getMode()I

    move-result v1

    iget v2, v6, Landroidx/slice/widget/GridRowView;->mRowIndex:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3, v2}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    const/4 v1, 0x2

    .line 390
    invoke-virtual {v0, v1, v7, v8}, Landroidx/slice/widget/EventInfo;->setPosition(III)V

    .line 391
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v14, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 392
    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 393
    invoke-direct {v6, v12, v3}, Landroidx/slice/widget/GridRowView;->makeClickable(Landroid/view/View;Z)V

    :cond_e
    return-void
.end method

.method private addItem(Landroidx/slice/SliceItem;ILandroid/view/ViewGroup;IZ)Z
    .locals 7

    .line 410
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "text"

    .line 412
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "long"

    const-string v4, "large"

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v1, :cond_7

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string p4, "image"

    .line 429
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_d

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p4

    if-eqz p4, :cond_d

    .line 430
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroidx/core/graphics/drawable/IconCompat;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    if-eqz p4, :cond_d

    .line 432
    new-instance v5, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 433
    invoke-virtual {v5, p4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string p4, "raw"

    .line 435
    invoke-virtual {p1, p4}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result p4

    const-string v0, "no_tint"

    const/4 v1, -0x1

    if-eqz p4, :cond_1

    .line 436
    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 437
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p4, -0x2

    invoke-direct {p0, v1, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_4

    .line 438
    :cond_1
    invoke-virtual {p1, v4}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 439
    sget-object p4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, p4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    if-eqz p5, :cond_2

    move p0, v1

    goto :goto_0

    .line 440
    :cond_2
    iget p0, p0, Landroidx/slice/widget/GridRowView;->mLargeImageHeight:I

    .line 441
    :goto_0
    new-instance p4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p4, v1, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_1
    move-object p0, p4

    goto :goto_4

    .line 443
    :cond_3
    invoke-virtual {p1, v0}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result p4

    xor-int/2addr p4, v2

    if-nez p4, :cond_4

    .line 444
    iget p0, p0, Landroidx/slice/widget/GridRowView;->mSmallImageSize:I

    goto :goto_2

    :cond_4
    iget p0, p0, Landroidx/slice/widget/GridRowView;->mIconSize:I

    :goto_2
    if-eqz p4, :cond_5

    .line 445
    sget-object p4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    goto :goto_3

    :cond_5
    sget-object p4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    :goto_3
    invoke-virtual {v5, p4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 446
    new-instance p4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p4, p0, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    :goto_4
    if-eq p2, v1, :cond_6

    .line 448
    invoke-virtual {p1, v0}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 449
    invoke-virtual {v5, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 451
    :cond_6
    invoke-virtual {p3, v5, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_a

    :cond_7
    :goto_5
    const-string p2, "title"

    .line 413
    filled-new-array {v4, p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/slice/core/SliceQuery;->hasAnyHints(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z

    move-result p2

    .line 414
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-static {p5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p5

    if-eqz p2, :cond_8

    .line 415
    sget v1, Landroidx/slice/widget/GridRowView;->TITLE_TEXT_LAYOUT:I

    goto :goto_6

    :cond_8
    sget v1, Landroidx/slice/widget/GridRowView;->TEXT_LAYOUT:I

    .line 414
    :goto_6
    invoke-virtual {p5, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p5

    move-object v5, p5

    check-cast v5, Landroid/widget/TextView;

    .line 416
    iget-object p5, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz p5, :cond_b

    if-eqz p2, :cond_9

    .line 418
    invoke-virtual {p5}, Landroidx/slice/widget/SliceStyle;->getGridTitleSize()I

    move-result p5

    goto :goto_7

    :cond_9
    invoke-virtual {p5}, Landroidx/slice/widget/SliceStyle;->getGridSubtitleSize()I

    move-result p5

    :goto_7
    int-to-float p5, p5

    .line 417
    invoke-virtual {v5, v6, p5}, Landroid/widget/TextView;->setTextSize(IF)V

    if-eqz p2, :cond_a

    .line 420
    iget-object p2, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {p2}, Landroidx/slice/widget/SliceStyle;->getTitleColor()I

    move-result p2

    goto :goto_8

    :cond_a
    iget-object p2, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {p2}, Landroidx/slice/widget/SliceStyle;->getSubtitleColor()I

    move-result p2

    .line 419
    :goto_8
    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 422
    :cond_b
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 423
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getLong()J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Landroidx/slice/widget/SliceViewUtil;->getTimestampString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_9

    .line 424
    :cond_c
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSanitizedText()Ljava/lang/CharSequence;

    move-result-object p0

    .line 425
    :goto_9
    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    invoke-virtual {p3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 427
    invoke-virtual {v5, v6, p4, v6, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_d
    :goto_a
    if-eqz v5, :cond_e

    goto :goto_b

    :cond_e
    move v2, v6

    :goto_b
    return v2
.end method

.method private addSeeMoreCount(I)V
    .locals 11

    .line 267
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 268
    iget-object v1, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 270
    iget-object v1, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v1}, Landroidx/slice/widget/GridContent;->getSeeMoreItem()Landroidx/slice/SliceItem;

    move-result-object v1

    .line 271
    iget-object v3, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .line 272
    iget v4, p0, Landroidx/slice/widget/GridRowView;->mMaxCells:I

    .line 273
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v5

    const-string v6, "slice"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 274
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v5

    const-string v6, "action"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 275
    :cond_0
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 277
    new-instance p1, Landroidx/slice/widget/GridContent$CellContent;

    invoke-direct {p1, v1}, Landroidx/slice/widget/GridContent$CellContent;-><init>(Landroidx/slice/SliceItem;)V

    invoke-direct {p0, p1, v3, v4}, Landroidx/slice/widget/GridRowView;->addCell(Landroidx/slice/widget/GridContent$CellContent;II)V

    return-void

    .line 282
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 285
    iget-object v6, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v6}, Landroidx/slice/widget/GridContent;->isAllImages()Z

    move-result v6

    const/4 v7, -0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_2

    .line 286
    sget v6, Landroidx/slice/view/R$layout;->abc_slice_grid_see_more_overlay:I

    iget-object v9, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6, v9, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    .line 288
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v0, v8, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 289
    sget v0, Landroidx/slice/view/R$id;->text_see_more_count:I

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0

    .line 291
    :cond_2
    sget v0, Landroidx/slice/view/R$layout;->abc_slice_grid_see_more:I

    iget-object v6, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/LinearLayout;

    .line 293
    sget v0, Landroidx/slice/view/R$id;->text_see_more_count:I

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 296
    sget v6, Landroidx/slice/view/R$id;->text_see_more:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 297
    iget-object v9, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz v9, :cond_3

    .line 298
    invoke-virtual {v9}, Landroidx/slice/widget/SliceStyle;->getGridTitleSize()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v6, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 299
    iget-object v9, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v9}, Landroidx/slice/widget/SliceStyle;->getTitleColor()I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 302
    :cond_3
    :goto_0
    iget-object v6, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v9, v8, v7, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v5, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Landroidx/slice/view/R$string;->abc_slice_more_content:I

    new-array v9, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v9, v8

    invoke-virtual {v6, v7, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    new-instance p1, Landroidx/slice/widget/EventInfo;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceChildView;->getMode()I

    move-result v0

    const/4 v6, 0x4

    iget v7, p0, Landroidx/slice/widget/GridRowView;->mRowIndex:I

    invoke-direct {p1, v0, v6, v2, v7}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    const/4 v0, 0x2

    .line 308
    invoke-virtual {p1, v0, v3, v4}, Landroidx/slice/widget/EventInfo;->setPosition(III)V

    .line 309
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 310
    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 311
    invoke-direct {p0, v5, v2}, Landroidx/slice/widget/GridRowView;->makeClickable(Landroid/view/View;Z)V

    return-void
.end method

.method private determinePadding(Landroidx/slice/SliceItem;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 462
    :cond_0
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "image"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 463
    iget p0, p0, Landroidx/slice/widget/GridRowView;->mTextPadding:I

    return p0

    .line 464
    :cond_1
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 465
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object p1

    const-string v1, "long"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return v0

    .line 466
    :cond_3
    :goto_0
    iget-object p0, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroidx/slice/widget/SliceStyle;->getVerticalGridTextPadding()I

    move-result v0

    :cond_4
    return v0
.end method

.method private getExtraBottomPadding()I
    .locals 4

    .line 143
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->isAllImages()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    iget v0, p0, Landroidx/slice/widget/GridRowView;->mRowIndex:I

    iget v2, p0, Landroidx/slice/widget/GridRowView;->mRowCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Landroidx/slice/widget/SliceChildView;->getMode()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 145
    :cond_0
    iget-object p0, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/slice/widget/SliceStyle;->getGridBottomPadding()I

    move-result v1

    :cond_1
    return v1
.end method

.method private getExtraTopPadding()I
    .locals 2

    .line 133
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->isAllImages()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget v0, p0, Landroidx/slice/widget/GridRowView;->mRowIndex:I

    if-nez v0, :cond_0

    .line 136
    iget-object p0, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/slice/widget/SliceStyle;->getGridTopPadding()I

    move-result v1

    :cond_0
    return v1
.end method

.method private makeClickable(Landroid/view/View;Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 482
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x101030e

    .line 484
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    const v1, 0x101045c

    :cond_1
    if-eqz p2, :cond_2

    .line 488
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1}, Landroidx/slice/widget/SliceViewUtil;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 487
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 490
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method private makeEntireGridClickable(Z)V
    .locals 3

    .line 472
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move-object v2, p0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 473
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    move-object v2, p0

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 474
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mForeground:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 476
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x101030e

    .line 475
    invoke-static {v1, v2}, Landroidx/slice/widget/SliceViewUtil;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 474
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 478
    iget-object p0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    return-void
.end method

.method private onForegroundActivated(Landroid/view/MotionEvent;)V
    .locals 5

    .line 522
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x15

    if-lt v0, v3, :cond_0

    .line 523
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mForeground:Landroid/view/View;

    iget-object v3, p0, Landroidx/slice/widget/GridRowView;->mLoc:[I

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 524
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v3, p0, Landroidx/slice/widget/GridRowView;->mLoc:[I

    aget v3, v3, v1

    int-to-float v3, v3

    sub-float/2addr v0, v3

    float-to-int v0, v0

    .line 525
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget-object v4, p0, Landroidx/slice/widget/GridRowView;->mLoc:[I

    aget v4, v4, v2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    .line 526
    iget-object v4, p0, Landroidx/slice/widget/GridRowView;->mForeground:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    int-to-float v0, v0

    int-to-float v3, v3

    invoke-virtual {v4, v0, v3}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 528
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_1

    .line 530
    iget-object p0, p0, Landroidx/slice/widget/GridRowView;->mForeground:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    if-eq p1, v2, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 534
    :cond_2
    iget-object p0, p0, Landroidx/slice/widget/GridRowView;->mForeground:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method private scheduleMaxCellsUpdate()Z
    .locals 2

    .line 195
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    if-nez v0, :cond_1

    .line 200
    iput-boolean v1, p0, Landroidx/slice/widget/GridRowView;->mMaxCellUpdateScheduled:Z

    .line 201
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Landroidx/slice/widget/GridRowView;->mMaxCellsUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return v1

    .line 204
    :cond_1
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->getMaxCells()I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/GridRowView;->mMaxCells:I

    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method getMaxCells()I
    .locals 2

    .line 210
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 213
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->getGridContent()Ljava/util/ArrayList;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 215
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->getLargestImageMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 216
    iget v0, p0, Landroidx/slice/widget/GridRowView;->mLargeImageHeight:I

    goto :goto_0

    .line 217
    :cond_1
    iget v0, p0, Landroidx/slice/widget/GridRowView;->mSmallImageMinWidth:I

    .line 218
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    iget p0, p0, Landroidx/slice/widget/GridRowView;->mGutter:I

    add-int/2addr v0, p0

    div-int/2addr v1, v0

    :cond_2
    return v1

    :cond_3
    :goto_1
    const/4 p0, -0x1

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 496
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    .line 497
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroidx/slice/SliceItem;

    .line 498
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroidx/slice/widget/EventInfo;

    if-eqz v0, :cond_0

    const-string v1, "action"

    const/4 v2, 0x0

    .line 500
    invoke-static {v0, v1, v2, v2}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 504
    :try_start_0
    invoke-virtual {v0, v2, v2}, Landroidx/slice/SliceItem;->fireAction(Landroid/content/Context;Landroid/content/Intent;)V

    .line 505
    iget-object v1, p0, Landroidx/slice/widget/SliceChildView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    if-eqz v1, :cond_0

    .line 506
    iget-object p0, p0, Landroidx/slice/widget/SliceChildView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    invoke-interface {p0, p1, v0}, Landroidx/slice/widget/SliceView$OnSliceActionListener;->onSliceAction(Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "GridRowView"

    const-string v0, "PendingIntent for slice cannot be sent"

    .line 509
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 153
    iget-object p2, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    iget-object v0, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iget-object v1, p0, Landroidx/slice/widget/SliceChildView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {p2, v0, v1}, Landroidx/slice/widget/GridContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result p2

    iget v0, p0, Landroidx/slice/widget/SliceChildView;->mInsetTop:I

    add-int/2addr p2, v0

    iget v0, p0, Landroidx/slice/widget/SliceChildView;->mInsetBottom:I

    add-int/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    .line 155
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 156
    iget-object v1, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput p2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 157
    invoke-super {p0, p1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 517
    invoke-direct {p0, p2}, Landroidx/slice/widget/GridRowView;->onForegroundActivated(Landroid/view/MotionEvent;)V

    const/4 p0, 0x0

    return p0
.end method

.method populateViews()V
    .locals 6

    .line 225
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 229
    :cond_0
    invoke-direct {p0}, Landroidx/slice/widget/GridRowView;->scheduleMaxCellsUpdate()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 232
    :cond_1
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v0}, Landroidx/slice/widget/SliceContent;->getLayoutDir()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 233
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v0}, Landroidx/slice/widget/SliceContent;->getLayoutDir()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    .line 235
    :cond_2
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->getContentIntent()Landroidx/slice/SliceItem;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 236
    new-instance v0, Landroidx/slice/widget/EventInfo;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceChildView;->getMode()I

    move-result v2

    const/4 v3, 0x3

    iget v4, p0, Landroidx/slice/widget/GridRowView;->mRowIndex:I

    invoke-direct {v0, v2, v3, v1, v4}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    .line 238
    new-instance v2, Landroid/util/Pair;

    iget-object v3, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v3}, Landroidx/slice/widget/GridContent;->getContentIntent()Landroidx/slice/SliceItem;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 239
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 240
    invoke-direct {p0, v1}, Landroidx/slice/widget/GridRowView;->makeEntireGridClickable(Z)V

    .line 242
    :cond_3
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v0}, Landroidx/slice/widget/SliceContent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 244
    iget-object v2, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 246
    :cond_4
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v0}, Landroidx/slice/widget/GridContent;->getGridContent()Ljava/util/ArrayList;

    move-result-object v0

    .line 247
    iget-object v2, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v2}, Landroidx/slice/widget/GridContent;->getLargestImageMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 248
    iget-object v2, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_0

    .line 250
    :cond_5
    iget-object v2, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 252
    :goto_0
    iget v2, p0, Landroidx/slice/widget/GridRowView;->mMaxCells:I

    .line 253
    iget-object v3, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    invoke-virtual {v3}, Landroidx/slice/widget/GridContent;->getSeeMoreItem()Landroidx/slice/SliceItem;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_6
    move v1, v4

    .line 254
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v4, v3, :cond_8

    .line 255
    iget-object v3, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-lt v3, v2, :cond_7

    if-eqz v1, :cond_8

    .line 257
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-direct {p0, v0}, Landroidx/slice/widget/GridRowView;->addSeeMoreCount(I)V

    goto :goto_2

    .line 261
    :cond_7
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/slice/widget/GridContent$CellContent;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-direct {p0, v3, v4, v5}, Landroidx/slice/widget/GridRowView;->addCell(Landroidx/slice/widget/GridContent$CellContent;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    :goto_2
    return-void

    .line 226
    :cond_9
    :goto_3
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->resetView()V

    return-void
.end method

.method public resetView()V
    .locals 3

    .line 540
    iget-boolean v0, p0, Landroidx/slice/widget/GridRowView;->mMaxCellUpdateScheduled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 541
    iput-boolean v1, p0, Landroidx/slice/widget/GridRowView;->mMaxCellUpdateScheduled:Z

    .line 542
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Landroidx/slice/widget/GridRowView;->mMaxCellsUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 544
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, 0x2

    .line 545
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    .line 546
    invoke-direct {p0, v1}, Landroidx/slice/widget/GridRowView;->makeEntireGridClickable(Z)V

    return-void
.end method

.method public setInsets(IIII)V
    .locals 2

    .line 128
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/slice/widget/SliceChildView;->setInsets(IIII)V

    .line 129
    iget-object v0, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Landroidx/slice/widget/GridRowView;->getExtraTopPadding()I

    move-result v1

    add-int/2addr p2, v1

    invoke-direct {p0}, Landroidx/slice/widget/GridRowView;->getExtraBottomPadding()I

    move-result p0

    add-int/2addr p4, p0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method public setSliceItem(Landroidx/slice/widget/SliceContent;ZIILandroidx/slice/widget/SliceView$OnSliceActionListener;)V
    .locals 0

    .line 176
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->resetView()V

    .line 177
    invoke-virtual {p0, p5}, Landroidx/slice/widget/SliceChildView;->setSliceActionListener(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V

    .line 178
    iput p3, p0, Landroidx/slice/widget/GridRowView;->mRowIndex:I

    .line 179
    iput p4, p0, Landroidx/slice/widget/GridRowView;->mRowCount:I

    .line 180
    check-cast p1, Landroidx/slice/widget/GridContent;

    iput-object p1, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    .line 182
    invoke-direct {p0}, Landroidx/slice/widget/GridRowView;->scheduleMaxCellsUpdate()Z

    move-result p1

    if-nez p1, :cond_0

    .line 183
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->populateViews()V

    .line 185
    :cond_0
    iget-object p1, p0, Landroidx/slice/widget/GridRowView;->mViewContainer:Landroid/widget/LinearLayout;

    iget p2, p0, Landroidx/slice/widget/SliceChildView;->mInsetStart:I

    iget p3, p0, Landroidx/slice/widget/SliceChildView;->mInsetTop:I

    invoke-direct {p0}, Landroidx/slice/widget/GridRowView;->getExtraTopPadding()I

    move-result p4

    add-int/2addr p3, p4

    iget p4, p0, Landroidx/slice/widget/SliceChildView;->mInsetEnd:I

    iget p5, p0, Landroidx/slice/widget/SliceChildView;->mInsetBottom:I

    .line 186
    invoke-direct {p0}, Landroidx/slice/widget/GridRowView;->getExtraBottomPadding()I

    move-result p0

    add-int/2addr p5, p0

    .line 185
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method public setTint(I)V
    .locals 0

    .line 162
    invoke-super {p0, p1}, Landroidx/slice/widget/SliceChildView;->setTint(I)V

    .line 163
    iget-object p1, p0, Landroidx/slice/widget/GridRowView;->mGridContent:Landroidx/slice/widget/GridContent;

    if-eqz p1, :cond_0

    .line 165
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->resetView()V

    .line 166
    invoke-virtual {p0}, Landroidx/slice/widget/GridRowView;->populateViews()V

    :cond_0
    return-void
.end method
