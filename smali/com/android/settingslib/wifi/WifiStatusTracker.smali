.class public Lcom/android/settingslib/wifi/WifiStatusTracker;
.super Ljava/lang/Object;
.source "WifiStatusTracker.java"


# instance fields
.field public connected:Z

.field public enabled:Z

.field private final mCacheListener:Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;

.field private final mCallback:Ljava/lang/Runnable;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDefaultNetwork:Landroid/net/Network;

.field private final mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mDefaultNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private final mHandler:Landroid/os/Handler;

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mNetworkRequest:Landroid/net/NetworkRequest;

.field private final mNetworkScoreManager:Landroid/net/NetworkScoreManager;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

.field public rssi:I

.field public ssid:Ljava/lang/String;

.field public state:I

.field public statusLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/NetworkScoreManager;Landroid/net/ConnectivityManager;Ljava/lang/Runnable;)V
    .locals 2

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mHandler:Landroid/os/Handler;

    .line 50
    new-instance v0, Lcom/android/settingslib/wifi/WifiStatusTracker$1;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settingslib/wifi/WifiStatusTracker$1;-><init>(Lcom/android/settingslib/wifi/WifiStatusTracker;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mCacheListener:Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;

    .line 58
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 59
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xf

    .line 60
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 61
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 62
    new-instance v0, Lcom/android/settingslib/wifi/WifiStatusTracker$2;

    invoke-direct {v0, p0}, Lcom/android/settingslib/wifi/WifiStatusTracker$2;-><init>(Lcom/android/settingslib/wifi/WifiStatusTracker;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 72
    new-instance v0, Lcom/android/settingslib/wifi/WifiStatusTracker$3;

    invoke-direct {v0, p0}, Lcom/android/settingslib/wifi/WifiStatusTracker$3;-><init>(Lcom/android/settingslib/wifi/WifiStatusTracker;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mDefaultNetwork:Landroid/net/Network;

    .line 94
    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mDefaultNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 114
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mContext:Landroid/content/Context;

    .line 115
    iput-object p2, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 116
    new-instance p2, Landroid/net/wifi/WifiNetworkScoreCache;

    invoke-direct {p2, p1}, Landroid/net/wifi/WifiNetworkScoreCache;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    .line 117
    iput-object p3, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    .line 118
    iput-object p4, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 119
    iput-object p5, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mCallback:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingslib/wifi/WifiStatusTracker;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->updateStatusLabel()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settingslib/wifi/WifiStatusTracker;)Ljava/lang/Runnable;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/settingslib/wifi/WifiStatusTracker;Landroid/net/Network;)Landroid/net/Network;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mDefaultNetwork:Landroid/net/Network;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/settingslib/wifi/WifiStatusTracker;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mDefaultNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-object p1
.end method

.method private getValidSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 4

    .line 268
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "<unknown ssid>"

    .line 269
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 273
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p0

    .line 274
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 276
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 277
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiConfiguration;

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    return-object p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private maybeRequestNetworkScore()V
    .locals 3

    .line 216
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-static {v0}, Landroid/net/NetworkKey;->createFromWifiInfo(Landroid/net/wifi/WifiInfo;)Landroid/net/NetworkKey;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/NetworkKey;)Landroid/net/ScoredNetwork;

    move-result-object v1

    if-nez v1, :cond_0

    .line 218
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/NetworkKey;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Landroid/net/NetworkScoreManager;->requestScores([Landroid/net/NetworkKey;)Z

    :cond_0
    return-void
.end method

.method private updateRssi(I)V
    .locals 0

    .line 211
    iput p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->rssi:I

    .line 212
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(I)I

    return-void
.end method

.method private updateStatusLabel()V
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mDefaultNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mDefaultNetworkCapabilities:Landroid/net/NetworkCapabilities;

    goto :goto_0

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 232
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v1

    .line 231
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_4

    const/16 v1, 0x11

    .line 236
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$string;->wifi_status_sign_in_required:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->statusLabel:Ljava/lang/String;

    return-void

    :cond_1
    const/16 v1, 0x18

    .line 240
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 241
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$string;->wifi_limited_connection:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->statusLabel:Ljava/lang/String;

    return-void

    :cond_2
    const/16 v1, 0x10

    .line 243
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 244
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "private_dns_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 246
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->isPrivateDnsBroken()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 247
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$string;->private_dns_broken:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->statusLabel:Ljava/lang/String;

    goto :goto_1

    .line 249
    :cond_3
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$string;->wifi_status_no_internet:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->statusLabel:Ljava/lang/String;

    :goto_1
    return-void

    .line 255
    :cond_4
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 256
    invoke-static {v1}, Landroid/net/NetworkKey;->createFromWifiInfo(Landroid/net/wifi/WifiInfo;)Landroid/net/NetworkKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNetworkScoreCache;->getScoredNetwork(Landroid/net/NetworkKey;)Landroid/net/ScoredNetwork;

    move-result-object v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    goto :goto_2

    .line 258
    :cond_5
    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->rssi:I

    invoke-static {v1, v0, v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeedLabel(Landroid/content/Context;Landroid/net/ScoredNetwork;I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->statusLabel:Ljava/lang/String;

    return-void
.end method

.method private updateWifiState()V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 207
    :goto_0
    iput-boolean v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->enabled:Z

    return-void
.end method


# virtual methods
.method public handleBroadcast(Landroid/content/Intent;)V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    return-void

    .line 172
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->updateWifiState()V

    goto/16 :goto_3

    :cond_1
    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 176
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->updateWifiState()V

    const-string v0, "networkInfo"

    .line 178
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    if-eqz p1, :cond_2

    .line 179
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->connected:Z

    const/4 v0, 0x0

    .line 180
    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 181
    iput-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 183
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz p1, :cond_5

    .line 185
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->isPasspointAp()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->isOsuAp()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 188
    :cond_3
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->getValidSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    goto :goto_2

    .line 186
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getPasspointProviderFriendlyName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->ssid:Ljava/lang/String;

    .line 190
    :goto_2
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->updateRssi(I)V

    .line 191
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->maybeRequestNetworkScore()V

    .line 192
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    .line 193
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->isVhtMax8SpatialStreamsSupported()Z

    .line 194
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->isHe8ssCapableAp()Z

    .line 197
    :cond_5
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->updateStatusLabel()V

    goto :goto_3

    :cond_6
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, -0xc8

    const-string v1, "newRssi"

    .line 200
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settingslib/wifi/WifiStatusTracker;->updateRssi(I)V

    .line 201
    invoke-direct {p0}, Lcom/android/settingslib/wifi/WifiStatusTracker;->updateStatusLabel()V

    :cond_7
    :goto_3
    return-void
.end method

.method public setListening(Z)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 124
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    invoke-virtual {p1, v0, v1, v0}, Landroid/net/NetworkScoreManager;->registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;I)V

    .line 126
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mCacheListener:Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiNetworkScoreCache;->registerListener(Landroid/net/wifi/WifiNetworkScoreCache$CacheListener;)V

    .line 127
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v2, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 129
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, p0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    goto :goto_0

    .line 131
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    iget-object v1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    invoke-virtual {p1, v0, v1}, Landroid/net/NetworkScoreManager;->unregisterNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V

    .line 133
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mWifiNetworkScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    invoke-virtual {p1}, Landroid/net/wifi/WifiNetworkScoreCache;->unregisterListener()V

    .line 134
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 135
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiStatusTracker;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p1, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :goto_0
    return-void
.end method
