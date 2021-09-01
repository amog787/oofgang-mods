.class public Lcom/android/settings/wifi/tether/WifiTetherSettings;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "WifiTetherSettings.java"

# interfaces
.implements Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;
.implements Lcom/android/settings/wifi/tether/TetherDataObserver$OnTetherDataChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;
    }
.end annotation


# static fields
.field static final KEY_WIFI_TETHER_AUTO_OFF:Ljava/lang/String; = "wifi_tether_auto_turn_off"

.field static final KEY_WIFI_TETHER_NETWORK_AP_BAND:Ljava/lang/String; = "wifi_tether_network_ap_band"

.field static final KEY_WIFI_TETHER_NETWORK_NAME:Ljava/lang/String; = "wifi_tether_network_name"

.field static final KEY_WIFI_TETHER_NETWORK_PASSWORD:Ljava/lang/String; = "wifi_tether_network_password"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static final TETHER_STATE_CHANGE_FILTER:Landroid/content/IntentFilter;


# instance fields
.field private mApBandPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

.field private mConnectedDeviceManagerController:Lcom/oneplus/settings/wifi/tether/OPWifiTetherDeviceManagerController;

.field private mHandler:Landroid/os/Handler;

.field private mOPApBandPreferenceController:Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;

.field private mPasswordPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

.field private mRestartWifiApAfterConfigChange:Z

.field private mSSIDPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

.field private mSecurityPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

.field private mSwitchBarController:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

.field mTetherChangeReceiver:Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;

.field private mTetherDataObserver:Lcom/android/settings/wifi/tether/TetherDataObserver;

