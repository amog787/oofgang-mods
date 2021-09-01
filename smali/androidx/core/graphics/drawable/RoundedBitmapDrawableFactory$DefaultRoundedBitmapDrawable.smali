.class Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory$DefaultRoundedBitmapDrawable;
.super Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
.source "RoundedBitmapDrawableFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultRoundedBitmapDrawable"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method gravityCompatApply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6

    const/4 v5, 0x0

    move v0, p1

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    .line 62
    invoke-static/range {v0 .. v5}, Landroidx/core/view/GravityCompat;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    return-void
.end method
