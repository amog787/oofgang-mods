.class Lcom/android/server/wm/OpPowerConsumpStats$bvj;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OpPowerConsumpStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "bvj"
.end annotation


# instance fields
.field final synthetic cno:Lcom/android/server/wm/OpPowerConsumpStats;

.field rtg:Z

.field sis:D

.field ssp:Ljava/lang/Object;

.field tsu:Ljava/lang/String;

.field you:D

.field zta:D


# direct methods
.method constructor <init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->cno:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->zta:D

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->you:D

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->sis:D

    const-string p1, ""

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->tsu:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->rtg:Z

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->ssp:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->tsu:Ljava/lang/String;

    return-void
.end method

.method private bio()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->ssp:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->rtg:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->rtg:Z

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->cno:Lcom/android/server/wm/OpPowerConsumpStats;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->tsu:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " stopCount"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wm/OpPowerConsumpStats;->g(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)D

    move-result-wide v1

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_2

    iget-wide v5, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->you:D

    cmpl-double v5, v1, v5

    if-lez v5, :cond_1

    goto :goto_1

    :cond_1
    iget-wide v3, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->zta:D

    iget-wide v5, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->you:D

    :goto_0
    sub-double/2addr v5, v1

    add-double/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->zta:D

    goto :goto_2

    :cond_2
    :goto_1
    const-string v5, "OPCS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AccurateCounter stopCount err, tag:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->tsu:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " cur:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, " lastLevel:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->you:D

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, " mLastAccurateLevel:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->cno:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v7}, Lcom/android/server/wm/OpPowerConsumpStats;->h(Lcom/android/server/wm/OpPowerConsumpStats;)D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->cno:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v5}, Lcom/android/server/wm/OpPowerConsumpStats;->h(Lcom/android/server/wm/OpPowerConsumpStats;)D

    move-result-wide v5

    cmpl-double v3, v5, v3

    if-eqz v3, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->cno:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v1}, Lcom/android/server/wm/OpPowerConsumpStats;->h(Lcom/android/server/wm/OpPowerConsumpStats;)D

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->you:D

    cmpl-double v3, v3, v1

    if-lez v3, :cond_3

    iget-wide v3, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->zta:D

    iget-wide v5, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->you:D

    goto :goto_0

    :cond_3
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AccurateCounter stopCount tag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->tsu:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " |cur:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " |lastLevel:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->you:D

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " |mLastAccurateLevel:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->cno:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v1}, Lcom/android/server/wm/OpPowerConsumpStats;->h(Lcom/android/server/wm/OpPowerConsumpStats;)D

    move-result-wide v1

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " |beginLevel:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->sis:D

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " |cumulativeCount:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->zta:D

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/OpPowerConsumpStats;->Y(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->you:D

    iput-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->sis:D

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private cno()D
    .locals 9

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->ssp:Ljava/lang/Object;

    monitor-enter v0

    const-wide/16 v1, 0x0

    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->rtg:Z

    if-eqz v3, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->cno:Lcom/android/server/wm/OpPowerConsumpStats;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->tsu:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " getCumulativeCount"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wm/OpPowerConsumpStats;->g(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)D

    move-result-wide v1

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_1

    iget-wide v5, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->you:D

    cmpl-double v5, v1, v5

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v3, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->zta:D

    iget-wide v5, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->you:D

    sub-double/2addr v5, v1

    add-double/2addr v3, v5

    goto :goto_1

    :cond_1
    :goto_0
    const-string v5, "OPCS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AccurateCounter getCumulativeCount err, tag:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->tsu:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " cur:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, " lastLevel:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->you:D

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->cno:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v5}, Lcom/android/server/wm/OpPowerConsumpStats;->h(Lcom/android/server/wm/OpPowerConsumpStats;)D

    move-result-wide v5

    cmpl-double v3, v5, v3

    if-eqz v3, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->cno:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v1}, Lcom/android/server/wm/OpPowerConsumpStats;->h(Lcom/android/server/wm/OpPowerConsumpStats;)D

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->you:D

    cmpl-double v3, v3, v1

    :cond_2
    iget-wide v3, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->zta:D

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AccurateCounter getCumulativeCount tag:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->tsu:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " |isTiming:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->rtg:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " |cur:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " |lastLevel:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->you:D

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " |mLastAccurateLevel:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->cno:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v1}, Lcom/android/server/wm/OpPowerConsumpStats;->h(Lcom/android/server/wm/OpPowerConsumpStats;)D

    move-result-wide v1

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " |beginLevel:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->sis:D

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " |cumulativeCount:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->zta:D

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Y(Ljava/lang/String;)V

    monitor-exit v0

    return-wide v3

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private igw(D)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->ssp:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->rtg:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    cmpl-double v1, p1, v1

    if-nez v1, :cond_1

    const-string v1, "OPCS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AccurateCounter updateCount err, tag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->tsu:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " cur:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, " lastLevel:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->you:D

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_1
    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->you:D

    cmpg-double v1, p1, v1

    if-gtz v1, :cond_2

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->zta:D

    iget-wide v3, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->you:D

    sub-double/2addr v3, p1

    add-double/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->zta:D

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccurateCounter updateCount tag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->tsu:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |cur:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " |lastLevel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->you:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " |mLastAccurateLevel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->cno:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->h(Lcom/android/server/wm/OpPowerConsumpStats;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " |beginLevel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->sis:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " |cumulativeCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->zta:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/OpPowerConsumpStats;->Y(Ljava/lang/String;)V

    iput-wide p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->you:D

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private kth()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->ssp:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->rtg:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->rtg:Z

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->cno:Lcom/android/server/wm/OpPowerConsumpStats;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->tsu:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " startCount"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wm/OpPowerConsumpStats;->g(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)D

    move-result-wide v1

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_1

    const-string v5, "OPCS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AccurateCounter startCount err, tag:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->tsu:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " mLastAccurateLevel:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->cno:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v7}, Lcom/android/server/wm/OpPowerConsumpStats;->h(Lcom/android/server/wm/OpPowerConsumpStats;)D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->cno:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v5}, Lcom/android/server/wm/OpPowerConsumpStats;->h(Lcom/android/server/wm/OpPowerConsumpStats;)D

    move-result-wide v5

    cmpl-double v3, v5, v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->cno:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats;->h(Lcom/android/server/wm/OpPowerConsumpStats;)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->you:D

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->cno:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats;->h(Lcom/android/server/wm/OpPowerConsumpStats;)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->sis:D

    goto :goto_0

    :cond_1
    iput-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->you:D

    iput-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->sis:D

    :cond_2
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AccurateCounter startCount tag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->tsu:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " |cur:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " |lastLevel:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->you:D

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " |mLastAccurateLevel:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->cno:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v1}, Lcom/android/server/wm/OpPowerConsumpStats;->h(Lcom/android/server/wm/OpPowerConsumpStats;)D

    move-result-wide v1

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " |beginLevel:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->sis:D

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " |cumulativeCount:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->zta:D

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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

.method static synthetic rtg(Lcom/android/server/wm/OpPowerConsumpStats$bvj;)D
    .locals 2

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->cno()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic sis(Lcom/android/server/wm/OpPowerConsumpStats$bvj;D)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->igw(D)V

    return-void
.end method

.method private ssp()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->ssp:Ljava/lang/Object;

    monitor-enter v0

    const-wide/16 v1, 0x0

    :try_start_0
    iput-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->you:D

    iput-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->sis:D

    iput-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->zta:D

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->rtg:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic tsu(Lcom/android/server/wm/OpPowerConsumpStats$bvj;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->ssp()V

    return-void
.end method

.method static synthetic you(Lcom/android/server/wm/OpPowerConsumpStats$bvj;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->bio()V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats$bvj;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->kth()V

    return-void
.end method