.field private mUnavailable:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 108
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->TETHER_STATE_CHANGE_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 109
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    sget-object v0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->TETHER_STATE_CHANGE_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.COUNTRY_CODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 363
    new-instance v0, Lcom/android/settings/wifi/tether/WifiTetherSettings$2;

    sget v1, Lcom/android/settings/R$xml;->wifi_tether_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/tether/WifiTetherSettings$2;-><init>(I)V

    sput-object v0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "no_config_tethering"

    .line 127
    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    .line 116
    new-instance v0, Lcom/android/settings/wifi/tether/WifiTetherSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings$1;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/tether/WifiTetherSettings;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->startTether()V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)Ljava/util/List;
    .locals 0

    .line 68
    invoke-static {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/tether/WifiTetherSettings;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->updateDisplayWithNewConfig()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/tether/WifiTetherSettings;)Landroid/net/wifi/WifiManager;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/tether/WifiTetherSettings;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mRestartWifiApAfterConfigChange:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/tether/WifiTetherSettings;)Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mOPApBandPreferenceController:Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/tether/WifiTetherSettings;)Lcom/oneplus/settings/wifi/tether/OPWifiTetherDeviceManagerController;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mConnectedDeviceManagerController:Lcom/oneplus/settings/wifi/tether/OPWifiTetherDeviceManagerController;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/tether/WifiTetherSettings;)Landroid/os/Handler;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private buildNewConfig()Landroid/net/wifi/SoftApConfiguration;
    .locals 6

    .line 304
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    if-nez v0, :cond_0

    .line 306
    new-instance v0, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {v0}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>()V

    goto :goto_0

    .line 308
    :cond_0
    new-instance v1, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {v1, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    move-object v0, v1

    .line 311
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSecurityPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->getSecurityType()I

    move-result v1

    .line 314
    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSSIDPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    invoke-virtual {v2}, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 315
    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mPasswordPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    invoke-virtual {v2, v1}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->getPasswordValidated(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 317
    invoke-static {}, Lcom/android/settings/wifi/WifiUtils;->isSupportDualBand()Z

    move-result v2

    if-nez v2, :cond_1

    .line 318
    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mOPApBandPreferenceController:Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;

    invoke-virtual {v2}, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;->getBand()I

    move-result v2

    goto :goto_1

    .line 320
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mApBandPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    invoke-virtual {v2}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->getBandIndex()I

    move-result v2

    :goto_1
    const/4 v3, 0x4

    const-string v4, "WifiTetherSettings"

    const/4 v5, 0x1

    if-ne v1, v3, :cond_2

    const/16 v1, 0x8

    if-ne v2, v1, :cond_2

    .line 325
    invoke-virtual {v0, v5}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    const-string v1, "buildNewConfig band is default 2GHZ"

    .line 326
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 328
    :cond_2
    invoke-virtual {v0, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildNewConfig band = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :goto_2
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUstMode()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 334
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, -0x2

    const-string v2, "oneplus_is_broadcat_wifi_name"

    const/4 v3, 0x0

    .line 333
    invoke-static {p0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_3

    move p0, v5

    goto :goto_3

    :cond_3
    move p0, v3

    :goto_3
    if-eqz p0, :cond_4

    .line 336
    invoke-virtual {v0, v5}, Landroid/net/wifi/SoftApConfiguration$Builder;->setHiddenSsid(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    goto :goto_4

    .line 338
    :cond_4
    invoke-virtual {v0, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setHiddenSsid(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 342
    :cond_5
    :goto_4
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0

    return-object p0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)Ljava/util/List;
    .locals 3
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

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 244
    new-instance v1, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    new-instance v1, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    new-instance v1, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    new-instance v1, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    new-instance v1, Lcom/android/settings/wifi/tether/WifiTetherAutoOffPreferenceController;

    const-string/jumbo v2, "wifi_tether_auto_turn_off"

    invoke-direct {v1, p0, v2}, Lcom/android/settings/wifi/tether/WifiTetherAutoOffPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    new-instance v1, Lcom/oneplus/settings/wifi/tether/OPWiFi6StandardHotSpotPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/settings/wifi/tether/OPWiFi6StandardHotSpotPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    new-instance v1, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    new-instance v1, Lcom/oneplus/settings/wifi/tether/OPWifiTetherDeviceManagerController;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/settings/wifi/tether/OPWifiTetherDeviceManagerController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    new-instance p1, Lcom/oneplus/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/wifi/tether/OPWifiTetherCustomAutoTurnOffPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private checkTetherData()V
    .locals 2

    .line 486
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/tether/utils/TetherUtils;->getTetherData(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 489
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    .line 490
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSwitchBarController:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    if-eqz p0, :cond_0

    .line 491
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->stopTether()V

    :cond_0
    return-void
.end method

.method private startTether()V
    .locals 1

    const/4 v0, 0x0

    .line 346
    iput-boolean v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mRestartWifiApAfterConfigChange:Z

    .line 347
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSwitchBarController:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->startTether()V

    return-void
.end method

.method private updateDisplayWithNewConfig()V
    .locals 1

    .line 351
    const-class v0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    .line 352
    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->updateDisplay()V

    .line 353
    const-class v0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    .line 354
    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->updateDisplay()V

    .line 355
    const-class v0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    .line 356
    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->updateDisplay()V

    .line 357
    const-class v0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    .line 358
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->updateDisplay()V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
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

    .line 238
    new-instance v0, Lcom/android/settings/wifi/tether/-$$Lambda$gcILfs-BNAxrC_fmlZxbsxqSkp8;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/tether/-$$Lambda$gcILfs-BNAxrC_fmlZxbsxqSkp8;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSettings;)V

    invoke-static {p1, v0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getInitialExpandedChildCount()I
    .locals 1

    .line 470
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSecurityPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 474
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->getSecurityType()I

    move-result p0

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "WifiTetherSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x3f6

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 233
    sget p0, Lcom/android/settings/R$xml;->wifi_tether_settings:I

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 167
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 168
    iget-boolean p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mUnavailable:Z

    if-eqz p1, :cond_0

    return-void

    .line 173
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 174
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    .line 175
    new-instance v1, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    invoke-direct {v1, p1, v0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;)V

    iput-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSwitchBarController:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    .line 176
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSwitchBarController:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 177
    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 151
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    const-string/jumbo v0, "wifi"

    .line 152
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 153
    new-instance p1, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSettings;)V

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mTetherChangeReceiver:Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;

    .line 155
    const-class p1, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSSIDPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    .line 156
    const-class p1, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSecurityPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    .line 157
    const-class p1, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mPasswordPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    .line 158
    const-class p1, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mApBandPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    .line 160
    const-class p1, Lcom/oneplus/settings/wifi/tether/OPWifiTetherDeviceManagerController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/wifi/tether/OPWifiTetherDeviceManagerController;

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mConnectedDeviceManagerController:Lcom/oneplus/settings/wifi/tether/OPWifiTetherDeviceManagerController;

    .line 162
    const-class p1, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mOPApBandPreferenceController:Lcom/oneplus/settings/wifi/tether/OPWifiTetherApBandPreferenceController;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 142
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 143
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->setIfOnlyAvailableForAdmins(Z)V

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iput-boolean p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mUnavailable:Z

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 182
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 183
    iget-boolean v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mUnavailable:Z

    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->isUiRestrictedByOnlyAdmin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->tethering_settings_not_available:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 187
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    return-void

    .line 190
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 192
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mTetherChangeReceiver:Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;

    sget-object v2, Lcom/android/settings/wifi/tether/WifiTetherSettings;->TETHER_STATE_CHANGE_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 195
    :cond_2
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 196
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->checkTetherData()V

    .line 197
    new-instance v0, Lcom/android/settings/wifi/tether/TetherDataObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/tether/TetherDataObserver;-><init>(Lcom/android/settings/wifi/tether/TetherDataObserver$OnTetherDataChangeCallback;)V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mTetherDataObserver:Lcom/android/settings/wifi/tether/TetherDataObserver;

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "TetheredData"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mTetherDataObserver:Lcom/android/settings/wifi/tether/TetherDataObserver;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_3
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 205
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    .line 206
    iget-boolean v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    return-void

    .line 209
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 211
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mTetherChangeReceiver:Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 214
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mRestartWifiApAfterConfigChange:Z

    if-nez v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 221
    :cond_2
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 222
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mTetherDataObserver:Lcom/android/settings/wifi/tether/TetherDataObserver;

    if-eqz v0, :cond_3

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mTetherDataObserver:Lcom/android/settings/wifi/tether/TetherDataObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 224
    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mTetherDataObserver:Lcom/android/settings/wifi/tether/TetherDataObserver;

    :cond_3
    return-void
.end method

.method public onTetherConfigUpdated(Lcom/android/settings/core/BasePreferenceController;)V
    .locals 3

    .line 267
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->buildNewConfig()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    .line 270
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mPasswordPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->updateVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mApBandPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->isVendorDualApSupported()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSecurityPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    .line 273
    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->isOweSapSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mApBandPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    .line 275
    invoke-virtual {v2}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->isBandEntriesHasDualband()Z

    move-result v2

    if-ne v0, v2, :cond_1

    .line 276
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mApBandPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->updatePreferenceEntries(Landroid/net/wifi/SoftApConfiguration;)V

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_2

    const-string v0, "TetheringSettings"

    const-string v2, "Wifi AP config changed while enabled, stop and restart"

    .line 287
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iput-boolean v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mRestartWifiApAfterConfigChange:Z

    .line 290
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSwitchBarController:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->stopTether()V

    .line 292
    :cond_2
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)Z

    return-void
.end method

.method public onTetherDataChange()V
    .locals 0

    .line 482
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->checkTetherData()V

    return-void
.end method
