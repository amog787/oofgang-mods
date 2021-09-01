.class public Lcom/android/settings/development/WirelessDebuggingPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "WirelessDebuggingPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# instance fields
.field private final mAdbManager:Landroid/debug/IAdbManager;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mHandler:Landroid/os/Handler;

.field private final mSettingsObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 2

    .line 61
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/development/WirelessDebuggingPreferenceController;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_0

    .line 64
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    const-string p2, "adb"

    .line 66
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/debug/IAdbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/debug/IAdbManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/development/WirelessDebuggingPreferenceController;->mAdbManager:Landroid/debug/IAdbManager;

    .line 67
    new-instance p2, Lcom/android/settings/development/WirelessDebuggingPreferenceController$1;

    iget-object v0, p0, Lcom/android/settings/development/WirelessDebuggingPreferenceController;->mHandler:Landroid/os/Handler;

    invoke-direct {p2, p0, v0}, Lcom/android/settings/development/WirelessDebuggingPreferenceController$1;-><init>(Lcom/android/settings/development/WirelessDebuggingPreferenceController;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/settings/development/WirelessDebuggingPreferenceController;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/WirelessDebuggingPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/development/WirelessDebuggingPreferenceController;)Landroidx/preference/Preference;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method public static isWifiConnected(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "connectivity"

    .line 142
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 145
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 146
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 78
    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "toggle_adb_wireless"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 2

    .line 84
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/development/WirelessDebuggingPreferenceController;->mAdbManager:Landroid/debug/IAdbManager;

    invoke-interface {p0}, Landroid/debug/IAdbManager;->isAdbWifiSupported()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "WirelessDebugPrefCtrl"

    const-string v1, "Unable to check if adb wifi is supported."

    .line 86
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 2

    .line 111
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    .line 112
    iget-object v0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 113
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "adb_wifi_enabled"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method protected onDeveloperOptionsSwitchEnabled()V
    .locals 1

    .line 102
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchEnabled()V

    .line 103
    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/android/settings/development/WirelessDebuggingPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/android/settings/development/WirelessDebuggingPreferenceController;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 155
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/development/WirelessDebuggingPreferenceController;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->adb_wireless_no_network_msg:I

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 160
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const/4 p0, 0x0

    return p0

    .line 164
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "adb_wifi_enabled"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return p2
.end method

.method public onResume()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/android/settings/development/WirelessDebuggingPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "adb_wifi_enabled"

    .line 121
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/development/WirelessDebuggingPreferenceController;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    .line 120
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 132
    iget-object p0, p0, Lcom/android/settings/development/WirelessDebuggingPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "adb_wifi_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    .line 135
    :cond_0
    check-cast p1, Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    return-void
.end method
