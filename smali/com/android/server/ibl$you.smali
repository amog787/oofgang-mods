.class Lcom/android/server/ibl$you;
.super Lcom/android/server/am/igw;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "you"
.end annotation


# instance fields
.field final synthetic you:Lcom/android/server/ibl;


# direct methods
.method private constructor <init>(Lcom/android/server/ibl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ibl$you;->you:Lcom/android/server/ibl;

    invoke-direct {p0}, Lcom/android/server/am/igw;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ibl;Lcom/android/server/ibl$zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/ibl$you;-><init>(Lcom/android/server/ibl;)V

    return-void
.end method


# virtual methods
.method public bio(II)V
    .locals 3

    invoke-static {}, Lcom/android/server/ibl;->zta()Lcom/android/server/ibl;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/server/ibl;->sis()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p1}, Lcom/android/server/am/AppRecordManager;->gwm(I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/server/ibl;->tsu()Ljava/util/HashSet;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/ibl;->tsu()Ljava/util/HashSet;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/am/AppRecordManager;->bio(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/ibl;->ssp()Ljava/util/HashSet;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    invoke-static {}, Lcom/android/server/ibl;->ssp()Ljava/util/HashSet;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/server/ibl;->rtg()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteProcStateChanged uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " procState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPGPS"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v0, 0x2

    if-gt p2, v0, :cond_4

    iget-object p0, p0, Lcom/android/server/ibl$you;->you:Lcom/android/server/ibl;

    const/4 p2, 0x0

    :goto_0
    invoke-static {p0, p2, p1}, Lcom/android/server/ibl;->cno(Lcom/android/server/ibl;ZI)V

    goto :goto_1

    :cond_4
    if-le p2, v0, :cond_5

    iget-object p0, p0, Lcom/android/server/ibl$you;->you:Lcom/android/server/ibl;

    const/4 p2, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_6
    :goto_2
    return-void
.end method

.method public wtn(ILjava/lang/String;ZZ)V
    .locals 1

    invoke-static {}, Lcom/android/server/ibl;->zta()Lcom/android/server/ibl;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/server/ibl;->sis()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p4, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-static {p1}, Lcom/android/server/am/AppRecordManager;->gwm(I)Z

    move-result p4

    if-nez p4, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/server/ibl;->tsu()Ljava/util/HashSet;

    move-result-object p4

    monitor-enter p4

    :try_start_0
    invoke-static {}, Lcom/android/server/ibl;->tsu()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    monitor-exit p4

    return-void

    :cond_2
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-static {}, Lcom/android/server/ibl;->rtg()Z

    move-result p4

    if-eqz p4, :cond_3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "noteGpsChanged uid:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " pkg:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " using:"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "OPGPS"

    invoke-static {p4, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {}, Lcom/android/server/ibl;->ssp()Ljava/util/HashSet;

    move-result-object p2

    monitor-enter p2

    if-eqz p3, :cond_4

    :try_start_1
    invoke-static {}, Lcom/android/server/ibl;->ssp()Ljava/util/HashSet;

    move-result-object p4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/server/ibl;->ssp()Ljava/util/HashSet;

    move-result-object p4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p3, :cond_5

    iget-object p2, p0, Lcom/android/server/ibl$you;->you:Lcom/android/server/ibl;

    invoke-static {p2, p1}, Lcom/android/server/ibl;->ywr(Lcom/android/server/ibl;I)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p0, p0, Lcom/android/server/ibl$you;->you:Lcom/android/server/ibl;

    const/4 p2, 0x1

    :goto_1
    invoke-static {p0, p2, p1}, Lcom/android/server/ibl;->cno(Lcom/android/server/ibl;ZI)V

    goto :goto_2

    :cond_5
    if-nez p3, :cond_6

    invoke-static {}, Lcom/android/server/ibl;->ssp()Ljava/util/HashSet;

    move-result-object p2

    monitor-enter p2

    :try_start_2
    invoke-static {}, Lcom/android/server/ibl;->ssp()Ljava/util/HashSet;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p3, :cond_6

    iget-object p0, p0, Lcom/android/server/ibl$you;->you:Lcom/android/server/ibl;

    const/4 p2, 0x0

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_6
    :goto_2
    return-void

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit p4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    :cond_7
    :goto_3
    return-void
.end method
