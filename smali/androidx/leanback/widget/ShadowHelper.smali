.class final Landroidx/leanback/widget/ShadowHelper;
.super Ljava/lang/Object;
.source "ShadowHelper.java"


# direct methods
.method static setShadowFocusLevel(Ljava/lang/Object;F)V
    .locals 2

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 38
    invoke-static {p0, p1}, Landroidx/leanback/widget/ShadowHelperApi21;->setShadowFocusLevel(Ljava/lang/Object;F)V

    :cond_0
    return-void
.end method

.method static supportsDynamicShadow()Z
    .locals 2

    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
