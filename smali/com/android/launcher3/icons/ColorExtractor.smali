.class public Lcom/android/launcher3/icons/ColorExtractor;
.super Ljava/lang/Object;
.source "ColorExtractor.java"


# instance fields
.field private final mTmpHsv:[F

.field private final mTmpHueScoreHistogram:[F

.field private final mTmpPixels:[I

.field private final mTmpRgbScores:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 29
    iput-object v0, p0, Lcom/android/launcher3/icons/ColorExtractor;->mTmpHsv:[F

    const/16 v0, 0x168

    new-array v0, v0, [F

    .line 30
    iput-object v0, p0, Lcom/android/launcher3/icons/ColorExtractor;->mTmpHueScoreHistogram:[F

    const/16 v0, 0x14

    new-array v0, v0, [I

    .line 31
    iput-object v0, p0, Lcom/android/launcher3/icons/ColorExtractor;->mTmpPixels:[I

    .line 32
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/icons/ColorExtractor;->mTmpRgbScores:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public findDominantColorByHue(Landroid/graphics/Bitmap;)I
    .locals 1

    const/16 v0, 0x14

    .line 39
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/icons/ColorExtractor;->findDominantColorByHue(Landroid/graphics/Bitmap;I)I

    move-result p0

    return p0
.end method

.method public findDominantColorByHue(Landroid/graphics/Bitmap;I)I
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 47
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 48
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    mul-int v4, v2, v3

    .line 49
    div-int/2addr v4, v1

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_0

    move v4, v5

    .line 55
    :cond_0
    iget-object v6, v0, Lcom/android/launcher3/icons/ColorExtractor;->mTmpHsv:[F

    const/4 v7, 0x0

    .line 56
    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 60
    iget-object v8, v0, Lcom/android/launcher3/icons/ColorExtractor;->mTmpHueScoreHistogram:[F

    .line 61
    invoke-static {v8, v7}, Ljava/util/Arrays;->fill([FF)V

    const/4 v7, -0x1

    .line 65
    iget-object v9, v0, Lcom/android/launcher3/icons/ColorExtractor;->mTmpPixels:[I

    const/4 v10, 0x0

    .line 66
    invoke-static {v9, v10}, Ljava/util/Arrays;->fill([II)V

    move v12, v10

    move v13, v12

    const/high16 v14, -0x40800000    # -1.0f

    :goto_0
    const/high16 v16, -0x1000000

    if-ge v12, v2, :cond_6

    move v11, v10

    :goto_1
    if-ge v11, v3, :cond_5

    move-object/from16 v15, p1

    .line 71
    invoke-virtual {v15, v11, v12}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v17

    shr-int/lit8 v5, v17, 0x18

    and-int/lit16 v5, v5, 0xff

    const/16 v10, 0x80

    if-ge v5, v10, :cond_1

    move/from16 v17, v2

    goto :goto_2

    :cond_1
    or-int v5, v17, v16

    .line 79
    invoke-static {v5, v6}, Landroid/graphics/Color;->colorToHSV(I[F)V

    move/from16 v17, v2

    const/4 v10, 0x0

    .line 81
    aget v2, v6, v10

    float-to-int v2, v2

    if-ltz v2, :cond_4

    .line 82
    array-length v10, v8

    if-lt v2, v10, :cond_2

    goto :goto_2

    :cond_2
    if-ge v13, v1, :cond_3

    add-int/lit8 v10, v13, 0x1

    .line 87
    aput v5, v9, v13

    move v13, v10

    :cond_3
    const/4 v5, 0x1

    .line 89
    aget v10, v6, v5

    const/4 v5, 0x2

    aget v18, v6, v5

    mul-float v10, v10, v18

    .line 90
    aget v5, v8, v2

    add-float/2addr v5, v10

    aput v5, v8, v2

    .line 91
    aget v5, v8, v2

    cmpl-float v5, v5, v14

    if-lez v5, :cond_4

    .line 92
    aget v5, v8, v2

    move v7, v2

    move v14, v5

    :cond_4
    :goto_2
    add-int/2addr v11, v4

    move/from16 v2, v17

    const/4 v5, 0x1

    const/4 v10, 0x0

    goto :goto_1

    :cond_5
    move-object/from16 v15, p1

    move/from16 v17, v2

    add-int/2addr v12, v4

    const/4 v5, 0x1

    const/4 v10, 0x0

    goto :goto_0

    .line 98
    :cond_6
    iget-object v0, v0, Lcom/android/launcher3/icons/ColorExtractor;->mTmpRgbScores:Landroid/util/SparseArray;

    .line 99
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const/4 v10, 0x0

    const/high16 v11, -0x40800000    # -1.0f

    :goto_3
    if-ge v10, v13, :cond_a

    .line 106
    aget v1, v9, v10

    .line 107
    invoke-static {v1, v6}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v2, 0x0

    .line 108
    aget v3, v6, v2

    float-to-int v3, v3

    if-ne v3, v7, :cond_8

    const/4 v3, 0x1

    .line 110
    aget v4, v6, v3

    const/4 v5, 0x2

    .line 111
    aget v8, v6, v5

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float/2addr v12, v4

    float-to-int v12, v12

    const v14, 0x461c4000    # 10000.0f

    mul-float/2addr v14, v8

    float-to-int v14, v14

    add-int/2addr v12, v14

    mul-float/2addr v4, v8

    .line 115
    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    if-nez v8, :cond_7

    goto :goto_4

    .line 116
    :cond_7
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    add-float/2addr v4, v8

    .line 117
    :goto_4
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v0, v12, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    cmpl-float v8, v4, v11

    if-lez v8, :cond_9

    move/from16 v16, v1

    move v11, v4

    goto :goto_5

    :cond_8
    const/4 v3, 0x1

    const/4 v5, 0x2

    :cond_9
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_a
    return v16
.end method
