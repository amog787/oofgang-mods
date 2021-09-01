.class public Lcom/android/settings/wifi/ConfigureWifiSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ConfigureWifiSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mIntelNetWork:Landroidx/preference/SwitchPreference;

.field private mShowWifiPopUp:Landroidx/preference/SwitchPreference;

.field private mUseOpenWifiPreferenceController:Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

.field private mWifiNotification:Landroidx/preference/SwitchPreference;

.field private mWifiWakeupPreferenceController:Lcom/android/settings/wifi/WifiWakeupPreferenceController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 251
    new-instance v0, Lcom/android/settings/wifi/ConfigureWifiSettings$1;

    sget v1, Lcom/android/settings/R$xml;->wifi_configure_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/ConfigureWifiSettings$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/wifi/ConfigureWifiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "wifi"

    .line 107
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 110
    new-instance v2, Lcom/android/settings/wifi/WifiWakeupPreferenceController;

    invoke-direct {v2, p1}, Lcom/android/settings/wifi/WifiWakeupPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiWakeupPreferenceController:Lcom/android/settings/wifi/WifiWakeupPreferenceController;

    .line 111
    new-instance v2, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

    invoke-direct {v2, p1}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mUseOpenWifiPreferenceController:Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

    .line 113
    new-instance v2, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    invoke-direct {v2, p1, v3, v0}, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v2, Lcom/android/settings/wifi/OPIntelligentlySelectBestWifiPreferenceController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/android/settings/wifi/OPIntelligentlySelectBestWifiPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$bool;->config_intelligent_network_in_wifi:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    new-instance v2, Lcom/android/settings/wifi/OPAutoSwitchMobileDataPreferenceController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/android/settings/wifi/OPAutoSwitchMobileDataPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_0
    new-instance v2, Lcom/android/settings/wifi/OPWifiScanAlwaysAvailablePreferenceController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiWakeupPreferenceController:Lcom/android/settings/wifi/WifiWakeupPreferenceController;

    invoke-direct {v2, p1, v3, v4}, Lcom/android/settings/wifi/OPWifiScanAlwaysAvailablePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/wifi/WifiWakeupPreferenceController;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v2, Lcom/oneplus/settings/controllers/OPPasspointPreferenceController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/oneplus/settings/controllers/OPPasspointPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v2, Lcom/android/settings/wifi/OPWapiCertManagePreferenceController;

    invoke-direct {v2, p1}, Lcom/android/settings/wifi/OPWapiCertManagePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v2, Lcom/android/settings/wifi/OPWifiInfoPreferenceController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p0

    invoke-direct {v2, p1, p0, v0}, Lcom/android/settings/wifi/OPWifiInfoPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public getInitialExpandedChildCount()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ConfigureWifiSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x152

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 102
    sget p0, Lcom/android/settings/R$xml;->wifi_configure_settings:I

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x258

    if-ne p1, v0, :cond_0

    .line 241
    iget-object p0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiWakeupPreferenceController:Lcom/android/settings/wifi/WifiWakeupPreferenceController;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->onActivityResult(II)V

    return-void

    :cond_0
    const/16 v0, 0x190

    if-ne p1, v0, :cond_1

    .line 245
    iget-object p0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mUseOpenWifiPreferenceController:Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->onActivityResult(II)Z

    return-void

    .line 248
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 228
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 231
    const-class p1, Lcom/android/settings/wifi/WifiWakeupPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/WifiWakeupPreferenceController;

    iput-object p1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiWakeupPreferenceController:Lcom/android/settings/wifi/WifiWakeupPreferenceController;

    .line 232
    invoke-virtual {p1, p0}, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->setFragment(Landroidx/fragment/app/Fragment;)V

    .line 234
    const-class p1, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

    iput-object p1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mUseOpenWifiPreferenceController:Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

    .line 235
    invoke-virtual {p1, p0}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->setFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 134
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 136
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$bool;->config_intelligent_network_in_wifi:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "auto_switch_mobile_data_in_wifi_pref"

    .line 137
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mIntelNetWork:Landroidx/preference/SwitchPreference;

    if-eqz p1, :cond_0

    .line 139
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 140
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mIntelNetWork:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 146
    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/ProductUtils;->isUsvMode()Z

    move-result p1

    const-string/jumbo v1, "wifi_notification"

    const-string v2, "show_wifi_popup"

    if-eqz p1, :cond_4

    .line 147
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v3, "WifiSettingsPrefsFile"

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 149
    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mShowWifiPopUp:Landroidx/preference/SwitchPreference;

    const-string v2, "show_wifi_popup_enabled"

    .line 150
    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "show_wifi_popup_cicked"

    .line 151
    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-eqz v2, :cond_1

    .line 154
    iget-object v2, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mShowWifiPopUp:Landroidx/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 156
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mShowWifiPopUp:Landroidx/preference/SwitchPreference;

    invoke-virtual {v2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 161
    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiNotification:Landroidx/preference/SwitchPreference;

    const-string/jumbo v1, "wifi_notification_enabled"

    .line 162
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string/jumbo v2, "wifi_notification_Cicked"

    .line 163
    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz v1, :cond_3

    .line 166
    iget-object p0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiNotification:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    .line 168
    :cond_3
    iget-object p0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiNotification:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    .line 175
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mShowWifiPopUp:Landroidx/preference/SwitchPreference;

    if-eqz p1, :cond_5

    .line 177
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 178
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v2, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mShowWifiPopUp:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 182
    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiNotification:Landroidx/preference/SwitchPreference;

    if-eqz p1, :cond_6

    .line 184
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 185
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiNotification:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_6
    :goto_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 192
    invoke-static {}, Lcom/oneplus/settings/utils/ProductUtils;->isUsvMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 193
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "WifiSettingsPrefsFile"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 194
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mShowWifiPopUp:Landroidx/preference/SwitchPreference;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    const-string v1, "show_wifi_popup_cicked"

    .line 197
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 198
    iget-object v1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mShowWifiPopUp:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    const-string v3, "show_wifi_popup_enabled"

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mShowWifiPopUp:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 200
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mShowWifiPopUp:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 203
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 205
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mShowWifiPopUp:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 209
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiNotification:Landroidx/preference/SwitchPreference;

    if-ne p1, v1, :cond_3

    const-string/jumbo v1, "wifi_notification_Cicked"

    .line 210
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 211
    iget-object v1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiNotification:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    const-string/jumbo v2, "wifi_notification_enabled"

    if-eqz v1, :cond_2

    .line 212
    iget-object v1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiNotification:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 213
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 215
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiNotification:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 216
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 218
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiNotification:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 222
    :cond_3
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
