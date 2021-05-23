.class public Lcom/android/server/ugm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/OnePlusUtil$zta$you;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ugm$sis;,
        Lcom/android/server/ugm$you;
    }
.end annotation


# static fields
.field public static bvj:Lcom/android/server/ugm; = null

.field private static final dma:Ljava/lang/String; = "persist.sys.optraffic.debug"

.field private static final gck:Z

.field private static gwm:Landroid/util/ArrayMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/ugm$sis;",
            ">;"
        }
    .end annotation
.end field

.field private static ibl:Z = false

.field private static final obl:Ljava/lang/String; = "com.traffic.action.test"

.field private static final oif:I = 0x400

.field public static final qbh:Z = true

.field private static final ugm:I = 0x1

.field private static final vdb:I = 0x2

.field public static final wtn:Ljava/lang/String; = "OPTraffic"

.field private static ywr:Z = false

.field private static final zgw:I = 0x3


# instance fields
.field private bio:Lcom/android/server/ugm$you;

.field private cno:Z

.field private igw:Landroid/content/BroadcastReceiver;

.field private kth:Ljava/lang/Object;

.field private rtg:I

.field private sis:J

.field private ssp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private tsu:I

.field private you:J

.field private zta:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/ugm;->gck:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/ugm;->ywr:Z

    sput-boolean v0, Lcom/android/server/ugm;->ibl:Z

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/ugm;->gwm:Landroid/util/ArrayMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/server/ugm;->zta:I

    const-wide/32 v0, 0x55400

    iput-wide v0, p0, Lcom/android/server/ugm;->you:J

    const-wide/32 v0, 0x12c000

    iput-wide v0, p0, Lcom/android/server/ugm;->sis:J

    const v0, 0x493e0

    iput v0, p0, Lcom/android/server/ugm;->tsu:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/ugm;->rtg:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ugm;->ssp:Ljava/util/HashMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ugm;->cno:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/ugm;->kth:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/ugm$zta;

    invoke-direct {v0, p0}, Lcom/android/server/ugm$zta;-><init>(Lcom/android/server/ugm;)V

    iput-object v0, p0, Lcom/android/server/ugm;->igw:Landroid/content/BroadcastReceiver;

    sget-boolean v0, Lcom/android/server/ugm;->ywr:Z

    const-string v1, "persist.sys.optraffic.debug"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ugm;->ywr:Z

    new-instance v0, Lcom/android/server/ugm$you;

    invoke-static {}, Lcom/android/server/am/oxb;->kth()Lcom/android/server/am/oxb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/oxb;->bio()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/ugm$you;-><init>(Lcom/android/server/ugm;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ugm;->bio:Lcom/android/server/ugm$you;

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->rtg()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/OnePlusUtil$zta;->bio(Lcom/android/server/OnePlusUtil$zta$you;)V

    return-void
.end method

.method static synthetic bio()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/ugm;->ywr:Z

    return v0
.end method

.method private bvj(J)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/ugm;->kth:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/android/server/ugm;->sis:J

    cmp-long p0, p1, v1

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic cno(Lcom/android/server/ugm;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/ugm;->you:J

    return-wide p1
.end method

.method static synthetic dma(Lcom/android/server/ugm;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/ugm;->rtg:I

    return p1
.end method

.method static synthetic gck(Lcom/android/server/ugm;)I
    .locals 0

    iget p0, p0, Lcom/android/server/ugm;->rtg:I

    return p0
.end method

.method public static declared-synchronized gwm()Lcom/android/server/ugm;
    .locals 2

    const-class v0, Lcom/android/server/ugm;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/ugm;->bvj:Lcom/android/server/ugm;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/ugm;

    invoke-direct {v1}, Lcom/android/server/ugm;-><init>()V

    sput-object v1, Lcom/android/server/ugm;->bvj:Lcom/android/server/ugm;

    :cond_0
    sget-object v1, Lcom/android/server/ugm;->bvj:Lcom/android/server/ugm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private ibl()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMaxCacheTimeout = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ugm;->tsu:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPTraffic"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPerformPollTimeout = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ugm;->zta:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPTraffic"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mTrafficThreshold = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/ugm;->you:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "byte"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPTraffic"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mTrafficThresholdHigh = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/ugm;->sis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "byte"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPTraffic"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDefaultCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/ugm;->rtg:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OPTraffic"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/server/ugm;->gwm:Landroid/util/ArrayMap;

    monitor-enter p0

    :try_start_0
    const-string v0, "OPTraffic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mUidTraffic size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/ugm;->gwm:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/ugm;->gwm:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ugm$sis;

    const-string v2, "OPTraffic"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " traffic ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/ugm$sis;->zta(Lcom/android/server/ugm$sis;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/ugm$sis;->ssp(Lcom/android/server/ugm$sis;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/ugm$sis;->you(Lcom/android/server/ugm$sis;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/ugm$sis;->sis(Lcom/android/server/ugm$sis;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/ugm$sis;->tsu(Lcom/android/server/ugm$sis;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic igw(Lcom/android/server/ugm;J)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/ugm;->bvj(J)Z

    move-result p0

    return p0
.end method

.method private ire()V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-object v2, Lcom/android/server/ugm;->gwm:Landroid/util/ArrayMap;

    monitor-enter v2

    :try_start_0
    sget-boolean v3, Lcom/android/server/ugm;->ywr:Z

    if-eqz v3, :cond_0

    const-string v3, "OPTraffic"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateUidsTraffic before size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/ugm;->gwm:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v3, Lcom/android/server/ugm;->gwm:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ugm$sis;

    invoke-virtual {v6}, Lcom/android/server/ugm$sis;->bio()Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    sget-boolean v3, Lcom/android/server/ugm;->ywr:Z

    if-eqz v3, :cond_3

    const-string v3, "OPTraffic"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateUidsTraffic after size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/server/ugm;->gwm:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sget-boolean v0, Lcom/android/server/ugm;->gck:Z

    if-eqz v0, :cond_4

    const-wide/16 v0, 0x5

    cmp-long v0, v2, v0

    if-ltz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateUidsTraffic took "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPTraffic"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-nez v5, :cond_5

    sput-boolean v4, Lcom/android/server/ugm;->ibl:Z

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/android/server/ugm;->oxb()V

    :goto_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static synthetic kth(Lcom/android/server/ugm;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/ugm;->sis:J

    return-wide p1
.end method

.method private oif(J)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/ugm;->kth:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/android/server/ugm;->you:J

    cmp-long p0, p1, v1

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private oxb()V
    .locals 4

    sget-boolean v0, Lcom/android/server/ugm;->gck:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "schedulePerformPollTimeout mTracing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/ugm;->ibl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPTraffic"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/android/server/ugm;->bio:Lcom/android/server/ugm$you;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/ugm;->bio:Lcom/android/server/ugm$you;

    iget p0, p0, Lcom/android/server/ugm;->zta:I

    int-to-long v2, p0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method static synthetic rtg(Lcom/android/server/ugm;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/ugm;->tsu:I

    return p1
.end method

.method static synthetic sis()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/ugm;->gck:Z

    return v0
.end method

.method static synthetic ssp(Lcom/android/server/ugm;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/ugm;->zta:I

    return p1
.end method

.method static synthetic tsu(Lcom/android/server/ugm;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/ugm;->ibl()V

    return-void
.end method

.method static synthetic wtn(Lcom/android/server/ugm;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/android/server/ugm;->ssp:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic you()Landroid/util/ArrayMap;
    .locals 1

    sget-object v0, Lcom/android/server/ugm;->gwm:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic ywr(Lcom/android/server/ugm;J)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/ugm;->oif(J)Z

    move-result p0

    return p0
.end method

.method static synthetic zta(Lcom/android/server/ugm;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/ugm;->ire()V

    return-void
.end method


# virtual methods
.method public cjf(I)V
    .locals 0

    if-gtz p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/server/ugm;->zta:I

    return-void
.end method

.method public ear(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/ugm;->kth:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-wide p1, p0, Lcom/android/server/ugm;->you:J

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public frontPackageChanged(Ljava/lang/String;IILjava/lang/String;II)V
    .locals 0

    sget-boolean p3, Lcom/android/server/ugm;->ywr:Z

    if-eqz p3, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "frontPackageChanged "

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, ":"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " => "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "OPTraffic"

    invoke-static {p4, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string p3, "SCREEN OFF"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/android/server/ugm;->qbh(ILjava/lang/String;)V

    return-void
.end method

.method public obl()V
    .locals 2

    sget-boolean v0, Lcom/android/server/ugm;->ywr:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "schedulePerformPoll mTracing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/ugm;->ibl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPTraffic"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/server/ugm;->ibl:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/ugm;->ibl:Z

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput v0, v1, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/android/server/ugm;->bio:Lcom/android/server/ugm$you;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method public qbh(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/ugm;->bio:Lcom/android/server/ugm$you;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public ugm()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/ugm;->cno:Z

    return p0
.end method

.method public vdb(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p0, "OPTraffic"

    const-string p1, "Fatal Exception # registerGeneralReceiver # mContext=null"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string v1, "com.traffic.action.test"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/ugm;->igw:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public zgw(I)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/android/server/ugm;->bio:Lcom/android/server/ugm$you;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
