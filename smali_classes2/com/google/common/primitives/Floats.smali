.class public final Lcom/google/common/primitives/Floats;
.super Ljava/lang/Object;
.source "Floats.java"


# direct methods
.method public static indexOf([FF)I
    .locals 2

    .line 131
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/google/common/primitives/Floats;->indexOf([FFII)I

    move-result p0

    return p0
.end method

.method private static indexOf([FFII)I
    .locals 1

    :goto_0
    if-ge p2, p3, :cond_1

    .line 137
    aget v0, p0, p2

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method
