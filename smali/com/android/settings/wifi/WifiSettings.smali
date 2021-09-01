.class public Lcom/android/settings/wifi/WifiSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "WifiSettings.java"

# interfaces
.implements Lcom/android/settingslib/wifi/WifiTracker$WifiListener;
.implements Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;
.implements Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field static final ADD_NETWORK_REQUEST:I = 0x2

.field static final MENU_ID_FORGET:I = 0x8

.field static final PREF_KEY_DATA_USAGE:Ljava/lang/String; = "wifi_data_usage"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field builder:Landroidx/appcompat/app/AlertDialog$Builder;

.field private dialogShown:Z

.field private mAccessPointSavedState:Landroid/os/Bundle;

.field private mAccessPointsPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field mAddWifiNetworkPreference:Lcom/android/settings/wifi/AddWifiNetworkPreference;

.field mAlertDialog:Landroidx/appcompat/app/AlertDialog;

.field mCaptivePortalNetworkCallback:Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

.field private mClickedConnect:Z

.field mConfigureWifiSettingsPreference:Landroidx/preference/Preference;

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field mConnectSource:I

.field private mConnectedAccessPointPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field mConnectivityManager:Landroid/net/ConnectivityManager;

.field mDataUsagePreference:Lcom/android/settings/datausage/DataUsagePreference;

.field private mDialog:Lcom/android/settings/wifi/WifiDialog;

.field private mDialogMode:I

.field private mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

.field private mEnableNextOnConnection:Z

.field private mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private final mHideProgressBarRunnable:Ljava/lang/Runnable;

.field private mIsRestricted:Z

.field private mLastNetworkCaptivePortalAppStarted:Landroid/net/Network;

.field private mOpenSsid:Ljava/lang/String;

.field private mProgressHeader:Landroid/view/View;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field mSavedNetworksPreference:Landroidx/preference/Preference;

.field private mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

.field private mStatusMessagePreference:Lcom/android/settings/wifi/LinkablePreference;

.field private final mUpdateAccessPointsRunnable:Ljava/lang/Runnable;

.field private mUserBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

.field private mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

.field mWifiManager:Landroid/net/wifi/WifiManager;

.field mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1478
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$10;

    sget v1, Lcom/android/settings/R$xml;->wifi_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiSettings$10;-><init>(I)V

    sput-object v0, Lcom/android/settings/wifi/WifiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "no_config_wifi"

    .line 255
    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 166
    new-instance v0, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$Dc8tARLt9797q5fiCWMG56ysJZ4;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$Dc8tARLt9797q5fiCWMG56ysJZ4;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mUpdateAccessPointsRunnable:Ljava/lang/Runnable;

    .line 169
    new-instance v0, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$ojra5gZ2Zt1OL2cVDalsbhFOQY0;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$ojra5gZ2Zt1OL2cVDalsbhFOQY0;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mHideProgressBarRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 242
    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectSource:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settingslib/wifi/AccessPoint;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settingslib/wifi/AccessPoint;I)V
    .locals 0

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settingslib/wifi/AccessPoint;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->checkStartCaptivePortalApp()V

    return-void
.end method

