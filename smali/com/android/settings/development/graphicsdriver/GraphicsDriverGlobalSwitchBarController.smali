.class public Lcom/android/settings/development/graphicsdriver/GraphicsDriverGlobalSwitchBarController;
.super Ljava/lang/Object;
.source "GraphicsDriverGlobalSwitchBarController.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;
.implements Lcom/android/settings/development/graphicsdriver/GraphicsDriverContentObserver$OnGraphicsDriverContentChangedListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field mGraphicsDriverContentObserver:Lcom/android/settings/development/graphicsdriver/GraphicsDriverContentObserver;

.field mSwitchWidgetController:Lcom/android/settings/widget/SwitchWidgetController;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;)V
    .locals 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverGlobalSwitchBarController;->mContentResolver:Landroid/content/ContentResolver;

    .line 57
    new-instance v0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverContentObserver;

    new-instance v1, Landroid/os/Handler;

    .line 58
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1, p0}, Lcom/android/settings/development/graphicsdriver/GraphicsDriverContentObserver;-><init>(Landroid/os/Handler;Lcom/android/settings/development/graphicsdriver/GraphicsDriverContentObserver$OnGraphicsDriverContentChangedListener;)V

    iput-object v0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverGlobalSwitchBarController;->mGraphicsDriverContentObserver:Lcom/android/settings/development/graphicsdriver/GraphicsDriverContentObserver;

    .line 59
    iput-object p2, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverGlobalSwitchBarController;->mSwitchWidgetController:Lcom/android/settings/widget/SwitchWidgetController;

    .line 61
    invoke-static {p1}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result p1

    .line 60
    invoke-virtual {p2, p1}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 62
    iget-object p1, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverGlobalSwitchBarController;->mSwitchWidgetController:Lcom/android/settings/widget/SwitchWidgetController;

    iget-object p2, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverGlobalSwitchBarController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "game_driver_all_apps"

    const/4 v1, 0x0

    .line 63
    invoke-static {p2, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 v1, 0x1

    .line 62
    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    .line 66
    iget-object p1, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverGlobalSwitchBarController;->mSwitchWidgetController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SwitchWidgetController;->setListener(Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;)V

    return-void
.end method


# virtual methods
.method public onGraphicsDriverContentChanged()V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverGlobalSwitchBarController;->mSwitchWidgetController:Lcom/android/settings/widget/SwitchWidgetController;

    iget-object p0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverGlobalSwitchBarController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "game_driver_all_apps"

    const/4 v2, 0x0

    .line 106
    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v2, 0x1

    .line 105
    :cond_0
    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverGlobalSwitchBarController;->mSwitchWidgetController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->startListening()V

    .line 72
    iget-object v0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverGlobalSwitchBarController;->mGraphicsDriverContentObserver:Lcom/android/settings/development/graphicsdriver/GraphicsDriverContentObserver;

    iget-object p0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverGlobalSwitchBarController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Lcom/android/settings/development/graphicsdriver/GraphicsDriverContentObserver;->register(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverGlobalSwitchBarController;->mSwitchWidgetController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->stopListening()V

    .line 78
    iget-object v0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverGlobalSwitchBarController;->mGraphicsDriverContentObserver:Lcom/android/settings/development/graphicsdriver/GraphicsDriverContentObserver;

    iget-object p0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverGlobalSwitchBarController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Lcom/android/settings/development/graphicsdriver/GraphicsDriverContentObserver;->unregister(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public onSwitchToggled(Z)Z
    .locals 5

    .line 83
    iget-object v0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverGlobalSwitchBarController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "game_driver_all_apps"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    if-eqz v0, :cond_0

    if-eq v0, v3, :cond_0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    :cond_0
    return v3

    :cond_1
    const/4 v4, 0x3

    if-nez p1, :cond_2

    if-ne v0, v4, :cond_2

    return v3

    .line 97
    :cond_2
    iget-object p0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverGlobalSwitchBarController;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v2, v4

    :goto_0
    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v3
.end method
