.class Lcom/android/server/am/qeg;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/qeg$you;,
        Lcom/android/server/am/qeg$sis;
    }
.end annotation


# static fields
.field private static dma:Lcom/android/server/am/qeg; = null

.field private static final gck:Ljava/lang/String; = "OpBroadcastDelayStrategy"

.field private static ywr:Ljava/lang/Object;


# instance fields
.field bio:Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;

.field private cno:I

.field igw:Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

.field kth:Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;

.field private rtg:Z

.field sis:Lcom/android/server/am/ActivityManagerService;

.field private ssp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/qeg$you;",
            ">;"
        }
    .end annotation
.end field

.field private tsu:Landroid/os/Handler;

.field private wtn:Z

.field private you:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zta:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/qeg;->ywr:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/qeg;->zta:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/qeg;->you:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/qeg;->rtg:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/qeg;->ssp:Ljava/util/HashMap;

    iput v0, p0, Lcom/android/server/am/qeg;->cno:I

    sget-object v1, Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;->you:Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;

    iput-object v1, p0, Lcom/android/server/am/qeg;->kth:Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;

    iput-object v1, p0, Lcom/android/server/am/qeg;->bio:Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;

    sget-object v1, Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;->zta:Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

    iput-object v1, p0, Lcom/android/server/am/qeg;->igw:Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

    iput-boolean v0, p0, Lcom/android/server/am/qeg;->wtn:Z

    invoke-direct {p0}, Lcom/android/server/am/qeg;->kth()V

    invoke-direct {p0}, Lcom/android/server/am/qeg;->igw()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/qeg$zta;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/qeg;-><init>()V

    return-void
.end method

