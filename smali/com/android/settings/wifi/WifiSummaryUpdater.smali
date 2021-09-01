.class public final Lcom/android/settings/wifi/WifiSummaryUpdater;
.super Lcom/android/settings/widget/SummaryUpdater;
.source "WifiSummaryUpdater.java"


# static fields
.field private static final INTENT_FILTER:Landroid/content/IntentFilter;


# instance fields
.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/WifiSummaryUpdater;->INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 47
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcom/android/settings/wifi/WifiSummaryUpdater;->INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    sget-object v0, Lcom/android/settings/wifi/WifiSummaryUpdater;->INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SummaryUpdater$OnSummaryChangeListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/wifi/WifiSummaryUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SummaryUpdater$OnSummaryChangeListener;Lcom/android/settingslib/wifi/WifiStatusTracker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SummaryUpdater$OnSummaryChangeListener;Lcom/android/settingslib/wifi/WifiStatusTracker;)V
    .locals 6

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/SummaryUpdater;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SummaryUpdater$OnSummaryChangeListener;)V

    if-eqz p3, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    new-instance p3, Lcom/android/settingslib/wifi/WifiStatusTracker;

    const-class p2, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroid/net/wifi/WifiManager;

    const-class p2, Landroid/net/NetworkScoreManager;

    .line 62
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/net/NetworkScoreManager;

    const-class p2, Landroid/net/ConnectivityManager;

    .line 63
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Landroid/net/ConnectivityManager;

    new-instance v5, Lcom/android/settings/wifi/-$$Lambda$WifiSummaryUpdater$5w1MXX8MJfsbMZcSIHVb0vJmaww;

    invoke-direct {v5, p0}, Lcom/android/settings/wifi/-$$Lambda$WifiSummaryUpdater$5w1MXX8MJfsbMZcSIHVb0vJmaww;-><init>(Lcom/android/settings/wifi/WifiSummaryUpdater;)V

    move-object v0, p3

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/wifi/WifiStatusTracker;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/NetworkScoreManager;Landroid/net/ConnectivityManager;Ljava/lang/Runnable;)V

    :goto_0
    iput-object p3, p0, Lcom/android/settings/wifi/WifiSummaryUpdater;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    .line 65
    new-instance p1, Lcom/android/settings/wifi/WifiSummaryUpdater$1;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/WifiSummaryUpdater$1;-><init>(Lcom/android/settings/wifi/WifiSummaryUpdater;)V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSummaryUpdater;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiSummaryUpdater;)Lcom/android/settingslib/wifi/WifiStatusTracker;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSummaryUpdater;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiSummaryUpdater;)V
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/android/settings/widget/SummaryUpdater;->notifyChangeIfNeeded()V

    return-void
.end method

.method public static synthetic lambda$5w1MXX8MJfsbMZcSIHVb0vJmaww(Lcom/android/settings/wifi/WifiSummaryUpdater;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/widget/SummaryUpdater;->notifyChangeIfNeeded()V

    return-void
.end method


# virtual methods
.method public getSummary()Ljava/lang/String;
    .locals 5

    .line 87
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSummaryUpdater;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-boolean v1, v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->enabled:Z

    if-nez v1, :cond_0

    .line 88
    iget-object p0, p0, Lcom/android/settings/widget/SummaryUpdater;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->switch_off_text:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 90
    :cond_0
    iget-boolean v1, v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->connected:Z

    if-nez v1, :cond_1

    .line 91
    iget-object p0, p0, Lcom/android/settings/widget/SummaryUpdater;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->disconnected:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 93
    :cond_1
    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSummaryUpdater;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-object v1, v1, Lcom/android/settingslib/wifi/WifiStatusTracker;->statusLabel:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    .line 97
    :cond_2
    iget-object v1, p0, Lcom/android/settings/widget/SummaryUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settingslib/R$string;->preference_summary_default_combination:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/android/settings/wifi/WifiSummaryUpdater;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->statusLabel:Ljava/lang/String;

    aput-object p0, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public register(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/widget/SummaryUpdater;->notifyChangeIfNeeded()V

    .line 78
    iget-object v0, p0, Lcom/android/settings/widget/SummaryUpdater;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSummaryUpdater;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/android/settings/wifi/WifiSummaryUpdater;->INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/SummaryUpdater;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSummaryUpdater;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 82
    :goto_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiSummaryUpdater;->mWifiTracker:Lcom/android/settingslib/wifi/WifiStatusTracker;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->setListening(Z)V

    return-void
.end method
