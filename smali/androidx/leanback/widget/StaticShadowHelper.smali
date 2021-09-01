.class final Landroidx/leanback/widget/StaticShadowHelper;
.super Ljava/lang/Object;
.source "StaticShadowHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/StaticShadowHelper$ShadowImpl;
    }
.end annotation


# direct methods
.method static setShadowFocusLevel(Ljava/lang/Object;F)V
    .locals 2

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 57
    check-cast p0, Landroidx/leanback/widget/StaticShadowHelper$ShadowImpl;

    .line 58
    iget-object v0, p0, Landroidx/leanback/widget/StaticShadowHelper$ShadowImpl;->mNormalShadow:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 59
    iget-object p0, p0, Landroidx/leanback/widget/StaticShadowHelper$ShadowImpl;->mFocusShadow:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method static supportsShadow()Z
    .locals 2

    .line 33
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
