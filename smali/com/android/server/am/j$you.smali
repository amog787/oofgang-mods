.class Lcom/android/server/am/j$you;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "you"
.end annotation


# static fields
.field private static final sis:I = 0x3

.field private static final you:I = 0x2


# instance fields
.field final synthetic zta:Lcom/android/server/am/j;


# direct methods
.method public constructor <init>(Lcom/android/server/am/j;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/j$you;->zta:Lcom/android/server/am/j;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/j$you;->zta:Lcom/android/server/am/j;

    invoke-static {v1}, Lcom/android/server/am/j;->access$100(Lcom/android/server/am/j;)Landroid/net/LocalSocket;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/server/am/j$you;->zta:Lcom/android/server/am/j;

    invoke-static {v0}, Lcom/android/server/am/j;->access$100(Lcom/android/server/am/j;)Landroid/net/LocalSocket;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p0, p0, Lcom/android/server/am/j$you;->zta:Lcom/android/server/am/j;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/j;->handleMessageSync(Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/server/am/j$you;->zta:Lcom/android/server/am/j;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/am/j;->handleMessageAsync(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lcom/android/server/am/j$you;->zta:Lcom/android/server/am/j;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/LocalSocket;

    invoke-static {v0, p1}, Lcom/android/server/am/j;->access$102(Lcom/android/server/am/j;Landroid/net/LocalSocket;)Landroid/net/LocalSocket;

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/android/server/am/j$you$zta;

    invoke-direct {v0, p0}, Lcom/android/server/am/j$you$zta;-><init>(Lcom/android/server/am/j$you;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :catchall_1
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method
