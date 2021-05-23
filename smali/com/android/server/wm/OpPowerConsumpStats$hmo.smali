.class Lcom/android/server/wm/OpPowerConsumpStats$hmo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OpPowerConsumpStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "hmo"
.end annotation


# instance fields
.field bio:Z

.field cno:Lcom/android/server/wm/OpPowerConsumpStats$StatusType;

.field volatile dma:I

.field private gck:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/OpPowerConsumpStats$vdb;",
            ">;"
        }
    .end annotation
.end field

.field igw:J

.field kth:Z

.field final synthetic qbh:Lcom/android/server/wm/OpPowerConsumpStats;

.field rtg:J

.field sis:I

.field ssp:Z

.field tsu:I

.field wtn:Z

.field you:I

.field volatile ywr:J

.field zta:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->qbh:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->ssp:Z

    sget-object v1, Lcom/android/server/wm/OpPowerConsumpStats$StatusType;->zta:Lcom/android/server/wm/OpPowerConsumpStats$StatusType;

    iput-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->cno:Lcom/android/server/wm/OpPowerConsumpStats$StatusType;

    iput-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->kth:Z

    iput-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->bio:Z

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->igw:J

    iput-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->wtn:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->gck:Landroid/util/SparseArray;

    iput-object p2, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->zta:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/android/server/wm/OpPowerConsumpStats;->T(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->you:I

    sget-object p1, Lcom/android/server/wm/OpPowerConsumpStats$StatusType;->you:Lcom/android/server/wm/OpPowerConsumpStats$StatusType;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->gck(Lcom/android/server/wm/OpPowerConsumpStats$StatusType;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Init new PkgStat for pkg: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->zta:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->ssp:Z

    if-eqz p2, :cond_0

    const-string p2, "Top"

    goto :goto_0

    :cond_0
    const-string p2, "Bg"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "), versionCode: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->you:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->ear(Ljava/lang/String;)V

    return-void
.end method

.method private bio(Lcom/android/server/wm/OpPowerConsumpStats$SettleType;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->qbh:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->o(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result v0

    const-string v1, " ["

    const-string v2, "] "

    const-string v3, "[GapTouch] ["

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->qbh:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/android/server/wm/OpPowerConsumpStats;->dma(Lcom/android/server/wm/OpPowerConsumpStats;J)J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->zta:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->qbh:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v1}, Lcom/android/server/wm/OpPowerConsumpStats;->gck(Lcom/android/server/wm/OpPowerConsumpStats;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "] End"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->ear(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->qbh:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->igw(Lcom/android/server/wm/OpPowerConsumpStats;)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->qbh:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->gck(Lcom/android/server/wm/OpPowerConsumpStats;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->qbh:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->igw(Lcom/android/server/wm/OpPowerConsumpStats;)J

    move-result-wide v4

    sub-long/2addr v0, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->qbh:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats;->igw(Lcom/android/server/wm/OpPowerConsumpStats;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->qbh:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats;->gck(Lcom/android/server/wm/OpPowerConsumpStats;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "], diff= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->ear(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->qbh:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->ywr(Lcom/android/server/wm/OpPowerConsumpStats;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->tsu(Lcom/android/server/wm/OpPowerConsumpStats$SettleType;J)V

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->qbh:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->gck(Lcom/android/server/wm/OpPowerConsumpStats;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/server/wm/OpPowerConsumpStats;->wtn(Lcom/android/server/wm/OpPowerConsumpStats;J)J

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->zta:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->qbh:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->gck(Lcom/android/server/wm/OpPowerConsumpStats;)J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "] End skip, due to base timer is not ready"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->ear(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private igw(Z)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->cno()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->kth:Z

    :goto_0
    return-void
.end method

.method static synthetic sis(Lcom/android/server/wm/OpPowerConsumpStats$hmo;Lcom/android/server/wm/OpPowerConsumpStats$SettleType;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->tsu(Lcom/android/server/wm/OpPowerConsumpStats$SettleType;J)V

    return-void
.end method

.method private ssp()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Lcom/android/server/wm/OpPowerConsumpStats;->bio()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->gck:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/OpPowerConsumpStats$vdb;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/OpPowerConsumpStats$vdb;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized tsu(Lcom/android/server/wm/OpPowerConsumpStats$SettleType;J)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->dma:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->dma:I

    iget-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->ywr:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->ywr:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[GapTouch] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "] come out a valid GapTouch sample: ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->zta:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->you:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->dma:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->qbh:Lcom/android/server/wm/OpPowerConsumpStats;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->ywr:J

    invoke-static {p1, v1, v2}, Lcom/android/server/wm/OpPowerConsumpStats;->rtg(Lcom/android/server/wm/OpPowerConsumpStats;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats;->ear(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private wtn(Z)V
    .locals 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->qbh:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats;->a(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result p1

    const-string v1, " ["

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->qbh:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/android/server/wm/OpPowerConsumpStats;->wtn(Lcom/android/server/wm/OpPowerConsumpStats;J)J

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[GapTouch] "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->zta:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->qbh:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->igw(Lcom/android/server/wm/OpPowerConsumpStats;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "] Start"

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[GapTouch] oops, screen is off, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->zta:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->qbh:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->igw(Lcom/android/server/wm/OpPowerConsumpStats;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "] Skip Start"

    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->ear(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iput-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->bio:Z

    :goto_1
    return-void
.end method

.method static synthetic you(Lcom/android/server/wm/OpPowerConsumpStats$hmo;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->wtn(Z)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats$hmo;Lcom/android/server/wm/OpPowerConsumpStats$SettleType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->bio(Lcom/android/server/wm/OpPowerConsumpStats$SettleType;)V

    return-void
.end method


# virtual methods
.method public cno()V
    .locals 5

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->sis:I

    iget-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->wtn:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->wtn:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->kth:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->igw:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Cap] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->zta:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->igw:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "] Start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->ear(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->qbh:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->W(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result v2

    if-ne v2, v1, :cond_2

    const-string v1, "/sys/class/power_supply/bms/remaining_capacity"

    invoke-static {v1, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->J1(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    :goto_0
    iput v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->sis:I

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Cap] [Start] remainCap is abnormal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPCS"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->qbh:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->qbh(Lcom/android/server/wm/OpPowerConsumpStats;)I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Cap] [Start] use mLastCapRemaining: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->qbh:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->qbh(Lcom/android/server/wm/OpPowerConsumpStats;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " instead."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->qbh:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->qbh(Lcom/android/server/wm/OpPowerConsumpStats;)I

    move-result v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "oops, why pkg "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->zta:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " repeat topping ?"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->ear(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method dma(Lcom/android/server/wm/OpPowerConsumpStats$StatusType;)V
    .locals 1

    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats$StatusType;->you:Lcom/android/server/wm/OpPowerConsumpStats$StatusType;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->ssp:Z

    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->qbh:Lcom/android/server/wm/OpPowerConsumpStats;

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->zta:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->C(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[GapTouch] [Top] Update mCurGapTouchPkgName to pkg: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->qbh:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->B(Lcom/android/server/wm/OpPowerConsumpStats;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->ear(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->ssp:Z

    :goto_0
    return-void
.end method

.method gck(Lcom/android/server/wm/OpPowerConsumpStats$StatusType;)V
    .locals 1

    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats$StatusType;->zta:Lcom/android/server/wm/OpPowerConsumpStats$StatusType;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->kth:Z

    iput-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->bio:Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->cno:Lcom/android/server/wm/OpPowerConsumpStats$StatusType;

    if-eq v0, p1, :cond_3

    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats$StatusType;->you:Lcom/android/server/wm/OpPowerConsumpStats$StatusType;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->qbh:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->o(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->qbh:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->vdw(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->igw(Z)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->qbh:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->o(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->wtn(Z)V

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats$SettleType;->zta:Lcom/android/server/wm/OpPowerConsumpStats$SettleType;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->kth(Lcom/android/server/wm/OpPowerConsumpStats$SettleType;)Lcom/android/server/wm/OpPowerConsumpStats$vdb;

    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats$SettleType;->zta:Lcom/android/server/wm/OpPowerConsumpStats$SettleType;

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->bio(Lcom/android/server/wm/OpPowerConsumpStats$SettleType;)V

    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->cno:Lcom/android/server/wm/OpPowerConsumpStats$StatusType;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->dma(Lcom/android/server/wm/OpPowerConsumpStats$StatusType;)V

    return-void
.end method

.method public kth(Lcom/android/server/wm/OpPowerConsumpStats$SettleType;)Lcom/android/server/wm/OpPowerConsumpStats$vdb;
    .locals 14

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->wtn:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats$SettleType;->zta:Lcom/android/server/wm/OpPowerConsumpStats$SettleType;

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    iput-boolean v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->wtn:Z

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->igw:J

    sub-long v11, v3, v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Cap] ["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "] "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->zta:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "] End"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->ear(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->qbh:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->W(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_9

    const/4 v0, -0x1

    const-string v4, "/sys/class/power_supply/bms/remaining_capacity"

    invoke-static {v4, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->J1(Ljava/lang/String;I)I

    move-result v0

    const-string v4, "OPCS"

    if-gtz v0, :cond_1

    iget-object v7, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->qbh:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v7}, Lcom/android/server/wm/OpPowerConsumpStats;->qbh(Lcom/android/server/wm/OpPowerConsumpStats;)I

    move-result v7

    if-lez v7, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Cap] [End] use mLastCapRemaining: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->qbh:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v7}, Lcom/android/server/wm/OpPowerConsumpStats;->qbh(Lcom/android/server/wm/OpPowerConsumpStats;)I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " instead."

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->qbh:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->qbh(Lcom/android/server/wm/OpPowerConsumpStats;)I

    move-result v0

    :cond_1
    const-string v7, "]"

    const-string v8, " "

    if-lez v0, :cond_7

    iget v9, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->sis:I

    if-lez v9, :cond_7

    sub-int/2addr v9, v0

    invoke-static {}, Lcom/android/server/wm/OpPowerConsumpStats;->oif()Z

    move-result v4

    if-eqz v4, :cond_2

    if-gez v9, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[Cap] oops, capDrop is negative: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->sis:I

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "], still relief it"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wm/OpPowerConsumpStats;->ear(Ljava/lang/String;)V

    move v13, v2

    goto :goto_0

    :cond_2
    move v13, v9

    :goto_0
    if-gez v13, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Cap] oops, why capDrop is negative: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->sis:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_3
    invoke-static {}, Landroid/os/OpBatteryStatsInjector;->getScreenBrightness()I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "] come out a valid capacity sample: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->zta:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->you:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->qbh:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v6}, Lcom/android/server/wm/OpPowerConsumpStats;->K(Lcom/android/server/wm/OpPowerConsumpStats;)Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->sis:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]= "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->qbh:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0, v11, v12}, Lcom/android/server/wm/OpPowerConsumpStats;->rtg(Lcom/android/server/wm/OpPowerConsumpStats;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->ear(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats$cno;->tsu:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v3, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    goto/16 :goto_2

    :cond_4
    new-instance v1, Lcom/android/server/wm/OpPowerConsumpStats$vdb;

    iget-object v8, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->qbh:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v8}, Lcom/android/server/wm/OpPowerConsumpStats;->K(Lcom/android/server/wm/OpPowerConsumpStats;)Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    move-result-object v10

    move-object v7, v1

    move v9, v2

    invoke-direct/range {v7 .. v13}, Lcom/android/server/wm/OpPowerConsumpStats$vdb;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;ILcom/android/server/wm/OpPowerConsumpStats$NetworkType;JI)V

    goto/16 :goto_2

    :cond_5
    iget p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->tsu:I

    add-int/2addr p1, v13

    iput p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->tsu:I

    iget-wide v3, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->rtg:J

    add-long/2addr v3, v11

    iput-wide v3, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->rtg:J

    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->qbh:Lcom/android/server/wm/OpPowerConsumpStats;

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->gck:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats;->K(Lcom/android/server/wm/OpPowerConsumpStats;)Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    move-result-object v3

    invoke-static {p1, v0, v2, v3}, Lcom/android/server/wm/OpPowerConsumpStats;->cno(Lcom/android/server/wm/OpPowerConsumpStats;Landroid/util/SparseArray;ILcom/android/server/wm/OpPowerConsumpStats$NetworkType;)Lcom/android/server/wm/OpPowerConsumpStats$vdb;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1, v11, v12, v13}, Lcom/android/server/wm/OpPowerConsumpStats$vdb;->cno(JI)V

    goto :goto_2

    :cond_6
    new-instance p1, Lcom/android/server/wm/OpPowerConsumpStats$vdb;

    iget-object v8, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->qbh:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v8}, Lcom/android/server/wm/OpPowerConsumpStats;->K(Lcom/android/server/wm/OpPowerConsumpStats;)Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    move-result-object v10

    move-object v7, p1

    move v9, v2

    invoke-direct/range {v7 .. v13}, Lcom/android/server/wm/OpPowerConsumpStats$vdb;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;ILcom/android/server/wm/OpPowerConsumpStats$NetworkType;JI)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->gck:Landroid/util/SparseArray;

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->qbh:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->K(Lcom/android/server/wm/OpPowerConsumpStats;)Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/server/wm/OpPowerConsumpStats;->kth(Lcom/android/server/wm/OpPowerConsumpStats;ILcom/android/server/wm/OpPowerConsumpStats$NetworkType;)I

    move-result p0

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Cap] [End] remainCap is abnormal: ["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->sis:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "oops, why pkg "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->zta:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " repeat pausing ?"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->ear(Ljava/lang/String;)V

    :cond_9
    :goto_2
    return-object v1
.end method

.method public rtg(Lcom/android/server/wm/OpPowerConsumpStats$ugm;)V
    .locals 10

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/android/server/wm/OpPowerConsumpStats;->bio()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->gck:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/OpPowerConsumpStats$vdb;

    if-eqz v1, :cond_1

    iget-object v2, p1, Lcom/android/server/wm/OpPowerConsumpStats$ugm;->sis:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/OpPowerConsumpStats$vdb;

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/server/wm/OpPowerConsumpStats$vdb;

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->qbh:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v1}, Lcom/android/server/wm/OpPowerConsumpStats$vdb;->zta(Lcom/android/server/wm/OpPowerConsumpStats$vdb;)I

    move-result v5

    invoke-static {v1}, Lcom/android/server/wm/OpPowerConsumpStats$vdb;->you(Lcom/android/server/wm/OpPowerConsumpStats$vdb;)Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    move-result-object v6

    invoke-static {v1}, Lcom/android/server/wm/OpPowerConsumpStats$vdb;->sis(Lcom/android/server/wm/OpPowerConsumpStats$vdb;)J

    move-result-wide v7

    invoke-static {v1}, Lcom/android/server/wm/OpPowerConsumpStats$vdb;->rtg(Lcom/android/server/wm/OpPowerConsumpStats$vdb;)I

    move-result v9

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/android/server/wm/OpPowerConsumpStats$vdb;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;ILcom/android/server/wm/OpPowerConsumpStats$NetworkType;JI)V

    iget-object v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$ugm;->sis:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_0
    invoke-static {v1}, Lcom/android/server/wm/OpPowerConsumpStats$vdb;->sis(Lcom/android/server/wm/OpPowerConsumpStats$vdb;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/server/wm/OpPowerConsumpStats$vdb;->tsu(Lcom/android/server/wm/OpPowerConsumpStats$vdb;J)J

    invoke-static {v1}, Lcom/android/server/wm/OpPowerConsumpStats$vdb;->rtg(Lcom/android/server/wm/OpPowerConsumpStats$vdb;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/wm/OpPowerConsumpStats$vdb;->ssp(Lcom/android/server/wm/OpPowerConsumpStats$vdb;I)I

    :goto_1
    iget-wide v2, p1, Lcom/android/server/wm/OpPowerConsumpStats$ugm;->rtg:J

    invoke-static {v1}, Lcom/android/server/wm/OpPowerConsumpStats$vdb;->sis(Lcom/android/server/wm/OpPowerConsumpStats$vdb;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/server/wm/OpPowerConsumpStats$ugm;->rtg:J

    iget v2, p1, Lcom/android/server/wm/OpPowerConsumpStats$ugm;->tsu:I

    invoke-static {v1}, Lcom/android/server/wm/OpPowerConsumpStats$vdb;->rtg(Lcom/android/server/wm/OpPowerConsumpStats$vdb;)I

    move-result v1

    add-int/2addr v2, v1

    iput v2, p1, Lcom/android/server/wm/OpPowerConsumpStats$ugm;->tsu:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Cap] # PkgStat ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->zta:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->you:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], [State: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->cno:Lcom/android/server/wm/OpPowerConsumpStats$StatusType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->tsu:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->qbh:Lcom/android/server/wm/OpPowerConsumpStats;

    iget-wide v3, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->rtg:J

    invoke-static {v2, v3, v4}, Lcom/android/server/wm/OpPowerConsumpStats;->rtg(Lcom/android/server/wm/OpPowerConsumpStats;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], GapTouch ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->bio:Z

    if-eqz v2, :cond_0

    const-string v2, "pending "

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->dma:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->qbh:Lcom/android/server/wm/OpPowerConsumpStats;

    iget-wide v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->ywr:J

    invoke-static {v1, v2, v3}, Lcom/android/server/wm/OpPowerConsumpStats;->rtg(Lcom/android/server/wm/OpPowerConsumpStats;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], [Timing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->wtn:Z

    if-eqz v1, :cond_1

    const-string v1, "Y"

    goto :goto_1

    :cond_1
    const-string v1, "N"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->kth:Z

    if-eqz v1, :cond_2

    const-string v1, "pending\n"

    goto :goto_2

    :cond_2
    const-string v1, "\n"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->ssp()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method ywr(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update pkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->zta:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " version from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->you:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->ear(Ljava/lang/String;)V

    iput p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->you:I

    return-void
.end method
