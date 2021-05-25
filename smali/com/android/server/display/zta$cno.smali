.class Lcom/android/server/display/zta$cno;
.super Lcom/android/server/am/gck;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/zta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "cno"
.end annotation


# instance fields
.field final synthetic you:Lcom/android/server/display/zta;


# direct methods
.method private constructor <init>(Lcom/android/server/display/zta;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/zta$cno;->you:Lcom/android/server/display/zta;

    invoke-direct {p0}, Lcom/android/server/am/gck;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/zta;Lcom/android/server/display/zta$zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/display/zta$cno;-><init>(Lcom/android/server/display/zta;)V

    return-void
.end method


# virtual methods
.method public sis(II)V
    .locals 5

    invoke-static {}, Lcom/android/server/display/zta;->cgv()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteUidStateChanged uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpProximityController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/display/zta$cno;->you:Lcom/android/server/display/zta;

    invoke-static {v1}, Lcom/android/server/display/zta;->les(Lcom/android/server/display/zta;)Ljava/util/HashSet;

    move-result-object v1

    monitor-enter v1

    const/4 v2, 0x1

    if-nez p2, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/zta$cno;->you:Lcom/android/server/display/zta;

    invoke-static {v3}, Lcom/android/server/display/zta;->les(Lcom/android/server/display/zta;)Ljava/util/HashSet;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/android/server/display/zta$cno;->you:Lcom/android/server/display/zta;

    invoke-static {v0}, Lcom/android/server/display/zta;->les(Lcom/android/server/display/zta;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move v0, v2

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/android/server/display/zta$cno;->you:Lcom/android/server/display/zta;

    invoke-static {v1}, Lcom/android/server/display/zta;->bud(Lcom/android/server/display/zta;)Ljava/util/HashSet;

    move-result-object v3

    monitor-enter v3

    if-nez p2, :cond_2

    :try_start_1
    iget-object v1, p0, Lcom/android/server/display/zta$cno;->you:Lcom/android/server/display/zta;

    invoke-static {v1}, Lcom/android/server/display/zta;->bud(Lcom/android/server/display/zta;)Ljava/util/HashSet;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/server/display/zta$cno;->you:Lcom/android/server/display/zta;

    invoke-static {v0}, Lcom/android/server/display/zta;->bud(Lcom/android/server/display/zta;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/android/server/display/zta$cno;->you:Lcom/android/server/display/zta;

    invoke-static {v0}, Lcom/android/server/display/zta;->tsu(Lcom/android/server/display/zta;)I

    move-result v0

    if-ne p1, v0, :cond_3

    iget-object p0, p0, Lcom/android/server/display/zta$cno;->you:Lcom/android/server/display/zta;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "uidState "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/display/zta;->ssp(Lcom/android/server/display/zta;Ljava/lang/String;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public wtn(IZ)V
    .locals 4

    invoke-static {}, Lcom/android/server/display/zta;->cgv()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteRegPSensorChanged uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " reg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpProximityController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/zta$cno;->you:Lcom/android/server/display/zta;

    invoke-static {v0}, Lcom/android/server/display/zta;->bud(Lcom/android/server/display/zta;)Ljava/util/HashSet;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/zta$cno;->you:Lcom/android/server/display/zta;

    invoke-static {v1}, Lcom/android/server/display/zta;->bud(Lcom/android/server/display/zta;)Ljava/util/HashSet;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/android/server/display/zta$cno;->you:Lcom/android/server/display/zta;

    invoke-static {v0}, Lcom/android/server/display/zta;->les(Lcom/android/server/display/zta;)Ljava/util/HashSet;

    move-result-object v2

    monitor-enter v2

    if-eqz p2, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/zta$cno;->you:Lcom/android/server/display/zta;

    invoke-static {v0}, Lcom/android/server/display/zta;->les(Lcom/android/server/display/zta;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    if-nez p2, :cond_3

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/server/display/zta;->sis()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {p1, v1}, Lcom/android/server/display/zta;->you(II)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/server/display/zta;->sis()Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1, v1}, Lcom/android/server/display/zta;->you(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/display/zta$cno;->you:Lcom/android/server/display/zta;

    invoke-static {v0}, Lcom/android/server/display/zta;->les(Lcom/android/server/display/zta;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/android/server/display/zta$cno;->you:Lcom/android/server/display/zta;

    invoke-static {v0}, Lcom/android/server/display/zta;->tsu(Lcom/android/server/display/zta;)I

    move-result v0

    if-eq p1, v0, :cond_4

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/android/server/display/zta$cno;->you:Lcom/android/server/display/zta;

    invoke-static {p1}, Lcom/android/server/display/zta;->rtg(Lcom/android/server/display/zta;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.oneplus.dialer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    iget-object p0, p0, Lcom/android/server/display/zta$cno;->you:Lcom/android/server/display/zta;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "regPsensor "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/display/zta;->ssp(Lcom/android/server/display/zta;Ljava/lang/String;)V

    :cond_5
    return-void

    :goto_1
    :try_start_2
    monitor-exit v2
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
.end method

.method public zta(IZ)V
    .locals 3

    invoke-static {}, Lcom/android/server/display/zta;->cgv()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "noteAudioChanged uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " using:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpProximityController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/display/zta;->sis()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {p1, v1}, Lcom/android/server/display/zta;->you(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/display/zta;->sis()Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1, v1}, Lcom/android/server/display/zta;->you(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/zta$cno;->you:Lcom/android/server/display/zta;

    invoke-static {v0}, Lcom/android/server/display/zta;->cno(Lcom/android/server/display/zta;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-nez p2, :cond_2

    :try_start_0
    invoke-static {}, Lcom/android/server/display/zta;->kth()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/server/display/zta;->sis()Landroid/os/Handler;

    move-result-object p0

    invoke-static {p1, v1}, Lcom/android/server/display/zta;->you(II)I

    move-result p1

    const/4 p2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-static {}, Lcom/android/server/display/zta;->sis()Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit v0

    return-void

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/display/zta$cno;->you:Lcom/android/server/display/zta;

    invoke-static {p0, p1, p2}, Lcom/android/server/display/zta;->bio(Lcom/android/server/display/zta;IZ)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
