.class Lcom/oneplus/android/server/bluetooth/cno$you;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/bluetooth/cno;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "you"
.end annotation


# instance fields
.field final synthetic you:Lcom/oneplus/android/server/bluetooth/cno;

.field private zta:Z


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/bluetooth/cno;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/bluetooth/cno$you;->you:Lcom/oneplus/android/server/bluetooth/cno;

    const-string p1, "OnePlus Bluetooth Service"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/android/server/bluetooth/cno$you;->zta:Z

    return-void
.end method


# virtual methods
.method public interrupt()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/bluetooth/cno$you;->zta:Z

    const-string v0, "OpBluetoothStackEvent"

    const-string v1, "Interrupted "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 7

    const-string v0, "OpBluetoothStackEvent"

    :goto_0
    iget-boolean v1, p0, Lcom/oneplus/android/server/bluetooth/cno$you;->zta:Z

    if-nez v1, :cond_6

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/android/server/bluetooth/cno$you;->you:Lcom/oneplus/android/server/bluetooth/cno;

    invoke-static {v1}, Lcom/oneplus/android/server/bluetooth/cno;->zta(Lcom/oneplus/android/server/bluetooth/cno;)Landroid/net/LocalServerSocket;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/android/server/bluetooth/cno$you;->you:Lcom/oneplus/android/server/bluetooth/cno;

    iget-object v3, p0, Lcom/oneplus/android/server/bluetooth/cno$you;->you:Lcom/oneplus/android/server/bluetooth/cno;

    invoke-static {v3}, Lcom/oneplus/android/server/bluetooth/cno;->zta(Lcom/oneplus/android/server/bluetooth/cno;)Landroid/net/LocalServerSocket;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oneplus/android/server/bluetooth/cno;->sis(Lcom/oneplus/android/server/bluetooth/cno;Landroid/net/LocalSocket;)Landroid/net/LocalSocket;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Now client accept - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/android/server/bluetooth/cno$you;->you:Lcom/oneplus/android/server/bluetooth/cno;

    invoke-static {v3}, Lcom/oneplus/android/server/bluetooth/cno;->you(Lcom/oneplus/android/server/bluetooth/cno;)Landroid/net/LocalSocket;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/oneplus/android/server/bluetooth/cno$you;->you:Lcom/oneplus/android/server/bluetooth/cno;

    invoke-static {v1}, Lcom/oneplus/android/server/bluetooth/cno;->tsu(Lcom/oneplus/android/server/bluetooth/cno;)Landroid/os/Handler;

    move-result-object v1

    const/16 v3, 0xa0

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/android/server/bluetooth/cno$you;->you:Lcom/oneplus/android/server/bluetooth/cno;

    invoke-static {v1}, Lcom/oneplus/android/server/bluetooth/cno;->tsu(Lcom/oneplus/android/server/bluetooth/cno;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v1, p0, Lcom/oneplus/android/server/bluetooth/cno$you;->you:Lcom/oneplus/android/server/bluetooth/cno;

    invoke-static {v1}, Lcom/oneplus/android/server/bluetooth/cno;->you(Lcom/oneplus/android/server/bluetooth/cno;)Landroid/net/LocalSocket;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    :goto_1
    iput-boolean v2, p0, Lcom/oneplus/android/server/bluetooth/cno$you;->zta:Z

    goto/16 :goto_2

    :cond_2
    const/16 v1, 0x400

    new-array v1, v1, [B

    iget-object v3, p0, Lcom/oneplus/android/server/bluetooth/cno$you;->you:Lcom/oneplus/android/server/bluetooth/cno;

    iget-object v4, p0, Lcom/oneplus/android/server/bluetooth/cno$you;->you:Lcom/oneplus/android/server/bluetooth/cno;

    invoke-static {v4}, Lcom/oneplus/android/server/bluetooth/cno;->you(Lcom/oneplus/android/server/bluetooth/cno;)Landroid/net/LocalSocket;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/android/server/bluetooth/cno;->ssp(Lcom/oneplus/android/server/bluetooth/cno;Ljava/io/InputStream;)Ljava/io/InputStream;

    iget-object v3, p0, Lcom/oneplus/android/server/bluetooth/cno$you;->you:Lcom/oneplus/android/server/bluetooth/cno;

    invoke-static {v3}, Lcom/oneplus/android/server/bluetooth/cno;->rtg(Lcom/oneplus/android/server/bluetooth/cno;)Ljava/io/InputStream;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/oneplus/android/server/bluetooth/cno$you;->you:Lcom/oneplus/android/server/bluetooth/cno;

    invoke-static {v3}, Lcom/oneplus/android/server/bluetooth/cno;->rtg(Lcom/oneplus/android/server/bluetooth/cno;)Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_4

    goto/16 :goto_0

    :cond_4
    const/4 v5, 0x0

    aget-byte v5, v1, v5

    new-instance v6, Ljava/lang/String;

    invoke-static {v1, v4, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receive: type - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receive: value - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "HARALDSTOP"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/oneplus/android/server/bluetooth/cno$you;->you:Lcom/oneplus/android/server/bluetooth/cno;

    invoke-static {v1}, Lcom/oneplus/android/server/bluetooth/cno;->tsu(Lcom/oneplus/android/server/bluetooth/cno;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iput v5, v1, Landroid/os/Message;->arg1:I

    iput-object v6, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receive socket data failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :cond_6
    :goto_2
    iget-object p0, p0, Lcom/oneplus/android/server/bluetooth/cno$you;->you:Lcom/oneplus/android/server/bluetooth/cno;

    invoke-static {p0}, Lcom/oneplus/android/server/bluetooth/cno;->cno(Lcom/oneplus/android/server/bluetooth/cno;)V

    return-void
.end method
