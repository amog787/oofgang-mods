.class Landroidx/constraintlayout/motion/widget/SplineSet$Sort;
.super Ljava/lang/Object;
.source "SplineSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/SplineSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Sort"
.end annotation


# direct methods
.method static doubleQuickSort([I[FII)V
    .locals 6

    .line 320
    array-length v0, p0

    add-int/lit8 v0, v0, 0xa

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 322
    aput p3, v0, v1

    const/4 p3, 0x1

    .line 323
    aput p2, v0, p3

    const/4 p2, 0x2

    :cond_0
    :goto_0
    if-lez p2, :cond_1

    add-int/lit8 p2, p2, -0x1

    .line 325
    aget v1, v0, p2

    add-int/lit8 p2, p2, -0x1

    .line 326
    aget v2, v0, p2

    if-ge v1, v2, :cond_0

    .line 328
    invoke-static {p0, p1, v1, v2}, Landroidx/constraintlayout/motion/widget/SplineSet$Sort;->partition([I[FII)I

    move-result v3

    add-int/lit8 v4, p2, 0x1

    add-int/lit8 v5, v3, -0x1

    .line 329
    aput v5, v0, p2

    add-int/lit8 p2, v4, 0x1

    .line 330
    aput v1, v0, v4

    add-int/lit8 v1, p2, 0x1

    .line 331
    aput v2, v0, p2

    add-int/lit8 p2, v1, 0x1

    add-int/2addr v3, p3

    .line 332
    aput v3, v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static partition([I[FII)I
    .locals 3

    .line 338
    aget v0, p0, p3

    move v1, p2

    :goto_0
    if-ge p2, p3, :cond_1

    .line 341
    aget v2, p0, p2

    if-gt v2, v0, :cond_0

    .line 342
    invoke-static {p0, p1, v1, p2}, Landroidx/constraintlayout/motion/widget/SplineSet$Sort;->swap([I[FII)V

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 346
    :cond_1
    invoke-static {p0, p1, v1, p3}, Landroidx/constraintlayout/motion/widget/SplineSet$Sort;->swap([I[FII)V

    return v1
.end method

.method private static swap([I[FII)V
    .locals 2

    .line 351
    aget v0, p0, p2

    .line 352
    aget v1, p0, p3

    aput v1, p0, p2

    .line 353
    aput v0, p0, p3

    .line 354
    aget p0, p1, p2

    .line 355
    aget v0, p1, p3

    aput v0, p1, p2

    .line 356
    aput p0, p1, p3

    return-void
.end method
