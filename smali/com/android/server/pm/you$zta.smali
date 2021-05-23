.class final Lcom/android/server/pm/you$zta;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/you;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "zta"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/pm/you;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/you;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/pm/you$zta;->zta:Lcom/android/server/pm/you;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/you$zta;->zta:Lcom/android/server/pm/you;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/pm/you;->tsu(Lcom/android/server/pm/you;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/you$zta;->zta:Lcom/android/server/pm/you;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/pm/you;->sis(Lcom/android/server/pm/you;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "packageName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "dexPath"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/pm/you$zta;->zta:Lcom/android/server/pm/you;

    invoke-static {v2}, Lcom/android/server/pm/you;->gck(Lcom/android/server/pm/you;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/server/pm/you$zta;->zta:Lcom/android/server/pm/you;

    invoke-static {v2}, Lcom/android/server/pm/you;->dma(Lcom/android/server/pm/you;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/server/pm/you$zta;->zta:Lcom/android/server/pm/you;

    invoke-static {v2, v0, p1, v1}, Lcom/android/server/pm/you;->igw(Lcom/android/server/pm/you;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/you$zta;->zta:Lcom/android/server/pm/you;

    invoke-static {v1}, Lcom/android/server/pm/you;->ywr(Lcom/android/server/pm/you;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/you$zta;->zta:Lcom/android/server/pm/you;

    invoke-static {v2}, Lcom/android/server/pm/you;->ywr(Lcom/android/server/pm/you;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/android/server/pm/you$zta;->zta:Lcom/android/server/pm/you;

    invoke-static {p0}, Lcom/android/server/pm/you;->gck(Lcom/android/server/pm/you;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "performDexOpt secondaryDex end for "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " sucessed: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPDOM"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_5
    :goto_0
    return-void

    :cond_6
    iget-object p0, p0, Lcom/android/server/pm/you$zta;->zta:Lcom/android/server/pm/you;

    invoke-static {p0}, Lcom/android/server/pm/you;->wtn(Lcom/android/server/pm/you;)V

    goto/16 :goto_3

    :cond_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/pm/you$zta;->zta:Lcom/android/server/pm/you;

    invoke-static {v0}, Lcom/android/server/pm/you;->zta(Lcom/android/server/pm/you;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, Lcom/android/server/pm/you$zta;->zta:Lcom/android/server/pm/you;

    invoke-static {v1}, Lcom/android/server/pm/you;->zta(Lcom/android/server/pm/you;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    monitor-exit v0

    return-void

    :cond_8
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    iget-object v0, p0, Lcom/android/server/pm/you$zta;->zta:Lcom/android/server/pm/you;

    invoke-static {v0}, Lcom/android/server/pm/you;->you(Lcom/android/server/pm/you;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/pm/you$zta;->zta:Lcom/android/server/pm/you;

    invoke-static {v0}, Lcom/android/server/pm/you;->you(Lcom/android/server/pm/you;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    monitor-exit v1

    return-void

    :cond_9
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    invoke-static {}, Lcom/android/server/pm/you;->ssp()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/pm/you$zta;->zta:Lcom/android/server/pm/you;

    invoke-static {v0}, Lcom/android/server/pm/you;->cno(Lcom/android/server/pm/you;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    :try_start_4
    iget-object v1, p0, Lcom/android/server/pm/you$zta;->zta:Lcom/android/server/pm/you;

    invoke-static {v1}, Lcom/android/server/pm/you;->cno(Lcom/android/server/pm/you;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    monitor-exit v0

    return-void

    :cond_a
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :cond_b
    :goto_1
    iget-object v0, p0, Lcom/android/server/pm/you$zta;->zta:Lcom/android/server/pm/you;

    invoke-static {v0}, Lcom/android/server/pm/you;->kth(Lcom/android/server/pm/you;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-boolean p1, Lcom/android/server/pm/you;->bvj:Z

    if-eqz p1, :cond_c

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Skip, already have the same task running "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/you$zta;->zta:Lcom/android/server/pm/you;

    invoke-static {p0}, Lcom/android/server/pm/you;->kth(Lcom/android/server/pm/you;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPDOM"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/android/server/pm/you$zta;->zta:Lcom/android/server/pm/you;

    invoke-static {v0, p1}, Lcom/android/server/pm/you;->bio(Lcom/android/server/pm/you;Ljava/lang/String;)Ljava/lang/String;

    sget-boolean v0, Lcom/android/server/pm/you;->bvj:Z

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "performDexOpt begin for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPDOM"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget-object v0, p0, Lcom/android/server/pm/you$zta;->zta:Lcom/android/server/pm/you;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/android/server/pm/you;->igw(Lcom/android/server/pm/you;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "performDexOpt primaryDex end for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sucessed! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPDOM"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/you$zta;->zta:Lcom/android/server/pm/you;

    invoke-static {v0}, Lcom/android/server/pm/you;->zta(Lcom/android/server/pm/you;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/you$zta;->zta:Lcom/android/server/pm/you;

    invoke-static {v1}, Lcom/android/server/pm/you;->zta(Lcom/android/server/pm/you;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_2

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "performDexOpt primaryDex end for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OPDOM"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object p0, p0, Lcom/android/server/pm/you$zta;->zta:Lcom/android/server/pm/you;

    const-string p1, "unlocked"

    invoke-static {p0, p1}, Lcom/android/server/pm/you;->bio(Lcom/android/server/pm/you;Ljava/lang/String;)Ljava/lang/String;

    :goto_3
    return-void

    :catchall_3
    move-exception p0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p0

    :catchall_4
    move-exception p0

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw p0
.end method
