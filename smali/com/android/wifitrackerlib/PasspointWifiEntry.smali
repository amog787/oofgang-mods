.class public Lcom/android/wifitrackerlib/PasspointWifiEntry;
.super Lcom/android/wifitrackerlib/WifiEntry;
.source "PasspointWifiEntry.java"

# interfaces
.implements Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCurrentHomeScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mCurrentRoamingScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mFqdn:Ljava/lang/String;

.field private mFriendlyName:Ljava/lang/String;

.field private final mKey:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private mMeteredOverride:I

.field private mOsuWifiEntry:Lcom/android/wifitrackerlib/OsuWifiEntry;

.field private mPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

.field private mSecurity:I

.field protected mSubscriptionExpirationTimeInMillis:J

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiNetworkScoreCache;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 135
    invoke-direct {p0, p2, p4, p5, p6}, Lcom/android/wifitrackerlib/WifiEntry;-><init>(Landroid/os/Handler;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiNetworkScoreCache;Z)V

    .line 76
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mLock:Ljava/lang/Object;

    .line 78
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mCurrentHomeScanResults:Ljava/util/List;

    .line 80
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mCurrentRoamingScanResults:Ljava/util/List;

    const/4 p2, 0x3

    .line 90
    iput p2, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mSecurity:I

    const/4 p2, 0x0

    .line 101
    iput p2, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mMeteredOverride:I

    const-string p2, "Cannot construct with null PasspointConfiguration!"

    .line 137
    invoke-static {p3, p2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-virtual {p3}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 142
    iput-object p1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mContext:Landroid/content/Context;

    .line 143
    iput-object p3, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 144
    invoke-virtual {p3}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->uniqueIdToPasspointWifiEntryKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mKey:Ljava/lang/String;

    .line 145
    iget-object p1, p3, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mFqdn:Ljava/lang/String;

    .line 146
    iget-object p1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mFriendlyName:Ljava/lang/String;

    return-void

    .line 139
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Given WifiConfiguration is not for Passpoint!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/net/wifi/hotspot2/PasspointConfiguration;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiNetworkScoreCache;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 111
    invoke-direct {p0, p2, p4, p5, p6}, Lcom/android/wifitrackerlib/WifiEntry;-><init>(Landroid/os/Handler;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiNetworkScoreCache;Z)V

    .line 76
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mLock:Ljava/lang/Object;

    .line 78
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mCurrentHomeScanResults:Ljava/util/List;

    .line 80
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mCurrentRoamingScanResults:Ljava/util/List;

    const/4 p2, 0x3

    .line 90
    iput p2, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mSecurity:I

    const/4 p2, 0x0

    .line 101
    iput p2, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mMeteredOverride:I

    const-string p2, "Cannot construct with null PasspointConfiguration!"

    .line 113
    invoke-static {p3, p2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iput-object p1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mContext:Landroid/content/Context;

    .line 116
    iput-object p3, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    .line 117
    invoke-virtual {p3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->uniqueIdToPasspointWifiEntryKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mKey:Ljava/lang/String;

    .line 118
    invoke-virtual {p3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mFqdn:Ljava/lang/String;

    .line 119
    invoke-virtual {p3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFriendlyName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mFriendlyName:Ljava/lang/String;

    .line 121
    invoke-virtual {p3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getSubscriptionExpirationTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mSubscriptionExpirationTimeInMillis:J

    .line 122
    iget-object p1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getMeteredOverride()I

    move-result p1

    iput p1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mMeteredOverride:I

    return-void
.end method

.method private getConnectStateDescription()Ljava/lang/String;
    .locals 5

    .line 238
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->getConnectedState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 240
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRequestingPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 242
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 243
    iget-object v2, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_1

    .line 244
    iget-object v1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/wifitrackerlib/Utils;->getSubIdForConfig(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/wifitrackerlib/Utils;->getCarrierNameForSubId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 246
    :cond_1
    iget-object v2, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/wifitrackerlib/Utils;->getAppLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 247
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 251
    :goto_1
    iget-object p0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/wifitrackerlib/R$string;->connected_via_app:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move-object v1, v0

    :goto_2
    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 255
    :cond_4
    iget-object v0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 256
    invoke-static {v0, v1}, Lcom/android/wifitrackerlib/Utils;->getCurrentNetworkCapabilitiesInformation(Landroid/content/Context;Landroid/net/NetworkCapabilities;)Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    return-object v0

    .line 262
    :cond_5
    iget-object v0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-static {v0, p0}, Lcom/android/wifitrackerlib/Utils;->getNetworkDetailedState(Landroid/content/Context;Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$disconnect$0(Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 365
    iget-boolean p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCalledDisconnect:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 366
    invoke-interface {p1, p0}, Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;->onDisconnectResult(I)V

    :cond_0
    return-void
.end method

.method static uniqueIdToPasspointWifiEntryKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "Cannot create key with null unique id!"

    .line 610
    invoke-static {p0, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PasspointWifiEntry:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public canConnect()Z
    .locals 4

    .line 328
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->isExpired()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 329
    iget-object p0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mOsuWifiEntry:Lcom/android/wifitrackerlib/OsuWifiEntry;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/OsuWifiEntry;->canConnect()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 332
    :cond_1
    iget v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 333
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->getConnectedState()I

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public canDisconnect()Z
    .locals 1

    .line 356
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->getConnectedState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canEasyConnect()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canForget()Z
    .locals 1

    .line 377
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->isSuggestion()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canSetAutoJoinEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public canSetMeteredChoice()Z
    .locals 1

    .line 424
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->isSuggestion()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canSetPrivacy()Z
    .locals 1

    .line 453
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->isSuggestion()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canShare()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canSignIn()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V
    .locals 2

    .line 338
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mOsuWifiEntry:Lcom/android/wifitrackerlib/OsuWifiEntry;

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {v0, p1}, Lcom/android/wifitrackerlib/OsuWifiEntry;->connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V

    return-void

    .line 345
    :cond_0
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectCallback:Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;

    .line 347
    iget-object p1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez p1, :cond_1

    .line 349
    new-instance p1, Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener;

    invoke-direct {p1, p0}, Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener;-><init>(Lcom/android/wifitrackerlib/WifiEntry;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener;->onFailure(I)V

    .line 351
    :cond_1
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    new-instance v1, Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener;

    invoke-direct {v1, p0}, Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener;-><init>(Lcom/android/wifitrackerlib/WifiEntry;)V

    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    return-void
.end method

.method protected connectionInfoMatches(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z
    .locals 0

    .line 600
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->isPasspointAp()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 605
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getPasspointFqdn()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mFqdn:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public disconnect(Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;)V
    .locals 4

    .line 361
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->canDisconnect()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 362
    iput-boolean v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCalledDisconnect:Z

    .line 363
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mDisconnectCallback:Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;

    .line 364
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/wifitrackerlib/-$$Lambda$PasspointWifiEntry$gbiwhcAyeJI2OMF-ikzyiEehxqU;

    invoke-direct {v1, p0, p1}, Lcom/android/wifitrackerlib/-$$Lambda$PasspointWifiEntry$gbiwhcAyeJI2OMF-ikzyiEehxqU;-><init>(Lcom/android/wifitrackerlib/PasspointWifiEntry;Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 370
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->disableEphemeralNetwork(Ljava/lang/String;)V

    .line 371
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    :cond_0
    return-void
.end method

.method public forget(Lcom/android/wifitrackerlib/WifiEntry$ForgetCallback;)V
    .locals 1

    .line 382
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->canForget()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 386
    :cond_0
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mForgetCallback:Lcom/android/wifitrackerlib/WifiEntry$ForgetCallback;

    .line 387
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->removePasspointConfiguration(Ljava/lang/String;)V

    .line 388
    new-instance p1, Lcom/android/wifitrackerlib/WifiEntry$ForgetActionListener;

    invoke-direct {p1, p0}, Lcom/android/wifitrackerlib/WifiEntry$ForgetActionListener;-><init>(Lcom/android/wifitrackerlib/WifiEntry;)V

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry$ForgetActionListener;->onSuccess()V

    return-void
.end method

.method public getConnectedState()I
    .locals 1

    .line 157
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-super {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mOsuWifiEntry:Lcom/android/wifitrackerlib/OsuWifiEntry;

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p0

    return p0

    .line 163
    :cond_0
    invoke-super {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p0

    return p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->getPrivacy()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 296
    :cond_0
    iget-object p0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getRandomizedMacAddress()Landroid/net/MacAddress;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 289
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getFactoryMacAddresses()[Ljava/lang/String;

    move-result-object p0

    .line 290
    array-length v0, p0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 291
    aget-object p0, p0, v0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMeteredChoice()I
    .locals 1

    .line 414
    iget p0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mMeteredOverride:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method getNetworkSelectionDescription()Ljava/lang/String;
    .locals 0

    .line 622
    iget-object p0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {p0}, Lcom/android/wifitrackerlib/Utils;->getNetworkSelectionDescription(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPrivacy()I
    .locals 0

    .line 459
    iget-object p0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 463
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->isMacRandomizationEnabled()Z

    move-result p0

    return p0
.end method

.method getScanResultDescription()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getSecondSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 267
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->getConnectedState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0, p0}, Lcom/android/wifitrackerlib/Utils;->getImsiProtectionDescription(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public getSecurity()I
    .locals 0

    .line 283
    iget p0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mSecurity:I

    return p0
.end method

.method public getSecurityString(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 505
    iget-object p0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/wifitrackerlib/R$string;->wifi_security_short_eap:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 506
    :cond_0
    iget-object p0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/wifitrackerlib/R$string;->wifi_security_eap:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/wifi/WifiInfo;->sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 277
    :cond_0
    iget-object p0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {p0}, Landroid/net/wifi/WifiInfo;->sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSummary(Z)Ljava/lang/String;
    .locals 7

    .line 173
    new-instance v0, Ljava/util/StringJoiner;

    iget-object v1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/wifitrackerlib/R$string;->summary_separator:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 175
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    iget-object v1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mOsuWifiEntry:Lcom/android/wifitrackerlib/OsuWifiEntry;

    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {v1, p1}, Lcom/android/wifitrackerlib/OsuWifiEntry;->getSummary(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto/16 :goto_1

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/wifitrackerlib/R$string;->wifi_passpoint_expired:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto/16 :goto_1

    .line 181
    :cond_1
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->getConnectedState()I

    move-result v1

    if-nez v1, :cond_7

    .line 182
    iget-object v1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mContext:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/android/wifitrackerlib/Utils;->getDisconnectedStateDescription(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/String;

    move-result-object v1

    .line 183
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz p1, :cond_2

    .line 185
    iget-object v1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/wifitrackerlib/R$string;->wifi_disconnected:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_1

    .line 186
    :cond_2
    iget-boolean v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mForSavedNetworksPage:Z

    if-nez v1, :cond_8

    .line 187
    iget-object v1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_5

    iget-boolean v2, v1, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z

    if-eqz v2, :cond_5

    .line 188
    iget-object v2, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mContext:Landroid/content/Context;

    .line 189
    invoke-static {v2, v1}, Lcom/android/wifitrackerlib/Utils;->getSubIdForConfig(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 188
    invoke-static {v2, v1}, Lcom/android/wifitrackerlib/Utils;->getCarrierNameForSubId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 190
    iget-object v2, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/wifitrackerlib/Utils;->getAppLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 191
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 193
    iget-object v2, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    .line 195
    :cond_3
    iget-object v3, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/wifitrackerlib/R$string;->available_via_app:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    move-object v1, v2

    :goto_0
    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_1

    .line 199
    :cond_5
    iget-object v1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/wifitrackerlib/R$string;->wifi_remembered:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_1

    .line 203
    :cond_6
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_1

    .line 206
    :cond_7
    invoke-direct {p0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->getConnectStateDescription()Ljava/lang/String;

    move-result-object v1

    .line 207
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 208
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 212
    :cond_8
    :goto_1
    iget-object v1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mContext:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/android/wifitrackerlib/Utils;->getSpeedDescription(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 214
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 217
    :cond_9
    iget-object v1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mContext:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/android/wifitrackerlib/Utils;->getAutoConnectDescription(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/String;

    move-result-object v1

    .line 218
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 219
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 222
    :cond_a
    iget-object v1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mContext:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/android/wifitrackerlib/Utils;->getMeteredDescription(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 224
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_b
    if-nez p1, :cond_c

    .line 228
    invoke-static {p0}, Lcom/android/wifitrackerlib/Utils;->getVerboseLoggingDescription(Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/String;

    move-result-object p0

    .line 229
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 230
    invoke-virtual {v0, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 234
    :cond_c
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mFriendlyName:Ljava/lang/String;

    return-object p0
.end method

.method public getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isAutoJoinEnabled()Z
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 482
    iget-boolean p0, v0, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    return p0

    .line 485
    :cond_0
    iget-object p0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->isAutojoinEnabled()Z

    move-result p0

    return p0
.end method

.method public isExpired()Z
    .locals 6

    .line 511
    iget-wide v0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mSubscriptionExpirationTimeInMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 515
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mSubscriptionExpirationTimeInMillis:J

    cmp-long p0, v2, v4

    if-ltz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isHomeProvider()Z
    .locals 3

    .line 642
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    .line 643
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isHomeProvider()Z

    move-result v0

    .line 644
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isHomeProvider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isPasspointAp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->isPasspointAp()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " FQDN:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getPasspointFqdn()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "PasspointWifiEntry"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMetered()Z
    .locals 2

    .line 302
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->getMeteredChoice()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isSaved()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSubscription()Z
    .locals 0

    .line 318
    iget-object p0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSuggestion()Z
    .locals 0

    .line 313
    iget-object p0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$disconnect$0$PasspointWifiEntry(Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->lambda$disconnect$0(Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;)V

    return-void
.end method

.method onScoreCacheUpdated()V
    .locals 3

    .line 580
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    .line 581
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    invoke-static {v1, v0}, Lcom/android/wifitrackerlib/Utils;->getSpeedFromWifiInfo(Landroid/net/wifi/WifiNetworkScoreCache;Landroid/net/wifi/WifiInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSpeed:I

    goto :goto_1

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 585
    :try_start_0
    iget-object v1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mCurrentHomeScanResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 586
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    iget-object v2, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mCurrentHomeScanResults:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/android/wifitrackerlib/Utils;->getAverageSpeedFromScanResults(Landroid/net/wifi/WifiNetworkScoreCache;Ljava/util/List;)I

    move-result v1

    iput v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSpeed:I

    goto :goto_0

    .line 588
    :cond_1
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    iget-object v2, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mCurrentRoamingScanResults:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/android/wifitrackerlib/Utils;->getAverageSpeedFromScanResults(Landroid/net/wifi/WifiNetworkScoreCache;Ljava/util/List;)I

    move-result v1

    iput v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSpeed:I

    .line 591
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 593
    :goto_1
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V

    return-void

    :catchall_0
    move-exception p0

    .line 591
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onUpdated()V
    .locals 0

    .line 634
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V

    return-void
.end method

.method public setAutoJoinEnabled(Z)V
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 496
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiManager;->allowAutojoin(IZ)V

    return-void

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Landroid/net/wifi/WifiManager;->allowAutojoinPasspoint(Ljava/lang/String;Z)V

    return-void
.end method

.method public setMeteredChoice(I)V
    .locals 1

    .line 429
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->canSetMeteredChoice()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    return-void

    .line 441
    :cond_1
    iput v0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mMeteredOverride:I

    goto :goto_0

    .line 438
    :cond_2
    iput v0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mMeteredOverride:I

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 435
    iput p1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mMeteredOverride:I

    .line 447
    :goto_0
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mMeteredOverride:I

    invoke-virtual {p1, v0, p0}, Landroid/net/wifi/WifiManager;->setPasspointMeteredOverride(Ljava/lang/String;I)V

    return-void
.end method

.method setOsuWifiEntry(Lcom/android/wifitrackerlib/OsuWifiEntry;)V
    .locals 0

    .line 627
    iput-object p1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mOsuWifiEntry:Lcom/android/wifitrackerlib/OsuWifiEntry;

    .line 628
    invoke-virtual {p1, p0}, Lcom/android/wifitrackerlib/WifiEntry;->setListener(Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;)V

    return-void
.end method

.method public setPrivacy(I)V
    .locals 1

    .line 469
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->canSetPrivacy()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    .line 474
    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object p0

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 473
    :goto_0
    invoke-virtual {v0, p0, p1}, Landroid/net/wifi/WifiManager;->setMacRandomizationSettingPasspointEnabled(Ljava/lang/String;Z)V

    return-void
.end method

.method public signIn(Lcom/android/wifitrackerlib/WifiEntry$SignInCallback;)V
    .locals 0

    return-void
.end method

.method updatePasspointConfig(Landroid/net/wifi/hotspot2/PasspointConfiguration;)V
    .locals 2

    .line 521
    iput-object p1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    if-eqz p1, :cond_0

    .line 523
    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFriendlyName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mFriendlyName:Ljava/lang/String;

    .line 525
    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getSubscriptionExpirationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mSubscriptionExpirationTimeInMillis:J

    .line 526
    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getMeteredOverride()I

    move-result p1

    iput p1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mMeteredOverride:I

    .line 528
    :cond_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V

    return-void
.end method

.method updateScanResultInfo(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiConfiguration;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 537
    iput-object p1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 538
    iget-object v0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 539
    :try_start_0
    iget-object v1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mCurrentHomeScanResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 540
    iget-object v1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mCurrentRoamingScanResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-eqz p2, :cond_0

    .line 542
    iget-object v1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mCurrentHomeScanResults:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz p3, :cond_1

    .line 545
    iget-object v1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mCurrentRoamingScanResults:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 547
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    iget-object v0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    .line 549
    invoke-static {p1}, Lcom/android/wifitrackerlib/Utils;->getSecurityTypeFromWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)I

    move-result p1

    iput p1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mSecurity:I

    .line 550
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_2

    .line 552
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 553
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 554
    invoke-virtual {p0, p2}, Lcom/android/wifitrackerlib/WifiEntry;->updateWifiGenerationInfo(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    .line 555
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 556
    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 558
    invoke-virtual {p0, p3}, Lcom/android/wifitrackerlib/WifiEntry;->updateWifiGenerationInfo(Ljava/util/List;)V

    .line 560
    :cond_3
    :goto_0
    invoke-static {p1}, Lcom/android/wifitrackerlib/Utils;->getBestScanResultByLevel(Ljava/util/List;)Landroid/net/wifi/ScanResult;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 562
    iget-object p3, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 563
    invoke-virtual {p0, p2}, Lcom/android/wifitrackerlib/WifiEntry;->updateTransitionModeCapa(Landroid/net/wifi/ScanResult;)V

    .line 565
    :cond_4
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->getConnectedState()I

    move-result p3

    if-nez p3, :cond_7

    if-eqz p2, :cond_5

    .line 567
    iget-object p3, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget p2, p2, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {p3, p2}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(I)I

    move-result v1

    .line 568
    :cond_5
    iput v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    .line 570
    iget-object p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mScoreCache:Landroid/net/wifi/WifiNetworkScoreCache;

    invoke-static {p2, p1}, Lcom/android/wifitrackerlib/Utils;->getAverageSpeedFromScanResults(Landroid/net/wifi/WifiNetworkScoreCache;Ljava/util/List;)I

    move-result p1

    iput p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSpeed:I

    goto :goto_1

    .line 573
    :cond_6
    iput v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    .line 575
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V

    return-void

    :catchall_0
    move-exception p0

    .line 547
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
