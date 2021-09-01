.class public Lcom/android/settings/AllInOneTetherSettings;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "AllInOneTetherSettings.java"

# interfaces
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;
.implements Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;


# static fields
.field static final EXPANDED_CHILD_COUNT_DEFAULT:I = 0x4

.field static final EXPANDED_CHILD_COUNT_MAX:I = 0x7fffffff

.field static final EXPANDED_CHILD_COUNT_WITH_SECURITY_NON:I = 0x3

.field static final KEY_WIFI_TETHER_AUTO_OFF:Ljava/lang/String; = "wifi_tether_auto_turn_off_2"

.field static final KEY_WIFI_TETHER_NETWORK_AP_BAND:Ljava/lang/String; = "wifi_tether_network_ap_band_2"

.field static final KEY_WIFI_TETHER_NETWORK_NAME:Ljava/lang/String; = "wifi_tether_network_name_2"

.field static final KEY_WIFI_TETHER_NETWORK_PASSWORD:Ljava/lang/String; = "wifi_tether_network_password_2"

.field static final KEY_WIFI_TETHER_SECURITY:Ljava/lang/String; = "wifi_tether_security_2"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mApBandPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

.field private final mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/bluetooth/BluetoothPan;",
            ">;"
        }
    .end annotation
.end field

.field private mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field private mDataSaverEnabled:Z

.field private mDataSaverFooter:Landroidx/preference/Preference;

.field private mHasShownAdvance:Z

.field private mPasswordPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

.field private final mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mRestartWifiApAfterConfigChange:Z

.field private mSSIDPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

.field private mSecurityPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

.field private mShouldShowWifiConfig:Z

.field final mStateUpdateListener:Lcom/android/settings/network/TetherEnabler$OnTetherStateUpdateListener;

.field private final mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherEnabler:Lcom/android/settings/network/TetherEnabler;

