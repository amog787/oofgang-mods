.class Lcom/oneplus/settings/ui/OPColorUtils$1;
.super Ljava/lang/Object;
.source "OPColorUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/ui/OPColorUtils;->getMainColor(Landroid/graphics/Bitmap;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/internal/graphics/palette/Palette$Swatch;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/internal/graphics/palette/Palette$Swatch;Lcom/android/internal/graphics/palette/Palette$Swatch;)I
    .locals 0

    .line 45
    invoke-virtual {p2}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getPopulation()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getPopulation()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 42
    check-cast p1, Lcom/android/internal/graphics/palette/Palette$Swatch;

    check-cast p2, Lcom/android/internal/graphics/palette/Palette$Swatch;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/settings/ui/OPColorUtils$1;->compare(Lcom/android/internal/graphics/palette/Palette$Swatch;Lcom/android/internal/graphics/palette/Palette$Swatch;)I

    move-result p0

    return p0
.end method
