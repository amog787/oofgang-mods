.class public Lcom/android/settings/network/telephony/NetworkScanHelper;
.super Ljava/lang/Object;
.source "NetworkScanHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallbackImpl;,
        Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;
    }
.end annotation


# instance fields
.field private filter:Landroid/content/IntentFilter;

.field private mContext:Landroid/content/Context;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

.field private final mInternalNetworkScanCallback:Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

.field private final mLegacyIncrScanReceiver:Lcom/android/settings/network/telephony/LegacyIncrementalScanBroadcastReceiver;

.field private final mNetworkScanCallback:Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;

.field private mNetworkScanRequester:Landroid/telephony/NetworkScan;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/telephony/TelephonyManager;Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "qualcomm.intent.action.ACTION_INCREMENTAL_NW_SCAN_IND"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->filter:Landroid/content/IntentFilter;

    .line 131
    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mContext:Landroid/content/Context;

    .line 132
    iput-object p2, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 133
    iput-object p3, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mNetworkScanCallback:Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;

    .line 134
    new-instance p1, Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallbackImpl;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallbackImpl;-><init>(Lcom/android/settings/network/telephony/NetworkScanHelper;Lcom/android/settings/network/telephony/NetworkScanHelper$1;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mInternalNetworkScanCallback:Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    .line 135
    iput-object p4, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 136
    new-instance p1, Lcom/android/settings/network/telephony/LegacyIncrementalScanBroadcastReceiver;

    iget-object p2, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mInternalNetworkScanCallback:Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    invoke-direct {p1, p2, p3}, Lcom/android/settings/network/telephony/LegacyIncrementalScanBroadcastReceiver;-><init>(Landroid/content/Context;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mLegacyIncrScanReceiver:Lcom/android/settings/network/telephony/LegacyIncrementalScanBroadcastReceiver;

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/network/telephony/NetworkScanHelper;Ljava/util/List;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/NetworkScanHelper;->onResults(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/network/telephony/NetworkScanHelper;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkScanHelper;->onComplete()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/network/telephony/NetworkScanHelper;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/NetworkScanHelper;->onError(I)V

    return-void
.end method

.method private createNetworkScanForPreferredAccessNetworks()Landroid/telephony/NetworkScanRequest;
    .locals 14

    .line 141
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPreferredNetworkTypeBitmask()J

    move-result-wide v0

    const-wide/32 v2, 0xdd387

    and-long/2addr v0, v2

    .line 144
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    const-wide/32 v6, 0x804b

    and-long/2addr v6, v0

    cmp-long v6, v6, v2

    if-eqz v6, :cond_1

    .line 150
    :cond_0
    new-instance v6, Landroid/telephony/RadioAccessSpecifier;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v5, v5}, Landroid/telephony/RadioAccessSpecifier;-><init>(I[I[I)V

    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v4, :cond_2

    const-wide/32 v6, 0x16bb4

    and-long/2addr v6, v0

    cmp-long v6, v6, v2

    if-eqz v6, :cond_3

    .line 155
    :cond_2
    new-instance v6, Landroid/telephony/RadioAccessSpecifier;

    const/4 v7, 0x2

    invoke-direct {v6, v7, v5, v5}, Landroid/telephony/RadioAccessSpecifier;-><init>(I[I[I)V

    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v4, :cond_4

    const-wide/32 v6, 0x61000

    and-long/2addr v6, v0

    cmp-long v6, v6, v2

    if-eqz v6, :cond_5

    .line 160
    :cond_4
    new-instance v6, Landroid/telephony/RadioAccessSpecifier;

    const/4 v7, 0x3

    invoke-direct {v6, v7, v5, v5}, Landroid/telephony/RadioAccessSpecifier;-><init>(I[I[I)V

    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz v4, :cond_6

    const-wide/32 v6, 0x80000

    and-long/2addr v0, v6

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    .line 165
    :cond_6
    new-instance v0, Landroid/telephony/RadioAccessSpecifier;

    const/4 v1, 0x6

    invoke-direct {v0, v1, v5, v5}, Landroid/telephony/RadioAccessSpecifier;-><init>(I[I[I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_7
    new-instance v0, Landroid/telephony/NetworkScanRequest;

    const/4 v7, 0x0

    .line 172
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/telephony/RadioAccessSpecifier;

    .line 171
    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    move-object v8, p0

    check-cast v8, [Landroid/telephony/RadioAccessSpecifier;

    const/4 v9, 0x5

    const/16 v10, 0xfe

    const/4 v11, 0x1

    const/4 v12, 0x3

    const/4 v13, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v13}, Landroid/telephony/NetworkScanRequest;-><init>(I[Landroid/telephony/RadioAccessSpecifier;IIZILjava/util/ArrayList;)V

    return-object v0
.end method

.method private onComplete()V
    .locals 0

    .line 253
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mNetworkScanCallback:Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;

    invoke-interface {p0}, Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;->onComplete()V

    return-void
.end method

.method private onError(I)V
    .locals 0

    .line 257
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mNetworkScanCallback:Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;

    invoke-interface {p0, p1}, Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;->onError(I)V

    return-void
.end method

.method private onResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 249
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mNetworkScanCallback:Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;

    invoke-interface {p0, p1}, Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;->onResults(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public startNetworkScan(I)V
    .locals 4

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startNetworkScan: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkScanHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x2710

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 191
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mNetworkScanRequester:Landroid/telephony/NetworkScan;

    if-eqz p1, :cond_0

    return-void

    .line 194
    :cond_0
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 195
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkScanHelper;->createNetworkScanForPreferredAccessNetworks()Landroid/telephony/NetworkScanRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mInternalNetworkScanCallback:Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    .line 194
    invoke-virtual {p1, v1, v2, v3}, Landroid/telephony/TelephonyManager;->requestNetworkScan(Landroid/telephony/NetworkScanRequest;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)Landroid/telephony/NetworkScan;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mNetworkScanRequester:Landroid/telephony/NetworkScan;

    if-nez p1, :cond_2

    .line 199
    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/NetworkScanHelper;->onError(I)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 202
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mLegacyIncrScanReceiver:Lcom/android/settings/network/telephony/LegacyIncrementalScanBroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x0

    const-string v2, "qti.radio.extphone"

    .line 205
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lorg/codeaurora/internal/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    .line 207
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v3

    invoke-interface {v2, v3}, Lorg/codeaurora/internal/IExtTelephony;->performIncrementalScan(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "performIncrementalScan Exception: "

    .line 209
    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "success: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_2

    .line 214
    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/NetworkScanHelper;->onError(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public stopNetworkQuery()V
    .locals 4

    const-string v0, "NetworkScanHelper"

    .line 225
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mNetworkScanRequester:Landroid/telephony/NetworkScan;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 226
    invoke-virtual {v1}, Landroid/telephony/NetworkScan;->stopScan()V

    .line 227
    iput-object v2, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mNetworkScanRequester:Landroid/telephony/NetworkScan;

    .line 231
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    if-eqz v1, :cond_2

    .line 232
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v1

    if-ltz v1, :cond_1

    .line 233
    iget-object v3, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 234
    iget-object v3, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    invoke-interface {v3, v1}, Lorg/codeaurora/internal/IExtTelephony;->abortIncrementalScan(I)Z

    goto :goto_0

    :cond_1
    const-string v1, "slotIndex is invalid, skipping abort"

    .line 236
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :goto_0
    iput-object v2, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mExtTelephony:Lorg/codeaurora/internal/IExtTelephony;

    .line 239
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mLegacyIncrScanReceiver:Lcom/android/settings/network/telephony/LegacyIncrementalScanBroadcastReceiver;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "IllegalArgumentException"

    .line 244
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception p0

    const-string v1, "abortIncrementalScan Exception: "

    .line 242
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method
