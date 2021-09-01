.class public Lcom/android/settings/wifi/OPWifiScanAlwaysAvailablePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "OPWifiScanAlwaysAvailablePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/OPWifiScanAlwaysAvailablePreferenceController$SettingObserver;
    }
.end annotation


# instance fields
.field private mSettingObserver:Lcom/android/settings/wifi/OPWifiScanAlwaysAvailablePreferenceController$SettingObserver;

.field private mWifiWakeupPreferenceController:Lcom/android/settings/wifi/WifiWakeupPreferenceController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/wifi/WifiWakeupPreferenceController;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 53
    iput-object p3, p0, Lcom/android/settings/wifi/OPWifiScanAlwaysAvailablePreferenceController;->mWifiWakeupPreferenceController:Lcom/android/settings/wifi/WifiWakeupPreferenceController;

    return-void
.end method

.method private setWifiWakeupEnabled(Z)V
    .locals 1

    .line 103
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "wifi_wakeup_enabled"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 58
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 59
    new-instance v0, Lcom/android/settings/wifi/OPWifiScanAlwaysAvailablePreferenceController$SettingObserver;

    const-string/jumbo v1, "wifi_scan_always_available"

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/settings/wifi/OPWifiScanAlwaysAvailablePreferenceController$SettingObserver;-><init>(Lcom/android/settings/wifi/OPWifiScanAlwaysAvailablePreferenceController;Landroidx/preference/Preference;)V

    iput-object v0, p0, Lcom/android/settings/wifi/OPWifiScanAlwaysAvailablePreferenceController;->mSettingObserver:Lcom/android/settings/wifi/OPWifiScanAlwaysAvailablePreferenceController$SettingObserver;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "wifi_scan_always_available"

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 83
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wifi_scan_always_available"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 86
    :cond_0
    instance-of v0, p1, Landroidx/preference/SwitchPreference;

    if-nez v0, :cond_1

    return v1

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 91
    check-cast p1, Landroidx/preference/SwitchPreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    const-string/jumbo v3, "wifi_scan_always_enabled"

    .line 89
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 93
    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_2

    .line 94
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/OPWifiScanAlwaysAvailablePreferenceController;->setWifiWakeupEnabled(Z)V

    .line 95
    iget-object p0, p0, Lcom/android/settings/wifi/OPWifiScanAlwaysAvailablePreferenceController;->mWifiWakeupPreferenceController:Lcom/android/settings/wifi/WifiWakeupPreferenceController;

    const/16 p1, 0x258

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->onActivityResult(II)V

    :cond_2
    return v0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onPause()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/android/settings/wifi/OPWifiScanAlwaysAvailablePreferenceController;->mSettingObserver:Lcom/android/settings/wifi/OPWifiScanAlwaysAvailablePreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    .line 72
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/wifi/OPWifiScanAlwaysAvailablePreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/android/settings/wifi/OPWifiScanAlwaysAvailablePreferenceController;->mSettingObserver:Lcom/android/settings/wifi/OPWifiScanAlwaysAvailablePreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    .line 65
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/wifi/OPWifiScanAlwaysAvailablePreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 115
    instance-of v0, p1, Landroidx/preference/SwitchPreference;

    if-nez v0, :cond_0

    return-void

    .line 118
    :cond_0
    check-cast p1, Landroidx/preference/SwitchPreference;

    .line 120
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "wifi_scan_always_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    move v1, v0

    :cond_1
    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
