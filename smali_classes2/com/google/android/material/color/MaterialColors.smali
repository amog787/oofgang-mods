.class public Lcom/google/android/material/color/MaterialColors;
.super Ljava/lang/Object;
.source "MaterialColors.java"


# direct methods
.method public static getColor(Landroid/content/Context;II)I
    .locals 0

    .line 84
    invoke-static {p0, p1}, Lcom/google/android/material/resources/MaterialAttributes;->resolve(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 86
    iget p0, p0, Landroid/util/TypedValue;->data:I

    return p0

    :cond_0
    return p2
.end method

.method public static getColor(Landroid/view/View;I)I
    .locals 0

    .line 53
    invoke-static {p0, p1}, Lcom/google/android/material/resources/MaterialAttributes;->resolveOrThrow(Landroid/view/View;I)I

    move-result p0

    return p0
.end method

.method public static layer(II)I
    .locals 0

    .line 139
    invoke-static {p1, p0}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result p0

    return p0
.end method

.method public static layer(IIF)I
    .locals 1

    .line 128
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 129
    invoke-static {p1, p2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    .line 130
    invoke-static {p0, p1}, Lcom/google/android/material/color/MaterialColors;->layer(II)I

    move-result p0

    return p0
.end method
