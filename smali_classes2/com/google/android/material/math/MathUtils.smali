.class public final Lcom/google/android/material/math/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# direct methods
.method public static constrain(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    if-le p0, p2, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method

.method public static constrain(JJJ)J
    .locals 1

    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    move-wide p0, p2

    goto :goto_0

    :cond_0
    cmp-long p2, p0, p4

    if-lez p2, :cond_1

    move-wide p0, p4

    :cond_1
    :goto_0
    return-wide p0
.end method

.method public static dist(FFFF)F
    .locals 0

    sub-float/2addr p2, p0

    sub-float/2addr p3, p1

    float-to-double p0, p2

    float-to-double p2, p3

    .line 48
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static distanceToFurthestCorner(FFFFFF)F
    .locals 1

    .line 84
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/material/math/MathUtils;->dist(FFFF)F

    move-result v0

    .line 85
    invoke-static {p0, p1, p4, p3}, Lcom/google/android/material/math/MathUtils;->dist(FFFF)F

    move-result p3

    .line 86
    invoke-static {p0, p1, p4, p5}, Lcom/google/android/material/math/MathUtils;->dist(FFFF)F

    move-result p4

    .line 87
    invoke-static {p0, p1, p2, p5}, Lcom/google/android/material/math/MathUtils;->dist(FFFF)F

    move-result p0

    .line 83
    invoke-static {v0, p3, p4, p0}, Lcom/google/android/material/math/MathUtils;->max(FFFF)F

    move-result p0

    return p0
.end method

.method public static geq(FFF)Z
    .locals 0

    add-float/2addr p0, p2

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static lerp(FFF)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float/2addr v0, p0

    mul-float/2addr p2, p1

    add-float/2addr v0, p2

    return v0
.end method

.method public static lerpDeg(FFF)F
    .locals 2

    sub-float/2addr p1, p0

    const/high16 v0, 0x43340000    # 180.0f

    add-float/2addr p1, v0

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr p1, v1

    sub-float/2addr p1, v0

    mul-float/2addr p1, p2

    add-float/2addr p1, p0

    return p1
.end method

.method private static max(FFFF)F
    .locals 1

    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    cmpl-float v0, p0, p3

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    cmpl-float p0, p1, p2

    if-lez p0, :cond_1

    cmpl-float p0, p1, p3

    if-lez p0, :cond_1

    move p0, p1

    goto :goto_0

    :cond_1
    cmpl-float p0, p2, p3

    if-lez p0, :cond_2

    move p0, p2

    goto :goto_0

    :cond_2
    move p0, p3

    :goto_0
    return p0
.end method
