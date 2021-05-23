.class Lcom/android/server/wm/OpPowerConsumpStats$fto;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OpPowerConsumpStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "fto"
.end annotation


# instance fields
.field sis:Ljava/lang/Object;

.field final synthetic tsu:Lcom/android/server/wm/OpPowerConsumpStats;

.field you:Ljava/lang/String;

.field zta:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$fto;->tsu:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$fto;->zta:I

    const-string p1, ""

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$fto;->you:Ljava/lang/String;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$fto;->sis:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/wm/OpPowerConsumpStats$fto;->you:Ljava/lang/String;

    return-void
.end method

.method private cno()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$fto;->sis:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "OPCS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# dump # SpecificCounter # tag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats$fto;->you:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " |cumulativeCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$fto;->zta:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private kth()I
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$fto;->sis:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpecificCounter getCumulativeCount tag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$fto;->you:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |cumulativeCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$fto;->zta:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/OpPowerConsumpStats;->Y(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$fto;->zta:I

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
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$fto;->sis:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$fto;->zta:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$fto;->zta:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpecificCounter countAdd tag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$fto;->you:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |cumulativeCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$fto;->zta:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

.method static synthetic sis(Lcom/android/server/wm/OpPowerConsumpStats$fto;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats$fto;->kth()I

    move-result p0

    return p0
.end method

.method private ssp()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$fto;->sis:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$fto;->zta:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$fto;->zta:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpecificCounter countSub tag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$fto;->you:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |cumulativeCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$fto;->zta:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

.method private tsu()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$fto;->sis:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpecificCounter clear tag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$fto;->you:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |cumulativeCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$fto;->zta:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/OpPowerConsumpStats;->Y(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$fto;->zta:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic you(Lcom/android/server/wm/OpPowerConsumpStats$fto;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats$fto;->tsu()V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats$fto;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats$fto;->rtg()V

    return-void
.end method
