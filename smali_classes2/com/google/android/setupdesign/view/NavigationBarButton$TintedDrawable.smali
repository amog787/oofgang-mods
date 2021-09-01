.class Lcom/google/android/setupdesign/view/NavigationBarButton$TintedDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "NavigationBarButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupdesign/view/NavigationBarButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TintedDrawable"
.end annotation


# instance fields
.field private tintList:Landroid/content/res/ColorStateList;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 146
    invoke-direct {p0, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 143
    iput-object p1, p0, Lcom/google/android/setupdesign/view/NavigationBarButton$TintedDrawable;->tintList:Landroid/content/res/ColorStateList;

    return-void
.end method

.method private updateState()Z
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/google/android/setupdesign/view/NavigationBarButton$TintedDrawable;->tintList:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getState()[I

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 171
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/LayerDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public static wrap(Landroid/graphics/drawable/Drawable;)Lcom/google/android/setupdesign/view/NavigationBarButton$TintedDrawable;
    .locals 1

    .line 137
    instance-of v0, p0, Lcom/google/android/setupdesign/view/NavigationBarButton$TintedDrawable;

    if-eqz v0, :cond_0

    .line 138
    check-cast p0, Lcom/google/android/setupdesign/view/NavigationBarButton$TintedDrawable;

    return-object p0

    .line 140
    :cond_0
    new-instance v0, Lcom/google/android/setupdesign/view/NavigationBarButton$TintedDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/setupdesign/view/NavigationBarButton$TintedDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method


# virtual methods
.method public isStateful()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setState([I)Z
    .locals 0

    .line 156
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setState([I)Z

    move-result p1

    .line 157
    invoke-direct {p0}, Lcom/google/android/setupdesign/view/NavigationBarButton$TintedDrawable;->updateState()Z

    move-result p0

    if-nez p1, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public setTintListCompat(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/google/android/setupdesign/view/NavigationBarButton$TintedDrawable;->tintList:Landroid/content/res/ColorStateList;

    .line 163
    invoke-direct {p0}, Lcom/google/android/setupdesign/view/NavigationBarButton$TintedDrawable;->updateState()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 164
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method
