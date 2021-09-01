.class public Lcom/android/settings/core/HideNonSystemOverlayMixin;
.super Ljava/lang/Object;
.source "HideNonSystemOverlayMixin.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# instance fields
.field private final mActivity:Landroid/app/Activity;


# virtual methods
.method isEnabled()Z
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/settings/core/HideNonSystemOverlayMixin;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/android/settings/development/OverlaySettingsPreferenceController;->isOverlaySettingsEnabled(Landroid/content/Context;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onStart()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/android/settings/core/HideNonSystemOverlayMixin;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/core/HideNonSystemOverlayMixin;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    iget-object p0, p0, Lcom/android/settings/core/HideNonSystemOverlayMixin;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/high16 v0, 0x80000

    invoke-virtual {p0, v0}, Landroid/view/Window;->addSystemFlags(I)V

    const p0, 0x534e4554

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "120484087"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 58
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ""

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/android/settings/core/HideNonSystemOverlayMixin;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/core/HideNonSystemOverlayMixin;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    iget-object p0, p0, Lcom/android/settings/core/HideNonSystemOverlayMixin;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 68
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 69
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v2, -0x80001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 70
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method
