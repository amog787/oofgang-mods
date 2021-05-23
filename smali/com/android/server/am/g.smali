.class Lcom/android/server/am/g;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final bvj:I = 0x2000

.field public static final dma:I = 0x4

.field public static final gck:I = 0x2

.field public static final gwm:I = 0x40000000

.field public static final ibl:I = 0x20000000

.field public static final oif:I = 0x2000

.field public static final qbh:I = 0x800

.field public static final ywr:I = 0x8


# instance fields
.field private bio:I

.field public cno:I

.field private igw:I

.field public kth:J

.field public final rtg:Lcom/android/server/am/bio;

.field public final sis:Ljava/lang/String;

.field ssp:Z

.field public final tsu:Ljava/lang/String;

.field private final wtn:Ljava/lang/Object;

.field public final you:I

.field public final zta:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;ZLcom/android/server/am/bio;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/g;->ssp:Z

    iput v0, p0, Lcom/android/server/am/g;->bio:I

    iput v0, p0, Lcom/android/server/am/g;->igw:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/g;->wtn:Ljava/lang/Object;

    iput p1, p0, Lcom/android/server/am/g;->zta:I

    iput p2, p0, Lcom/android/server/am/g;->you:I

    iput-object p3, p0, Lcom/android/server/am/g;->sis:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/android/server/am/g;->ssp:Z

    iput-object p6, p0, Lcom/android/server/am/g;->rtg:Lcom/android/server/am/bio;

    iput-object p4, p0, Lcom/android/server/am/g;->tsu:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ZLcom/android/server/am/bio;)V
    .locals 7

    iget v1, p5, Lcom/android/server/am/bio;->zta:I

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/g;-><init>(IILjava/lang/String;Ljava/lang/String;ZLcom/android/server/am/bio;)V

    return-void
.end method


# virtual methods
.method public bio()J
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/g;->wtn:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/android/server/am/g;->kth:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method bvj()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/android/server/am/g;->bio:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cno()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/g;->tsu:Ljava/lang/String;

    return-object p0
.end method

.method dma()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/am/g;->bio:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/g;->bio:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method gck()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/am/g;->igw:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/g;->igw:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method igw()Z
    .locals 0

    iget p0, p0, Lcom/android/server/am/g;->cno:I

    and-int/lit16 p0, p0, 0x2000

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public kth()I
    .locals 0

    iget p0, p0, Lcom/android/server/am/g;->you:I

    return p0
.end method

.method oif()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/android/server/am/g;->igw:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method qbh(I)V
    .locals 1

    iget v0, p0, Lcom/android/server/am/g;->cno:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/am/g;->cno:I

    return-void
.end method

.method rtg()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/am/g;->igw:I

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method sis()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/am/g;->bio:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/g;->bio:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method ssp()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/am/g;->bio:I

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProcRecord { "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/g;->zta:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/g;->tsu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/g;->you:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", procName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/g;->sis:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public tsu()I
    .locals 0

    iget p0, p0, Lcom/android/server/am/g;->cno:I

    return p0
.end method

.method wtn()Z
    .locals 0

    iget p0, p0, Lcom/android/server/am/g;->cno:I

    and-int/lit16 p0, p0, 0x2000

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method you()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/am/g;->igw:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/g;->igw:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ywr(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/g;->wtn:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-wide p1, p0, Lcom/android/server/am/g;->kth:J

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method zta(I)V
    .locals 1

    iget v0, p0, Lcom/android/server/am/g;->cno:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/am/g;->cno:I

    return-void
.end method
