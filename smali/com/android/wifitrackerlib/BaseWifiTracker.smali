.class public Lcom/android/wifitrackerlib/BaseWifiTracker;
.super Ljava/lang/Object;
.source "BaseWifiTracker.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wifitrackerlib/BaseWifiTracker$BaseWifiTrackerCallback;,
        Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;
    }
.end annotation


# static fields
.field private static sVerboseLogging:Z


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected final mConnectivityManager:Landroid/net/ConnectivityManager;

.field protected final mContext:Landroid/content/Context;

.field private final mListener:Lcom/android/wifitrackerlib/BaseWifiTracker$BaseWifiTrackerCallback;

.field protected final mMainHandler:Landroid/os/Handler;

.field protected final mMaxScanAgeMillis:J

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mNetworkRequest:Landroid/net/NetworkRequest;

.field protected final mNetworkScoreManager:Landroid/net/NetworkScoreManager;

.field private final mRequestedScoreKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/NetworkKey;",
            ">;"
        }
    .end annotation
.end field

.field protected final mScanIntervalMillis:J

.field protected final mScanResultUpdater:Lcom/android/wifitrackerlib/ScanResultUpdater;

.field private final mScanner:Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

.field private final mTag:Ljava/lang/String;

.field protected final mWifiManager:Landroid/net/wifi/WifiManager;

.field protected final mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

.field protected final mWorkerHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;Landroid/os/Handler;Landroid/os/Handler;Ljava/time/Clock;JJLcom/android/wifitrackerlib/BaseWifiTracker$BaseWifiTrackerCallback;Ljava/lang/String;)V
    .locals 7

    move-object v0, p0

    move-wide/from16 v1, p9

    move-wide/from16 v3, p11

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v5, Lcom/android/wifitrackerlib/BaseWifiTracker$1;

    invoke-direct {v5, p0}, Lcom/android/wifitrackerlib/BaseWifiTracker$1;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;)V

    iput-object v5, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 136
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mRequestedScoreKeys:Ljava/util/Set;

    .line 140
    new-instance v5, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v5}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 141
    invoke-virtual {v5}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v5

    iput-object v5, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 143
    new-instance v5, Lcom/android/wifitrackerlib/BaseWifiTracker$2;

    invoke-direct {v5, p0}, Lcom/android/wifitrackerlib/BaseWifiTracker$2;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;)V

    iput-object v5, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    move-object v5, p1

    .line 182
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    move-object v5, p2

    .line 183
    iput-object v5, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    move-object v5, p3

    .line 184
    iput-object v5, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object v5, p4

    .line 185
    iput-object v5, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    move-object v5, p5

    .line 186
    iput-object v5, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    move-object v5, p6

    .line 187
    iput-object v5, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    move-object v5, p7

    .line 188
    iput-object v5, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    .line 189
    iput-wide v1, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMaxScanAgeMillis:J

    .line 190
    iput-wide v3, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanIntervalMillis:J

    move-object/from16 v6, p13

    .line 191
    iput-object v6, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mListener:Lcom/android/wifitrackerlib/BaseWifiTracker$BaseWifiTrackerCallback;

    move-object/from16 v6, p14

    .line 192
    iput-object v6, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mTag:Ljava/lang/String;

    .line 194
    new-instance v6, Lcom/android/wifitrackerlib/ScanResultUpdater;

    add-long/2addr v1, v3

    move-object v3, p8

    invoke-direct {v6, p8, v1, v2}, Lcom/android/wifitrackerlib/ScanResultUpdater;-><init>(Ljava/time/Clock;J)V

    iput-object v6, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanResultUpdater:Lcom/android/wifitrackerlib/ScanResultUpdater;

    .line 196
    new-instance v1, Landroid/net/wifi/WifiNetworkScoreCache;

    iget-object v2, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/wifitrackerlib/BaseWifiTracker$3;

    iget-object v4, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/android/wifitrackerlib/BaseWifiTracker$3;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;Landroid/os/Handler;)V

    invoke-direct {v1, v2, v3}, Landroid/net/wifi/WifiNetworkScoreCache;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;)V

    iput-object v1, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    .line 203
    new-instance v1, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

    invoke-virtual {p7}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;Landroid/os/Looper;Lcom/android/wifitrackerlib/BaseWifiTracker$1;)V

    iput-object v1, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanner:Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

    .line 204
    iget-object v0, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isVerboseLoggingEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->sVerboseLogging:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/wifitrackerlib/BaseWifiTracker;)Ljava/lang/String;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/wifitrackerlib/BaseWifiTracker;)Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanner:Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/wifitrackerlib/BaseWifiTracker;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->notifyOnWifiStateChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/wifitrackerlib/BaseWifiTracker;)Ljava/util/Set;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mRequestedScoreKeys:Ljava/util/Set;

    return-object p0
