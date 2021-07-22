.class public Lcom/android/settings/location/LocationEnabler;
.super Ljava/lang/Object;
.source "LocationEnabler.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;
    }
.end annotation


# static fields
.field static final INTENT_FILTER_LOCATION_MODE_CHANGED:Landroid/content/IntentFilter;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mListener:Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.location.MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/location/LocationEnabler;->INTENT_FILTER_LOCATION_MODE_CHANGED:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/settings/location/LocationEnabler;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/android/settings/location/LocationEnabler;->mListener:Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;

    const-string/jumbo p2, "user"

    .line 67
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/location/LocationEnabler;->mUserManager:Landroid/os/UserManager;

    if-eqz p3, :cond_0

    .line 69
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private isRestricted()Z
    .locals 1

    .line 158
    iget-object p0, p0, Lcom/android/settings/location/LocationEnabler;->mUserManager:Landroid/os/UserManager;

    const-string v0, "no_share_location"

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method getShareLocationEnforcedAdmin(I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/android/settings/location/LocationEnabler;->mContext:Landroid/content/Context;

    const-string v1, "no_share_location"

    invoke-static {v0, v1, p1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-nez v0, :cond_0

    .line 146
    iget-object p0, p0, Lcom/android/settings/location/LocationEnabler;->mContext:Landroid/content/Context;

    const-string v0, "no_config_location"

    invoke-static {p0, v0, p1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method hasShareLocationRestriction(I)Z
    .locals 1

    .line 153
    iget-object p0, p0, Lcom/android/settings/location/LocationEnabler;->mContext:Landroid/content/Context;

    const-string v0, "no_share_location"

    invoke-static {p0, v0, p1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method isEnabled(I)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/android/settings/location/LocationEnabler;->isRestricted()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isManagedProfileRestrictedByBase()Z
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/android/settings/location/LocationEnabler;->mUserManager:Landroid/os/UserManager;

    invoke-static {v0}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/location/LocationEnabler;->hasShareLocationRestriction(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onStart()V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/android/settings/location/LocationEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/android/settings/location/LocationEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/location/LocationEnabler$1;-><init>(Lcom/android/settings/location/LocationEnabler;)V

    iput-object v0, p0, Lcom/android/settings/location/LocationEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/settings/location/LocationEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/location/LocationEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/android/settings/location/LocationEnabler;->INTENT_FILTER_LOCATION_MODE_CHANGED:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/location/LocationEnabler;->refreshLocationMode()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/android/settings/location/LocationEnabler;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/location/LocationEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method refreshLocationMode()V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/android/settings/location/LocationEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "LocationEnabler"

    const/4 v2, 0x4

    .line 98
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Location mode has been changed"

    .line 99
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/android/settings/location/LocationEnabler;->mListener:Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;

    if-eqz v1, :cond_1

    .line 102
    invoke-direct {p0}, Lcom/android/settings/location/LocationEnabler;->isRestricted()Z

    move-result p0

    invoke-interface {v1, v0, p0}, Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;->onLocationModeChanged(IZ)V

    :cond_1
    return-void
.end method

.method setLocationEnabled(Z)V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/android/settings/location/LocationEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 110
    invoke-direct {p0}, Lcom/android/settings/location/LocationEnabler;->isRestricted()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    const/4 p1, 0x4

    const-string v1, "LocationEnabler"

    .line 113
    invoke-static {v1, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Restricted user, not setting location mode"

    .line 114
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    iget-object p0, p0, Lcom/android/settings/location/LocationEnabler;->mListener:Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;

    if-eqz p0, :cond_1

    .line 117
    invoke-interface {p0, v0, v2}, Lcom/android/settings/location/LocationEnabler$LocationModeChangeListener;->onLocationModeChanged(IZ)V

    :cond_1
    return-void

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/android/settings/location/LocationEnabler;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v0, p1, v1, v2}, Lcom/android/settingslib/Utils;->updateLocationEnabled(Landroid/content/Context;ZII)V

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/location/LocationEnabler;->refreshLocationMode()V

    return-void
.end method
