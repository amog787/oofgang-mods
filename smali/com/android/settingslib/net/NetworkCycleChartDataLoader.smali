.class public Lcom/android/settingslib/net/NetworkCycleChartDataLoader;
.super Lcom/android/settingslib/net/NetworkCycleDataLoader;
.source "NetworkCycleChartDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/net/NetworkCycleChartDataLoader$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/net/NetworkCycleDataLoader<",
        "Ljava/util/List<",
        "Lcom/android/settingslib/net/NetworkCycleChartData;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/NetworkCycleChartData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/settingslib/net/NetworkCycleChartDataLoader$Builder;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/android/settingslib/net/NetworkCycleDataLoader;-><init>(Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;)V

    .line 46
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/net/NetworkCycleChartDataLoader;->mData:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/net/NetworkCycleChartDataLoader$Builder;Lcom/android/settingslib/net/NetworkCycleChartDataLoader$1;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/android/settingslib/net/NetworkCycleChartDataLoader;-><init>(Lcom/android/settingslib/net/NetworkCycleChartDataLoader$Builder;)V

    return-void
.end method

.method public static builder(Landroid/content/Context;)Lcom/android/settingslib/net/NetworkCycleChartDataLoader$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/android/settingslib/net/NetworkCycleChartDataLoader$Builder<",
            "*>;"
        }
    .end annotation

    .line 100
    new-instance v0, Lcom/android/settingslib/net/NetworkCycleChartDataLoader$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/net/NetworkCycleChartDataLoader$1;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getTotalTetheringBytes(Landroid/app/usage/NetworkStats;)J
    .locals 6

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    .line 86
    :cond_0
    new-instance p0, Landroid/app/usage/NetworkStats$Bucket;

    invoke-direct {p0}, Landroid/app/usage/NetworkStats$Bucket;-><init>()V

    .line 87
    :goto_0
    invoke-virtual {p1}, Landroid/app/usage/NetworkStats;->hasNextBucket()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, p0}, Landroid/app/usage/NetworkStats;->getNextBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v4

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method private getUsageBuckets(JJ)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/NetworkCycleData;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 109
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 111
    sget-wide v3, Lcom/android/settingslib/net/NetworkCycleChartData;->BUCKET_DURATION_MS:J

    add-long v3, p1, v3

    move-wide/from16 v13, p1

    :goto_0
    cmp-long v0, v3, p3

    if-gtz v0, :cond_2

    const-wide/16 v15, 0x0

    .line 118
    :try_start_0
    iget-boolean v0, v1, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mIsHotspot:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settingslib/utils/ProductUtils;->isUsvMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    new-instance v0, Landroid/app/usage/NetworkStats$Bucket;

    invoke-direct {v0}, Landroid/app/usage/NetworkStats$Bucket;-><init>()V

    .line 120
    iget-object v5, v1, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    const/4 v6, 0x0

    iget-object v7, v1, Lcom/android/settingslib/net/NetworkCycleDataLoader;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 121
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v7

    const/4 v12, -0x5

    move-wide v8, v13

    move-wide v10, v3

    .line 120
    invoke-virtual/range {v5 .. v12}, Landroid/app/usage/NetworkStatsManager;->queryDetailsForUid(ILjava/lang/String;JJI)Landroid/app/usage/NetworkStats;

    move-result-object v5

    .line 122
    invoke-virtual {v5, v0}, Landroid/app/usage/NetworkStats;->getNextBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    .line 123
    invoke-virtual {v5}, Landroid/app/usage/NetworkStats;->close()V

    goto :goto_1

    .line 125
    :cond_0
    iget-object v5, v1, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    iget-object v6, v1, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    move-wide v7, v13

    move-wide v9, v3

    invoke-virtual/range {v5 .. v10}, Landroid/app/usage/NetworkStatsManager;->querySummaryForDevice(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats$Bucket;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {v0}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v5

    invoke-virtual {v0}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-long v15, v5, v7

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v5, "NetworkCycleChartLoader"

    const-string v6, "Exception querying network detail."

    .line 133
    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_2
    move-wide v5, v15

    .line 135
    new-instance v0, Lcom/android/settingslib/net/NetworkCycleData$Builder;

    invoke-direct {v0}, Lcom/android/settingslib/net/NetworkCycleData$Builder;-><init>()V

    .line 136
    invoke-virtual {v0, v13, v14}, Lcom/android/settingslib/net/NetworkCycleData$Builder;->setStartTime(J)Lcom/android/settingslib/net/NetworkCycleData$Builder;

    invoke-virtual {v0, v3, v4}, Lcom/android/settingslib/net/NetworkCycleData$Builder;->setEndTime(J)Lcom/android/settingslib/net/NetworkCycleData$Builder;

    invoke-virtual {v0, v5, v6}, Lcom/android/settingslib/net/NetworkCycleData$Builder;->setTotalUsage(J)Lcom/android/settingslib/net/NetworkCycleData$Builder;

    invoke-virtual {v0}, Lcom/android/settingslib/net/NetworkCycleData$Builder;->build()Lcom/android/settingslib/net/NetworkCycleData;

    move-result-object v0

    .line 135
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    sget-wide v5, Lcom/android/settingslib/net/NetworkCycleChartData;->BUCKET_DURATION_MS:J

    add-long/2addr v5, v3

    move-wide v13, v3

    move-wide v3, v5

    goto :goto_0

    :cond_2
    return-object v2
.end method


# virtual methods
.method bridge synthetic getCycleUsage()Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcom/android/settingslib/net/NetworkCycleChartDataLoader;->getCycleUsage()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method getCycleUsage()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/net/NetworkCycleChartData;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object p0, p0, Lcom/android/settingslib/net/NetworkCycleChartDataLoader;->mData:Ljava/util/List;

    return-object p0
.end method

.method recordUsage(JJ)V
    .locals 11

    .line 56
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mIsHotspot:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settingslib/utils/ProductUtils;->isUsvMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v3, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 58
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v5

    const/4 v10, -0x5

    move-wide v6, p1

    move-wide v8, p3

    .line 57
    invoke-virtual/range {v3 .. v10}, Landroid/app/usage/NetworkStatsManager;->queryDetailsForUid(ILjava/lang/String;JJI)Landroid/app/usage/NetworkStats;

    move-result-object v0

    .line 59
    invoke-direct {p0, v0}, Lcom/android/settingslib/net/NetworkCycleChartDataLoader;->getTotalTetheringBytes(Landroid/app/usage/NetworkStats;)J

    move-result-wide v3

    .line 60
    invoke-virtual {v0}, Landroid/app/usage/NetworkStats;->close()V

    goto :goto_0

    .line 62
    :cond_0
    iget-object v3, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    iget-object v4, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    move-wide v5, p1

    move-wide v7, p3

    invoke-virtual/range {v3 .. v8}, Landroid/app/usage/NetworkStatsManager;->querySummaryForDevice(Landroid/net/NetworkTemplate;JJ)Landroid/app/usage/NetworkStats$Bucket;

    move-result-object v0

    if-nez v0, :cond_1

    move-wide v3, v1

    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {v0}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v5

    add-long/2addr v3, v5

    :goto_0
    cmp-long v0, v3, v1

    if-lez v0, :cond_2

    .line 68
    new-instance v0, Lcom/android/settingslib/net/NetworkCycleChartData$Builder;

    invoke-direct {v0}, Lcom/android/settingslib/net/NetworkCycleChartData$Builder;-><init>()V

    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/net/NetworkCycleChartDataLoader;->getUsageBuckets(JJ)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/net/NetworkCycleChartData$Builder;->setUsageBuckets(Ljava/util/List;)Lcom/android/settingslib/net/NetworkCycleChartData$Builder;

    .line 70
    invoke-virtual {v0, p1, p2}, Lcom/android/settingslib/net/NetworkCycleData$Builder;->setStartTime(J)Lcom/android/settingslib/net/NetworkCycleData$Builder;

    .line 71
    invoke-virtual {v0, p3, p4}, Lcom/android/settingslib/net/NetworkCycleData$Builder;->setEndTime(J)Lcom/android/settingslib/net/NetworkCycleData$Builder;

    .line 72
    invoke-virtual {v0, v3, v4}, Lcom/android/settingslib/net/NetworkCycleData$Builder;->setTotalUsage(J)Lcom/android/settingslib/net/NetworkCycleData$Builder;

    .line 73
    iget-object p0, p0, Lcom/android/settingslib/net/NetworkCycleChartDataLoader;->mData:Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/settingslib/net/NetworkCycleChartData$Builder;->build()Lcom/android/settingslib/net/NetworkCycleChartData;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "NetworkCycleChartLoader"

    const-string p2, "Exception querying network detail."

    .line 76
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method
