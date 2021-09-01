.class public Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "BgOptimizeAdvanceSettings.java"


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mOptimizeAppPowerSwitchPreference:Landroidx/preference/SwitchPreference;

.field private mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

.field private mSleepStandBySwitchPreference:Landroidx/preference/SwitchPreference;

.field private mSmartatteryBySwitchPreference:Lcom/android/settings/widget/MasterSwitchPreference;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private initData()V
    .locals 4

    .line 73
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 72
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    .line 74
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 75
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->mUserManager:Landroid/os/UserManager;

    .line 77
    iget-object v1, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {v1, v0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipUtils;->getRestrictedAppsList(Landroid/app/AppOpsManager;Landroid/os/UserManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "smart_battery_manager"

    .line 78
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/MasterSwitchPreference;

    iput-object v1, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->mSmartatteryBySwitchPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    if-eqz v1, :cond_0

    .line 80
    new-instance v2, Lcom/oneplus/settings/backgroundoptimize/funcswitch/-$$Lambda$BgOptimizeAdvanceSettings$m6K78XVJyX1S38ETA3FWrGbZqv8;

    invoke-direct {v2, p0, v0}, Lcom/oneplus/settings/backgroundoptimize/funcswitch/-$$Lambda$BgOptimizeAdvanceSettings$m6K78XVJyX1S38ETA3FWrGbZqv8;-><init>(Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;I)V

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    const-string v0, "sleep_standby"

    .line 105
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->mSleepStandBySwitchPreference:Landroidx/preference/SwitchPreference;

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "optimal_power_save_mode_enabled"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 107
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportSleepStandby()Z

    move-result v1

    if-nez v1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->mSleepStandBySwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->mSleepStandBySwitchPreference:Landroidx/preference/SwitchPreference;

    if-eqz v1, :cond_3

    if-lez v0, :cond_2

    const/4 v3, 0x1

    .line 111
    :cond_2
    invoke-virtual {v1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_3
    const-string v0, "op_optimize_app_power_consumption"

    .line 115
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->mOptimizeAppPowerSwitchPreference:Landroidx/preference/SwitchPreference;

    return-void
.end method

.method private synthetic lambda$initData$0(ILandroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 81
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    invoke-interface {v1}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isSmartBatterySupported()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "adaptive_battery_management_enabled"

    goto :goto_0

    :cond_0
    const-string v1, "app_auto_restriction_enabled"

    .line 82
    :goto_0
    invoke-static {v0, v1, p3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p1, :cond_1

    .line 88
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p3, Lcom/android/settings/R$plurals;->battery_manager_app_restricted:I

    new-array v2, v1, [Ljava/lang/Object;

    .line 89
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 88
    invoke-virtual {p0, p3, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    .line 91
    sget p0, Lcom/android/settings/R$string;->battery_manager_on:I

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 92
    instance-of p0, p2, Lcom/android/settings/widget/MasterSwitchPreference;

    if-eqz p0, :cond_3

    .line 93
    check-cast p2, Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {p2, v1}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 96
    :cond_2
    sget p0, Lcom/android/settings/R$string;->battery_manager_off:I

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 97
    instance-of p0, p2, Lcom/android/settings/widget/MasterSwitchPreference;

    if-eqz p0, :cond_3

    .line 98
    check-cast p2, Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {p2, v0}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    :cond_3
    :goto_1
    return v1
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "BgOptimizeAdvanceSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 140
    sget p0, Lcom/android/settings/R$xml;->bg_optimize_prefs:I

    return p0
.end method

.method public synthetic lambda$initData$0$BgOptimizeAdvanceSettings(ILandroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->lambda$initData$0(ILandroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 46
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-direct {p0}, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->initData()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 122
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sleep_standby"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x2

    if-eqz v0, :cond_0

    .line 123
    iget-object p1, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->mSleepStandBySwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "optimal_power_save_mode_enabled"

    invoke-static {p0, v0, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return v1

    .line 128
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "op_optimize_app_power_consumption"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iget-object p1, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->mOptimizeAppPowerSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "ohpd_force_stop_enabled"

    invoke-static {v0, v3, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 131
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForOhpdForceStopEnabled(Landroid/content/Context;)V

    return v1

    .line 135
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 5

    .line 53
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 54
    iget-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    invoke-interface {v0}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isSmartBatterySupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "adaptive_battery_management_enabled"

    goto :goto_0

    :cond_0
    const-string v0, "app_auto_restriction_enabled"

    .line 58
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    .line 59
    :goto_1
    iget-object v3, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->mSmartatteryBySwitchPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    if-eqz v3, :cond_2

    .line 60
    invoke-virtual {v3, v0}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    .line 63
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, -0x2

    const-string v4, "ohpd_force_stop_enabled"

    invoke-static {v0, v4, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 64
    iget-object p0, p0, Lcom/oneplus/settings/backgroundoptimize/funcswitch/BgOptimizeAdvanceSettings;->mOptimizeAppPowerSwitchPreference:Landroidx/preference/SwitchPreference;

    if-eqz p0, :cond_4

    if-ne v0, v2, :cond_3

    goto :goto_2

    :cond_3
    move v2, v1

    .line 65
    :goto_2
    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_4
    return-void
.end method
