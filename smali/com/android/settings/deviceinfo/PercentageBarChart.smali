.class public Lcom/android/settings/deviceinfo/PercentageBarChart;
.super Landroid/view/View;
.source "PercentageBarChart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;
    }
.end annotation


# instance fields
.field private final mEmptyPaint:Landroid/graphics/Paint;

.field private mEntries:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mMinTickWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mEmptyPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 40
    iput v0, p0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mMinTickWidth:I

    .line 62
    sget-object v1, Lcom/android/settings/R$styleable;->PercentageBarChart:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 63
    sget p2, Lcom/android/settings/R$styleable;->PercentageBarChart_minTickWidth:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mMinTickWidth:I

    .line 64
    sget p2, Lcom/android/settings/R$styleable;->PercentageBarChart_emptyColor:I

    const/high16 v0, -0x1000000

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 65
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    iget-object p1, p0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mEmptyPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    iget-object p0, p0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mEmptyPaint:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21

    move-object/from16 v0, p0

    .line 73
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 75
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 76
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 77
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 78
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int v5, v2, v1

    .line 82
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_4

    int-to-float v2, v2

    .line 86
    iget-object v6, v0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mEntries:Ljava/util/Collection;

    if-eqz v6, :cond_3

    .line 87
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v11, v2

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;

    .line 89
    iget v8, v2, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->percentage:F

    cmpl-float v9, v8, v7

    if-nez v9, :cond_0

    move v8, v7

    goto :goto_1

    .line 92
    :cond_0
    iget v9, v0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mMinTickWidth:I

    int-to-float v9, v9

    int-to-float v10, v5

    mul-float/2addr v10, v8

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v8

    :goto_1
    sub-float v14, v11, v8

    int-to-float v9, v1

    cmpg-float v8, v14, v9

    if-gez v8, :cond_1

    int-to-float v10, v3

    int-to-float v12, v4

    .line 97
    iget-object v13, v2, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->paint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_1
    int-to-float v10, v3

    int-to-float v12, v4

    .line 101
    iget-object v13, v2, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->paint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    move v9, v14

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move v11, v14

    goto :goto_0

    :cond_2
    move/from16 v18, v11

    goto :goto_2

    :cond_3
    move/from16 v18, v2

    :goto_2
    int-to-float v1, v1

    int-to-float v2, v3

    int-to-float v3, v4

    .line 106
    iget-object v0, v0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mEmptyPaint:Landroid/graphics/Paint;

    move-object/from16 v15, p1

    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 v19, v3

    move-object/from16 v20, v0

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_6

    :cond_4
    int-to-float v1, v1

    .line 110
    iget-object v6, v0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mEntries:Ljava/util/Collection;

    if-eqz v6, :cond_8

    .line 111
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v9, v1

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;

    .line 113
    iget v8, v1, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->percentage:F

    cmpl-float v10, v8, v7

    if-nez v10, :cond_5

    move v8, v7

    goto :goto_4

    .line 116
    :cond_5
    iget v10, v0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mMinTickWidth:I

    int-to-float v10, v10

    int-to-float v11, v5

    mul-float/2addr v11, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v8

    :goto_4
    add-float v14, v9, v8

    int-to-float v11, v2

    cmpl-float v8, v14, v11

    if-lez v8, :cond_6

    int-to-float v10, v3

    int-to-float v12, v4

    .line 121
    iget-object v13, v1, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->paint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_6
    int-to-float v10, v3

    int-to-float v12, v4

    .line 125
    iget-object v13, v1, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->paint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    move v11, v14

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move v9, v14

    goto :goto_3

    :cond_7
    move/from16 v16, v9

    goto :goto_5

    :cond_8
    move/from16 v16, v1

    :goto_5
    int-to-float v1, v3

    int-to-float v2, v2

    int-to-float v3, v4

    .line 130
    iget-object v0, v0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mEmptyPaint:Landroid/graphics/Paint;

    move-object/from16 v15, p1

    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v3

    move-object/from16 v20, v0

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_6
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mEmptyPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setEntries(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;",
            ">;)V"
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mEntries:Ljava/util/Collection;

    return-void
.end method
