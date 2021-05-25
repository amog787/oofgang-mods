.class Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBackgroundFrozen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ssp"
.end annotation


# instance fields
.field final synthetic cno:Lcom/android/server/am/OnePlusBackgroundFrozen;

.field rtg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field sis:J

.field ssp:Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

.field tsu:Ljava/lang/String;

.field you:Ljava/lang/String;

.field zta:I


# direct methods
.method private constructor <init>(Lcom/android/server/am/OnePlusBackgroundFrozen;Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;->cno:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;->zta:I

    const-string p1, ""

    iput-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;->you:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;->sis:J

    iput-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;->tsu:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;->rtg:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;->ssp:Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    iget p1, p2, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->zta:I

    iput p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;->zta:I

    iget-object p1, p2, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->you:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;->you:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;->ssp:Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/OnePlusBackgroundFrozen;Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;Lcom/android/server/am/OnePlusBackgroundFrozen$zta;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;-><init>(Lcom/android/server/am/OnePlusBackgroundFrozen;Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;)V

    return-void
.end method

.method private bio()V
    .locals 9

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;->sis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-wide/16 v4, 0x3e8

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;->ssp:Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    invoke-static {v0}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->o(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    div-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;->sis:J

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;->cno:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->A(Lcom/android/server/am/OnePlusBackgroundFrozen;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;->tsu:Ljava/lang/String;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;->rtg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;->sis:J

    const-wide/16 v6, -0x1

    cmp-long v8, v0, v6

    if-nez v8, :cond_1

    return-void

    :cond_1
    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    div-long/2addr v0, v4

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;->sis:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x5a0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;->cno:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->A(Lcom/android/server/am/OnePlusBackgroundFrozen;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " m1:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;->ssp:Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    iget-wide v2, v0, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->bud:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " switch to -1 for frozenHistory"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;->ssp(Ljava/lang/String;)V

    iput-wide v6, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;->sis:J

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;->kth()V

    :cond_2
    return-void
.end method

.method private cno()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;->sis:J

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;->tsu:Ljava/lang/String;

    return-void
.end method

.method private igw(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;->you:Ljava/lang/String;

    return-void
.end method

.method private kth()V
    .locals 8

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;->sis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;->ssp:Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    iget-boolean v1, v0, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->tsu:Z

    if-eqz v1, :cond_1

    iget-boolean v0, v0, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->rtg:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-wide v4, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;->sis:J

    sub-long/2addr v0, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# FrozenHistory # "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;->zta:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>begin"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5, v4}, Lcom/android/server/am/OnePlusBackgroundFrozen;->z(ILjava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# FrozenHistory # uid = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;->zta:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " pkg = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;->you:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " init:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;->tsu:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " initialTime:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;->sis:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " duration:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " state:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;->ssp:Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    invoke-static {v0}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->o(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;)Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->z(ILjava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;->sis:J

    const-wide/16 v6, -0x1

    cmp-long v0, v0, v6

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    div-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;->sis:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x5a0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;->ssp:Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    const-string v1, "FrozenHistory"

    invoke-static {v0, v5, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->p(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;ZLjava/lang/String;)V

    :cond_3
    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;->rtg:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# FrozenHistory # i = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " his = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->z(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# FrozenHistory # "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;->zta:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<end"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->z(ILjava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic rtg(Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;->igw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic sis(Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;->kth()V

    return-void
.end method

.method private ssp(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;->rtg:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic tsu(Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;->cno()V

    return-void
.end method

.method static synthetic you(Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;->bio()V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;->ssp(Ljava/lang/String;)V

    return-void
.end method
