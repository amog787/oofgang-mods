.class public Lcom/google/android/material/indicator/utils/CoordinatesUtils;
.super Ljava/lang/Object;
.source "CoordinatesUtils.java"


# direct methods
.method public static getCoordinate(Lcom/google/android/material/indicator/draw/data/Indicator;I)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/indicator/draw/data/Indicator;->getOrientation()Lcom/google/android/material/indicator/draw/data/Orientation;

    move-result-object v0

    sget-object v1, Lcom/google/android/material/indicator/draw/data/Orientation;->HORIZONTAL:Lcom/google/android/material/indicator/draw/data/Orientation;

    if-ne v0, v1, :cond_1

    .line 23
    invoke-static {p0, p1}, Lcom/google/android/material/indicator/utils/CoordinatesUtils;->getXCoordinate(Lcom/google/android/material/indicator/draw/data/Indicator;I)I

    move-result p0

    return p0

    .line 25
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/material/indicator/utils/CoordinatesUtils;->getYCoordinate(Lcom/google/android/material/indicator/draw/data/Indicator;I)I

    move-result p0

    return p0
.end method

.method private static getFitPosition(Lcom/google/android/material/indicator/draw/data/Indicator;FF)I
    .locals 10

    .line 83
    invoke-virtual {p0}, Lcom/google/android/material/indicator/draw/data/Indicator;->getCount()I

    move-result v0

    .line 84
    invoke-virtual {p0}, Lcom/google/android/material/indicator/draw/data/Indicator;->getRadius()I

    move-result v1

    .line 85
    invoke-virtual {p0}, Lcom/google/android/material/indicator/draw/data/Indicator;->getStroke()I

    move-result v2

    .line 86
    invoke-virtual {p0}, Lcom/google/android/material/indicator/draw/data/Indicator;->getPadding()I

    move-result v3

    .line 88
    invoke-virtual {p0}, Lcom/google/android/material/indicator/draw/data/Indicator;->getOrientation()Lcom/google/android/material/indicator/draw/data/Orientation;

    move-result-object v4

    sget-object v5, Lcom/google/android/material/indicator/draw/data/Orientation;->HORIZONTAL:Lcom/google/android/material/indicator/draw/data/Orientation;

    if-ne v4, v5, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/indicator/draw/data/Indicator;->getHeight()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/indicator/draw/data/Indicator;->getWidth()I

    move-result p0

    :goto_0
    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_1
    if-ge v5, v0, :cond_5

    if-lez v5, :cond_1

    move v7, v3

    goto :goto_2

    .line 92
    :cond_1
    div-int/lit8 v7, v3, 0x2

    :goto_2
    mul-int/lit8 v8, v1, 0x2

    .line 95
    div-int/lit8 v9, v2, 0x2

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    add-int/2addr v8, v6

    int-to-float v6, v6

    cmpl-float v6, p1, v6

    const/4 v7, 0x1

    if-ltz v6, :cond_2

    int-to-float v6, v8

    cmpg-float v6, p1, v6

    if-gtz v6, :cond_2

    move v6, v7

    goto :goto_3

    :cond_2
    move v6, v4

    :goto_3
    const/4 v9, 0x0

    cmpl-float v9, p2, v9

    if-ltz v9, :cond_3

    int-to-float v9, p0

    cmpg-float v9, p2, v9

    if-gtz v9, :cond_3

    goto :goto_4

    :cond_3
    move v7, v4

    :goto_4
    if-eqz v6, :cond_4

    if-eqz v7, :cond_4

    return v5

    :cond_4
    add-int/lit8 v5, v5, 0x1

    move v6, v8

    goto :goto_1

    :cond_5
    const/4 p0, -0x1

    return p0
.end method

.method private static getHorizontalCoordinate(Lcom/google/android/material/indicator/draw/data/Indicator;I)I
    .locals 7

    .line 110
    invoke-virtual {p0}, Lcom/google/android/material/indicator/draw/data/Indicator;->getCount()I

    move-result v0

    .line 111
    invoke-virtual {p0}, Lcom/google/android/material/indicator/draw/data/Indicator;->getRadius()I

    move-result v1

    .line 112
    invoke-virtual {p0}, Lcom/google/android/material/indicator/draw/data/Indicator;->getStroke()I

    move-result v2

    .line 113
    invoke-virtual {p0}, Lcom/google/android/material/indicator/draw/data/Indicator;->getPadding()I

    move-result p0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_1

    .line 117
    div-int/lit8 v5, v2, 0x2

    add-int v6, v1, v5

    add-int/2addr v4, v6

    if-ne p1, v3, :cond_0

    return v4

    :cond_0
    add-int v6, v1, p0

    add-int/2addr v6, v5

    add-int/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v4
.end method

