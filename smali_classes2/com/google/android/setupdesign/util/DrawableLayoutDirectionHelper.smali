.class public Lcom/google/android/setupdesign/util/DrawableLayoutDirectionHelper;
.super Ljava/lang/Object;
.source "DrawableLayoutDirectionHelper.java"


# direct methods
.method public static createRelativeInsetDrawable(Landroid/graphics/drawable/Drawable;IIIILandroid/view/View;)Landroid/graphics/drawable/InsetDrawable;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x11

    if-lt v0, v2, :cond_0

    .line 38
    invoke-virtual {p5}, Landroid/view/View;->getLayoutDirection()I

    move-result p5

    if-ne p5, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v7, v1

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 39
    invoke-static/range {v2 .. v7}, Lcom/google/android/setupdesign/util/DrawableLayoutDirectionHelper;->createRelativeInsetDrawable(Landroid/graphics/drawable/Drawable;IIIIZ)Landroid/graphics/drawable/InsetDrawable;

    move-result-object p0

    return-object p0
.end method

.method private static createRelativeInsetDrawable(Landroid/graphics/drawable/Drawable;IIIIZ)Landroid/graphics/drawable/InsetDrawable;
    .locals 6

    if-eqz p5, :cond_0

    .line 94
    new-instance p5, Landroid/graphics/drawable/InsetDrawable;

    move-object v0, p5

    move-object v1, p0

    move v2, p3

    move v3, p2

    move v4, p1

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    return-object p5

    .line 96
    :cond_0
    new-instance p5, Landroid/graphics/drawable/InsetDrawable;

    move-object v0, p5

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    return-object p5
.end method