.method private addConnectedAccessPointPreference(Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 1

    .line 1014
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/wifi/WifiSettings;->createConnectedAccessPointPreference(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;)Lcom/android/settings/wifi/ConnectedAccessPointPreference;

    move-result-object p1

    .line 1015
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->getCurrentWifiNetwork()Landroid/net/Network;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/settings/wifi/WifiSettings;->registerCaptivePortalNetworkCallback(Landroid/net/Network;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V

    .line 1018
    new-instance v0, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$dvoN6ah4HmI5buWC6GAjN7HS4rw;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$dvoN6ah4HmI5buWC6GAjN7HS4rw;-><init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 1031
    new-instance v0, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$gxNoP_iqTz6xulv3o7cQv7agDKI;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$gxNoP_iqTz6xulv3o7cQv7agDKI;-><init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->setOnGearClickListener(Lcom/android/settings/wifi/ConnectedAccessPointPreference$OnGearClickListener;)V

    .line 1037
    invoke-virtual {p1}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->refresh()V

    .line 1039
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectedAccessPointPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 1040
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectedAccessPointPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1041
    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mClickedConnect:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1042
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mClickedConnect:Z

    .line 1043
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectedAccessPointPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->scrollToPreference(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method private addMessagePreference(I)V
    .locals 1

    .line 1201
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mStatusMessagePreference:Lcom/android/settings/wifi/LinkablePreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/LinkablePreference;->setTitle(I)V

    .line 1202
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mStatusMessagePreference:Lcom/android/settings/wifi/LinkablePreference;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private addPreferences()V
    .locals 3

    .line 306
    sget v0, Lcom/android/settings/R$xml;->wifi_settings:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string v0, "connected_access_point"

    .line 309
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectedAccessPointPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "access_points"

    .line 311
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "configure_wifi_settings"

    .line 312
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConfigureWifiSettingsPreference:Landroidx/preference/Preference;

    const-string v0, "saved_networks"

    .line 313
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSavedNetworksPreference:Landroidx/preference/Preference;

    .line 314
    new-instance v0, Lcom/android/settings/wifi/AddWifiNetworkPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/AddWifiNetworkPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAddWifiNetworkPreference:Lcom/android/settings/wifi/AddWifiNetworkPreference;

    const-string/jumbo v0, "wifi_status_message"

    .line 315
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/LinkablePreference;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mStatusMessagePreference:Lcom/android/settings/wifi/LinkablePreference;

    .line 316
    new-instance v0, Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mUserBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    const-string/jumbo v0, "wifi_data_usage"

    .line 317
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/DataUsagePreference;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDataUsagePreference:Lcom/android/settings/datausage/DataUsagePreference;

    .line 318
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/datausage/DataUsageUtils;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 319
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mDataUsagePreference:Lcom/android/settings/datausage/DataUsagePreference;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/datausage/DataUsagePreference;->setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    return-void
.end method

.method private changeNextButtonState(Z)V
    .locals 1

    .line 1219
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1220
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getNextButton()Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private checkStartCaptivePortalApp()V
    .locals 3

    .line 1449
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->getCurrentWifiNetwork()Landroid/net/Network;

    move-result-object v0

    .line 1450
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mCaptivePortalNetworkCallback:Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 1451
    invoke-virtual {v1}, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;->getNetwork()Landroid/net/Network;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mCaptivePortalNetworkCallback:Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

    .line 1452
    invoke-virtual {v1}, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;->isCaptivePortal()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1456
    :cond_0
    iget v1, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectSource:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    return-void

    .line 1461
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mLastNetworkCaptivePortalAppStarted:Landroid/net/Network;

    if-eqz v1, :cond_2

    .line 1462
    invoke-virtual {v1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 1467
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->startCaptivePortalApp(Landroid/net/Network;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private configureConnectedAccessPointPreferenceCategory(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;)Z"
        }
    .end annotation

    .line 970
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 971
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->removeConnectedAccessPointPreference()V

    return v1

    .line 975
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/wifi/AccessPoint;

    .line 976
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 977
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->removeConnectedAccessPointPreference()V

    return v1

    .line 982
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectedAccessPointPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 983
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->addConnectedAccessPointPreference(Lcom/android/settingslib/wifi/AccessPoint;)V

    return v2

    .line 988
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectedAccessPointPreferenceCategory:Landroidx/preference/PreferenceCategory;

    .line 990
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/ConnectedAccessPointPreference;

    .line 993
    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v1

    if-eq v1, p1, :cond_3

    .line 994
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->removeConnectedAccessPointPreference()V

    .line 995
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->addConnectedAccessPointPreference(Lcom/android/settingslib/wifi/AccessPoint;)V

    return v2

    .line 1001
    :cond_3
    invoke-virtual {v0}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->refresh()V

    .line 1004
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->getCurrentWifiNetwork()Landroid/net/Network;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/WifiSettings;->registerCaptivePortalNetworkCallback(Landroid/net/Network;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V

    return v2
.end method

.method private createLongPressAccessPointPreference(Lcom/android/settingslib/wifi/AccessPoint;)Lcom/android/settings/wifi/LongPressAccessPointPreference;
    .locals 8

    .line 952
    new-instance v7, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mUserBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    sget v5, Lcom/android/settings/R$drawable;->ic_wifi_signal_0:I

    const/4 v4, 0x0

    move-object v0, v7

    move-object v1, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/wifi/LongPressAccessPointPreference;-><init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;ZILandroidx/fragment/app/Fragment;)V

    return-object v7
.end method

.method private createWifiEnabler()Lcom/android/settings/wifi/WifiEnabler;
    .locals 4

    .line 439
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 440
    new-instance v1, Lcom/android/settings/wifi/WifiEnabler;

    new-instance v2, Lcom/android/settings/widget/SwitchBarController;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/widget/SwitchBarController;-><init>(Lcom/android/settings/widget/SwitchBar;)V

    iget-object p0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-direct {v1, v0, v2, p0}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V

    return-object v1
.end method

.method private getCurrentWifiNetwork()Landroid/net/Network;
    .locals 0

    .line 1113
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getSavedNetworkSettingsSummaryText(Ljava/util/List;I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1148
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/wifi/AccessPoint;

    .line 1149
    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspointConfig()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sub-int p1, p2, v1

    const/4 v2, 0x1

    if-ne p2, p1, :cond_3

    .line 1156
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/settings/R$plurals;->wifi_saved_access_points_summary:I

    new-array v1, v2, [Ljava/lang/Object;

    .line 1157
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1156
    invoke-virtual {p0, p2, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    if-ne p2, v1, :cond_4

    .line 1159
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$plurals;->wifi_saved_passpoint_access_points_summary:I

    new-array p2, v2, [Ljava/lang/Object;

    .line 1161
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v0

    .line 1159
    invoke-virtual {p0, p1, v1, p2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1163
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$plurals;->wifi_saved_all_access_points_summary:I

    new-array v1, v2, [Ljava/lang/Object;

    .line 1164
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1163
    invoke-virtual {p0, p1, p2, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleAddNetworkSubmitEvent(Landroid/content/Intent;)V
    .locals 1

    const-string/jumbo v0, "wifi_config_key"

    .line 1344
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_0

    .line 1347
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, p0}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    :cond_0
    return-void
.end method

.method private handleConfigNetworkSubmitEvent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "network_config_key"

    .line 1416
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_1

    .line 1419
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 1421
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1422
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;ZI)V

    .line 1425
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->resumeScanning()V

    :cond_1
    return-void
.end method

.method private static isDisabledByWrongPassword(Lcom/android/settingslib/wifi/AccessPoint;)Z
    .locals 2

    .line 845
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 850
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 852
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionStatus()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 855
    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result p0

    const/16 v1, 0x8

    if-ne v1, p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method private static isVerboseLoggingEnabled()Z
    .locals 2

    .line 163
    sget-boolean v0, Lcom/android/settingslib/wifi/WifiTracker;->sVerboseLogging:Z

    if-nez v0, :cond_1

    const/4 v0, 0x2

    const-string v1, "WifiSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isWifiWakeupEnabled()Z
    .locals 4

    .line 1169
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1170
    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1171
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1172
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isAutoWakeupEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 1173
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "airplane_mode_on"

    .line 1174
    invoke-static {v0, p0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    .line 1176
    invoke-virtual {v1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method private synthetic lambda$addConnectedAccessPointPreference$2(Lcom/android/settings/wifi/ConnectedAccessPointPreference;Landroidx/preference/Preference;)Z
    .locals 1

    .line 1020
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/settingslib/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 1021
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mCaptivePortalNetworkCallback:Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

    if-eqz p2, :cond_0

    .line 1022
    invoke-virtual {p2}, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;->isCaptivePortal()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1023
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mCaptivePortalNetworkCallback:Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

    .line 1024
    invoke-virtual {p1}, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;->getNetwork()Landroid/net/Network;

    move-result-object p1

    .line 1023
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->startCaptivePortalApp(Landroid/net/Network;)V

    goto :goto_0

    .line 1026
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->launchNetworkDetailsFragment(Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$addConnectedAccessPointPreference$3(Lcom/android/settings/wifi/ConnectedAccessPointPreference;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V
    .locals 1

    .line 1033
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/settingslib/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 1034
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->launchNetworkDetailsFragment(Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    .line 167
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPointPreferences()V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    const/4 v0, 0x0

    .line 170
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    return-void
.end method

.method private synthetic lambda$setOffMessage$4()V
    .locals 2

    .line 1189
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/location/ScanningSettings;

    .line 1190
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    sget v1, Lcom/android/settings/R$string;->location_scanning_screen_title:I

    .line 1191
    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 1192
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getMetricsCategory()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 1193
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private launchAddNetworkFragment()V
    .locals 2

    .line 1088
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->wifi_add_network:I

    .line 1089
    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    const-class v1, Lcom/android/settings/wifi/AddNetworkFragment;

    .line 1090
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    .line 1091
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    const/4 v1, 0x2

    .line 1092
    invoke-virtual {v0, p0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroidx/fragment/app/Fragment;I)Lcom/android/settings/core/SubSettingLauncher;

    .line 1093
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private launchConfigNewNetworkFragment(Lcom/android/settingslib/wifi/AccessPoint;ILandroid/os/Bundle;)V
    .locals 1

    .line 1431
    iput p2, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogMode:I

    .line 1432
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getTitle()Ljava/lang/String;

    move-result-object p1

    .line 1433
    new-instance p2, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 1434
    invoke-virtual {p2, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleText(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    const-class p1, Lcom/android/settings/wifi/ConfigureAccessPointFragment;

    .line 1435
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    .line 1436
    invoke-virtual {p2, p3}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    .line 1437
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getMetricsCategory()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    const/4 p1, 0x3

    .line 1438
    invoke-virtual {p2, p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroidx/fragment/app/Fragment;I)Lcom/android/settings/core/SubSettingLauncher;

    .line 1439
    invoke-virtual {p2}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private launchNetworkDetailsFragment(Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V
    .locals 3

    .line 1097
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v0

    .line 1098
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "settings_wifi_details_datausage_header"

    .line 1100
    invoke-static {v1, v2}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1101
    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1102
    :cond_0
    sget v0, Lcom/android/settings/R$string;->pref_title_network_details:I

    invoke-virtual {v1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1104
    :goto_0
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 1105
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleText(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    const-class v0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;

    .line 1106
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    .line 1107
    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    .line 1108
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getMetricsCategory()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 1109
    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private onAddNetworkPressed()V
    .locals 1

    const/4 v0, 0x0

    .line 1356
    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 1357
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->launchAddNetworkFragment()V

    return-void
.end method

.method private registerCaptivePortalNetworkCallback(Landroid/net/Network;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V
    .locals 2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1054
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mCaptivePortalNetworkCallback:Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

    if-eqz v0, :cond_1

    .line 1055
    invoke-virtual {v0, p1, p2}, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;->isSameNetworkAndPreference(Landroid/net/Network;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1059
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->unregisterCaptivePortalNetworkCallback()V

    .line 1061
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings$6;-><init>(Lcom/android/settings/wifi/WifiSettings;Landroid/net/Network;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mCaptivePortalNetworkCallback:Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

    .line 1067
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    new-instance p2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1069
    invoke-virtual {p2}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object p2

    const/4 v0, 0x1

    .line 1070
    invoke-virtual {p2, v0}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p2

    .line 1071
    invoke-virtual {p2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p2

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mCaptivePortalNetworkCallback:Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

    new-instance v0, Landroid/os/Handler;

    .line 1073
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1067
    invoke-virtual {p1, p2, p0, v0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "WifiSettings"

    const-string p1, "Network or Preference were null when registering callback."

    .line 1050
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private removeAccessPointPreference()V
    .locals 1

    .line 1124
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 1125
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private removeConnectedAccessPointPreference()V
    .locals 2

    .line 1118
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectedAccessPointPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 1119
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectedAccessPointPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1120
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->unregisterCaptivePortalNetworkCallback()V

    return-void
.end method

.method private restrictUi()V
    .locals 2

    .line 429
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestrictedByOnlyAdmin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 430
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->wifi_empty_list_user_restricted:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 432
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    return-void
.end method

.method private setOffMessage()V
    .locals 4

    .line 1180
    sget v0, Lcom/android/settings/R$string;->wifi_empty_list_wifi_off:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1185
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1186
    sget v1, Lcom/android/settings/R$string;->wifi_scan_notify_text:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 1187
    :cond_0
    sget v1, Lcom/android/settings/R$string;->wifi_scan_notify_text_scanning_off:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1188
    :goto_0
    new-instance v2, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$G0-vWzmi3g45SjhkhuPVMzYpO5w;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$G0-vWzmi3g45SjhkhuPVMzYpO5w;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    .line 1194
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mStatusMessagePreference:Lcom/android/settings/wifi/LinkablePreference;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/settings/wifi/LinkablePreference;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settings/LinkifyUtils$OnClickListener;)V

    .line 1195
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->removeConnectedAccessPointPreference()V

    .line 1196
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->removeAccessPointPreference()V

    .line 1197
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mStatusMessagePreference:Lcom/android/settings/wifi/LinkablePreference;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private showDialog(Lcom/android/settingslib/wifi/AccessPoint;I)V
    .locals 2

    if-eqz p1, :cond_0

    .line 711
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 712
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 714
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    .line 713
    invoke-static {p1, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 720
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    const/4 v0, 0x0

    .line 721
    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 725
    :cond_1
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 726
    iput p2, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogMode:I

    .line 728
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method private startCaptivePortalApp(Landroid/net/Network;)V
    .locals 1

    .line 1471
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1474
    :cond_0
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mLastNetworkCaptivePortalAppStarted:Landroid/net/Network;

    .line 1475
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->startCaptivePortalApp(Landroid/net/Network;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private startWapiCertManage()V
    .locals 3

    .line 1385
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1386
    sget v1, Lcom/android/settings/R$string;->wapi_no_vaild_cert:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 1387
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1388
    sget v1, Lcom/android/settings/R$string;->wapi_yes:I

    new-instance v2, Lcom/android/settings/wifi/WifiSettings$8;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiSettings$8;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1398
    sget v1, Lcom/android/settings/R$string;->wapi_no:I

    new-instance v2, Lcom/android/settings/wifi/WifiSettings$9;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiSettings$9;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1406
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private unregisterCaptivePortalNetworkCallback()V
    .locals 3

    .line 1077
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mCaptivePortalNetworkCallback:Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

    if-eqz v0, :cond_0

    .line 1079
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WifiSettings"

    const-string v2, "Unregistering CaptivePortalNetworkCallback failed."

    .line 1081
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    .line 1083
    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mCaptivePortalNetworkCallback:Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

    :cond_0
    return-void
.end method

.method private updateAccessPointPreferences()V
    .locals 9

    .line 861
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v0

    .line 866
    invoke-static {}, Lcom/android/settings/wifi/WifiSettings;->isVerboseLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 867
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAccessPoints called for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiSettings"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mStatusMessagePreference:Lcom/android/settings/wifi/LinkablePreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 872
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectedAccessPointPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 873
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 875
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->cacheRemoveAllPrefs(Landroidx/preference/PreferenceGroup;)V

    .line 878
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->configureConnectedAccessPointPreferenceCategory(Ljava/util/List;)Z

    move-result v1

    .line 879
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v5, v2

    :goto_0
    if-ge v1, v4, :cond_7

    .line 881
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/wifi/AccessPoint;

    .line 883
    invoke-virtual {v6}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 884
    invoke-virtual {v6}, Lcom/android/settingslib/wifi/AccessPoint;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 887
    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsPreferenceFragment;->getCachedPreference(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    if-eqz v7, :cond_2

    .line 889
    invoke-virtual {v7, v1}, Landroidx/preference/Preference;->setOrder(I)V

    goto/16 :goto_1

    .line 893
    :cond_2
    invoke-direct {p0, v6}, Lcom/android/settings/wifi/WifiSettings;->createLongPressAccessPointPreference(Lcom/android/settingslib/wifi/AccessPoint;)Lcom/android/settings/wifi/LongPressAccessPointPreference;

    move-result-object v7

    .line 894
    invoke-virtual {v7, v5}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 895
    invoke-virtual {v7, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 896
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    if-eqz v5, :cond_4

    invoke-virtual {v6}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 897
    invoke-virtual {v6}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v5

    if-eqz v5, :cond_4

    .line 898
    invoke-virtual {v6}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v5

    const/4 v8, 0x4

    if-eq v5, v8, :cond_4

    .line 899
    invoke-virtual {v6}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v6}, Lcom/android/settings/wifi/WifiSettings;->isDisabledByWrongPassword(Lcom/android/settingslib/wifi/AccessPoint;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 900
    :cond_3
    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    const/4 v5, 0x0

    .line 901
    iput-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    .line 904
    :cond_4
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v5, v7}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 905
    invoke-virtual {v6, p0}, Lcom/android/settingslib/wifi/AccessPoint;->setListener(Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;)V

    .line 906
    invoke-virtual {v7}, Lcom/android/settingslib/wifi/AccessPointPreference;->refresh()V

    .line 908
    invoke-static {}, Lcom/oneplus/settings/utils/ProductUtils;->isUsvMode()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 909
    invoke-static {v6}, Lcom/android/settings/wifi/WifiSettings;->isDisabledByWrongPassword(Lcom/android/settingslib/wifi/AccessPoint;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 910
    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->dialogShown:Z

    if-eqz v5, :cond_5

    .line 911
    new-instance v5, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 912
    invoke-virtual {v6}, Lcom/android/settingslib/wifi/AccessPoint;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v7, Lcom/android/settings/R$string;->dialog_wrong_password:I

    .line 913
    invoke-virtual {v5, v7}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v7, Lcom/android/settings/R$string;->dialog_wrong_password_ok:I

    new-instance v8, Lcom/android/settings/wifi/WifiSettings$5;

    invoke-direct {v8, p0, v6}, Lcom/android/settings/wifi/WifiSettings$5;-><init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settingslib/wifi/AccessPoint;)V

    .line 914
    invoke-virtual {v5, v7, v8}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 920
    invoke-virtual {v5}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v5

    .line 921
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/app/Dialog;->isShowing()Z

    move-result v6

    if-nez v6, :cond_5

    .line 922
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    :cond_5
    :goto_1
    move v5, v3

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 930
    :cond_7
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removeCachedPrefs(Landroidx/preference/PreferenceGroup;)V

    .line 931
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAddWifiNetworkPreference:Lcom/android/settings/wifi/AddWifiNetworkPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 932
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mAddWifiNetworkPreference:Lcom/android/settings/wifi/AddWifiNetworkPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 933
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->setAdditionalSettingsSummaries()V

    if-nez v5, :cond_8

    .line 936
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    .line 937
    new-instance v0, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 938
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 939
    sget v2, Lcom/android/settings/R$string;->wifi_empty_list_wifi_on:I

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(I)V

    .line 940
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    const-string/jumbo v1, "wifi_empty_list"

    .line 941
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 942
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    .line 945
    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mHideProgressBarRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x6a4

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    return-void
.end method

.method private updateAccessPointsDelayed()V
    .locals 3

    .line 788
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 789
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 790
    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 791
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mUpdateAccessPointsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 794
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    .line 795
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mUpdateAccessPointsRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public clearNotification()V
    .locals 2

    .line 620
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v1, 0x1

    .line 621
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 v1, 0x2

    .line 622
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 623
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "WifiSettingsPrefsFile"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 624
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "is_notified_on"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 625
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "is_notified_off"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method protected connect(Landroid/net/wifi/WifiConfiguration;ZI)V
    .locals 4

    .line 1321
    invoke-static {}, Lcom/oneplus/settings/utils/ProductUtils;->isUsvMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VerizonWiFiAccess"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 1322
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mClickedConnect:Z

    .line 1323
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string p2, "UICC is required to login to the WiFi network with SSID VerizonWiFiAccess"

    invoke-static {p0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 1328
    :cond_0
    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x87

    invoke-virtual {v0, v2, v3, p2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 1330
    iput p3, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectSource:I

    .line 1331
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p3, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {p2, p1, p3}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 1332
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mClickedConnect:Z

    return-void
.end method

.method createConnectedAccessPointPreference(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;)Lcom/android/settings/wifi/ConnectedAccessPointPreference;
    .locals 8

    .line 960
    new-instance v7, Lcom/android/settings/wifi/ConnectedAccessPointPreference;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mUserBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    sget v4, Lcom/android/settings/R$drawable;->ic_wifi_signal_0:I

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;-><init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;IZLandroidx/fragment/app/Fragment;)V

    return-object v7
.end method

.method forget()V
    .locals 5

    .line 1287
    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Landroid/util/Pair;

    const/16 v4, 0x89

    invoke-virtual {v0, v1, v4, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 1288
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    const-string v1, "WifiSettings"

    if-nez v0, :cond_1

    .line 1289
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 1290
    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v3, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v3, :cond_0

    .line 1292
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 1293
    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1292
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disableEphemeralNetwork(Ljava/lang/String;)V

    goto :goto_0

    .line 1296
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to forget invalid network "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1299
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1301
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->removePasspointConfiguration(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to remove Passpoint configuration with error: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1307
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v3}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 1310
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->resumeScanning()V

    .line 1313
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    return-void
.end method

.method public getDialogMetricsCategory(I)I
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x25b

    return p0
.end method

.method public getHelpResource()I
    .locals 0

    .line 1362
    sget p0, Lcom/android/settings/R$string;->help_url_wifi:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x67

    return p0
.end method

.method handleAddNetworkRequest(ILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1338
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/WifiSettings;->handleAddNetworkSubmitEvent(Landroid/content/Intent;)V

    .line 1340
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->resumeScanning()V

    return-void
.end method

.method public synthetic lambda$addConnectedAccessPointPreference$2$WifiSettings(Lcom/android/settings/wifi/ConnectedAccessPointPreference;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->lambda$addConnectedAccessPointPreference$2(Lcom/android/settings/wifi/ConnectedAccessPointPreference;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$addConnectedAccessPointPreference$3$WifiSettings(Lcom/android/settings/wifi/ConnectedAccessPointPreference;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->lambda$addConnectedAccessPointPreference$3(Lcom/android/settings/wifi/ConnectedAccessPointPreference;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V

    return-void
.end method

.method public synthetic lambda$new$0$WifiSettings()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->lambda$new$0()V

    return-void
.end method

.method public synthetic lambda$new$1$WifiSettings()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->lambda$new$1()V

    return-void
.end method

.method public synthetic lambda$setOffMessage$4$WifiSettings()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->lambda$setOffMessage$4()V

    return-void
.end method

.method public onAccessPointChanged(Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 2

    const-string v0, "WifiSettings"

    const-string v1, "onAccessPointChanged (singular) callback initiated"

    .line 1367
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1370
    new-instance v1, Lcom/android/settings/wifi/WifiSettings$7;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/WifiSettings$7;-><init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settingslib/wifi/AccessPoint;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onAccessPointsChanged()V
    .locals 2

    const-string v0, "WifiSettings"

    const-string v1, "onAccessPointsChanged (WifiTracker) callback initiated"

    .line 778
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPointsDelayed()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 326
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 329
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    const/4 v2, 0x1

    .line 328
    invoke-static {v0, p0, v1, v2, v2}, Lcom/android/settingslib/wifi/WifiTrackerFactory;->create(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;Lcom/android/settingslib/core/lifecycle/Lifecycle;ZZ)Lcom/android/settingslib/wifi/WifiTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    .line 330
    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->getManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 332
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 337
    :cond_0
    new-instance v0, Lcom/android/settings/wifi/WifiConnectListener;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiConnectListener;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 339
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$1;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 355
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$2;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    if-eqz p1, :cond_1

    const-string v0, "dialog_mode"

    .line 372
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogMode:I

    const-string/jumbo v0, "wifi_ap_state"

    .line 373
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 375
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 381
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string/jumbo v1, "wifi_enable_next_on_connect"

    .line 382
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_2

    .line 385
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 387
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_2

    .line 389
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 391
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 396
    :cond_2
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    .line 397
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    const-string/jumbo v0, "wifi_start_connect_ssid"

    .line 399
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 400
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 480
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 483
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/wifi/WifiSettings;->handleAddNetworkRequest(ILandroid/content/Intent;)V

    return-void

    :cond_0
    const/4 v0, -0x1

    if-nez p1, :cond_3

    if-ne p2, v0, :cond_2

    .line 487
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz p1, :cond_1

    .line 488
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 490
    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->resumeScanning()V

    :cond_2
    return-void

    :cond_3
    const/4 v1, 0x3

    if-ne p1, v1, :cond_5

    if-ne p2, v0, :cond_4

    .line 495
    invoke-direct {p0, p3}, Lcom/android/settings/wifi/WifiSettings;->handleConfigNetworkSubmitEvent(Landroid/content/Intent;)V

    :cond_4
    return-void

    .line 500
    :cond_5
    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    .line 501
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    if-eqz p1, :cond_6

    if-nez p2, :cond_6

    .line 503
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    if-nez p1, :cond_6

    .line 505
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->addPreferences()V

    :cond_6
    return-void
.end method

.method public onConnectedChanged()V
    .locals 1

    .line 840
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->isConnected()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 576
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez v0, :cond_0

    .line 577
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 579
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    .line 614
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 608
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->clearNotification()V

    .line 610
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settingslib/wifi/AccessPoint;I)V

    return v2

    .line 601
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->clearNotification()V

    .line 603
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->forget()V

    return v2

    .line 581
    :cond_3
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 583
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0, p1, v2}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;ZI)V

    goto :goto_1

    .line 585
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 586
    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    goto :goto_0

    .line 592
    :cond_5
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-direct {p0, p1, v2}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settingslib/wifi/AccessPoint;I)V

    goto :goto_1

    .line 588
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 589
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0, p1, v2}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;ZI)V

    .line 595
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->clearNotification()V

    return v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 277
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 279
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->dialogShown:Z

    .line 282
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "settings_wifitracker2"

    invoke-static {v0, v1}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.WIFI_SETTINGS2"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    const/high16 v0, 0x4000000

    .line 289
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 291
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 292
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    .line 298
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setAnimationAllowed(Z)V

    .line 300
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->addPreferences()V

    .line 302
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    return-void
.end method

.method protected onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    .line 511
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    const/4 p1, 0x1

    .line 512
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-object p0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    .line 537
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/preference/Preference;

    .line 539
    instance-of p3, p2, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    if-eqz p3, :cond_5

    .line 540
    check-cast p2, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    .line 541
    invoke-virtual {p2}, Lcom/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 542
    invoke-virtual {p2}, Lcom/android/settingslib/wifi/AccessPoint;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 543
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p2}, Lcom/android/settingslib/wifi/AccessPoint;->isConnectable()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x7

    .line 544
    sget v0, Lcom/android/settings/R$string;->wifi_connect:I

    invoke-interface {p1, p3, p2, p3, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 547
    :cond_0
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p2}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    .line 549
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 555
    :cond_1
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p2}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p2}, Lcom/android/settingslib/wifi/AccessPoint;->isEphemeral()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 556
    :cond_2
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p2}, Lcom/android/settingslib/wifi/AccessPoint;->isEphemeral()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 557
    sget p2, Lcom/android/settings/R$string;->wifi_disconnect_button_text:I

    goto :goto_0

    :cond_3
    sget p2, Lcom/android/settings/R$string;->forget:I

    :goto_0
    const/16 v0, 0x8

    .line 558
    invoke-interface {p1, p3, v0, p3, p2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 567
    :cond_4
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result p0

    if-eqz p0, :cond_5

    const/16 p0, 0x9

    .line 569
    sget p2, Lcom/android/settings/R$string;->wifi_modify:I

    invoke-interface {p1, p3, p0, p3, p2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_5
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 747
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p0

    return-object p0

    .line 736
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    .line 738
    new-instance p1, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-direct {p1, v0, v1}, Lcom/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    const/4 p1, 0x0

    .line 740
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 743
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    iget v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogMode:I

    invoke-static {p1, p0, v0, v1}, Lcom/android/settings/wifi/WifiDialog;->createModal(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;Lcom/android/settingslib/wifi/AccessPoint;I)Lcom/android/settings/wifi/WifiDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 744
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 0

    .line 406
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 408
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz p0, :cond_0

    .line 409
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEnabler;->teardownSwitchController()V

    :cond_0
    return-void
.end method

.method public onDialogShowing()V
    .locals 0

    .line 752
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDialogShowing()V

    .line 753
    invoke-virtual {p0, p0}, Lcom/android/settings/SettingsPreferenceFragment;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 759
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    return-void
.end method

.method public onForget(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 0

    .line 1226
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->forget()V

    return-void
.end method

.method public onLevelChanged(Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 0

    .line 1412
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/wifi/AccessPointPreference;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->onLevelChanged()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 464
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    .line 465
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz p0, :cond_0

    .line 466
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    const/4 v0, 0x1

    .line 632
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->dialogShown:Z

    .line 636
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->clearNotification()V

    .line 638
    invoke-virtual {p1}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 639
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 640
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    .line 643
    :cond_0
    instance-of v1, p1, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    if-eqz v1, :cond_7

    .line 644
    move-object v1, p1

    check-cast v1, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    return v3

    .line 648
    :cond_1
    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 649
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    .line 655
    :cond_2
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiUtils;->getConnectingType(Lcom/android/settingslib/wifi/AccessPoint;)I

    move-result p1

    if-eq p1, v0, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    .line 695
    invoke-virtual {v1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 696
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1, p1}, Lcom/android/settingslib/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 697
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-direct {p0, v1, v0, p1}, Lcom/android/settings/wifi/WifiSettings;->launchConfigNewNetworkFragment(Lcom/android/settingslib/wifi/AccessPoint;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 657
    :cond_3
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {p1, v1}, Lcom/android/settingslib/wifi/AccessPoint;->startOsuProvisioning(Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 658
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mClickedConnect:Z

    goto/16 :goto_0

    .line 689
    :cond_4
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;ZI)V

    goto/16 :goto_0

    .line 663
    :cond_5
    invoke-static {}, Lcom/oneplus/settings/utils/ProductUtils;->isUsvMode()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 664
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->builder:Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->dialog_open_network_title:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->dialog_open_network_title_info:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 665
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->builder:Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$string;->dialog_open_network_cancel:I

    new-instance v2, Lcom/android/settings/wifi/WifiSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiSettings$3;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 671
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->builder:Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$string;->dialog_open_network_connect:I

    new-instance v2, Lcom/android/settings/wifi/WifiSettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiSettings$4;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 679
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->builder:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 680
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 682
    :cond_6
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 683
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    invoke-virtual {p0, p1, v1, v3}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;ZI)V

    goto :goto_0

    .line 701
    :cond_7
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAddWifiNetworkPreference:Lcom/android/settings/wifi/AddWifiNetworkPreference;

    if-ne p1, v1, :cond_8

    .line 702
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->onAddNetworkPressed()V

    :goto_0
    return v0

    .line 704
    :cond_8
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 3

    .line 446
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 447
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 451
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    .line 452
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    if-nez v1, :cond_0

    if-eqz v2, :cond_0

    .line 454
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->restrictUi()V

    .line 457
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz p0, :cond_1

    .line 458
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiEnabler;->resume(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 523
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 525
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 526
    iget v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogMode:I

    const-string v1, "dialog_mode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 527
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 528
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 529
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 530
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    const-string/jumbo v0, "wifi_ap_state"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onScan(Lcom/android/settings/wifi/WifiDialog;Ljava/lang/String;)V
    .locals 0

    .line 1239
    invoke-static {p2}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->getEnrolleeQrCodeScannerIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 415
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStart()V

    .line 418
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->createWifiEnabler()Lcom/android/settings/wifi/WifiEnabler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    .line 420
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    if-eqz v0, :cond_0

    .line 421
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->restrictUi()V

    return-void

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->onWifiStateChanged(I)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 472
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mUpdateAccessPointsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 473
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mHideProgressBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 474
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->unregisterCaptivePortalNetworkCallback()V

    .line 475
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    return-void
.end method

.method public onSubmit(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 0

    .line 1231
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz p1, :cond_0

    .line 1232
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->submit(Lcom/android/settings/wifi/WifiConfigController;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 260
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 261
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 263
    sget p2, Lcom/android/settings/R$layout;->op_progress_header:I

    invoke-virtual {p0, p2}, Lcom/android/settings/SettingsPreferenceFragment;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object p2

    sget v0, Lcom/android/settings/R$id;->progress_bar_animation:I

    .line 264
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressHeader:Landroid/view/View;

    const/4 p2, 0x0

    .line 265
    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    .line 267
    :cond_0
    move-object p2, p1

    check-cast p2, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p2}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object p2

    sget v0, Lcom/android/settings/R$string;->wifi_settings_master_switch_title:I

    invoke-virtual {p2, v0, v0}, Lcom/android/settings/widget/SwitchBar;->setSwitchBarText(II)V

    .line 271
    new-instance p2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p2, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->builder:Landroidx/appcompat/app/AlertDialog$Builder;

    return-void
.end method

.method public onWifiStateChanged(I)V
    .locals 2

    .line 802
    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    if-eqz p1, :cond_0

    return-void

    .line 806
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 809
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPointPreferences()V

    goto :goto_0

    .line 813
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->removeConnectedAccessPointPreference()V

    .line 814
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->removeAccessPointPreference()V

    .line 815
    sget p1, Lcom/android/settings/R$string;->wifi_starting:I

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    .line 816
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    goto :goto_0

    .line 826
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->setOffMessage()V

    .line 827
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->setAdditionalSettingsSummaries()V

    const/4 p1, 0x0

    .line 828
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    .line 829
    iput p1, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectSource:I

    .line 830
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mClickedConnect:Z

    goto :goto_0

    .line 820
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->removeConnectedAccessPointPreference()V

    .line 821
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->removeAccessPointPreference()V

    .line 822
    sget p1, Lcom/android/settings/R$string;->wifi_stopping:I

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    :goto_0
    return-void
.end method

.method setAdditionalSettingsSummaries()V
    .locals 4

    .line 1130
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConfigureWifiSettingsPreference:Landroidx/preference/Preference;

    .line 1131
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->isWifiWakeupEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1132
    sget v1, Lcom/android/settings/R$string;->wifi_configure_settings_preference_summary_wakeup_on:I

    goto :goto_0

    .line 1133
    :cond_0
    sget v1, Lcom/android/settings/R$string;->wifi_configure_settings_preference_summary_wakeup_off:I

    .line 1130
    :goto_0
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1136
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v0, v1}, Lcom/android/settingslib/wifi/WifiSavedConfigUtils;->getAllConfigs(Landroid/content/Context;Landroid/net/wifi/WifiManager;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1137
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    .line 1138
    :goto_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSavedNetworksPreference:Landroidx/preference/Preference;

    if-lez v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    if-lez v2, :cond_3

    .line 1140
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSavedNetworksPreference:Landroidx/preference/Preference;

    .line 1141
    invoke-direct {p0, v0, v2}, Lcom/android/settings/wifi/WifiSettings;->getSavedNetworkSettingsSummaryText(Ljava/util/List;I)Ljava/lang/String;

    move-result-object p0

    .line 1140
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method protected setProgressBarVisible(Z)V
    .locals 0

    .line 1207
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressHeader:Landroid/view/View;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 1208
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method submit(Lcom/android/settings/wifi/WifiConfigController;)V
    .locals 5

    .line 1246
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1249
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz p1, :cond_6

    .line 1250
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1251
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;ZI)V

    goto :goto_0

    .line 1255
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->getMode()I

    move-result v2

    const/4 v3, 0x2

    const/16 v4, 0x9

    if-ne v2, v3, :cond_3

    .line 1258
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->checkWapiParam()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1259
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->getCurSecurity()I

    move-result p1

    if-ne p1, v4, :cond_1

    .line 1260
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->startWapiCertManage()V

    :cond_1
    return-void

    .line 1265
    :cond_2
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 1269
    :cond_3
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->checkWapiParam()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1270
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->getCurSecurity()I

    move-result p1

    if-ne p1, v4, :cond_4

    .line 1271
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->startWapiCertManage()V

    :cond_4
    return-void

    .line 1276
    :cond_5
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {p1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 1277
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz p1, :cond_6

    .line 1278
    invoke-virtual {p0, v0, v1, v1}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;ZI)V

    .line 1283
    :cond_6
    :goto_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->resumeScanning()V

    return-void
.end method