.end method

.method public static isVerboseLoggingEnabled()Z
    .locals 1

    .line 86
    sget-boolean v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->sVerboseLogging:Z

    return v0
.end method

.method static synthetic lambda$onStart$0(Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;)V
    .locals 0

    .line 228
    invoke-static {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->access$200(Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;)V

    return-void
.end method

.method static synthetic lambda$onStart$1(Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;)V
    .locals 0

    .line 230
    invoke-static {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->access$300(Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;)V

    return-void
.end method

.method static synthetic lambda$onStop$2(Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;)V
    .locals 0

    .line 241
    invoke-static {p0}, Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;->access$300(Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;)V

    return-void
.end method

.method private notifyOnWifiStateChanged()V
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mListener:Lcom/android/wifitrackerlib/BaseWifiTracker$BaseWifiTrackerCallback;

    if-eqz v0, :cond_0

    .line 385
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mMainHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/wifitrackerlib/-$$Lambda$MIul75RWhCdcC435EGCLupy9Spc;

    invoke-direct {v1, v0}, Lcom/android/wifitrackerlib/-$$Lambda$MIul75RWhCdcC435EGCLupy9Spc;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker$BaseWifiTrackerCallback;)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getWifiState()I
    .locals 0

    .line 260
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p0

    return p0
.end method

.method protected handleConfiguredNetworksChangedAction(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method protected handleLinkPropertiesChanged(Landroid/net/LinkProperties;)V
    .locals 0

    return-void
.end method

.method protected handleNetworkCapabilitiesChanged(Landroid/net/NetworkCapabilities;)V
    .locals 0

    return-void
.end method

.method protected handleNetworkScoreCacheUpdated()V
    .locals 0

    return-void
.end method

.method protected handleNetworkStateChangedAction(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method protected handleOnStart()V
    .locals 0

    return-void
.end method

.method protected handleRssiChangedAction()V
    .locals 0

    return-void
.end method

.method protected handleScanResultsAvailableAction(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method protected handleWifiStateChangedAction()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 5
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 213
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 214
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    .line 215
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    .line 216
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 217
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    .line 218
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 221
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v2, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v3, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 223
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v1, v3}, Landroid/net/NetworkScoreManager;->registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;I)V

    .line 227
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanner:Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/wifitrackerlib/-$$Lambda$BaseWifiTracker$pw9dhfMm5LbxL1gY1jP_JJmuRkU;

    invoke-direct {v2, v1}, Lcom/android/wifitrackerlib/-$$Lambda$BaseWifiTracker$pw9dhfMm5LbxL1gY1jP_JJmuRkU;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanner:Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/wifitrackerlib/-$$Lambda$BaseWifiTracker$KvY90710q6wRJD152kDBMW9ndFs;

    invoke-direct {v2, v1}, Lcom/android/wifitrackerlib/-$$Lambda$BaseWifiTracker$KvY90710q6wRJD152kDBMW9ndFs;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 232
    :goto_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/wifitrackerlib/-$$Lambda$S9fuCAjG-YC38JCa05_AkNB8B-E;

    invoke-direct {v1, p0}, Lcom/android/wifitrackerlib/-$$Lambda$S9fuCAjG-YC38JCa05_AkNB8B-E;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStop()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mScanner:Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/wifitrackerlib/-$$Lambda$BaseWifiTracker$QlWe0ki0RbTEAz4j0GPGXOVBvC0;

    invoke-direct {v2, v1}, Lcom/android/wifitrackerlib/-$$Lambda$BaseWifiTracker$QlWe0ki0RbTEAz4j0GPGXOVBvC0;-><init>(Lcom/android/wifitrackerlib/BaseWifiTracker$Scanner;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 242
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 243
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 244
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/net/NetworkScoreManager;->unregisterNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V

    .line 246
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mWorkerHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mRequestedScoreKeys:Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/wifitrackerlib/-$$Lambda$gWMviBWa7YejsjM1KbUOIv9j1JA;

    invoke-direct {v1, p0}, Lcom/android/wifitrackerlib/-$$Lambda$gWMviBWa7YejsjM1KbUOIv9j1JA;-><init>(Ljava/util/Set;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
