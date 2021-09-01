.class public Lcom/android/settings/network/NetworkDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "NetworkDashboardFragment.java"

# interfaces
.implements Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;
.implements Lcom/android/settings/wifi/tether/TetherDataObserver$OnTetherDataChangeCallback;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field isBindWifiCallingPlusSuccess:Z

.field private lastTetherData:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallingPlusConnection:Landroid/content/ServiceConnection;

.field private mCallingPlusSwitchPreference:Lcom/android/settings/widget/MasterSwitchPreference;

.field private mIWifiCallingService:Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;

.field private mTetherDataObserver:Lcom/android/settings/wifi/tether/TetherDataObserver;

.field private mTetherSettings:Lcom/android/settingslib/RestrictedPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 211
    new-instance v0, Lcom/android/settings/network/NetworkDashboardFragment$1;

    sget v1, Lcom/android/settings/R$xml;->network_and_internet:I

    invoke-direct {v0, v1}, Lcom/android/settings/network/NetworkDashboardFragment$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/network/NetworkDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x3

    .line 72
    iput v0, p0, Lcom/android/settings/network/NetworkDashboardFragment;->lastTetherData:I

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/android/settings/network/NetworkDashboardFragment;->isBindWifiCallingPlusSuccess:Z

    .line 296
    new-instance v0, Lcom/android/settings/network/NetworkDashboardFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/network/NetworkDashboardFragment$2;-><init>(Lcom/android/settings/network/NetworkDashboardFragment;)V

    iput-object v0, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mCallingPlusConnection:Landroid/content/ServiceConnection;

    .line 385
    new-instance v0, Lcom/android/settings/network/NetworkDashboardFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/network/NetworkDashboardFragment$3;-><init>(Lcom/android/settings/network/NetworkDashboardFragment;)V

    iput-object v0, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroidx/fragment/app/Fragment;Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;)Ljava/util/List;
    .locals 0

    .line 65
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/settings/network/NetworkDashboardFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroidx/fragment/app/Fragment;Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/settings/network/NetworkDashboardFragment;Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;)Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mIWifiCallingService:Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/network/NetworkDashboardFragment;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/android/settings/network/NetworkDashboardFragment;->updateUssWfifiCallingPlus()V

    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroidx/fragment/app/Fragment;Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            "Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;",
            "Landroidx/fragment/app/Fragment;",
            "Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 135
    new-instance p3, Lcom/android/settings/network/MobilePlanPreferenceController;

    invoke-direct {p3, p0, p4}, Lcom/android/settings/network/MobilePlanPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;)V

    .line 137
    new-instance p4, Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;

    invoke-direct {p4, p0, p2}, Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V

    .line 140
    new-instance p2, Lcom/android/settings/network/OPSimAndNetworkSettingsPreferenceController;

    invoke-direct {p2, p0}, Lcom/android/settings/network/OPSimAndNetworkSettingsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 142
    new-instance v0, Lcom/oneplus/settings/controllers/OPWiFiCallingPreferenceController;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/controllers/OPWiFiCallingPreferenceController;-><init>(Landroid/content/Context;)V

    .line 143
    new-instance v1, Lcom/android/settings/network/OPWifiCallingPlusPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/network/OPWifiCallingPlusPreferenceController;-><init>(Landroid/content/Context;)V

    .line 144
    new-instance v2, Lcom/oneplus/settings/controllers/OPRoamingControlPreferenceController;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/controllers/OPRoamingControlPreferenceController;-><init>(Landroid/content/Context;)V

    .line 146
    new-instance v3, Lcom/android/settings/network/VpnPreferenceController;

    invoke-direct {v3, p0}, Lcom/android/settings/network/VpnPreferenceController;-><init>(Landroid/content/Context;)V

    .line 148
    new-instance v4, Lcom/android/settings/network/PrivateDnsPreferenceController;

    invoke-direct {v4, p0}, Lcom/android/settings/network/PrivateDnsPreferenceController;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    .line 153
    invoke-virtual {p1, p2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 154
    invoke-virtual {p1, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 155
    invoke-virtual {p1, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 156
    invoke-virtual {p1, v2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 158
    invoke-virtual {p1, p3}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 159
    invoke-virtual {p1, p4}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 160
    invoke-virtual {p1, v3}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 161
    invoke-virtual {p1, v4}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 164
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 166
    invoke-interface {v5, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance p2, Lcom/android/settings/network/MobileNetworkSummaryController;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/network/MobileNetworkSummaryController;-><init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V

    invoke-interface {v5, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance p2, Lcom/android/settings/network/TetherPreferenceController;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/network/TetherPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v5, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance p1, Lcom/android/settings/network/ProxyPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/network/ProxyPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-interface {v5, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-interface {v5, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v5
.end method

.method public static isWfcOMASupported(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 380
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "oma_wfc_enable"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method static synthetic lambda$onCreateDialog$0(Lcom/android/settings/network/MobilePlanPreferenceController;Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    .line 197
    invoke-virtual {p0, p1}, Lcom/android/settings/network/MobilePlanPreferenceController;->setMobilePlanDialogMessage(Ljava/lang/String;)V

    return-void
.end method

.method private updateUssWfifiCallingPlus()V
    .locals 2

    .line 310
    iget-boolean v0, p0, Lcom/android/settings/network/NetworkDashboardFragment;->isBindWifiCallingPlusSuccess:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mIWifiCallingService:Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;

    if-eqz v0, :cond_0

    .line 312
    :try_start_0
    invoke-interface {v0}, Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;->isWifiCallingSwitchNormal()Z

    move-result v0

    const/4 v1, 0x0

    .line 313
    invoke-direct {p0, v0, v1}, Lcom/android/settings/network/NetworkDashboardFragment;->updateUssWifiCallingPlusPreference(ZI)V

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mIWifiCallingService:Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;

    invoke-interface {v0}, Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;->isWifiCallingSwitchChecked()Z

    move-result v0

    const/4 v1, 0x1

    .line 316
    invoke-direct {p0, v0, v1}, Lcom/android/settings/network/NetworkDashboardFragment;->updateUssWifiCallingPlusPreference(ZI)V

    .line 317
    iget-object v0, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mIWifiCallingService:Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;

    invoke-interface {v0}, Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;->isWifiCallingSwitchEnable()Z

    move-result v0

    const/4 v1, 0x2

    .line 318
    invoke-direct {p0, v0, v1}, Lcom/android/settings/network/NetworkDashboardFragment;->updateUssWifiCallingPlusPreference(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 321
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private updateUssWifiCallingPlusPreference(ZI)V
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mCallingPlusSwitchPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    if-nez v0, :cond_0

    const-string v0, "oneplus_wifi_calling_plus"

    .line 328
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/MasterSwitchPreference;

    iput-object v0, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mCallingPlusSwitchPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mCallingPlusSwitchPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    if-eqz v0, :cond_4

    .line 332
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    goto :goto_0

    .line 341
    :cond_1
    iget-object p0, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mCallingPlusSwitchPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_0

    .line 338
    :cond_2
    iget-object p0, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mCallingPlusSwitchPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 335
    :cond_3
    iget-object p0, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mCallingPlusSwitchPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method private updateUssWifiTetheringPreference()V
    .locals 3

    .line 279
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/tether/utils/TetherUtils;->getTetherData(Landroid/content/Context;)I

    move-result v0

    .line 280
    iget v1, p0, Lcom/android/settings/network/NetworkDashboardFragment;->lastTetherData:I

    if-ne v1, v0, :cond_0

    return-void

    .line 281
    :cond_0
    iput v0, p0, Lcom/android/settings/network/NetworkDashboardFragment;->lastTetherData:I

    .line 283
    iget-object v1, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mTetherSettings:Lcom/android/settingslib/RestrictedPreference;

    if-nez v1, :cond_1

    const-string v1, "tether_settings"

    .line 284
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/RestrictedPreference;

    iput-object v1, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mTetherSettings:Lcom/android/settingslib/RestrictedPreference;

    .line 285
    :cond_1
    iget-object v1, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mTetherSettings:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v1, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 289
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_1

    .line 287
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mTetherSettings:Lcom/android/settingslib/RestrictedPreference;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 2
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

    .line 123
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-static {p1, v0, v1, p0, p0}, Lcom/android/settings/network/NetworkDashboardFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroidx/fragment/app/Fragment;Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getDialogMetricsCategory(I)I
    .locals 0

    const/4 p0, 0x1

    if-ne p0, p1, :cond_0

    const/16 p0, 0x261

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getHelpResource()I
    .locals 0

    .line 118
    sget p0, Lcom/android/settings/R$string;->help_url_network_dashboard:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "NetworkDashboardFrag"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x2ea

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 98
    sget p0, Lcom/android/settings/R$xml;->network_and_internet:I

    return p0
.end method

.method protected isParalleledControllers()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 103
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 105
    const-class p1, Lcom/android/settings/network/MultiNetworkHeaderController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/MultiNetworkHeaderController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/network/MultiNetworkHeaderController;->init(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 106
    const-class p1, Lcom/android/settings/network/AirplaneModePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/AirplaneModePreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/network/AirplaneModePreferenceController;->setFragment(Landroidx/fragment/app/Fragment;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    const-class v0, Lcom/android/settings/network/AllInOneTetherPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateDialog: dialogId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkDashboardFrag"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 200
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p0

    return-object p0

    .line 191
    :cond_0
    const-class p1, Lcom/android/settings/network/MobilePlanPreferenceController;

    .line 192
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/MobilePlanPreferenceController;

    .line 193
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 194
    invoke-virtual {p1}, Lcom/android/settings/network/MobilePlanPreferenceController;->getMobilePlanDialogMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 p0, 0x0

    .line 195
    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    const p0, 0x104000a

    new-instance v1, Lcom/android/settings/network/-$$Lambda$NetworkDashboardFragment$ezC2Ol_SOf4CDiS8HjkkdWzGu_s;

    invoke-direct {v1, p1}, Lcom/android/settings/network/-$$Lambda$NetworkDashboardFragment$ezC2Ol_SOf4CDiS8HjkkdWzGu_s;-><init>(Lcom/android/settings/network/MobilePlanPreferenceController;)V

    .line 196
    invoke-virtual {v0, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 198
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 112
    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 113
    const-class p1, Lcom/android/settings/network/AllInOneTetherPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/AllInOneTetherPreferenceController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/network/AllInOneTetherPreferenceController;->initEnabler(Landroidx/lifecycle/Lifecycle;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 351
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "oneplus_wifi_calling_plus"

    .line 352
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 353
    iget-object p0, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mIWifiCallingService:Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;

    if-eqz p0, :cond_0

    .line 354
    check-cast p2, Ljava/lang/Boolean;

    .line 356
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/oneplus/sprint/callingplus/interfaces/IWifiCallingService;->setWifiCallingSwitchState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 358
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 368
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "data_usage_summary"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->feature_not_support_split_screen:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Landroidx/appcompat/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroidx/appcompat/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const/4 p0, 0x1

    return p0

    .line 374
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onStart()V
    .locals 4

    .line 226
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 227
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 228
    invoke-direct {p0}, Lcom/android/settings/network/NetworkDashboardFragment;->updateUssWifiTetheringPreference()V

    .line 229
    new-instance v0, Lcom/android/settings/wifi/tether/TetherDataObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/tether/TetherDataObserver;-><init>(Lcom/android/settings/wifi/tether/TetherDataObserver$OnTetherDataChangeCallback;)V

    iput-object v0, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mTetherDataObserver:Lcom/android/settings/wifi/tether/TetherDataObserver;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "TetheredData"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mTetherDataObserver:Lcom/android/settings/wifi/tether/TetherDataObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    const-string v0, "oneplus_wifi_calling_plus"

    .line 234
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/MasterSwitchPreference;

    iput-object v0, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mCallingPlusSwitchPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    if-eqz v0, :cond_1

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/network/NetworkDashboardFragment;->isWfcOMASupported(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mCallingPlusConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_2

    .line 239
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.oneplus.sprint.callingplus"

    .line 240
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.oneplus.sprint.callingplus.WifiCallingService"

    .line 241
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mCallingPlusConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/network/NetworkDashboardFragment;->isBindWifiCallingPlusSuccess:Z

    .line 244
    :cond_2
    iget-object v0, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 245
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.oneplus.sprint.callingplus.ui_refresh"

    .line 246
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_3
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 255
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    .line 256
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 257
    iget-object v0, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mTetherDataObserver:Lcom/android/settings/wifi/tether/TetherDataObserver;

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mTetherDataObserver:Lcom/android/settings/wifi/tether/TetherDataObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 259
    iput-object v0, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mTetherDataObserver:Lcom/android/settings/wifi/tether/TetherDataObserver;

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mCallingPlusConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/network/NetworkDashboardFragment;->isBindWifiCallingPlusSuccess:Z

    if-eqz v0, :cond_1

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mCallingPlusConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 264
    iput-boolean v0, p0, Lcom/android/settings/network/NetworkDashboardFragment;->isBindWifiCallingPlusSuccess:Z

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 267
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    return-void
.end method

.method public onTetherDataChange()V
    .locals 0

    .line 275
    invoke-direct {p0}, Lcom/android/settings/network/NetworkDashboardFragment;->updateUssWifiTetheringPreference()V

    return-void
.end method

.method public showMobilePlanMessageDialog()V
    .locals 1

    const/4 v0, 0x1

    .line 183
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method
