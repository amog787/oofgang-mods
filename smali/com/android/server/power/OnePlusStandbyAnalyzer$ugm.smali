.class Lcom/android/server/power/OnePlusStandbyAnalyzer$ugm;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ugm"
.end annotation


# instance fields
.field sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;

.field final synthetic tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer;

.field you:Z

.field zta:J


# direct methods
.method private constructor <init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ugm;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ugm;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;Lcom/android/server/power/OnePlusStandbyAnalyzer$ssp;)V

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ugm;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;Lcom/android/server/power/OnePlusStandbyAnalyzer$ssp;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$ugm;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized rtg()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ugm;->you:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ugm;->you:Z

    iget-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ugm;->zta:J

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ugm;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;

    invoke-virtual {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->cno()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ugm;->zta:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NoSignalTimer - stop, mTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ugm;->zta:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ugm;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;

    invoke-virtual {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->rtg()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sis()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "NoSignalTimer - reset"

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ugm;->zta:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ugm;->you:Z

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ugm;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;

    invoke-virtual {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->rtg()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized tsu()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ugm;->you:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "NoSignalTimer - start"

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ugm;->you:Z

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ugm;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;

    invoke-virtual {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;->ssp()Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized you()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ugm;->zta:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized zta()V
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsNoSignal : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ugm;->you:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ugm;->zta:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
