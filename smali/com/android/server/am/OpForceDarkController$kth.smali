.class Lcom/android/server/am/OpForceDarkController$kth;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OpForceDarkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "kth"
.end annotation


# instance fields
.field sis:I

.field final synthetic tsu:Lcom/android/server/am/OpForceDarkController;

.field you:Lcom/android/server/am/OpForceDarkController$ssp;

.field zta:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/OpForceDarkController;Lcom/android/server/am/OpForceDarkController$ssp;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OpForceDarkController$kth;->tsu:Lcom/android/server/am/OpForceDarkController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lcom/android/server/am/OpForceDarkController$ssp;->wtn()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/OpForceDarkController$kth;->zta:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/server/am/OpForceDarkController$ssp;->you()Lcom/android/server/am/OpForceDarkController$ssp;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/OpForceDarkController$kth;->you:Lcom/android/server/am/OpForceDarkController$ssp;

    iput p3, p0, Lcom/android/server/am/OpForceDarkController$kth;->sis:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/am/OpForceDarkController$kth;->tsu:Lcom/android/server/am/OpForceDarkController;

    invoke-static {v0}, Lcom/android/server/am/OpForceDarkController;->access$300(Lcom/android/server/am/OpForceDarkController;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OpForceDarkController$kth;->tsu:Lcom/android/server/am/OpForceDarkController;

    invoke-static {v1}, Lcom/android/server/am/OpForceDarkController;->access$300(Lcom/android/server/am/OpForceDarkController;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/OpForceDarkController$kth;->tsu:Lcom/android/server/am/OpForceDarkController;

    iget-object v3, p0, Lcom/android/server/am/OpForceDarkController$kth;->zta:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/am/OpForceDarkController$kth;->sis:I

    invoke-static {v2, v3, v4}, Lcom/android/server/am/OpForceDarkController;->access$400(Lcom/android/server/am/OpForceDarkController;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    iget-object v2, p0, Lcom/android/server/am/OpForceDarkController$kth;->tsu:Lcom/android/server/am/OpForceDarkController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No Running Process Related To "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/OpForceDarkController$kth;->zta:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v4}, Lcom/android/server/am/OpForceDarkController;->access$200(Lcom/android/server/am/OpForceDarkController;Ljava/lang/String;Z)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :cond_0
    :try_start_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/IApplicationThread;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget v5, p0, Lcom/android/server/am/OpForceDarkController$kth;->sis:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchForceDarkConfig Pkg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/am/OpForceDarkController$kth;->zta:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/am/OpBGFrozenInjector;->triggerResume(ILjava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/OpForceDarkController$kth;->you:Lcom/android/server/am/OpForceDarkController$ssp;

    iget v6, p0, Lcom/android/server/am/OpForceDarkController$kth;->sis:I

    invoke-virtual {v5, v6}, Lcom/android/server/am/OpForceDarkController$ssp;->ssp(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Landroid/app/IApplicationThread;->dispatchForceDarkConfig(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/OpForceDarkController$kth;->tsu:Lcom/android/server/am/OpForceDarkController;

    const-string v6, "Dispatch Changed Config to %s , uid %d, config %s "

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/am/OpForceDarkController$kth;->zta:Ljava/lang/String;

    aput-object v9, v7, v8

    iget v8, p0, Lcom/android/server/am/OpForceDarkController$kth;->sis:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v8, 0x2

    aput-object v5, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v4}, Lcom/android/server/am/OpForceDarkController;->access$200(Lcom/android/server/am/OpForceDarkController;Ljava/lang/String;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_5
    const-string v5, "OPFD_CTRL_SVC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dispatch Config Exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", Target = "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OpForceDarkController$kth;->zta:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return-void

    :catchall_0
    move-exception p0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw p0
.end method
