.class public Lcom/oneplus/settings/ui/OPColorUtils;
.super Ljava/lang/Object;
.source "OPColorUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OPColorUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static getMainColor(Landroid/graphics/Bitmap;I)I
    .locals 1

    .line 40
    invoke-static {p0}, Lcom/android/internal/graphics/palette/Palette;->from(Landroid/graphics/Bitmap;)Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/Palette$Builder;->generate()Lcom/android/internal/graphics/palette/Palette;

    move-result-object p0

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/Palette;->getSwatches()Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 42
    new-instance p0, Lcom/oneplus/settings/ui/OPColorUtils$1;

    invoke-direct {p0}, Lcom/oneplus/settings/ui/OPColorUtils$1;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 49
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    .line 53
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/graphics/palette/Palette$Swatch;

    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getRgb()I

    move-result p0

    return p0
.end method

.method static getMainColor(Landroid/graphics/drawable/Drawable;I)I
    .locals 1

    .line 24
    invoke-static {p0}, Lcom/oneplus/settings/ui/OPBitmapUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_0

    .line 26
    sget-object p0, Lcom/oneplus/settings/ui/OPColorUtils;->TAG:Ljava/lang/String;

    const-string v0, "cannot create bitmap from drawable"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 30
    :cond_0
    invoke-static {p0, p1}, Lcom/oneplus/settings/ui/OPColorUtils;->getMainColor(Landroid/graphics/Bitmap;I)I

    move-result p0

    return p0
.end method
