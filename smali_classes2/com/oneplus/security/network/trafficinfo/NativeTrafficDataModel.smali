.class public Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;
.super Ljava/lang/Object;
.source "NativeTrafficDataModel.java"

# interfaces
.implements Lcom/oneplus/security/network/trafficinfo/TrafficDataModelInterface;


# static fields
.field private static lockNetworkTemplate:Ljava/lang/Object;

.field private static sReferencCount:I

.field private static sTrafficData:Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;


# instance fields
.field private lastForceUpdateTime:J

.field private mContext:Landroid/content/Context;

.field private mLockQueryDataUsage:Ljava/lang/Object;

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mStatsSession:Landroid/net/INetworkStatsSession;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 49
    sput-object v0, Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;->lockNetworkTemplate:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 45
    iput-wide v0, p0, Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;->lastForceUpdateTime:J

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 48
    iput-object v0, p0, Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;->mLockQueryDataUsage:Ljava/lang/Object;

    .line 52
    invoke-static {}, Lcom/oneplus/settings/SettingsBaseApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;->mContext:Landroid/content/Context;

    .line 53
    invoke-static {v0}, Lcom/oneplus/security/network/simcard/SimcardDataModel;->getInstance(Landroid/content/Context;)Lcom/oneplus/security/network/simcard/SimcardDataModel;

    const-string v0, "netstats"

    .line 55
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 54
    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;->mStatsService:Landroid/net/INetworkStatsService;

    .line 58
    :try_start_0
    invoke-interface {v0}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mStatsService.openSession() error."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NativeTrafficDataModel"

    invoke-static {v0, p0}, Lcom/oneplus/security/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private forceUpdateNetworkStats()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 106
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 108
    iget-wide v2, p0, Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;->lastForceUpdateTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 109
    iput-wide v0, p0, Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;->lastForceUpdateTime:J

    .line 110
    iget-object p0, p0, Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {p0}, Landroid/net/INetworkStatsService;->forceUpdate()V

    const-string p0, "NativeTrafficDataModel"

    const-string v0, "update usage"

    .line 111
    invoke-static {p0, v0}, Lcom/oneplus/security/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static getMobileTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;
    .locals 2

    .line 253
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 254
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 255
    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    .line 257
    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    .line 259
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    .line 258
    invoke-static {v1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v1

    if-nez p0, :cond_0

    .line 262
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Subscription is not active: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NativeTrafficDataModel"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 266
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getMergedSubscriberIds()[Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/net/NetworkTemplate;->normalize(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object p0

    return-object p0
.end method

.method public static getNetworkTemplate(I)Landroid/net/NetworkTemplate;
    .locals 4

    .line 245
    sget-object v0, Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;->lockNetworkTemplate:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "NativeTrafficDataModel"

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkTemplate subId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/security/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-static {}, Lcom/oneplus/settings/SettingsBaseApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;->getMobileTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object p0

    .line 248
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getSpecificTimeUsageBySlotId(IJJZ)J
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p6

    .line 80
    invoke-static/range {p1 .. p1}, Lcom/oneplus/security/utils/OPSNSUtils;->findSubIdBySlotId(I)I

    move-result v3

    .line 81
    invoke-static {v3}, Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;->getNetworkTemplate(I)Landroid/net/NetworkTemplate;

    move-result-object v3

    .line 82
    iget-object v4, v0, Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;->mStatsSession:Landroid/net/INetworkStatsSession;

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_2

    .line 84
    :try_start_0
    iget-object v4, v0, Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;->mLockQueryDataUsage:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    :try_start_1
    const-string v7, "NativeTrafficDataModel"

    .line 87
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "slotId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;->forceUpdateNetworkStats()V

    .line 91
    :cond_0
    iget-object v0, v0, Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;->mStatsSession:Landroid/net/INetworkStatsSession;

    const/16 v7, 0xa

    invoke-interface {v0, v3, v7}, Landroid/net/INetworkStatsSession;->getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v8

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const/4 v15, 0x0

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-virtual/range {v8 .. v15}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 93
    iget-wide v7, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v5, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v7, v5

    move-wide v5, v7

    .line 94
    :cond_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error when fetching networkStats info."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "NativeTrafficDataModel"

    invoke-static {v3, v0}, Lcom/oneplus/security/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSpecificTimeUsageBySlotId from framework slotId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, p2

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, p4

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "block="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",totalBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeTrafficDataModel"

    invoke-static {v1, v0}, Lcom/oneplus/security/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v5
.end method

.method private getSpecificTimeUsageBySlotId(IJZ)J
    .locals 7

    const-wide/16 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v4, p2

    move v6, p4

    .line 122
    invoke-direct/range {v0 .. v6}, Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;->getSpecificTimeUsageBySlotId(IJJZ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getTrafficModelInstance()Lcom/oneplus/security/network/trafficinfo/TrafficDataModelInterface;
    .locals 2

    .line 65
    const-class v0, Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;

    sget-object v1, Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;->sTrafficData:Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;

    if-nez v1, :cond_1

    .line 66
    monitor-enter v0

    .line 67
    :try_start_0
    sget-object v1, Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;->sTrafficData:Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;

    if-nez v1, :cond_0

    .line 68
    new-instance v1, Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;

    invoke-direct {v1}, Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;-><init>()V

    sput-object v1, Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;->sTrafficData:Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;

    .line 70
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 72
    :cond_1
    :goto_0
    monitor-enter v0

    .line 73
    :try_start_1
    sget v1, Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;->sReferencCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;->sReferencCount:I

    .line 74
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 75
    sget-object v0, Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;->sTrafficData:Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;

    return-object v0

    :catchall_1
    move-exception v1

    .line 74
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method


# virtual methods
.method public clearTrafficData()V
    .locals 4

    .line 149
    const-class v0, Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;

    monitor-enter v0

    :try_start_0
    const-string v1, "clear_o"

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data before clear traffic data "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;->sReferencCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    sget v1, Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;->sReferencCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;->sReferencCount:I

    if-lez v1, :cond_0

    const-string p0, "clear_o"

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data clear traffic data part "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;->sReferencCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    monitor-exit v0

    return-void

    .line 156
    :cond_0
    sget-object v1, Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;->sTrafficData:Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 157
    iget-object p0, p0, Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {p0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    const-string p0, "clear_o"

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data clear traffic data all "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;->sReferencCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 159
    sput-object p0, Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;->sTrafficData:Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;

    .line 160
    sput v2, Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;->sReferencCount:I

    .line 162
    :cond_1
    sget p0, Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;->sReferencCount:I

    if-gez p0, :cond_2

    .line 163
    sput v2, Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;->sReferencCount:I

    .line 165
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getDataUsageWithinSpecificTime(IJJZ)J
    .locals 9

    .line 200
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;->getSpecificTimeUsageBySlotId(IJZ)J

    move-result-wide v0

    .line 201
    iget-object v2, p0, Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/oneplus/security/network/calibrate/AutoCalibrateUtil;->getNativeTotalUsageWhenLastCalibrated(Landroid/content/Context;I)J

    move-result-wide v2

    .line 202
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "slotId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", value is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " lastExtraValue is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "NativeTrafficDataModel"

    invoke-static {v6, v4}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v4, v0, v2

    const-wide/16 v7, 0x0

    if-ltz v4, :cond_1

    cmp-long v4, v2, v7

    if-lez v4, :cond_1

    sub-long/2addr v0, v2

    const-wide/16 p0, 0x3e8

    cmp-long p0, v0, p0

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    move-wide v7, v0

    goto :goto_0

    .line 218
    :cond_1
    invoke-direct/range {p0 .. p6}, Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;->getSpecificTimeUsageBySlotId(IJJZ)J

    move-result-wide v7

    .line 219
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", value < lastExtraValue, re-query datausage by start time,new value:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lcom/oneplus/security/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-wide v7
.end method

.method public getExtraDataUsage(IJZ)J
    .locals 15

    move-object v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    .line 170
    iget-object v4, v0, Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/oneplus/security/network/calibrate/AutoCalibrateUtil;->getLastCalibrateTime(Landroid/content/Context;I)J

    move-result-wide v4

    .line 171
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "requesetDataUsage lastCalibrateTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", slot:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", block:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "NativeTrafficDataModel"

    invoke-static {v8, v6}, Lcom/oneplus/security/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 173
    iget-object v6, v0, Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;->mContext:Landroid/content/Context;

    invoke-static {v6, v1}, Lcom/oneplus/security/network/operator/AccountDayLocalCache;->getDataUsageSectionTimeMillByAccountDay(Landroid/content/Context;I)[J

    move-result-object v6

    const/4 v11, 0x1

    .line 175
    aget-wide v11, v6, v11

    const-wide/16 v13, 0x0

    cmp-long v13, v2, v13

    const/4 v14, 0x0

    if-ltz v13, :cond_1

    cmp-long v9, v4, v9

    if-gtz v9, :cond_1

    .line 176
    aget-wide v9, v6, v14

    cmp-long v9, v4, v9

    if-gez v9, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    move/from16 v1, p1

    move-wide v2, v4

    move-wide v4, v11

    move/from16 v6, p4

    .line 195
    invoke-virtual/range {v0 .. v6}, Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;->getDataUsageWithinSpecificTime(IJJZ)J

    move-result-wide v0

    return-wide v0

    .line 183
    :cond_1
    :goto_0
    aget-wide v4, v6, v14

    .line 184
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "originalDataUsed or lastCalibrateTime is invalid slotId:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",originalDataUsed:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/oneplus/security/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move/from16 v1, p1

    move-wide v2, v4

    move-wide v4, v11

    move/from16 v6, p4

    .line 185
    invoke-direct/range {v0 .. v6}, Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;->getSpecificTimeUsageBySlotId(IJJZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNativeDataUsageWithinSpecificTime(IJJ)J
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 233
    invoke-direct/range {v0 .. v6}, Lcom/oneplus/security/network/trafficinfo/NativeTrafficDataModel;->getSpecificTimeUsageBySlotId(IJJZ)J

    move-result-wide p0

    return-wide p0
.end method
