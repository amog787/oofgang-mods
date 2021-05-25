.class Lcom/android/server/obl$tsu;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/obl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "tsu"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/obl;


# direct methods
.method public constructor <init>(Lcom/android/server/obl;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/obl$tsu;->zta:Lcom/android/server/obl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    const/4 v1, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/server/obl$tsu;->zta:Lcom/android/server/obl;

    invoke-static {p1}, Lcom/android/server/obl;->ywr(Lcom/android/server/obl;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/server/obl$tsu;->zta:Lcom/android/server/obl;

    invoke-static {p1}, Lcom/android/server/obl;->ywr(Lcom/android/server/obl;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/server/obl$tsu;->zta:Lcom/android/server/obl;

    invoke-static {p1}, Lcom/android/server/obl;->ywr(Lcom/android/server/obl;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object p0, p0, Lcom/android/server/obl$tsu;->zta:Lcom/android/server/obl;

    const-string p1, "cpu wakelock released"

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/server/obl$tsu;->zta:Lcom/android/server/obl;

    invoke-static {p1}, Lcom/android/server/obl;->ywr(Lcom/android/server/obl;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/server/obl$tsu;->zta:Lcom/android/server/obl;

    invoke-static {p1}, Lcom/android/server/obl;->ywr(Lcom/android/server/obl;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object p0, p0, Lcom/android/server/obl$tsu;->zta:Lcom/android/server/obl;

    const-string p1, "cpu wakelock acquired"

    :goto_0
    invoke-static {p0, p1}, Lcom/android/server/obl;->you(Lcom/android/server/obl;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/server/obl$tsu;->zta:Lcom/android/server/obl;

    const-string v0, "detect timeout"

    invoke-static {p1, v0}, Lcom/android/server/obl;->you(Lcom/android/server/obl;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/obl$tsu;->zta:Lcom/android/server/obl;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/obl$tsu;->zta:Lcom/android/server/obl;

    invoke-static {v0}, Lcom/android/server/obl;->kth(Lcom/android/server/obl;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/obl$tsu;->zta:Lcom/android/server/obl;

    invoke-static {v0}, Lcom/android/server/obl;->bio(Lcom/android/server/obl;)V

    iget-object v0, p0, Lcom/android/server/obl$tsu;->zta:Lcom/android/server/obl;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/obl;->igw(Lcom/android/server/obl;Z)Z

    iget-object v0, p0, Lcom/android/server/obl$tsu;->zta:Lcom/android/server/obl;

    invoke-static {v0, v2}, Lcom/android/server/obl;->wtn(Lcom/android/server/obl;Z)Z

    iget-object v0, p0, Lcom/android/server/obl$tsu;->zta:Lcom/android/server/obl;

    invoke-static {v0}, Lcom/android/server/obl;->gck(Lcom/android/server/obl;)V

    iget-object v0, p0, Lcom/android/server/obl$tsu;->zta:Lcom/android/server/obl;

    invoke-static {v0}, Lcom/android/server/obl;->dma(Lcom/android/server/obl;)Lcom/android/server/obl$tsu;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/obl$tsu;->zta:Lcom/android/server/obl;

    invoke-static {p0}, Lcom/android/server/obl;->dma(Lcom/android/server/obl;)Lcom/android/server/obl$tsu;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    iget-object p0, p0, Lcom/android/server/obl$tsu;->zta:Lcom/android/server/obl;

    invoke-static {p0}, Lcom/android/server/obl;->zta(Lcom/android/server/obl;)V

    :cond_5
    :goto_1
    return-void
.end method
