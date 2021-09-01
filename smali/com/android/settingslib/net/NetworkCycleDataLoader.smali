.class public abstract Lcom/android/settingslib/net/NetworkCycleDataLoader;
.super Landroidx/loader/content/AsyncTaskLoader;
.source "NetworkCycleDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/loader/content/AsyncTaskLoader<",
        "TD;>;"
    }
.end annotation


# instance fields
.field private final mCycles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsHotspot:Z

.field protected final mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

.field final mNetworkStatsService:Landroid/net/INetworkStatsService;

.field protected final mNetworkTemplate:Landroid/net/NetworkTemplate;

.field private final mPolicy:Landroid/net/NetworkPolicy;

.field protected telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method protected constructor <init>(Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 66
    invoke-static {p1}, Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;->access$000(Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/loader/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 67
    invoke-static {p1}, Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;->access$100(Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    .line 68
    invoke-static {p1}, Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;->access$200(Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mCycles:Ljava/util/ArrayList;

    .line 70
    invoke-static {p1}, Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;->access$000(Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "netstats"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/NetworkStatsManager;

    iput-object v0, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    .line 72
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 71
    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mNetworkStatsService:Landroid/net/INetworkStatsService;

    .line 73
    new-instance v0, Lcom/android/settingslib/NetworkPolicyEditor;

    .line 74
    invoke-static {p1}, Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;->access$000(Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    .line 75
    invoke-virtual {v0}, Lcom/android/settingslib/NetworkPolicyEditor;->read()V

    .line 76
    iget-object v1, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mPolicy:Landroid/net/NetworkPolicy;

    .line 79
    invoke-static {p1}, Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;->access$300(Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mIsHotspot:Z

    .line 80
    invoke-static {p1}, Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;->access$000(Lcom/android/settingslib/net/NetworkCycleDataLoader$Builder;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->telephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method


# virtual methods
.method abstract getCycleUsage()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method public getCycles()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 186
    iget-object p0, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mCycles:Ljava/util/ArrayList;

    return-object p0
.end method

.method protected getTotalUsage(Landroid/app/usage/NetworkStats;)J
    .locals 6

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_1

    .line 175
    new-instance p0, Landroid/app/usage/NetworkStats$Bucket;

    invoke-direct {p0}, Landroid/app/usage/NetworkStats$Bucket;-><init>()V

    .line 176
    :goto_0
    invoke-virtual {p1}, Landroid/app/usage/NetworkStats;->hasNextBucket()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, p0}, Landroid/app/usage/NetworkStats;->getNextBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v4

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {p1}, Landroid/app/usage/NetworkStats;->close()V

    :cond_1
    return-wide v0
.end method

.method loadDataForSpecificCycles()V
    .locals 6

    .line 149
    iget-object v0, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mCycles:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 150
    iget-object v2, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mCycles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-gt v3, v2, :cond_0

    .line 152
    iget-object v4, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mCycles:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 153
    invoke-virtual {p0, v4, v5, v0, v1}, Lcom/android/settingslib/net/NetworkCycleDataLoader;->recordUsage(JJ)V

    add-int/lit8 v3, v3, 0x1

    move-wide v0, v4

    goto :goto_0

    :cond_0
    return-void
.end method

.method loadFourWeeksData()V
    .locals 8

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mNetworkStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v0}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Landroid/net/INetworkStatsSession;->getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v1

    .line 131
    invoke-virtual {v1}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v2

    .line 132
    invoke-virtual {v1}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v4

    :goto_0
    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    const-wide v6, 0x90321000L

    sub-long v6, v4, v6

    .line 137
    invoke-virtual {p0, v6, v7, v4, v5}, Lcom/android/settingslib/net/NetworkCycleDataLoader;->recordUsage(JJ)V

    move-wide v4, v6

    goto :goto_0

    .line 141
    :cond_0
    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 143
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public loadInBackground()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mCycles:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/android/settingslib/net/NetworkCycleDataLoader;->loadDataForSpecificCycles()V

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mPolicy:Landroid/net/NetworkPolicy;

    if-nez v0, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/android/settingslib/net/NetworkCycleDataLoader;->loadFourWeeksData()V

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {p0}, Lcom/android/settingslib/net/NetworkCycleDataLoader;->loadPolicyData()V

    .line 98
    :goto_0
    invoke-virtual {p0}, Lcom/android/settingslib/net/NetworkCycleDataLoader;->getCycleUsage()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method loadPolicyData()V
    .locals 6

    .line 103
    iget-object v0, p0, Lcom/android/settingslib/net/NetworkCycleDataLoader;->mPolicy:Landroid/net/NetworkPolicy;

    .line 104
    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->cycleIterator(Landroid/net/NetworkPolicy;)Ljava/util/Iterator;

    move-result-object v0

    .line 105
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 107
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/time/ZonedDateTime;

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    .line 108
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/time/ZonedDateTime;

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v4

    .line 109
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/settingslib/net/NetworkCycleDataLoader;->recordUsage(JJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onReset()V
    .locals 0

    .line 121
    invoke-super {p0}, Landroidx/loader/content/Loader;->onReset()V

    .line 122
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->cancelLoad()Z

    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    .line 86
    invoke-super {p0}, Landroidx/loader/content/Loader;->onStartLoading()V

    .line 87
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->forceLoad()V

    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .line 115
    invoke-super {p0}, Landroidx/loader/content/Loader;->onStopLoading()V

    .line 116
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->cancelLoad()Z

    return-void
.end method

.method abstract recordUsage(JJ)V
.end method