.field private mUnavailable:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiTetherGroup:Landroidx/preference/PreferenceGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 432
    new-instance v0, Lcom/android/settings/AllInOneTetherSettings$3;

    sget v1, Lcom/android/settings/R$xml;->all_tether_prefs:I

    invoke-direct {v0, v1}, Lcom/android/settings/AllInOneTetherSettings$3;-><init>(I)V

    sput-object v0, Lcom/android/settings/AllInOneTetherSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "no_config_tethering"

    .line 178
    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    .line 116
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/settings/AllInOneTetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lcom/android/settings/AllInOneTetherSettings;->mShouldShowWifiConfig:Z

    .line 126
    new-instance v0, Lcom/android/settings/-$$Lambda$AllInOneTetherSettings$6gBAxf2biT13gKStOW2dqkms4p8;

    invoke-direct {v0, p0}, Lcom/android/settings/-$$Lambda$AllInOneTetherSettings$6gBAxf2biT13gKStOW2dqkms4p8;-><init>(Lcom/android/settings/AllInOneTetherSettings;)V

    iput-object v0, p0, Lcom/android/settings/AllInOneTetherSettings;->mStateUpdateListener:Lcom/android/settings/network/TetherEnabler$OnTetherStateUpdateListener;

    .line 136
    new-instance v0, Lcom/android/settings/AllInOneTetherSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/AllInOneTetherSettings$1;-><init>(Lcom/android/settings/AllInOneTetherSettings;)V

    iput-object v0, p0, Lcom/android/settings/AllInOneTetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 161
    new-instance v0, Lcom/android/settings/AllInOneTetherSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/AllInOneTetherSettings$2;-><init>(Lcom/android/settings/AllInOneTetherSettings;)V

    iput-object v0, p0, Lcom/android/settings/AllInOneTetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AllInOneTetherSettings;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/android/settings/AllInOneTetherSettings;->updateDisplayWithNewConfig()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/AllInOneTetherSettings;)Landroid/net/wifi/WifiManager;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/settings/AllInOneTetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/AllInOneTetherSettings;)Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcom/android/settings/AllInOneTetherSettings;->mRestartWifiApAfterConfigChange:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/settings/AllInOneTetherSettings;Z)Z
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/android/settings/AllInOneTetherSettings;->mRestartWifiApAfterConfigChange:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/AllInOneTetherSettings;)Lcom/android/settings/network/TetherEnabler;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/settings/AllInOneTetherSettings;->mTetherEnabler:Lcom/android/settings/network/TetherEnabler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/AllInOneTetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/settings/AllInOneTetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic access$500(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)Ljava/util/List;
    .locals 0

    .line 73
    invoke-static {p0, p1}, Lcom/android/settings/AllInOneTetherSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private buildNewConfig()Landroid/net/wifi/SoftApConfiguration;
    .locals 4

    .line 388
    new-instance v0, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {v0}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>()V

    .line 389
    iget-object v1, p0, Lcom/android/settings/AllInOneTetherSettings;->mSecurityPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->getSecurityType()I

    move-result v1

    .line 390
    iget-object v2, p0, Lcom/android/settings/AllInOneTetherSettings;->mApBandPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    invoke-virtual {v2}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->getBandIndex()I

    move-result v2

    .line 391
    iget-object v3, p0, Lcom/android/settings/AllInOneTetherSettings;->mSSIDPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    invoke-virtual {v3}, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 392
    iget-object p0, p0, Lcom/android/settings/AllInOneTetherSettings;->mPasswordPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->getPasswordValidated(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    const/4 p0, 0x4

    if-ne v1, p0, :cond_0

    const/16 p0, 0x8

    if-ne v2, p0, :cond_0

    const/4 p0, 0x1

    .line 396
    invoke-virtual {v0, p0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_0

    .line 398
    :cond_0
    invoke-virtual {v0, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 400
    :goto_0
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0

    return-object p0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 323
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 324
    new-instance v1, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    new-instance v1, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    new-instance v1, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    new-instance v1, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    new-instance p1, Lcom/android/settings/wifi/tether/WifiTetherAutoOffPreferenceController;

    const-string/jumbo v1, "wifi_tether_auto_turn_off_2"

    invoke-direct {p1, p0, v1}, Lcom/android/settings/wifi/tether/WifiTetherAutoOffPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    new-instance p1, Lcom/android/settings/wifi/tether/WifiTetherFooterPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/tether/WifiTetherFooterPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private synthetic lambda$new$0(I)V
    .locals 2

    const/4 v0, 0x0

    .line 129
    invoke-static {p1, v0}, Lcom/android/settings/network/TetherEnabler;->isTethering(II)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/android/settings/AllInOneTetherSettings;->mShouldShowWifiConfig:Z

    .line 131
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/AllInOneTetherSettings;->getInitialExpandedChildCount()I

    move-result v0

    .line 131
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->setInitialExpandedChildrenCount(I)V

    .line 133
    iget-object p1, p0, Lcom/android/settings/AllInOneTetherSettings;->mWifiTetherGroup:Landroidx/preference/PreferenceGroup;

    iget-boolean p0, p0, Lcom/android/settings/AllInOneTetherSettings;->mShouldShowWifiConfig:Z

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private updateDisplayWithNewConfig()V
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/android/settings/AllInOneTetherSettings;->mSSIDPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->updateDisplay()V

    .line 405
    iget-object v0, p0, Lcom/android/settings/AllInOneTetherSettings;->mSecurityPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->updateDisplay()V

    .line 406
    iget-object v0, p0, Lcom/android/settings/AllInOneTetherSettings;->mPasswordPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->updateDisplay()V

    .line 407
    iget-object p0, p0, Lcom/android/settings/AllInOneTetherSettings;->mApBandPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->updateDisplay()V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0
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

    .line 318
    invoke-static {p1, p0}, Lcom/android/settings/AllInOneTetherSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getHelpResource()I
    .locals 0

    .line 352
    sget p0, Lcom/android/settings/R$string;->help_url_tether:I

    return p0
.end method

.method public getInitialExpandedChildCount()I
    .locals 1

    .line 412
    iget-boolean v0, p0, Lcom/android/settings/AllInOneTetherSettings;->mHasShownAdvance:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/AllInOneTetherSettings;->mShouldShowWifiConfig:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 417
    :cond_0
    iget-object p0, p0, Lcom/android/settings/AllInOneTetherSettings;->mSecurityPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    const/4 v0, 0x4

    if-nez p0, :cond_1

    return v0

    .line 421
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->getSecurityType()I

    move-result p0

    if-nez p0, :cond_2

    const/4 v0, 0x3

    :cond_2
    return v0

    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 413
    iput-boolean v0, p0, Lcom/android/settings/AllInOneTetherSettings;->mHasShownAdvance:Z

    const p0, 0x7fffffff

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AllInOneTetherSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x5a

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 342
    sget p0, Lcom/android/settings/R$xml;->all_tether_prefs:I

    return p0
.end method

.method public synthetic lambda$new$0$AllInOneTetherSettings(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/AllInOneTetherSettings;->lambda$new$0(I)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .line 218
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 219
    iget-boolean p1, p0, Lcom/android/settings/AllInOneTetherSettings;->mUnavailable:Z

    if-eqz p1, :cond_0

    return-void

    .line 224
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 225
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 227
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/AllInOneTetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 230
    :cond_1
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    .line 231
    new-instance v1, Lcom/android/settings/network/TetherEnabler;

    new-instance v2, Lcom/android/settings/widget/SwitchBarController;

    invoke-direct {v2, v0}, Lcom/android/settings/widget/SwitchBarController;-><init>(Lcom/android/settings/widget/SwitchBar;)V

    iget-object v3, p0, Lcom/android/settings/AllInOneTetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/network/TetherEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Ljava/util/concurrent/atomic/AtomicReference;)V

    iput-object v1, p0, Lcom/android/settings/AllInOneTetherSettings;->mTetherEnabler:Lcom/android/settings/network/TetherEnabler;

    .line 233
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/AllInOneTetherSettings;->mTetherEnabler:Lcom/android/settings/network/TetherEnabler;

    invoke-virtual {p1, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 234
    const-class p1, Lcom/android/settings/network/UsbTetherPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/UsbTetherPreferenceController;

    iget-object v1, p0, Lcom/android/settings/AllInOneTetherSettings;->mTetherEnabler:Lcom/android/settings/network/TetherEnabler;

    invoke-virtual {p1, v1}, Lcom/android/settings/network/TetherBasePreferenceController;->setTetherEnabler(Lcom/android/settings/network/TetherEnabler;)V

    .line 235
    const-class p1, Lcom/android/settings/network/BluetoothTetherPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/BluetoothTetherPreferenceController;

    iget-object v1, p0, Lcom/android/settings/AllInOneTetherSettings;->mTetherEnabler:Lcom/android/settings/network/TetherEnabler;

    invoke-virtual {p1, v1}, Lcom/android/settings/network/TetherBasePreferenceController;->setTetherEnabler(Lcom/android/settings/network/TetherEnabler;)V

    .line 236
    const-class p1, Lcom/android/settings/network/EthernetTetherPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/EthernetTetherPreferenceController;

    iget-object v1, p0, Lcom/android/settings/AllInOneTetherSettings;->mTetherEnabler:Lcom/android/settings/network/TetherEnabler;

    invoke-virtual {p1, v1}, Lcom/android/settings/network/TetherBasePreferenceController;->setTetherEnabler(Lcom/android/settings/network/TetherEnabler;)V

    .line 237
    const-class p1, Lcom/android/settings/network/WifiTetherDisablePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/WifiTetherDisablePreferenceController;

    iget-object p0, p0, Lcom/android/settings/AllInOneTetherSettings;->mTetherEnabler:Lcom/android/settings/network/TetherEnabler;

    invoke-virtual {p1, p0}, Lcom/android/settings/network/TetherBasePreferenceController;->setTetherEnabler(Lcom/android/settings/network/TetherEnabler;)V

    .line 238
    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 183
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    const-string/jumbo v0, "wifi"

    .line 184
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/AllInOneTetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 186
    const-class p1, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    iput-object p1, p0, Lcom/android/settings/AllInOneTetherSettings;->mSSIDPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    .line 187
    const-class p1, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    iput-object p1, p0, Lcom/android/settings/AllInOneTetherSettings;->mSecurityPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    .line 188
    const-class p1, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    iput-object p1, p0, Lcom/android/settings/AllInOneTetherSettings;->mPasswordPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    .line 189
    const-class p1, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    iput-object p1, p0, Lcom/android/settings/AllInOneTetherSettings;->mApBandPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    .line 190
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    const-class v0, Lcom/android/settings/network/UsbTetherPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 191
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    const-class v0, Lcom/android/settings/network/BluetoothTetherPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 192
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    const-class v0, Lcom/android/settings/network/EthernetTetherPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 193
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    const-class v0, Lcom/android/settings/network/WifiTetherDisablePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public onBlacklistStatusChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 198
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 199
    new-instance p1, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/AllInOneTetherSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    .line 200
    invoke-virtual {p1}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/AllInOneTetherSettings;->mDataSaverEnabled:Z

    const-string p1, "disabled_on_data_saver_2"

    .line 201
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/AllInOneTetherSettings;->mDataSaverFooter:Landroidx/preference/Preference;

    const-string/jumbo p1, "wifi_tether_settings_group"

    .line 202
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/AllInOneTetherSettings;->mWifiTetherGroup:Landroidx/preference/PreferenceGroup;

    const/4 p1, 0x1

    .line 204
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->setIfOnlyAvailableForAdmins(Z)V

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iput-boolean p1, p0, Lcom/android/settings/AllInOneTetherSettings;->mUnavailable:Z

    return-void

    .line 210
    :cond_0
    iget-object p1, p0, Lcom/android/settings/AllInOneTetherSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {p1, p0}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 213
    iget-object p1, p0, Lcom/android/settings/AllInOneTetherSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {p1}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/AllInOneTetherSettings;->onDataSaverChanged(Z)V

    return-void
.end method

.method public onDataSaverChanged(Z)V
    .locals 0

    .line 302
    iput-boolean p1, p0, Lcom/android/settings/AllInOneTetherSettings;->mDataSaverEnabled:Z

    .line 303
    iget-object p0, p0, Lcom/android/settings/AllInOneTetherSettings;->mDataSaverFooter:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/android/settings/AllInOneTetherSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 297
    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onDestroy()V

    return-void
.end method

.method public onExpandButtonClick()V
    .locals 1

    .line 428
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onExpandButtonClick()V

    const/4 v0, 0x1

    .line 429
    iput-boolean v0, p0, Lcom/android/settings/AllInOneTetherSettings;->mHasShownAdvance:Z

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 273
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    .line 274
    iget-boolean v0, p0, Lcom/android/settings/AllInOneTetherSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AllInOneTetherSettings;->mTetherEnabler:Lcom/android/settings/network/TetherEnabler;

    if-eqz v0, :cond_1

    .line 278
    iget-object p0, p0, Lcom/android/settings/AllInOneTetherSettings;->mStateUpdateListener:Lcom/android/settings/network/TetherEnabler$OnTetherStateUpdateListener;

    invoke-virtual {v0, p0}, Lcom/android/settings/network/TetherEnabler;->removeListener(Lcom/android/settings/network/TetherEnabler$OnTetherStateUpdateListener;)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 262
    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onResume()V

    .line 263
    iget-boolean v0, p0, Lcom/android/settings/AllInOneTetherSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AllInOneTetherSettings;->mTetherEnabler:Lcom/android/settings/network/TetherEnabler;

    if-eqz v0, :cond_1

    .line 267
    iget-object p0, p0, Lcom/android/settings/AllInOneTetherSettings;->mStateUpdateListener:Lcom/android/settings/network/TetherEnabler$OnTetherStateUpdateListener;

    invoke-virtual {v0, p0}, Lcom/android/settings/network/TetherEnabler;->addListener(Lcom/android/settings/network/TetherEnabler$OnTetherStateUpdateListener;)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 243
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 245
    iget-boolean v0, p0, Lcom/android/settings/AllInOneTetherSettings;->mUnavailable:Z

    if-eqz v0, :cond_1

    .line 246
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestrictedByOnlyAdmin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->tethering_settings_not_available:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 249
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    return-void

    .line 252
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 254
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 255
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    iget-object p0, p0, Lcom/android/settings/AllInOneTetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 284
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    .line 285
    iget-boolean v0, p0, Lcom/android/settings/AllInOneTetherSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    return-void

    .line 288
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 290
    iget-object p0, p0, Lcom/android/settings/AllInOneTetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method

.method public onTetherConfigUpdated(Lcom/android/settings/core/BasePreferenceController;)V
    .locals 4

    .line 360
    invoke-direct {p0}, Lcom/android/settings/AllInOneTetherSettings;->buildNewConfig()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    .line 362
    iget-object v0, p0, Lcom/android/settings/AllInOneTetherSettings;->mPasswordPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->updateVisibility(I)V

    .line 364
    iget-object v0, p0, Lcom/android/settings/AllInOneTetherSettings;->mApBandPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->isVendorDualApSupported()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/AllInOneTetherSettings;->mSecurityPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    .line 365
    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->isOweSapSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/settings/AllInOneTetherSettings;->mApBandPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    .line 367
    invoke-virtual {v3}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->isBandEntriesHasDualband()Z

    move-result v3

    if-ne v0, v3, :cond_1

    .line 368
    iget-object v0, p0, Lcom/android/settings/AllInOneTetherSettings;->mApBandPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->updatePreferenceEntries(Landroid/net/wifi/SoftApConfiguration;)V

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 373
    :goto_1
    iget-object v3, p0, Lcom/android/settings/AllInOneTetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, p1}, Landroid/net/wifi/WifiManager;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)Z

    .line 375
    iget-object p1, p0, Lcom/android/settings/AllInOneTetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result p1

    const/16 v3, 0xd

    if-ne p1, v3, :cond_3

    const/4 p1, 0x3

    const-string v3, "AllInOneTetherSettings"

    .line 376
    invoke-static {v3, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Wifi AP config changed while enabled, stop and restart"

    .line 377
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_2
    iput-boolean v1, p0, Lcom/android/settings/AllInOneTetherSettings;->mRestartWifiApAfterConfigChange:Z

    .line 380
    iget-object p1, p0, Lcom/android/settings/AllInOneTetherSettings;->mTetherEnabler:Lcom/android/settings/network/TetherEnabler;

    invoke-virtual {p1, v2}, Lcom/android/settings/network/TetherEnabler;->stopTethering(I)V

    :cond_3
    if-eqz v0, :cond_4

    .line 384
    iget-object p0, p0, Lcom/android/settings/AllInOneTetherSettings;->mApBandPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->updateDisplay()V

    :cond_4
    return-void
.end method

.method public onWhitelistStatusChanged(IZ)V
    .locals 0

    return-void
.end method
