.class public final Lcom/google/zxing/common/detector/WhiteRectangleDetector;
.super Ljava/lang/Object;
.source "WhiteRectangleDetector.java"


# instance fields
.field private final downInit:I

.field private final height:I

.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private final leftInit:I

.field private final rightInit:I

.field private final upInit:I

.field private final width:I


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 51
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    .line 52
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    add-int/lit8 v0, p1, -0x1e

    shr-int/lit8 v0, v0, 0x1

    .line 53
    iput v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->leftInit:I

    add-int/lit8 v1, p1, 0x1e

    shr-int/lit8 v1, v1, 0x1

    .line 54
    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->rightInit:I

    .line 55
    iget v2, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    add-int/lit8 v3, v2, -0x1e

    shr-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->upInit:I

    add-int/lit8 v4, v2, 0x1e

    shr-int/lit8 v4, v4, 0x1

    .line 56
    iput v4, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->downInit:I

    if-ltz v3, :cond_0

    if-ltz v0, :cond_0

    if-ge v4, v2, :cond_0

    if-ge v1, p1, :cond_0

    return-void

    .line 58
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;III)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 67
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    .line 68
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    shr-int/lit8 p2, p2, 0x1

    sub-int v0, p3, p2

    .line 70
    iput v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->leftInit:I

    add-int/2addr p3, p2

    .line 71
    iput p3, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->rightInit:I

    sub-int v1, p4, p2

    .line 72
    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->upInit:I

    add-int/2addr p4, p2

    .line 73
    iput p4, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->downInit:I

    if-ltz v1, :cond_0

    if-ltz v0, :cond_0

    .line 74
    iget p0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    if-ge p4, p0, :cond_0

    if-ge p3, p1, :cond_0

    return-void

    .line 75
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method private centerEdges(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;
    .locals 10

    .line 281
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    .line 282
    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p1

    .line 283
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    .line 284
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p2

    .line 285
    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    .line 286
    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p3

    .line 287
    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    .line 288
    invoke-virtual {p4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result p4

    .line 290
    iget p0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    int-to-float p0, p0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr p0, v4

    cmpg-float p0, v0, p0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/high16 v9, 0x3f800000    # 1.0f

    if-gez p0, :cond_0

    new-array p0, v8, [Lcom/google/zxing/ResultPoint;

    .line 291
    new-instance v8, Lcom/google/zxing/ResultPoint;

    sub-float/2addr v3, v9

    add-float/2addr p4, v9

    invoke-direct {v8, v3, p4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v8, p0, v7

    new-instance p4, Lcom/google/zxing/ResultPoint;

    add-float/2addr v1, v9

    add-float/2addr p2, v9

    invoke-direct {p4, v1, p2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object p4, p0, v6

    new-instance p2, Lcom/google/zxing/ResultPoint;

    sub-float/2addr v2, v9

    sub-float/2addr p3, v9

    invoke-direct {p2, v2, p3}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object p2, p0, v5

    new-instance p2, Lcom/google/zxing/ResultPoint;

    add-float/2addr v0, v9

    sub-float/2addr p1, v9

    invoke-direct {p2, v0, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object p2, p0, v4

    return-object p0

    :cond_0
    new-array p0, v8, [Lcom/google/zxing/ResultPoint;

    .line 297
    new-instance v8, Lcom/google/zxing/ResultPoint;

    add-float/2addr v3, v9

    add-float/2addr p4, v9

    invoke-direct {v8, v3, p4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v8, p0, v7

    new-instance p4, Lcom/google/zxing/ResultPoint;

    add-float/2addr v1, v9

    sub-float/2addr p2, v9

    invoke-direct {p4, v1, p2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object p4, p0, v6

    new-instance p2, Lcom/google/zxing/ResultPoint;

    sub-float/2addr v2, v9

    add-float/2addr p3, v9

    invoke-direct {p2, v2, p3}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object p2, p0, v5

    new-instance p2, Lcom/google/zxing/ResultPoint;

    sub-float/2addr v0, v9

    sub-float/2addr p1, v9

    invoke-direct {p2, v0, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object p2, p0, v4

    return-object p0
.end method

.method private containsBlackPoint(IIIZ)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p4, :cond_1

    :goto_0
    if-gt p1, p2, :cond_3

    .line 318
    iget-object p4, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {p4, p1, p3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result p4

    if-eqz p4, :cond_0

    return v0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-gt p1, p2, :cond_3

    .line 324
    iget-object p4, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {p4, p3, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result p4

    if-eqz p4, :cond_2

    return v0

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;
    .locals 5

    .line 244
    invoke-static {p1, p2, p3, p4}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v0

    sub-float/2addr p3, p1

    int-to-float v1, v0

    div-float/2addr p3, v1

    sub-float/2addr p4, p2

    div-float/2addr p4, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    int-to-float v2, v1

    mul-float v3, v2, p3

    add-float/2addr v3, p1

    .line 249
    invoke-static {v3}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v3

    mul-float/2addr v2, p4

    add-float/2addr v2, p2

    .line 250
    invoke-static {v2}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v2

    .line 251
    iget-object v4, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v4, v3, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 252
    new-instance p0, Lcom/google/zxing/ResultPoint;

    int-to-float p1, v3

    int-to-float p2, v2

    invoke-direct {p0, p1, p2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public detect()[Lcom/google/zxing/ResultPoint;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 95
    iget v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->leftInit:I

    .line 96
    iget v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->rightInit:I

    .line 97
    iget v2, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->upInit:I

    .line 98
    iget v3, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->downInit:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v7, v4

    move v6, v5

    :cond_0
    :goto_0
    if-eqz v6, :cond_d

    move v8, v4

    move v6, v5

    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    .line 111
    iget v6, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    if-ge v1, v6, :cond_2

    .line 112
    invoke-direct {p0, v2, v3, v1, v4}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v1, v1, 0x1

    move v8, v5

    goto :goto_1

    .line 119
    :cond_2
    iget v6, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    if-lt v1, v6, :cond_3

    :goto_2
    move v4, v5

    goto :goto_6

    :cond_3
    move v6, v5

    :cond_4
    :goto_3
    if-eqz v6, :cond_5

    .line 128
    iget v6, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    if-ge v3, v6, :cond_5

    .line 129
    invoke-direct {p0, v0, v1, v3, v5}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v6

    if-eqz v6, :cond_4

    add-int/lit8 v3, v3, 0x1

    move v8, v5

    goto :goto_3

    .line 136
    :cond_5
    iget v6, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    if-lt v3, v6, :cond_6

    goto :goto_2

    :cond_6
    move v6, v5

    :cond_7
    :goto_4
    if-eqz v6, :cond_8

    if-ltz v0, :cond_8

    .line 146
    invoke-direct {p0, v2, v3, v0, v4}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v6

    if-eqz v6, :cond_7

    add-int/lit8 v0, v0, -0x1

    move v8, v5

    goto :goto_4

    :cond_8
    if-gez v0, :cond_9

    goto :goto_2

    :cond_9
    move v6, v8

    move v8, v5

    :cond_a
    :goto_5
    if-eqz v8, :cond_b

    if-ltz v2, :cond_b

    .line 163
    invoke-direct {p0, v0, v1, v2, v5}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v8

    if-eqz v8, :cond_a

    add-int/lit8 v2, v2, -0x1

    move v6, v5

    goto :goto_5

    :cond_b
    if-gez v2, :cond_c

    goto :goto_2

    :cond_c
    if-eqz v6, :cond_0

    move v7, v5

    goto :goto_0

    :cond_d
    :goto_6
    if-nez v4, :cond_1a

    if-eqz v7, :cond_1a

    sub-int v4, v1, v0

    const/4 v6, 0x0

    move v7, v5

    move-object v8, v6

    :goto_7
    if-ge v7, v4, :cond_f

    int-to-float v8, v0

    sub-int v9, v3, v7

    int-to-float v9, v9

    add-int v10, v0, v7

    int-to-float v10, v10

    int-to-float v11, v3

    .line 187
    invoke-direct {p0, v8, v9, v10, v11}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v8

    if-eqz v8, :cond_e

    goto :goto_8

    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_f
    :goto_8
    if-eqz v8, :cond_19

    move v7, v5

    move-object v9, v6

    :goto_9
    if-ge v7, v4, :cond_11

    int-to-float v9, v0

    add-int v10, v2, v7

    int-to-float v10, v10

    add-int v11, v0, v7

    int-to-float v11, v11

    int-to-float v12, v2

    .line 200
    invoke-direct {p0, v9, v10, v11, v12}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v9

    if-eqz v9, :cond_10

    goto :goto_a

    :cond_10
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_11
    :goto_a
    if-eqz v9, :cond_18

    move v0, v5

    move-object v7, v6

    :goto_b
    if-ge v0, v4, :cond_13

    int-to-float v7, v1

    add-int v10, v2, v0

    int-to-float v10, v10

    sub-int v11, v1, v0

    int-to-float v11, v11

    int-to-float v12, v2

    .line 213
    invoke-direct {p0, v7, v10, v11, v12}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v7

    if-eqz v7, :cond_12

    goto :goto_c

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_13
    :goto_c
    if-eqz v7, :cond_17

    :goto_d
    if-ge v5, v4, :cond_15

    int-to-float v0, v1

    sub-int v2, v3, v5

    int-to-float v2, v2

    sub-int v6, v1, v5

    int-to-float v6, v6

    int-to-float v10, v3

    .line 226
    invoke-direct {p0, v0, v2, v6, v10}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v6

    if-eqz v6, :cond_14

    goto :goto_e

    :cond_14
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_15
    :goto_e
    if-eqz v6, :cond_16

    .line 236
    invoke-direct {p0, v6, v8, v7, v9}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->centerEdges(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;

    move-result-object p0

    return-object p0

    .line 233
    :cond_16
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    .line 220
    :cond_17
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    .line 207
    :cond_18
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    .line 194
    :cond_19
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    .line 239
    :cond_1a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method
