.class public Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessSettingObserverMixin;
.super Landroid/database/ContentObserver;
.source "ZenAccessSettingObserverMixin.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessSettingObserverMixin$Listener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mListener:Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessSettingObserverMixin$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessSettingObserverMixin$Listener;)V
    .locals 2

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 43
    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessSettingObserverMixin;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessSettingObserverMixin;->mListener:Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessSettingObserverMixin$Listener;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessSettingObserverMixin;->mListener:Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessSettingObserverMixin$Listener;

    if-eqz p0, :cond_0

    .line 50
    invoke-interface {p0}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessSettingObserverMixin$Listener;->onZenAccessPolicyChanged()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessSettingObserverMixin;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-static {v0}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessController;->isSupported(Landroid/app/ActivityManager;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessSettingObserverMixin;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_notification_policy_access_packages"

    .line 60
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 59
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 64
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessSettingObserverMixin;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_notification_listeners"

    .line 65
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 64
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessSettingObserverMixin;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-static {v0}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessController;->isSupported(Landroid/app/ActivityManager;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessSettingObserverMixin;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