.method public static getPosition(Lcom/google/android/material/indicator/draw/data/Indicator;FF)I
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/indicator/draw/data/Indicator;->getOrientation()Lcom/google/android/material/indicator/draw/data/Orientation;

    move-result-object v0

    sget-object v1, Lcom/google/android/material/indicator/draw/data/Orientation;->HORIZONTAL:Lcom/google/android/material/indicator/draw/data/Orientation;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, p2

    move p2, p1

    move p1, v2

    .line 79
    :goto_0
    invoke-static {p0, p1, p2}, Lcom/google/android/material/indicator/utils/CoordinatesUtils;->getFitPosition(Lcom/google/android/material/indicator/draw/data/Indicator;FF)I

    move-result p0

    return p0
.end method

.method public static getProgress(Lcom/google/android/material/indicator/draw/data/Indicator;IFZ)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/indicator/draw/data/Indicator;",
            "IFZ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 137
    invoke-virtual {p0}, Lcom/google/android/material/indicator/draw/data/Indicator;->getCount()I

    move-result v0

    .line 138
    invoke-virtual {p0}, Lcom/google/android/material/indicator/draw/data/Indicator;->getSelectedPosition()I

    move-result v1

    if-eqz p3, :cond_0

    add-int/lit8 v2, v0, -0x1

    sub-int p1, v2, p1

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gez p1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    sub-int/2addr v0, v3

    if-le p1, v0, :cond_2

    move p1, v0

    :cond_2
    :goto_0
    if-le p1, v1, :cond_3

    move v0, v3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    if-eqz p3, :cond_5

    add-int/lit8 v4, p1, -0x1

    if-ge v4, v1, :cond_4

    :goto_2
    move v4, v3

    goto :goto_3

    :cond_4
    move v4, v2

    goto :goto_3

    :cond_5
    add-int/lit8 v4, p1, 0x1

    if-ge v4, v1, :cond_4

    goto :goto_2

    :goto_3
    if-nez v0, :cond_6

    if-eqz v4, :cond_7

    .line 162
    :cond_6
    invoke-virtual {p0, p1}, Lcom/google/android/material/indicator/draw/data/Indicator;->setSelectedPosition(I)V

    move v1, p1

    :cond_7
    const/4 p0, 0x0

    if-ne v1, p1, :cond_8

    cmpl-float v0, p2, p0

    if-eqz v0, :cond_8

    move v2, v3

    :cond_8
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz v2, :cond_a

    if-eqz p3, :cond_9

    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_a
    sub-float p2, v0, p2

    :goto_4
    cmpl-float p3, p2, v0

    if-lez p3, :cond_b

    move p0, v0

    goto :goto_5

    :cond_b
    cmpg-float p3, p2, p0

    if-gez p3, :cond_c

    goto :goto_5

    :cond_c
    move p0, p2

    .line 185
    :goto_5
    new-instance p2, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method private static getVerticalCoordinate(Lcom/google/android/material/indicator/draw/data/Indicator;)I
    .locals 0

    .line 130
    invoke-virtual {p0}, Lcom/google/android/material/indicator/draw/data/Indicator;->getRadius()I

    move-result p0

    return p0
.end method

.method public static getXCoordinate(Lcom/google/android/material/indicator/draw/data/Indicator;I)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/indicator/draw/data/Indicator;->getOrientation()Lcom/google/android/material/indicator/draw/data/Orientation;

    move-result-object v0

    sget-object v1, Lcom/google/android/material/indicator/draw/data/Orientation;->HORIZONTAL:Lcom/google/android/material/indicator/draw/data/Orientation;

    if-ne v0, v1, :cond_1

    .line 37
    invoke-static {p0, p1}, Lcom/google/android/material/indicator/utils/CoordinatesUtils;->getHorizontalCoordinate(Lcom/google/android/material/indicator/draw/data/Indicator;I)I

    move-result p1

    goto :goto_0

    .line 39
    :cond_1
    invoke-static {p0}, Lcom/google/android/material/indicator/utils/CoordinatesUtils;->getVerticalCoordinate(Lcom/google/android/material/indicator/draw/data/Indicator;)I

    move-result p1

    .line 42
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/indicator/draw/data/Indicator;->getPaddingLeft()I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method public static getYCoordinate(Lcom/google/android/material/indicator/draw/data/Indicator;I)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/indicator/draw/data/Indicator;->getOrientation()Lcom/google/android/material/indicator/draw/data/Orientation;

    move-result-object v0

    sget-object v1, Lcom/google/android/material/indicator/draw/data/Orientation;->HORIZONTAL:Lcom/google/android/material/indicator/draw/data/Orientation;

    if-ne v0, v1, :cond_1

    .line 53
    invoke-static {p0}, Lcom/google/android/material/indicator/utils/CoordinatesUtils;->getVerticalCoordinate(Lcom/google/android/material/indicator/draw/data/Indicator;)I

    move-result p1

    goto :goto_0

    .line 55
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/material/indicator/utils/CoordinatesUtils;->getHorizontalCoordinate(Lcom/google/android/material/indicator/draw/data/Indicator;I)I

    move-result p1

    .line 58
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/indicator/draw/data/Indicator;->getPaddingTop()I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method
