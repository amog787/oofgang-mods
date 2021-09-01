.class public Lcom/android/settings/wifi/ChangeWifiStateDetails;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "ChangeWifiStateDetails.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAppBridge:Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mSwitchPref:Landroidx/preference/SwitchPreference;

.field private mWifiSettingsState:Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method public static getSummary(Landroid/content/Context;Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;)Ljava/lang/CharSequence;
    .locals 0

    .line 131
    invoke-virtual {p1}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->isPermissible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 132
    sget p1, Lcom/android/settings/R$string;->app_permission_summary_allowed:I

    goto :goto_0

    .line 133
    :cond_0
    sget p1, Lcom/android/settings/R$string;->app_permission_summary_not_allowed:I

    .line 131
    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;
    .locals 2

    .line 119
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v1, v0, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;

    if-eqz v1, :cond_0

    .line 120
    check-cast v0, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;

    goto :goto_0

    .line 121
    :cond_0
    instance-of v1, v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    if-eqz v1, :cond_1

    .line 122
    new-instance p1, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;

    check-cast v0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    invoke-direct {p1, v0}, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;-><init>(Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;)V

    move-object v0, p1

    goto :goto_0

    .line 124
    :cond_1
    new-instance v0, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;->getWifiSettingsInfo(Ljava/lang/String;I)Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;

    move-result-object v0

    .line 127
    :goto_0
    invoke-static {p0, v0}, Lcom/android/settings/wifi/ChangeWifiStateDetails;->getSummary(Landroid/content/Context;Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private setCanChangeWifiState(Z)V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/wifi/ChangeWifiStateDetails;->logSpecialPermissionChange(ZLjava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object p0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    xor-int/lit8 p1, p1, 0x1

    const/16 v2, 0x47

    invoke-virtual {v0, v2, v1, p0, p1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected createDialog(II)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x152

    return p0
.end method

.method protected logSpecialPermissionChange(ZLjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const/16 p1, 0x306

    goto :goto_0

    :cond_0
    const/16 p1, 0x307

    .line 98
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 49
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoBase;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 51
    new-instance v0, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mAppBridge:Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;

    const-string v0, "appops"

    .line 52
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 55
    sget p1, Lcom/android/settings/R$xml;->change_wifi_state_details:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "app_ops_settings_switch"

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mSwitchPref:Landroidx/preference/SwitchPreference;

    .line 59
    sget v0, Lcom/android/settings/R$string;->change_wifi_state_app_detail_switch:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 62
    iget-object p1, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mSwitchPref:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mSwitchPref:Landroidx/preference/SwitchPreference;

    if-ne p1, v0, :cond_1

    .line 78
    iget-object p1, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mWifiSettingsState:Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mWifiSettingsState:Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;

    .line 79
    invoke-virtual {p2}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->isPermissible()Z

    move-result p2

    if-eq p1, p2, :cond_0

    .line 80
    iget-object p1, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mWifiSettingsState:Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;

    invoke-virtual {p1}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->isPermissible()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/ChangeWifiStateDetails;->setCanChangeWifiState(Z)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/wifi/ChangeWifiStateDetails;->refreshUi()Z

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method protected refreshUi()Z
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mAppBridge:Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;

    iget-object v2, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;->getWifiSettingsInfo(Ljava/lang/String;I)Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mWifiSettingsState:Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;

    .line 110
    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->isPermissible()Z

    move-result v0

    .line 111
    iget-object v1, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mSwitchPref:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 113
    iget-object v0, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mSwitchPref:Landroidx/preference/SwitchPreference;

    iget-object p0, p0, Lcom/android/settings/wifi/ChangeWifiStateDetails;->mWifiSettingsState:Lcom/android/settings/wifi/AppStateChangeWifiStateBridge$WifiSettingsState;

    iget-boolean p0, p0, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;->permissionDeclared:Z

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
