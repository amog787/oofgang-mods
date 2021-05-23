.class Lcom/android/server/ugm$you;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ugm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "you"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/ugm;


# direct methods
.method public constructor <init>(Lcom/android/server/ugm;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ugm$you;->zta:Lcom/android/server/ugm;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/ugm$you;->zta:Lcom/android/server/ugm;

    invoke-virtual {v0}, Lcom/android/server/ugm;->ugm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 p0, 0x3

    if-eq v0, p0, :cond_1

    goto/16 :goto_1

    :cond_1
    iget p0, p1, Landroid/os/Message;->arg1:I

    invoke-static {}, Lcom/android/server/ugm;->you()Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/ugm;->bio()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "OPTraffic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Lcom/android/server/ugm;->you()Landroid/util/ArrayMap;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/ugm$sis;

    if-eqz p1, :cond_5

    invoke-static {p1}, Lcom/android/server/ugm$sis;->rtg(Lcom/android/server/ugm$sis;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/ugm$sis;->ssp(Lcom/android/server/ugm$sis;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/server/am/AppRecordManagerService;->noteStopTraffic(ILjava/lang/String;)V

    :cond_3
    invoke-static {p1}, Lcom/android/server/ugm$sis;->cno(Lcom/android/server/ugm$sis;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/ugm$sis;->ssp(Lcom/android/server/ugm$sis;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Lcom/android/server/am/AppRecordManagerService;->noteStopTrafficHigh(ILjava/lang/String;)V

    :cond_4
    invoke-static {}, Lcom/android/server/ugm;->you()Landroid/util/ArrayMap;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    monitor-exit v0

    goto/16 :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {}, Lcom/android/server/ugm;->you()Landroid/util/ArrayMap;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    invoke-static {}, Lcom/android/server/ugm;->you()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ugm$sis;

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/android/server/ugm;->bio()Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "OPTraffic"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reset uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", package="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {v2}, Lcom/android/server/ugm$sis;->kth()V

    goto :goto_0

    :cond_8
    invoke-static {}, Lcom/android/server/ugm;->bio()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "OPTraffic"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", package="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    new-instance v2, Lcom/android/server/ugm$sis;

    iget-object p0, p0, Lcom/android/server/ugm$you;->zta:Lcom/android/server/ugm;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/ugm$sis;-><init>(Lcom/android/server/ugm;ILjava/lang/String;)V

    invoke-static {}, Lcom/android/server/ugm;->you()Landroid/util/ArrayMap;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_a
    iget-object p0, p0, Lcom/android/server/ugm$you;->zta:Lcom/android/server/ugm;

    invoke-static {p0}, Lcom/android/server/ugm;->zta(Lcom/android/server/ugm;)V

    :goto_1
    return-void
.end method
