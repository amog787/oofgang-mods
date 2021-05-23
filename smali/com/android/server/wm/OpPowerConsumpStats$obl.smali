.class Lcom/android/server/wm/OpPowerConsumpStats$obl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OpPowerConsumpStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "obl"
.end annotation


# instance fields
.field rtg:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

.field sis:Z

.field final synthetic ssp:Lcom/android/server/wm/OpPowerConsumpStats;

.field tsu:Z

.field you:Ljava/lang/Object;

.field zta:Lcom/android/server/wm/OpPowerConsumpStats$zgw;


# direct methods
.method constructor <init>(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->ssp:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/android/server/wm/OpPowerConsumpStats$zgw;

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->ssp:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-direct {p1, v0}, Lcom/android/server/wm/OpPowerConsumpStats$zgw;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->zta:Lcom/android/server/wm/OpPowerConsumpStats$zgw;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->you:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->sis:Z

    iput-boolean p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->tsu:Z

    new-instance p1, Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->ssp:Lcom/android/server/wm/OpPowerConsumpStats;

    const-string v1, "chargeFragmentTimerScreenOn"

    invoke-direct {p1, v0, v1}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->rtg:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    return-void
.end method

.method private bio()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->you:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->zta:Lcom/android/server/wm/OpPowerConsumpStats$zgw;

    invoke-static {v1}, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->you(Lcom/android/server/wm/OpPowerConsumpStats$zgw;)V

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->rtg:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    invoke-static {v1}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->tsu(Lcom/android/server/wm/OpPowerConsumpStats$lqr;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->tsu:Z

    iput-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->sis:Z

    const-string p0, "ChargeFragmentTimer clear"

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

.method static synthetic cno(Lcom/android/server/wm/OpPowerConsumpStats$obl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats$obl;->bio()V

    return-void
.end method

.method private dma()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->you:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->sis:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->rtg:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->sis(Lcom/android/server/wm/OpPowerConsumpStats$lqr;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private gck(I)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->you:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->sis:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->sis:Z

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->zta:Lcom/android/server/wm/OpPowerConsumpStats$zgw;

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->you(Lcom/android/server/wm/OpPowerConsumpStats$zgw;)V

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->rtg:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->tsu(Lcom/android/server/wm/OpPowerConsumpStats$lqr;)V

    iput-boolean v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->tsu:Z

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->zta:Lcom/android/server/wm/OpPowerConsumpStats$zgw;

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->ssp:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats;->irq(Lcom/android/server/wm/OpPowerConsumpStats;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->zta:J

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->zta:Lcom/android/server/wm/OpPowerConsumpStats$zgw;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->sis:J

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->zta:Lcom/android/server/wm/OpPowerConsumpStats$zgw;

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->ssp:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats;->d(Lcom/android/server/wm/OpPowerConsumpStats;)I

    move-result v3

    iput v3, v2, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->tsu:I

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->zta:Lcom/android/server/wm/OpPowerConsumpStats$zgw;

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->ssp:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v3, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->b0(Lcom/android/server/wm/OpPowerConsumpStats;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->bio:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->ssp:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats;->a(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->rtg:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->zta:Lcom/android/server/wm/OpPowerConsumpStats$zgw;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->zta:J

    invoke-static {p1, v2, v3}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->you(Lcom/android/server/wm/OpPowerConsumpStats$lqr;J)Z

    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->ssp:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats;->d(Lcom/android/server/wm/OpPowerConsumpStats;)I

    move-result p1

    const/16 v2, 0x64

    if-ne p1, v2, :cond_2

    iput-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->tsu:Z

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChargeFragmentTimer startTiming startRelativeTime:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->zta:Lcom/android/server/wm/OpPowerConsumpStats$zgw;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->zta:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |realBeginTime:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->zta:Lcom/android/server/wm/OpPowerConsumpStats$zgw;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->sis:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |beginPowerLevel:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->zta:Lcom/android/server/wm/OpPowerConsumpStats$zgw;

    iget v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->tsu:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |plugType:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->zta:Lcom/android/server/wm/OpPowerConsumpStats$zgw;

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->bio:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

.method private igw()Lcom/android/server/wm/OpPowerConsumpStats$zgw;
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->you:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->sis:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/server/wm/OpPowerConsumpStats$zgw;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->ssp:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-direct {v1, v2}, Lcom/android/server/wm/OpPowerConsumpStats$zgw;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->zta:Lcom/android/server/wm/OpPowerConsumpStats$zgw;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->zta:J

    iput-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->zta:J

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->ssp:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->irq(Lcom/android/server/wm/OpPowerConsumpStats;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->you:J

    iget-wide v4, v1, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->zta:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->ssp:J

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->zta:Lcom/android/server/wm/OpPowerConsumpStats$zgw;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->sis:J

    iput-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->sis:J

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->zta:Lcom/android/server/wm/OpPowerConsumpStats$zgw;

    iget v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->tsu:I

    iput v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->tsu:I

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->ssp:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->d(Lcom/android/server/wm/OpPowerConsumpStats;)I

    move-result v2

    iput v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->rtg:I

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->zta:Lcom/android/server/wm/OpPowerConsumpStats$zgw;

    iget-object v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->bio:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->bio:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->zta:Lcom/android/server/wm/OpPowerConsumpStats$zgw;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->kth:J

    iput-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->kth:J

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->rtg:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    iget-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->you:J

    invoke-static {p0, v2, v3}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->rtg(Lcom/android/server/wm/OpPowerConsumpStats$lqr;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->cno:J

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChargeFragmentTimer getCacheChargeFragment relativeBeginTime:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->zta:J

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |relativeEndTime:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->you:J

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |duration:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->ssp:J

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |realBeginTime:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->sis:J

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |beginPowerLevel:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->tsu:I

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |endPowerLevel:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->rtg:I

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |plugType:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->bio:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |firstFullTimeToRelativeBeginTime:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->kth:J

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |screenOnDuration:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->cno:J

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Y(Ljava/lang/String;)V

    monitor-exit v0

    return-object v1

    :cond_0
    const-string p0, "ChargeFragmentTimer getCacheChargeFragment not Timing , return null"

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

.method static synthetic kth(Lcom/android/server/wm/OpPowerConsumpStats$obl;)Lcom/android/server/wm/OpPowerConsumpStats$zgw;
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats$obl;->igw()Lcom/android/server/wm/OpPowerConsumpStats$zgw;

    move-result-object p0

    return-object p0
.end method

.method private oif()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->you:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->sis:Z

    if-nez v1, :cond_0

    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->zta:Lcom/android/server/wm/OpPowerConsumpStats$zgw;

    const-string v1, "FASTCHARGE"

    iput-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->bio:Ljava/lang/String;

    const-string p0, "ChargeFragmentTimer updatePlugType plugType:FASTCHARGE"

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

.method private qbh()Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->you:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->sis:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->tsu:Z

    if-eqz v1, :cond_1

    monitor-exit v0

    return v2

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->tsu:Z

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->zta:Lcom/android/server/wm/OpPowerConsumpStats$zgw;

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->ssp:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats;->irq(Lcom/android/server/wm/OpPowerConsumpStats;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->zta:Lcom/android/server/wm/OpPowerConsumpStats$zgw;

    iget-wide v5, v5, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->zta:J

    sub-long/2addr v3, v5

    iput-wide v3, v2, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->kth:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChargeFragmentTimer updateFirstFullTime firstFullTimeToRelativeBeginTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->zta:Lcom/android/server/wm/OpPowerConsumpStats$zgw;

    iget-wide v3, p0, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->kth:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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

.method static synthetic rtg(Lcom/android/server/wm/OpPowerConsumpStats$obl;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats$obl;->oif()Z

    move-result p0

    return p0
.end method

.method static synthetic sis(Lcom/android/server/wm/OpPowerConsumpStats$obl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats$obl;->dma()V

    return-void
.end method

.method static synthetic ssp(Lcom/android/server/wm/OpPowerConsumpStats$obl;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats$obl;->qbh()Z

    move-result p0

    return p0
.end method

.method static synthetic tsu(Lcom/android/server/wm/OpPowerConsumpStats$obl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats$obl;->wtn()V

    return-void
.end method

.method private wtn()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->you:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->sis:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->rtg:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->zta(Lcom/android/server/wm/OpPowerConsumpStats$lqr;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic you(Lcom/android/server/wm/OpPowerConsumpStats$obl;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats$obl;->ywr()Z

    move-result p0

    return p0
.end method

.method private ywr()Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->you:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->sis:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    iput-boolean v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->sis:Z

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->zta:Lcom/android/server/wm/OpPowerConsumpStats$zgw;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->ssp:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->irq(Lcom/android/server/wm/OpPowerConsumpStats;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->you:J

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->zta:Lcom/android/server/wm/OpPowerConsumpStats$zgw;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->zta:Lcom/android/server/wm/OpPowerConsumpStats$zgw;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->you:J

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->zta:Lcom/android/server/wm/OpPowerConsumpStats$zgw;

    iget-wide v4, v4, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->zta:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->ssp:J

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->zta:Lcom/android/server/wm/OpPowerConsumpStats$zgw;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->ssp:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->d(Lcom/android/server/wm/OpPowerConsumpStats;)I

    move-result v2

    iput v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->rtg:I

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->zta:Lcom/android/server/wm/OpPowerConsumpStats$zgw;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->rtg:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->zta:Lcom/android/server/wm/OpPowerConsumpStats$zgw;

    iget-wide v3, v3, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->you:J

    invoke-static {v2, v3, v4}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->rtg(Lcom/android/server/wm/OpPowerConsumpStats$lqr;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->cno:J

    new-instance v1, Lcom/android/server/wm/OpPowerConsumpStats$zgw;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->ssp:Lcom/android/server/wm/OpPowerConsumpStats;

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->zta:Lcom/android/server/wm/OpPowerConsumpStats$zgw;

    invoke-direct {v1, v2, v3}, Lcom/android/server/wm/OpPowerConsumpStats$zgw;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Lcom/android/server/wm/OpPowerConsumpStats$zgw;)V

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->ssp:Lcom/android/server/wm/OpPowerConsumpStats;

    iget-object v2, v2, Lcom/android/server/wm/OpPowerConsumpStats;->les:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChargeFragmentTimer stopTiming relativeEndTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->zta:Lcom/android/server/wm/OpPowerConsumpStats$zgw;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->you:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |duration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->zta:Lcom/android/server/wm/OpPowerConsumpStats$zgw;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->ssp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |endPowerLevel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->zta:Lcom/android/server/wm/OpPowerConsumpStats$zgw;

    iget v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->rtg:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |screenOnDuration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$obl;->zta:Lcom/android/server/wm/OpPowerConsumpStats$zgw;

    iget-wide v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->cno:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats$obl;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats$obl;->gck(I)Z

    move-result p0

    return p0
.end method
