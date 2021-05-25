.class Lcom/android/server/wm/OpPowerConsumpStats$gwm;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OpPowerConsumpStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "gwm"
.end annotation


# instance fields
.field final synthetic sis:Lcom/android/server/wm/OpPowerConsumpStats;

.field you:J

.field zta:J


# direct methods
.method constructor <init>(Lcom/android/server/wm/OpPowerConsumpStats;JJ)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$gwm;->sis:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$gwm;->zta:J

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$gwm;->you:J

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats;->a0(Lcom/android/server/wm/OpPowerConsumpStats;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iput-wide p2, p0, Lcom/android/server/wm/OpPowerConsumpStats$gwm;->zta:J

    iput-wide p4, p0, Lcom/android/server/wm/OpPowerConsumpStats$gwm;->you:J

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BaseTimer tStartTime:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " |tCumulativeTime:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Y(Ljava/lang/String;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private sis()J
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$gwm;->sis:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->a0(Lcom/android/server/wm/OpPowerConsumpStats;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$gwm;->you:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private you()J
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$gwm;->sis:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->a0(Lcom/android/server/wm/OpPowerConsumpStats;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/wm/OpPowerConsumpStats$gwm;->zta:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcom/android/server/wm/OpPowerConsumpStats$gwm;->you:J

    add-long/2addr v1, v3

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats$gwm;)J
    .locals 2

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats$gwm;->you()J

    move-result-wide v0

    return-wide v0
.end method