.method private bio(Lcom/android/server/am/ActivityManagerService;)V
    .locals 5

    const-string v0, "OpBroadcastDelayStrategy"

    const-string v1, "initScheduleMap"

    invoke-static {v0, v1}, Lcom/android/server/am/Slogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    :goto_0
    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/qeg;->ssp:Ljava/util/HashMap;

    aget-object v3, v1, v0

    iget-object v3, v3, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    new-instance v4, Lcom/android/server/am/qeg$you;

    aget-object v1, v1, v0

    invoke-direct {v4, p0, v1}, Lcom/android/server/am/qeg$you;-><init>(Lcom/android/server/am/qeg;Lcom/android/server/am/BroadcastQueue;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private gck(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;)V
    .locals 7

    sget-object v0, Lcom/android/server/am/qeg;->ywr:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "OpBroadcastDelayStrategy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processParallelBroadcastForLoadLocked before mCurSpeedLength = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/qeg;->cno:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "op-processParallelBroadcastForLoadLocked"

    invoke-static {v1}, Lcom/android/server/am/Slogger;->debugTraceBegin(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/qeg;->bio:Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;

    invoke-direct {p0, p2, v1}, Lcom/android/server/am/qeg;->sis(Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;)I

    move-result p2

    iput p2, p0, Lcom/android/server/am/qeg;->cno:I

    const-string p2, "OpBroadcastDelayStrategy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processParallelBroadcastForLoadLocked after mCurSpeedLength = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/qeg;->cno:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x3

    :goto_0
    iget v1, p0, Lcom/android/server/am/qeg;->cno:I

    const-wide/16 v2, 0x0

    if-gt p2, v1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/qeg;->qbh(Lcom/android/server/am/ActivityManagerService;I)V

    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    aget-object v1, v1, p2

    iget-wide v4, v1, Lcom/android/server/am/BroadcastQueue;->mDelayUntil:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/android/server/am/BroadcastQueue;->resetDelay()V

    const-string v1, "OpBroadcastDelayStrategy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processParallelBroadcastForLoadLocked resetDelay deferred queue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    aget-object v3, v3, p2

    iget-object v3, v3, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ms.mBroadcastQueues[i].mDelayUntil "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    aget-object v3, v3, p2

    iget-wide v3, v3, Lcom/android/server/am/BroadcastQueue;->mDelayUntil:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/qeg;->zta(Lcom/android/server/am/ActivityManagerService;I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    iget p2, p0, Lcom/android/server/am/qeg;->cno:I

    goto/16 :goto_2

    :goto_1
    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    array-length v1, v1

    if-ge p2, v1, :cond_4

    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    aget-object v1, v1, p2

    iget v1, v1, Lcom/android/server/am/BroadcastQueue;->mDelayCount:I

    invoke-static {}, Lcom/android/server/am/oxb;->wtn()I

    move-result v4

    if-le v1, v4, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/qeg;->qbh(Lcom/android/server/am/ActivityManagerService;I)V

    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    aget-object v1, v1, p2

    iget-wide v4, v1, Lcom/android/server/am/BroadcastQueue;->mDelayUntil:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/android/server/am/BroadcastQueue;->resetDelay()V

    const-string v1, "OpBroadcastDelayStrategy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processParallelBroadcastForLoadLocked resetDelay deferred queue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    aget-object v5, v5, p2

    iget-object v5, v5, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " because is delay count bigger than = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/oxb;->wtn()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/qeg;->zta(Lcom/android/server/am/ActivityManagerService;I)V

    :cond_3
    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    aget-object v1, v1, p2

    iget-object v1, v1, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    const-string v4, "fg"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v4, "OpBroadcastDelayStrategy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processParallelBroadcastForLoadLocked startDelay queue = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    aget-object v6, v6, p2

    iget-object v6, v6, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p1, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    aget-object v4, v4, p2

    invoke-virtual {p0, v4, v1, p2}, Lcom/android/server/am/qeg;->bvj(Lcom/android/server/am/BroadcastQueue;ZI)V

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_1

    :cond_4
    invoke-static {}, Lcom/android/server/am/Slogger;->debugTraceEnd()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private igw()V
    .locals 3

    const-string v0, "OpBroadcastDelayStrategy"

    const-string v1, "initSpeedLengthMap"

    invoke-static {v0, v1}, Lcom/android/server/am/Slogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/qeg;->zta:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;->you:Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/am/qeg;->zta:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;->sis:Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/am/qeg;->zta:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;->tsu:Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/am/qeg;->zta:Ljava/util/HashMap;

    sget-object v0, Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;->rtg:Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private kth()V
    .locals 3

    const-string v0, "OpBroadcastDelayStrategy"

    const-string v1, "initLoadLengthMap"

    invoke-static {v0, v1}, Lcom/android/server/am/Slogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/qeg;->you:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;->you:Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/am/qeg;->you:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;->sis:Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/am/qeg;->you:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;->tsu:Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/am/qeg;->you:Ljava/util/HashMap;

    sget-object v0, Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;->rtg:Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private qbh(Lcom/android/server/am/ActivityManagerService;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/qeg;->ssp:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    aget-object p1, p1, p2

    iget-object p1, p1, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/qeg$you;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/android/server/am/qeg$you;->zta:Z

    iget-object p0, p0, Lcom/android/server/am/qeg;->tsu:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private rtg(Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;)I
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/qeg;->you:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private sis(Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;)I
    .locals 1

    sget-object v0, Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;->zta:Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;->you:Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

    :cond_0
    sget-object v0, Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;->zta:Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;

    invoke-virtual {v0, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p2, Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;->you:Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;

    :cond_1
    sget-object v0, Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;->you:Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;

    invoke-virtual {p2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/am/qeg;->rtg(Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;)I

    move-result p0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2}, Lcom/android/server/am/qeg;->ssp(Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;)I

    move-result p0

    :goto_0
    return p0
.end method

.method private ssp(Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/qeg;->igw:Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

    invoke-virtual {v0}, Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;->zta()I

    move-result v0

    sget-object v1, Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;->you:Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

    invoke-virtual {v1}, Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;->zta()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/16 p0, 0x8

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/qeg;->zta:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static tsu()Lcom/android/server/am/qeg;
    .locals 1

    invoke-static {}, Lcom/android/server/am/qeg$sis;->zta()Lcom/android/server/am/qeg;

    move-result-object v0

    return-object v0
.end method

.method private you(Ljava/lang/Object;)Landroid/content/pm/ApplicationInfo;
    .locals 0

    instance-of p0, p1, Landroid/content/pm/ActivityInfo;

    if-eqz p0, :cond_0

    check-cast p1, Landroid/content/pm/ActivityInfo;

    iget-object p0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_0

    :cond_0
    instance-of p0, p1, Lcom/android/server/am/BroadcastFilter;

    if-eqz p0, :cond_2

    check-cast p1, Lcom/android/server/am/BroadcastFilter;

    iget-object p0, p1, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object p0, p0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    :goto_0
    return-object p0
.end method

.method private ywr(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;)V
    .locals 6

    sget-object v0, Lcom/android/server/am/qeg;->ywr:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "op-processParallelBroadcastForSpeedLocked"

    invoke-static {v1}, Lcom/android/server/am/Slogger;->debugTraceBegin(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/qeg;->igw:Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

    invoke-direct {p0, v1, p2}, Lcom/android/server/am/qeg;->sis(Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/qeg;->cno:I

    const-string v1, "OpBroadcastDelayStrategy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processParallelBroadcastForSpeedLocked mCurSpeedLength = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/qeg;->cno:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " speedType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;->zta()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mCurSystemLoadType = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/am/qeg;->igw:Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

    invoke-virtual {p2}, Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;->zta()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x3

    :goto_0
    iget v1, p0, Lcom/android/server/am/qeg;->cno:I

    const-wide/16 v2, 0x0

    if-gt p2, v1, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/qeg;->qbh(Lcom/android/server/am/ActivityManagerService;I)V

    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    aget-object v1, v1, p2

    iget-wide v4, v1, Lcom/android/server/am/BroadcastQueue;->mDelayUntil:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/android/server/am/BroadcastQueue;->resetDelay()V

    const-string v1, "OpBroadcastDelayStrategy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processParallelBroadcastForSpeedLocked resetDelay deferred queue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    aget-object v3, v3, p2

    iget-object v3, v3, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ams.mBroadcastQueues[i].mDelayUntil = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    aget-object v3, v3, p2

    iget-wide v3, v3, Lcom/android/server/am/BroadcastQueue;->mDelayUntil:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    aget-object v1, v1, p2

    iget-object v1, v1, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    aget-object v1, v1, p2

    iget-object v1, v1, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastRecord;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, v1, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    aget-object v4, v4, p2

    move-object v5, v3

    check-cast v5, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {v4, v1, v5, v2, v2}, Lcom/android/server/am/BroadcastQueue;->deliverToRegisteredReceiverLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;ZI)V

    const-string v2, "OpBroadcastDelayStrategy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Delivering non-ordered on ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    aget-object v5, v5, p2

    iget-object v5, v5, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] to registered "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    aget-object v2, v2, p2

    invoke-virtual {v2, v1}, Lcom/android/server/am/BroadcastQueue;->addBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastRecord;)V

    const-string v2, "OpBroadcastDelayStrategy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Done with parallel broadcast ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    aget-object v4, v4, p2

    iget-object v4, v4, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_3
    iget p2, p0, Lcom/android/server/am/qeg;->cno:I

    goto :goto_3

    :goto_2
    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    array-length v1, v1

    if-ge p2, v1, :cond_6

    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    aget-object v1, v1, p2

    iget v1, v1, Lcom/android/server/am/BroadcastQueue;->mDelayCount:I

    invoke-static {}, Lcom/android/server/am/oxb;->wtn()I

    move-result v4

    if-le v1, v4, :cond_5

    iget-object v1, p0, Lcom/android/server/am/qeg;->tsu:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/am/qeg;->ssp:Ljava/util/HashMap;

    iget-object v5, p1, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    aget-object v5, v5, p2

    iget-object v5, v5, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    aget-object v1, v1, p2

    iget-wide v4, v1, Lcom/android/server/am/BroadcastQueue;->mDelayUntil:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/android/server/am/BroadcastQueue;->resetDelay()V

    const-string v1, "OpBroadcastDelayStrategy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processParallelBroadcastForSpeedLocked resetDelay deferred queue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    aget-object v5, v5, p2

    iget-object v5, v5, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " because is delay count bigger than = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/oxb;->wtn()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/qeg;->zta(Lcom/android/server/am/ActivityManagerService;I)V

    :cond_5
    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/Slogger;->debugTraceEnd()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private zta(Lcom/android/server/am/ActivityManagerService;I)V
    .locals 5

    const-string p0, "op-deliverToRegisteredReceiverLocked"

    invoke-static {p0}, Lcom/android/server/am/Slogger;->debugTraceBegin(Ljava/lang/String;)V

    :goto_0
    iget-object p0, p1, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    aget-object p0, p0, p2

    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_1

    iget-object p0, p1, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    aget-object p0, p0, p2

    iget-object p0, p0, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/BroadcastRecord;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "OpBroadcastDelayStrategy"

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p1, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    aget-object v3, v3, p2

    move-object v4, v1

    check-cast v4, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {v3, p0, v4, v0, v0}, Lcom/android/server/am/BroadcastQueue;->deliverToRegisteredReceiverLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;ZI)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delivering non-ordered on ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    aget-object v3, v3, p2

    iget-object v3, v3, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] to registered "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/am/Slogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    aget-object v0, v0, p2

    invoke-virtual {v0, p0}, Lcom/android/server/am/BroadcastQueue;->addBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastRecord;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Done with parallel broadcast ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    aget-object v1, v1, p2

    iget-object v1, v1, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/am/Slogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Lcom/android/server/am/Slogger;->debugTraceEnd()V

    return-void
.end method


# virtual methods
.method public bvj(Lcom/android/server/am/BroadcastQueue;ZI)V
    .locals 3

    monitor-enter p1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/BroadcastQueue;->mDelayedAt:J

    if-eqz p2, :cond_0

    const-wide/16 p2, 0x1388

    iput-wide p2, p1, Lcom/android/server/am/BroadcastQueue;->mDelayedBy:J

    goto :goto_0

    :cond_0
    const-wide/16 p2, 0x3a98

    iput-wide p2, p1, Lcom/android/server/am/BroadcastQueue;->mDelayedBy:J

    :goto_0
    iget-wide p2, p1, Lcom/android/server/am/BroadcastQueue;->mDelayedBy:J

    add-long/2addr v0, p2

    iput-wide v0, p1, Lcom/android/server/am/BroadcastQueue;->mDelayUntil:J

    const-string p2, "OpBroadcastDelayStrategy"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startDelay queue = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " queue.mDelayCount = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/android/server/am/BroadcastQueue;->mDelayCount:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget p2, p1, Lcom/android/server/am/BroadcastQueue;->mDelayCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/android/server/am/BroadcastQueue;->mDelayCount:I

    sget-boolean p2, Lcom/android/server/am/Slogger;->debugBroadcast:Z

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    :goto_1
    iget-object p3, p1, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_2

    iget-object p3, p1, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/am/BroadcastRecord;

    if-eqz p3, :cond_1

    iget-object v0, p3, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    if-eqz v0, :cond_1

    const-string v0, "OpBroadcastDelayStrategy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "r "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/server/am/BroadcastRecord;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " receivers "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/am/qeg;->oif(Lcom/android/server/am/BroadcastQueue;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public cno(Landroid/os/Handler;Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/qeg;->tsu:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/server/am/qeg;->sis:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0, p2}, Lcom/android/server/am/qeg;->bio(Lcom/android/server/am/ActivityManagerService;)V

    return-void
.end method

.method dma(Lcom/android/server/am/ActivityManagerService;)V
    .locals 11

    const-string v0, "OpBroadcastDelayStrategy"

    const-string v1, "processParallelBroadcastForSpecial"

    invoke-static {v0, v1}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "op-processParallelBroadcastForSpecial"

    invoke-static {v1}, Lcom/android/server/am/Slogger;->debugTraceBegin(Ljava/lang/String;)V

    const/4 v1, 0x3

    :goto_0
    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_1
    if-ltz v2, :cond_2

    iget-object v4, p1, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BroadcastRecord;

    iget-object v5, v4, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, v4, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    if-lez v5, :cond_1

    iget-object v5, v4, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/am/qeg;->you(Ljava/lang/Object;)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-static {}, Lcom/android/server/am/obl;->cno()Lcom/android/server/am/obl;

    move-result-object v9

    iget-object v10, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/android/server/am/obl;->ywr(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/server/am/oxb;->hmo(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {v8}, Lcom/android/server/am/oxb;->veq(Landroid/content/pm/ApplicationInfo;)Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    invoke-virtual {v8, v3}, Landroid/content/pm/ApplicationInfo;->setQueueFlags(I)V

    iget-object v9, p1, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    aget-object v9, v9, v1

    iget-object v9, v9, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iput-wide v9, v4, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, v4, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    iget-object v9, p1, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    aget-object v9, v9, v1

    move-object v10, v5

    check-cast v10, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {v9, v4, v10, v7, v7}, Lcom/android/server/am/BroadcastQueue;->deliverToRegisteredReceiverLocked(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;ZI)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Delivering non-ordered on ["

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    aget-object v9, v9, v1

    iget-object v9, v9, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "] to registered "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "for Special, App packageName = "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " action = "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p1, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueues:[Lcom/android/server/am/BroadcastQueue;

    aget-object v5, v5, v1

    invoke-virtual {v5, v4}, Lcom/android/server/am/BroadcastQueue;->addBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastRecord;)V

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lcom/android/server/am/Slogger;->debugTraceEnd()V

    return-void
.end method

.method public oif(Lcom/android/server/am/BroadcastQueue;)V
    .locals 4

    iget-object v0, p1, Lcom/android/server/am/BroadcastQueue;->mParallelBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/qeg;->ssp:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/qeg$you;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/am/qeg$you;->zta:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/qeg;->tsu:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scheduling deferred queue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " queue.mDelayCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/am/BroadcastQueue;->mDelayCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " recheck at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/server/am/BroadcastQueue;->mDelayUntil:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpBroadcastDelayStrategy"

    invoke-static {v2, v1}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/qeg;->tsu:Landroid/os/Handler;

    iget-wide v1, p1, Lcom/android/server/am/BroadcastQueue;->mDelayUntil:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/android/server/am/qeg$you;->zta:Z

    :cond_0
    return-void
.end method

.method public wtn(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;Z)V
    .locals 3

    monitor-enter p1

    :try_start_0
    const-string v0, "OpBroadcastDelayStrategy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processBroadcast loadType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;->zta()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " speedType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;->zta()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isForLoad = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/am/qeg;->dma(Lcom/android/server/am/ActivityManagerService;)V

    if-eqz p4, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/qeg;->gck(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/android/server/am/qeg;->ywr(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;)V

    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sget-object p4, Lcom/android/server/am/qeg;->ywr:Ljava/lang/Object;

    monitor-enter p4

    :try_start_1
    iput-object p2, p0, Lcom/android/server/am/qeg;->igw:Lcom/android/server/am/OPSystemCpuLoadMonitor$SystemLoadType;

    iget-object p1, p0, Lcom/android/server/am/qeg;->bio:Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;

    iput-object p1, p0, Lcom/android/server/am/qeg;->kth:Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;

    iput-object p3, p0, Lcom/android/server/am/qeg;->bio:Lcom/android/server/am/OPBRPorcessSpeedMonitor$ProcessBRSpeedType;

    monitor-exit p4

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method
