.class public Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;
.super Ljava/lang/Object;
.source "WifiTetherSwitchBarController.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/wifi/tether/utils/TetherUtils$OnDialogConfirmCallback;


# static fields
.field private static final SOFTSIM_URL:Landroid/net/Uri;

.field private static final WIFI_INTENT_FILTER:Landroid/content/IntentFilter;


# instance fields
.field config:Landroid/net/wifi/SoftApConfiguration;

.field private isWifiChecked:Z

.field private mCallBack:Lcom/verizon/loginenginesvc/clientsdk/MhsAuthorizedClient$ICallback;

.field private mClient:Lcom/verizon/loginenginesvc/clientsdk/MhsAuthorizedClient;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field final mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field private mHandler:Landroid/os/Handler;

.field final mOnStartTetheringCallback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

.field private final mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSoftSimPilotModeEnabled:Z

.field private mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final mSwitch:Landroid/widget/Switch;

.field private final mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field pref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://com.redteamobile.provider"

    .line 128
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->SOFTSIM_URL:Landroid/net/Uri;

    .line 187
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->WIFI_INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    .line 190
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    sget-object v0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->WIFI_INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.setupDataError_tether"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;)V
    .locals 3

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 138
    iput-boolean v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->isWifiChecked:Z

    const/4 v1, 0x0

    .line 148
    iput-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 150
    iput-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 156
    new-instance v1, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$1;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)V

    iput-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mOnStartTetheringCallback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

    .line 168
    new-instance v1, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$2;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$2;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)V

    iput-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 352
    new-instance v1, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$5;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$5;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)V

    iput-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 637
    new-instance v1, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$9;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$9;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)V

    iput-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mCallBack:Lcom/verizon/loginenginesvc/clientsdk/MhsAuthorizedClient$ICallback;

    .line 200
    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    .line 201
    iput-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 202
    invoke-virtual {p2}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitch:Landroid/widget/Switch;

    .line 203
    new-instance p2, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-direct {p2, p1}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    const-string p2, "connectivity"

    .line 205
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    iput-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const-string/jumbo p2, "wifi"

    .line 206
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiManager;

    iput-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 207
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result p2

    const/16 v2, 0xd

    if-ne p2, v2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    invoke-virtual {v1, p2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 209
    iget-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->config:Landroid/net/wifi/SoftApConfiguration;

    .line 210
    iget-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    const-string v1, "OPPref_wifi"

    invoke-virtual {p2, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->pref:Landroid/content/SharedPreferences;

    .line 213
    invoke-static {}, Lcom/oneplus/settings/utils/ProductUtils;->isUsvMode()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 214
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 215
    iget-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    .line 216
    iget-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/SubscriptionManager;

    iput-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 217
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {p2, v0}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 220
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->updateWifiSwitch()V

    .line 221
    invoke-static {}, Lcom/oneplus/settings/utils/ProductUtils;->isUsvMode()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 222
    new-instance p2, Landroid/app/ProgressDialog;

    invoke-direct {p2, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mProgressDialog:Landroid/app/ProgressDialog;

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)Lcom/android/settings/widget/SwitchBar;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->updateWifiSwitch()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->dismissDialog()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->resetSwitch()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mobileHotspotDialog()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)Landroid/content/Context;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)Landroid/telephony/SubscriptionInfo;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;Landroid/telephony/SubscriptionInfo;)Landroid/telephony/SubscriptionInfo;
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)Landroid/telephony/SubscriptionManager;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;I)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;Z)Z
    .locals 0

    .line 113
    iput-boolean p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSoftSimPilotModeEnabled:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;Landroid/content/Context;)Z
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->isPilotModeEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;Z)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->updateSimStatus(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;I)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->tetherError(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method private dismissDialog()V
    .locals 0

    .line 706
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz p0, :cond_0

    .line 707
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private getPilotModeFromSim(Landroid/content/Context;I)Z
    .locals 7

    const-string p0, "WifiTetherSwitchBarController"

    .line 484
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "slot=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->SOFTSIM_URL:Landroid/net/Uri;

    const-string p1, "slot"

    const-string p2, "iccid"

    const-string v3, "permit_package"

    const-string v4, "forbid_package"

    const-string v5, "pilot"

    filled-new-array {p1, p2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    .line 486
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "slot"

    .line 485
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 488
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 489
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x4

    .line 490
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "1"

    .line 491
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPilotModeFromSim: isPilotMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " sPilot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 494
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    const/4 p0, 0x1

    return p0

    .line 497
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 499
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "getPilotModeFromSim SQLiteException "

    .line 502
    invoke-static {p0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method private handleWifiApStateChanged(I)V
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 454
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 455
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->updateWifiSwitch()V

    goto :goto_0

    .line 437
    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    if-nez p1, :cond_0

    .line 438
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitch:Landroid/widget/Switch;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 439
    iput-boolean v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->isWifiChecked:Z

    .line 441
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->updateWifiSwitch()V

    goto :goto_0

    .line 434
    :pswitch_1
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_0

    .line 450
    :pswitch_2
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 451
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->updateWifiSwitch()V

    goto :goto_0

    .line 444
    :pswitch_3
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 445
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 447
    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isPilotModeEnabled(Landroid/content/Context;)Z
    .locals 8

    .line 535
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 536
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const-string v3, "WifiTetherSwitchBarController"

    if-ge v2, v0, :cond_1

    .line 539
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->isSoftSim(I)Z

    move-result v4

    .line 540
    invoke-direct {p0, p1, v2}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->getPilotModeFromSim(Landroid/content/Context;I)Z

    move-result v5

    .line 541
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hasVirtualSim:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " hasPilot:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    const-string p0, "Soft sim is in pilot mode"

    .line 543
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "No SIM is in pilot mode"

    .line 547
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private isSoftSim(I)Z
    .locals 10

    const-string p0, "isSoftSIM"

    const-string v0, "WifiTetherSwitchBarController"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "extphone"

    .line 511
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lorg/codeaurora/internal/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 513
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "phone"

    .line 515
    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 516
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSoftSIM slot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "generalGetter"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v1

    const-class v8, Landroid/os/Bundle;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 518
    invoke-virtual {v4, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p0, v5, v1

    aput-object v3, v5, v9

    .line 519
    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 520
    invoke-virtual {v2, p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "slot "

    if-eqz p0, :cond_0

    .line 521
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is softsim"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    .line 524
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is NOT softsim"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 529
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v1
.end method

.method public static isVerizon()Z
    .locals 2

    const-string v0, "ril.sim.carrier.name.slot0"

    .line 629
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$onClick$0()V
    .locals 1

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->stopTether()V

    .line 292
    invoke-static {}, Lcom/oneplus/settings/utils/ProductUtils;->isUsvMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 293
    iput-boolean v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->isWifiChecked:Z

    :cond_0
    return-void
.end method

.method private mobileHotspotDialog()V
    .locals 3

    .line 670
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 671
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->hotspot_tip_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->mobile_hotspot_authoration_error:I

    .line 672
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    .line 673
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->mhs_app:I

    .line 674
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$10;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$10;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 697
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private openHotspot()V
    .locals 5

    .line 611
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    const-string v0, "WifiTetherSwitchBarController"

    const-string v1, "openHotspot: start tethering"

    .line 612
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mOnStartTetheringCallback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

    new-instance v3, Landroid/os/Handler;

    .line 614
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 613
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method private openTetheringFail()V
    .locals 2

    .line 587
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 588
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 589
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 591
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->stopUssTethering()V

    return-void
.end method

.method private resetSwitch()V
    .locals 2

    .line 701
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 702
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->updateWifiSwitch()V

    return-void
.end method

.method private startUssTethering()V
    .locals 1

    .line 554
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/wifi/tether/utils/TetherUtils;->isNoSimCard(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 555
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/wifi/tether/utils/TetherUtils;->isHaveProfile(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->openHotspot()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 558
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->tetherError(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 561
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->tetherError(I)V

    :goto_0
    return-void
.end method

.method private stopUssTethering()V
    .locals 1

    .line 595
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 596
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    :cond_0
    return-void
.end method

.method private tetherError(I)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 576
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->wifi_hotspot_checkbox_text:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 577
    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->tether_error_title:I

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p1, v4, v1

    .line 578
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->tether_error_message:I

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 577
    invoke-static {v2, v3, p1}, Lcom/android/settings/wifi/tether/utils/TetherUtils;->showTertheringErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->openTetheringFail()V

    goto :goto_0

    .line 568
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->tether_no_sim_title:I

    .line 569
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->tether_no_sim_message:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 568
    invoke-static {p1, v0, v2}, Lcom/android/settings/wifi/tether/utils/TetherUtils;->showTertheringErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz p1, :cond_2

    .line 571
    invoke-virtual {p1, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 572
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateSimStatus(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 602
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    .line 603
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private updateWifiSwitch()V
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onClick$0$WifiTetherSwitchBarController()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->lambda$onClick$0()V

    return-void
.end method

.method public onBlacklistStatusChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 248
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 249
    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->startVibratePattern(Landroid/content/Context;)V

    .line 252
    :cond_0
    check-cast p1, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const-string p1, "WifiTetherSwitchBarController"

    const-string v1, "onClick: start tether"

    .line 253
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-static {}, Lcom/oneplus/settings/utils/ProductUtils;->isUsvMode()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 256
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 257
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->hotspot_tip_title:I

    .line 258
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->mobile_hotspot_airplane_off_error:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 257
    invoke-static {p1, v1, v2}, Lcom/android/settings/wifi/tether/utils/TetherUtils;->showTertheringErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto/16 :goto_0

    .line 260
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 261
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->hotspot_tip_title:I

    .line 262
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->mobile_hotspot_data_off_error:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 261
    invoke-static {p1, v1, v2}, Lcom/android/settings/wifi/tether/utils/TetherUtils;->showTertheringErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0

    .line 266
    :cond_2
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->isVerizon()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->isWifiChecked:Z

    if-nez p1, :cond_3

    .line 267
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    .line 268
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 269
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->dialog_mhs_error:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 271
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_7

    .line 272
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 273
    new-instance p1, Lcom/verizon/loginenginesvc/clientsdk/MhsAuthorizedClient;

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mCallBack:Lcom/verizon/loginenginesvc/clientsdk/MhsAuthorizedClient$ICallback;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/verizon/loginenginesvc/clientsdk/MhsAuthorizedClient;-><init>(Landroid/content/Context;Lcom/verizon/loginenginesvc/clientsdk/MhsAuthorizedClient$ICallback;Ljava/lang/Integer;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mClient:Lcom/verizon/loginenginesvc/clientsdk/MhsAuthorizedClient;

    const-wide/16 v0, 0x61a8

    .line 274
    invoke-virtual {p1, v0, v1}, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->sendRequest(J)V

    goto :goto_0

    .line 278
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->startTether()V

    goto :goto_0

    .line 282
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->startTether()V

    goto :goto_0

    .line 286
    :cond_5
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz p1, :cond_6

    .line 287
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 289
    :cond_6
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/wifi/tether/-$$Lambda$WifiTetherSwitchBarController$1Q77u4UUtMOQY8TZ1sxe4HO3zzE;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/tether/-$$Lambda$WifiTetherSwitchBarController$1Q77u4UUtMOQY8TZ1sxe4HO3zzE;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    :goto_0
    return-void
.end method

.method public onConfirm()V
    .locals 0

    .line 620
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->openHotspot()V

    return-void
.end method

.method public onDataSaverChanged(Z)V
    .locals 0

    .line 466
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->updateWifiSwitch()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 229
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v1, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->WIFI_INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 236
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 237
    invoke-static {}, Lcom/oneplus/settings/utils/ProductUtils;->isUsvMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mClient:Lcom/verizon/loginenginesvc/clientsdk/MhsAuthorizedClient;

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {v0}, Lcom/verizon/loginenginesvc/clientsdk/internal/LoginSvcClient;->cancelRequest()V

    .line 241
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->dismissDialog()V

    :cond_1
    return-void
.end method

.method public onSwitchToggled(Z)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 386
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 387
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$6;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$6;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 394
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result p1

    if-nez p1, :cond_3

    .line 396
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "op_overheat_temperature_type"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_1

    .line 398
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->overheat_toast_content:I

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 402
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->config:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result p1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    invoke-static {}, Lcom/oneplus/settings/utils/ProductUtils;->isUsvMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 403
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 404
    sget v1, Lcom/android/settings/R$string;->warning_title:I

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$string;->open_hotspot_warning_message:I

    .line 405
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$string;->continue_anyway:I

    new-instance v2, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$8;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$8;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)V

    .line 406
    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$7;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$7;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)V

    .line 413
    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 422
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 425
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->startTether()V

    :cond_3
    :goto_0
    return v0
.end method

.method public onWhitelistStatusChanged(IZ)V
    .locals 0

    return-void
.end method

.method startTether()V
    .locals 6

    .line 313
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->pref:Landroid/content/SharedPreferences;

    const-string v1, "checked"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 314
    invoke-static {}, Lcom/oneplus/settings/utils/ProductUtils;->isUsvMode()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->config:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$layout;->dialog_checkbox:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 316
    sget v1, Lcom/android/settings/R$id;->dialogCheckbox:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 317
    new-instance v3, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$3;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$3;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)V

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 326
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 327
    sget v3, Lcom/android/settings/R$string;->hotspot_tip_title:I

    invoke-virtual {v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 328
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->hotspot_tip_message:I

    .line 329
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->config:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->config:Landroid/net/wifi/SoftApConfiguration;

    invoke-virtual {v5}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x104000a

    new-instance v3, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$4;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController$4;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;)V

    .line 330
    invoke-virtual {v1, v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 337
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 342
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUstMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/wifi/tether/utils/TetherUtils;->isWifiEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/settings/wifi/tether/utils/TetherUtils;->startUstTethering(Landroid/content/Context;Lcom/android/settings/wifi/tether/utils/TetherUtils$OnDialogConfirmCallback;)V

    goto :goto_0

    .line 344
    :cond_1
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 345
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->startUssTethering()V

    goto :goto_0

    .line 347
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->openHotspot()V

    :goto_0
    return-void
.end method

.method stopTether()V
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    .line 304
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/wifi/tether/utils/TetherUtils;->getUstWifiTetheringStatus(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/settings/wifi/tether/utils/TetherUtils;->setTetherState(Landroid/content/Context;Z)V

    .line 306
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->mContext:Landroid/content/Context;

    invoke-static {p0, v1}, Lcom/android/settings/wifi/tether/utils/TetherUtils;->setUstWifiTetheringStatus(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method
