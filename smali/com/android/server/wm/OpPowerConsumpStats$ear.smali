.class Lcom/android/server/wm/OpPowerConsumpStats$ear;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OpPowerConsumpStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ear"
.end annotation


# instance fields
.field sis:Z

.field final synthetic tsu:Lcom/android/server/wm/OpPowerConsumpStats;

.field you:Ljava/lang/Object;

.field zta:Lcom/android/server/wm/OpPowerConsumpStats$cjf;


# direct methods
.method constructor <init>(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ear;->tsu:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/android/server/wm/OpPowerConsumpStats$cjf;

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ear;->tsu:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-direct {p1, v0}, Lcom/android/server/wm/OpPowerConsumpStats$cjf;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ear;->zta:Lcom/android/server/wm/OpPowerConsumpStats$cjf;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ear;->you:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ear;->sis:Z

    return-void
.end method

.method private cno()Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ear;->you:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ear;->sis:Z

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ear;->sis:Z

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$ear;->zta:Lcom/android/server/wm/OpPowerConsumpStats$cjf;

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats$cjf;->you(Lcom/android/server/wm/OpPowerConsumpStats$cjf;)V

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$ear;->zta:Lcom/android/server/wm/OpPowerConsumpStats$cjf;

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats$ear;->tsu:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats;->irq(Lcom/android/server/wm/OpPowerConsumpStats;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/wm/OpPowerConsumpStats$cjf;->zta:J

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$ear;->zta:Lcom/android/server/wm/OpPowerConsumpStats$cjf;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/wm/OpPowerConsumpStats$cjf;->sis:J

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$ear;->zta:Lcom/android/server/wm/OpPowerConsumpStats$cjf;

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats$ear;->tsu:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats;->d(Lcom/android/server/wm/OpPowerConsumpStats;)I

    move-result v3

    iput v3, v2, Lcom/android/server/wm/OpPowerConsumpStats$cjf;->rtg:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DozeFragmentTimer startTiming startRelativeTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats$ear;->zta:Lcom/android/server/wm/OpPowerConsumpStats$cjf;

    iget-wide v3, v3, Lcom/android/server/wm/OpPowerConsumpStats$cjf;->zta:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " |realBeginTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats$ear;->zta:Lcom/android/server/wm/OpPowerConsumpStats$cjf;

    iget-wide v3, v3, Lcom/android/server/wm/OpPowerConsumpStats$cjf;->sis:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " |beginPowerLevel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ear;->zta:Lcom/android/server/wm/OpPowerConsumpStats$cjf;

    iget p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$cjf;->rtg:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Y(Ljava/lang/String;)V

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private kth(Ljava/lang/String;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ear;->you:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ear;->sis:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    iput-boolean v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$ear;->sis:Z

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ear;->zta:Lcom/android/server/wm/OpPowerConsumpStats$cjf;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$ear;->tsu:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->irq(Lcom/android/server/wm/OpPowerConsumpStats;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$cjf;->you:J

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ear;->zta:Lcom/android/server/wm/OpPowerConsumpStats$cjf;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$ear;->zta:Lcom/android/server/wm/OpPowerConsumpStats$cjf;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$cjf;->you:J

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats$ear;->zta:Lcom/android/server/wm/OpPowerConsumpStats$cjf;

    iget-wide v4, v4, Lcom/android/server/wm/OpPowerConsumpStats$cjf;->zta:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$cjf;->tsu:J

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ear;->zta:Lcom/android/server/wm/OpPowerConsumpStats$cjf;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$ear;->tsu:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->d(Lcom/android/server/wm/OpPowerConsumpStats;)I

    move-result v2

    iput v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$cjf;->ssp:I

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ear;->zta:Lcom/android/server/wm/OpPowerConsumpStats$cjf;

    iput-object p1, v1, Lcom/android/server/wm/OpPowerConsumpStats$cjf;->cno:Ljava/lang/String;

    new-instance p1, Lcom/android/server/wm/OpPowerConsumpStats$cjf;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ear;->tsu:Lcom/android/server/wm/OpPowerConsumpStats;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$ear;->zta:Lcom/android/server/wm/OpPowerConsumpStats$cjf;

    invoke-direct {p1, v1, v2}, Lcom/android/server/wm/OpPowerConsumpStats$cjf;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Lcom/android/server/wm/OpPowerConsumpStats$cjf;)V

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ear;->tsu:Lcom/android/server/wm/OpPowerConsumpStats;

    iget-object v1, v1, Lcom/android/server/wm/OpPowerConsumpStats;->bud:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DozeFragmentTimer stopTiming relativeEndTime:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ear;->zta:Lcom/android/server/wm/OpPowerConsumpStats$cjf;

    iget-wide v1, v1, Lcom/android/server/wm/OpPowerConsumpStats$cjf;->you:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " |duration:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ear;->zta:Lcom/android/server/wm/OpPowerConsumpStats$cjf;

    iget-wide v1, v1, Lcom/android/server/wm/OpPowerConsumpStats$cjf;->tsu:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " |endPowerLevel:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ear;->zta:Lcom/android/server/wm/OpPowerConsumpStats$cjf;

    iget v1, v1, Lcom/android/server/wm/OpPowerConsumpStats$cjf;->ssp:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |exitReason:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ear;->zta:Lcom/android/server/wm/OpPowerConsumpStats$cjf;

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$cjf;->cno:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Y(Ljava/lang/String;)V

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private rtg()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ear;->you:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ear;->zta:Lcom/android/server/wm/OpPowerConsumpStats$cjf;

    invoke-static {v1}, Lcom/android/server/wm/OpPowerConsumpStats$cjf;->you(Lcom/android/server/wm/OpPowerConsumpStats$cjf;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ear;->sis:Z

    const-string p0, "DozeFragmentTimer clear"

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Y(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic sis(Lcom/android/server/wm/OpPowerConsumpStats$ear;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats$ear;->rtg()V

    return-void
.end method

.method private ssp()Lcom/android/server/wm/OpPowerConsumpStats$cjf;
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ear;->you:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ear;->sis:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/server/wm/OpPowerConsumpStats$cjf;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$ear;->tsu:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-direct {v1, v2}, Lcom/android/server/wm/OpPowerConsumpStats$cjf;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$ear;->zta:Lcom/android/server/wm/OpPowerConsumpStats$cjf;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$cjf;->zta:J

    iput-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$cjf;->zta:J

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$ear;->zta:Lcom/android/server/wm/OpPowerConsumpStats$cjf;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$cjf;->sis:J

    iput-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$cjf;->sis:J

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$ear;->zta:Lcom/android/server/wm/OpPowerConsumpStats$cjf;

    iget v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$cjf;->rtg:I

    iput v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$cjf;->rtg:I

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$ear;->tsu:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->irq(Lcom/android/server/wm/OpPowerConsumpStats;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$cjf;->you:J

    iget-wide v4, v1, Lcom/android/server/wm/OpPowerConsumpStats$cjf;->zta:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$cjf;->tsu:J

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ear;->tsu:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->d(Lcom/android/server/wm/OpPowerConsumpStats;)I

    move-result p0

    iput p0, v1, Lcom/android/server/wm/OpPowerConsumpStats$cjf;->ssp:I

    const-string p0, "StillContinuing"

    iput-object p0, v1, Lcom/android/server/wm/OpPowerConsumpStats$cjf;->cno:Ljava/lang/String;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DozeFragmentTimer getCacheDozeFragment relativeBeginTime:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$cjf;->zta:J

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |relativeEndTime:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$cjf;->you:J

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |duration:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$cjf;->tsu:J

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |realBeginTime:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$cjf;->sis:J

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |beginPowerLevel:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$cjf;->rtg:I

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |endPowerLevel:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$cjf;->ssp:I

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |exitReason:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$cjf;->cno:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Y(Ljava/lang/String;)V

    monitor-exit v0

    return-object v1

    :cond_0
    const-string p0, "DozeFragmentTimer getCacheDozeFragment not Timing , return null"

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Y(Ljava/lang/String;)V

    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic tsu(Lcom/android/server/wm/OpPowerConsumpStats$ear;)Lcom/android/server/wm/OpPowerConsumpStats$cjf;
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats$ear;->ssp()Lcom/android/server/wm/OpPowerConsumpStats$cjf;

    move-result-object p0

    return-object p0
.end method

.method static synthetic you(Lcom/android/server/wm/OpPowerConsumpStats$ear;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats$ear;->kth(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats$ear;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats$ear;->cno()Z

    move-result p0

    return p0
.end method
