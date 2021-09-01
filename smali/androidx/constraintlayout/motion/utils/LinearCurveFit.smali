.class public Landroidx/constraintlayout/motion/utils/LinearCurveFit;
.super Landroidx/constraintlayout/motion/utils/CurveFit;
.source "LinearCurveFit.java"


# instance fields
.field private mT:[D

.field private mY:[[D


# direct methods
.method public constructor <init>([D[[D)V
    .locals 9

    .line 30
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/CurveFit;-><init>()V

    .line 31
    array-length v0, p1

    const/4 v0, 0x0

    .line 32
    aget-object v1, p2, v0

    array-length v1, v1

    .line 33
    iput-object p1, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    .line 34
    iput-object p2, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    const/4 p0, 0x2

    if-le v1, p0, :cond_1

    const-wide/16 v1, 0x0

    move p0, v0

    move-wide v3, v1

    .line 38
    :goto_0
    array-length v5, p1

    if-ge p0, v5, :cond_1

    .line 39
    aget-object v5, p2, p0

    aget-wide v5, v5, v0

    .line 40
    aget-object v7, p2, p0

    aget-wide v7, v7, v0

    if-lez p0, :cond_0

    sub-double v1, v5, v1

    sub-double v3, v7, v3

    .line 42
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    :cond_0
    add-int/lit8 p0, p0, 0x1

    move-wide v1, v5

    move-wide v3, v7

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getPos(DI)D
    .locals 8

    .line 173
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    array-length v1, v0

    const/4 v2, 0x0

    .line 174
    aget-wide v3, v0, v2

    cmpg-double v3, p1, v3

    if-gtz v3, :cond_0

    .line 175
    iget-object p0, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object p0, p0, v2

    aget-wide p0, p0, p3

    return-wide p0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 177
    aget-wide v3, v0, v1

    cmpl-double v0, p1, v3

    if-ltz v0, :cond_1

    .line 178
    iget-object p0, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object p0, p0, v1

    aget-wide p0, p0, p3

    return-wide p0

    :cond_1
    :goto_0
    if-ge v2, v1, :cond_4

    .line 182
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v3, v0, v2

    cmpl-double v3, p1, v3

    if-nez v3, :cond_2

    .line 183
    iget-object p0, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object p0, p0, v2

    aget-wide p0, p0, p3

    return-wide p0

    :cond_2
    add-int/lit8 v3, v2, 0x1

    .line 185
    aget-wide v4, v0, v3

    cmpg-double v4, p1, v4

    if-gez v4, :cond_3

    .line 186
    aget-wide v4, v0, v3

    aget-wide v6, v0, v2

    sub-double/2addr v4, v6

    .line 187
    aget-wide v0, v0, v2

    sub-double/2addr p1, v0

    div-double/2addr p1, v4

    .line 188
    iget-object p0, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v0, p0, v2

    aget-wide v0, v0, p3

    .line 189
    aget-object p0, p0, v3

    aget-wide v2, p0, p3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, p1

    mul-double/2addr v0, v4

    mul-double/2addr v2, p1

    add-double/2addr v0, v2

    return-wide v0

    :cond_3
    move v2, v3

    goto :goto_0

    :cond_4
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getPos(D[D)V
    .locals 12

    .line 101
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    array-length v1, v0

    .line 102
    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    const/4 v3, 0x0

    aget-object v2, v2, v3

    array-length v2, v2

    .line 103
    aget-wide v4, v0, v3

    cmpg-double v4, p1, v4

    if-gtz v4, :cond_1

    move p1, v3

    :goto_0
    if-ge p1, v2, :cond_0

    .line 105
    iget-object p2, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object p2, p2, v3

    aget-wide v0, p2, p1

    aput-wide v0, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 109
    aget-wide v4, v0, v1

    cmpl-double v0, p1, v4

    if-ltz v0, :cond_3

    :goto_1
    if-ge v3, v2, :cond_2

    .line 111
    iget-object p1, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object p1, p1, v1

    aget-wide p1, p1, v3

    aput-wide p1, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    move v0, v3

    :goto_2
    if-ge v0, v1, :cond_7

    .line 117
    iget-object v4, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v4, v4, v0

    cmpl-double v4, p1, v4

    if-nez v4, :cond_4

    move v4, v3

    :goto_3
    if-ge v4, v2, :cond_4

    .line 119
    iget-object v5, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v5, v5, v0

    aget-wide v5, v5, v4

    aput-wide v5, p3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 122
    :cond_4
    iget-object v4, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v5, v0, 0x1

    aget-wide v6, v4, v5

    cmpg-double v6, p1, v6

    if-gez v6, :cond_6

    .line 123
    aget-wide v6, v4, v5

    aget-wide v8, v4, v0

    sub-double/2addr v6, v8

    .line 124
    aget-wide v8, v4, v0

    sub-double/2addr p1, v8

    div-double/2addr p1, v6

    :goto_4
    if-ge v3, v2, :cond_5

    .line 126
    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v4, v1, v0

    aget-wide v6, v4, v3

    .line 127
    aget-object v1, v1, v5

    aget-wide v8, v1, v3

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v10, p1

    mul-double/2addr v6, v10

    mul-double/2addr v8, p1

    add-double/2addr v6, v8

    .line 129
    aput-wide v6, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    return-void

    :cond_6
    move v0, v5

    goto :goto_2

    :cond_7
    return-void
.end method

.method public getPos(D[F)V
    .locals 12

    .line 137
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    array-length v1, v0

    .line 138
    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    const/4 v3, 0x0

    aget-object v2, v2, v3

    array-length v2, v2

    .line 139
    aget-wide v4, v0, v3

    cmpg-double v4, p1, v4

    if-gtz v4, :cond_1

    move p1, v3

    :goto_0
    if-ge p1, v2, :cond_0

    .line 141
    iget-object p2, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object p2, p2, v3

    aget-wide v0, p2, p1

    double-to-float p2, v0

    aput p2, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 145
    aget-wide v4, v0, v1

    cmpl-double v0, p1, v4

    if-ltz v0, :cond_3

    :goto_1
    if-ge v3, v2, :cond_2

    .line 147
    iget-object p1, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object p1, p1, v1

    aget-wide p1, p1, v3

    double-to-float p1, p1

    aput p1, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    move v0, v3

    :goto_2
    if-ge v0, v1, :cond_7

    .line 153
    iget-object v4, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    aget-wide v4, v4, v0

    cmpl-double v4, p1, v4

    if-nez v4, :cond_4

    move v4, v3

    :goto_3
    if-ge v4, v2, :cond_4

    .line 155
    iget-object v5, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v5, v5, v0

    aget-wide v5, v5, v4

    double-to-float v5, v5

    aput v5, p3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 158
    :cond_4
    iget-object v4, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v5, v0, 0x1

    aget-wide v6, v4, v5

    cmpg-double v6, p1, v6

    if-gez v6, :cond_6

    .line 159
    aget-wide v6, v4, v5

    aget-wide v8, v4, v0

    sub-double/2addr v6, v8

    .line 160
    aget-wide v8, v4, v0

    sub-double/2addr p1, v8

    div-double/2addr p1, v6

    :goto_4
    if-ge v3, v2, :cond_5

    .line 162
    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v4, v1, v0

    aget-wide v6, v4, v3

    .line 163
    aget-object v1, v1, v5

    aget-wide v8, v1, v3

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v10, p1

    mul-double/2addr v6, v10

    mul-double/2addr v8, p1

    add-double/2addr v6, v8

    double-to-float v1, v6

    .line 165
    aput v1, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    return-void

    :cond_6
    move v0, v5

    goto :goto_2

    :cond_7
    return-void
.end method

.method public getSlope(DI)D
    .locals 6

    .line 223
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    array-length v1, v0

    const/4 v2, 0x0

    .line 225
    aget-wide v3, v0, v2

    cmpg-double v3, p1, v3

    if-gez v3, :cond_0

    .line 226
    aget-wide p1, v0, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v1, -0x1

    .line 227
    aget-wide v4, v0, v3

    cmpl-double v4, p1, v4

    if-ltz v4, :cond_1

    .line 228
    aget-wide p1, v0, v3

    :cond_1
    :goto_0
    add-int/lit8 v0, v1, -0x1

    if-ge v2, v0, :cond_3

    .line 231
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v3, v2, 0x1

    aget-wide v4, v0, v3

    cmpg-double v4, p1, v4

    if-gtz v4, :cond_2

    .line 232
    aget-wide p1, v0, v3

    aget-wide v4, v0, v2

    sub-double/2addr p1, v4

    .line 233
    aget-wide v0, v0, v2

    .line 234
    iget-object p0, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v0, p0, v2

    aget-wide v0, v0, p3

    .line 235
    aget-object p0, p0, v3

    aget-wide v2, p0, p3

    sub-double/2addr v2, v0

    div-double/2addr v2, p1

    return-wide v2

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getSlope(D[D)V
    .locals 10

    .line 198
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    array-length v1, v0

    .line 199
    iget-object v2, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    const/4 v3, 0x0

    aget-object v2, v2, v3

    array-length v2, v2

    .line 200
    aget-wide v4, v0, v3

    cmpg-double v4, p1, v4

    if-gtz v4, :cond_0

    .line 201
    aget-wide p1, v0, v3

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v1, -0x1

    .line 202
    aget-wide v5, v0, v4

    cmpl-double v5, p1, v5

    if-ltz v5, :cond_1

    .line 203
    aget-wide p1, v0, v4

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    add-int/lit8 v4, v1, -0x1

    if-ge v0, v4, :cond_3

    .line 207
    iget-object v4, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    add-int/lit8 v5, v0, 0x1

    aget-wide v6, v4, v5

    cmpg-double v6, p1, v6

    if-gtz v6, :cond_2

    .line 208
    aget-wide p1, v4, v5

    aget-wide v6, v4, v0

    sub-double/2addr p1, v6

    .line 209
    aget-wide v6, v4, v0

    :goto_2
    if-ge v3, v2, :cond_3

    .line 211
    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mY:[[D

    aget-object v4, v1, v0

    aget-wide v6, v4, v3

    .line 212
    aget-object v1, v1, v5

    aget-wide v8, v1, v3

    sub-double/2addr v8, v6

    div-double/2addr v8, p1

    .line 214
    aput-wide v8, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    move v0, v5

    goto :goto_1

    :cond_3
    return-void
.end method

.method public getTimePoints()[D
    .locals 0

    .line 244
    iget-object p0, p0, Landroidx/constraintlayout/motion/utils/LinearCurveFit;->mT:[D

    return-object p0
.end method
