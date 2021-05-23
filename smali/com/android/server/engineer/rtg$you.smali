.class Lcom/android/server/engineer/rtg$you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/engineer/rtg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "you"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/engineer/rtg;


# direct methods
.method private constructor <init>(Lcom/android/server/engineer/rtg;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/engineer/rtg$you;->zta:Lcom/android/server/engineer/rtg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/engineer/rtg;Lcom/android/server/engineer/rtg$zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/engineer/rtg$you;-><init>(Lcom/android/server/engineer/rtg;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/engineer/rtg$you;->zta(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public zta(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/engineer/rtg$you;->zta:Lcom/android/server/engineer/rtg;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/engineer/rtg;->rtg(Lcom/android/server/engineer/rtg;Landroid/net/LocalSocket;)Landroid/net/LocalSocket;

    iget-object v1, p0, Lcom/android/server/engineer/rtg$you;->zta:Lcom/android/server/engineer/rtg;

    new-instance v2, Landroid/net/LocalServerSocket;

    invoke-direct {v2, p1}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/android/server/engineer/rtg;->cno(Lcom/android/server/engineer/rtg;Landroid/net/LocalServerSocket;)Landroid/net/LocalServerSocket;

    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/android/server/engineer/rtg$you$zta;

    invoke-direct {v1, p0}, Lcom/android/server/engineer/rtg$you$zta;-><init>(Lcom/android/server/engineer/rtg$you;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {p1, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    iget-object v1, p0, Lcom/android/server/engineer/rtg$you;->zta:Lcom/android/server/engineer/rtg;

    iget-object v2, p0, Lcom/android/server/engineer/rtg$you;->zta:Lcom/android/server/engineer/rtg;

    invoke-static {v2}, Lcom/android/server/engineer/rtg;->ssp(Lcom/android/server/engineer/rtg;)Landroid/net/LocalServerSocket;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/engineer/rtg;->rtg(Lcom/android/server/engineer/rtg;Landroid/net/LocalSocket;)Landroid/net/LocalSocket;

    invoke-static {}, Lcom/android/server/engineer/rtg;->zta()Ljava/lang/String;

    move-result-object v1

    const-string v2, "already connect"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    iget-object p1, p0, Lcom/android/server/engineer/rtg$you;->zta:Lcom/android/server/engineer/rtg;

    invoke-static {p1}, Lcom/android/server/engineer/rtg;->tsu(Lcom/android/server/engineer/rtg;)Landroid/net/LocalSocket;

    move-result-object p1

    const/16 v1, 0x80

    invoke-virtual {p1, v1}, Landroid/net/LocalSocket;->setReceiveBufferSize(I)V

    iget-object p1, p0, Lcom/android/server/engineer/rtg$you;->zta:Lcom/android/server/engineer/rtg;

    invoke-static {p1}, Lcom/android/server/engineer/rtg;->tsu(Lcom/android/server/engineer/rtg;)Landroid/net/LocalSocket;

    move-result-object p1

    const/16 v2, 0xbb8

    invoke-virtual {p1, v2}, Landroid/net/LocalSocket;->setSoTimeout(I)V

    iget-object p1, p0, Lcom/android/server/engineer/rtg$you;->zta:Lcom/android/server/engineer/rtg;

    invoke-static {p1}, Lcom/android/server/engineer/rtg;->tsu(Lcom/android/server/engineer/rtg;)Landroid/net/LocalSocket;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/engineer/rtg$you;->zta:Lcom/android/server/engineer/rtg;

    invoke-static {v2}, Lcom/android/server/engineer/rtg;->tsu(Lcom/android/server/engineer/rtg;)Landroid/net/LocalSocket;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    new-array v3, v1, [B

    if-eqz p1, :cond_0

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-lez p1, :cond_0

    new-array v1, p1, [B

    invoke-static {v3, v4, v1, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {}, Lcom/android/server/engineer/rtg;->zta()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get command ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "], size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    iget-object p1, p0, Lcom/android/server/engineer/rtg$you;->zta:Lcom/android/server/engineer/rtg;

    invoke-static {p1}, Lcom/android/server/engineer/rtg;->tsu(Lcom/android/server/engineer/rtg;)Landroid/net/LocalSocket;

    move-result-object p1

    if-eqz p1, :cond_1

    :try_start_1
    iget-object p1, p0, Lcom/android/server/engineer/rtg$you;->zta:Lcom/android/server/engineer/rtg;

    invoke-static {p1}, Lcom/android/server/engineer/rtg;->tsu(Lcom/android/server/engineer/rtg;)Landroid/net/LocalSocket;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/LocalSocket;->shutdownInput()V

    iget-object p1, p0, Lcom/android/server/engineer/rtg$you;->zta:Lcom/android/server/engineer/rtg;

    invoke-static {p1}, Lcom/android/server/engineer/rtg;->tsu(Lcom/android/server/engineer/rtg;)Landroid/net/LocalSocket;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/LocalSocket;->shutdownOutput()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p1, p0, Lcom/android/server/engineer/rtg$you;->zta:Lcom/android/server/engineer/rtg;

    invoke-static {p1}, Lcom/android/server/engineer/rtg;->tsu(Lcom/android/server/engineer/rtg;)Landroid/net/LocalSocket;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object p1, p0, Lcom/android/server/engineer/rtg$you;->zta:Lcom/android/server/engineer/rtg;

    invoke-static {p1}, Lcom/android/server/engineer/rtg;->tsu(Lcom/android/server/engineer/rtg;)Landroid/net/LocalSocket;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/LocalSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :goto_0
    :try_start_5
    iget-object p0, p0, Lcom/android/server/engineer/rtg$you;->zta:Lcom/android/server/engineer/rtg;

    invoke-static {p0}, Lcom/android/server/engineer/rtg;->tsu(Lcom/android/server/engineer/rtg;)Landroid/net/LocalSocket;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    throw p1

    :cond_1
    :goto_2
    iget-object p1, p0, Lcom/android/server/engineer/rtg$you;->zta:Lcom/android/server/engineer/rtg;

    invoke-static {p1}, Lcom/android/server/engineer/rtg;->ssp(Lcom/android/server/engineer/rtg;)Landroid/net/LocalServerSocket;

    move-result-object p1

    if-eqz p1, :cond_3

    :try_start_6
    iget-object p0, p0, Lcom/android/server/engineer/rtg$you;->zta:Lcom/android/server/engineer/rtg;

    invoke-static {p0}, Lcom/android/server/engineer/rtg;->ssp(Lcom/android/server/engineer/rtg;)Landroid/net/LocalServerSocket;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/LocalServerSocket;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    goto/16 :goto_6

    :catchall_1
    move-exception p1

    goto/16 :goto_7

    :catch_3
    move-exception p1

    :try_start_7
    invoke-static {}, Lcom/android/server/engineer/rtg;->zta()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    iget-object p1, p0, Lcom/android/server/engineer/rtg$you;->zta:Lcom/android/server/engineer/rtg;

    invoke-static {p1}, Lcom/android/server/engineer/rtg;->tsu(Lcom/android/server/engineer/rtg;)Landroid/net/LocalSocket;

    move-result-object p1

    if-eqz p1, :cond_2

    :try_start_8
    iget-object p1, p0, Lcom/android/server/engineer/rtg$you;->zta:Lcom/android/server/engineer/rtg;

    invoke-static {p1}, Lcom/android/server/engineer/rtg;->tsu(Lcom/android/server/engineer/rtg;)Landroid/net/LocalSocket;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/LocalSocket;->shutdownInput()V

    iget-object p1, p0, Lcom/android/server/engineer/rtg$you;->zta:Lcom/android/server/engineer/rtg;

    invoke-static {p1}, Lcom/android/server/engineer/rtg;->tsu(Lcom/android/server/engineer/rtg;)Landroid/net/LocalSocket;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/LocalSocket;->shutdownOutput()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    iget-object p1, p0, Lcom/android/server/engineer/rtg$you;->zta:Lcom/android/server/engineer/rtg;

    invoke-static {p1}, Lcom/android/server/engineer/rtg;->tsu(Lcom/android/server/engineer/rtg;)Landroid/net/LocalSocket;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/LocalSocket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_5

    :catchall_2
    move-exception p1

    goto :goto_3

    :catch_4
    move-exception p1

    :try_start_a
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    iget-object p1, p0, Lcom/android/server/engineer/rtg$you;->zta:Lcom/android/server/engineer/rtg;

    invoke-static {p1}, Lcom/android/server/engineer/rtg;->tsu(Lcom/android/server/engineer/rtg;)Landroid/net/LocalSocket;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/LocalSocket;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_5

    :catch_5
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :goto_3
    :try_start_c
    iget-object p0, p0, Lcom/android/server/engineer/rtg$you;->zta:Lcom/android/server/engineer/rtg;

    invoke-static {p0}, Lcom/android/server/engineer/rtg;->tsu(Lcom/android/server/engineer/rtg;)Landroid/net/LocalSocket;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/LocalSocket;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_4

    :catch_6
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    throw p1

    :cond_2
    :goto_5
    iget-object p1, p0, Lcom/android/server/engineer/rtg$you;->zta:Lcom/android/server/engineer/rtg;

    invoke-static {p1}, Lcom/android/server/engineer/rtg;->ssp(Lcom/android/server/engineer/rtg;)Landroid/net/LocalServerSocket;

    move-result-object p1

    if-eqz p1, :cond_3

    :try_start_d
    iget-object p0, p0, Lcom/android/server/engineer/rtg$you;->zta:Lcom/android/server/engineer/rtg;

    invoke-static {p0}, Lcom/android/server/engineer/rtg;->ssp(Lcom/android/server/engineer/rtg;)Landroid/net/LocalServerSocket;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/LocalServerSocket;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    goto :goto_6

    :catch_7
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_7
    iget-object v0, p0, Lcom/android/server/engineer/rtg$you;->zta:Lcom/android/server/engineer/rtg;

    invoke-static {v0}, Lcom/android/server/engineer/rtg;->tsu(Lcom/android/server/engineer/rtg;)Landroid/net/LocalSocket;

    move-result-object v0

    if-eqz v0, :cond_4

    :try_start_e
    iget-object v0, p0, Lcom/android/server/engineer/rtg$you;->zta:Lcom/android/server/engineer/rtg;

    invoke-static {v0}, Lcom/android/server/engineer/rtg;->tsu(Lcom/android/server/engineer/rtg;)Landroid/net/LocalSocket;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/LocalSocket;->shutdownInput()V

    iget-object v0, p0, Lcom/android/server/engineer/rtg$you;->zta:Lcom/android/server/engineer/rtg;

    invoke-static {v0}, Lcom/android/server/engineer/rtg;->tsu(Lcom/android/server/engineer/rtg;)Landroid/net/LocalSocket;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/LocalSocket;->shutdownOutput()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    iget-object v0, p0, Lcom/android/server/engineer/rtg$you;->zta:Lcom/android/server/engineer/rtg;

    invoke-static {v0}, Lcom/android/server/engineer/rtg;->tsu(Lcom/android/server/engineer/rtg;)Landroid/net/LocalSocket;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    goto :goto_a

    :catchall_3
    move-exception p1

    goto :goto_8

    :catch_8
    move-exception v0

    :try_start_10
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :try_start_11
    iget-object v0, p0, Lcom/android/server/engineer/rtg$you;->zta:Lcom/android/server/engineer/rtg;

    invoke-static {v0}, Lcom/android/server/engineer/rtg;->tsu(Lcom/android/server/engineer/rtg;)Landroid/net/LocalSocket;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9

    goto :goto_a

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    :goto_8
    :try_start_12
    iget-object p0, p0, Lcom/android/server/engineer/rtg$you;->zta:Lcom/android/server/engineer/rtg;

    invoke-static {p0}, Lcom/android/server/engineer/rtg;->tsu(Lcom/android/server/engineer/rtg;)Landroid/net/LocalSocket;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/LocalSocket;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a

    goto :goto_9

    :catch_a
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_9
    throw p1

    :cond_4
    :goto_a
    iget-object v0, p0, Lcom/android/server/engineer/rtg$you;->zta:Lcom/android/server/engineer/rtg;

    invoke-static {v0}, Lcom/android/server/engineer/rtg;->ssp(Lcom/android/server/engineer/rtg;)Landroid/net/LocalServerSocket;

    move-result-object v0

    if-eqz v0, :cond_5

    :try_start_13
    iget-object p0, p0, Lcom/android/server/engineer/rtg$you;->zta:Lcom/android/server/engineer/rtg;

    invoke-static {p0}, Lcom/android/server/engineer/rtg;->ssp(Lcom/android/server/engineer/rtg;)Landroid/net/LocalServerSocket;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/LocalServerSocket;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_b

    goto :goto_b

    :catch_b
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_b
    throw p1
.end method
