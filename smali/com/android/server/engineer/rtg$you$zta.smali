.class Lcom/android/server/engineer/rtg$you$zta;
.super Ljava/util/TimerTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/engineer/rtg$you;->zta(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/engineer/rtg$you;


# direct methods
.method constructor <init>(Lcom/android/server/engineer/rtg$you;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/engineer/rtg$you$zta;->zta:Lcom/android/server/engineer/rtg$you;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/engineer/rtg$you$zta;->zta:Lcom/android/server/engineer/rtg$you;

    iget-object v0, v0, Lcom/android/server/engineer/rtg$you;->zta:Lcom/android/server/engineer/rtg;

    invoke-static {v0}, Lcom/android/server/engineer/rtg;->ssp(Lcom/android/server/engineer/rtg;)Landroid/net/LocalServerSocket;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/engineer/rtg$you$zta;->zta:Lcom/android/server/engineer/rtg$you;

    iget-object v0, v0, Lcom/android/server/engineer/rtg$you;->zta:Lcom/android/server/engineer/rtg;

    invoke-static {v0}, Lcom/android/server/engineer/rtg;->tsu(Lcom/android/server/engineer/rtg;)Landroid/net/LocalSocket;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/net/LocalSocket;

    invoke-direct {v0}, Landroid/net/LocalSocket;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/engineer/rtg$you$zta;->zta:Lcom/android/server/engineer/rtg$you;

    iget-object v1, v1, Lcom/android/server/engineer/rtg$you;->zta:Lcom/android/server/engineer/rtg;

    invoke-static {v1}, Lcom/android/server/engineer/rtg;->ssp(Lcom/android/server/engineer/rtg;)Landroid/net/LocalServerSocket;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/LocalServerSocket;->getLocalSocketAddress()Landroid/net/LocalSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    :try_start_1
    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/android/server/engineer/rtg;->zta()Ljava/lang/String;

    move-result-object v0

    const-string v1, "time\'s up, auto close server socket"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/engineer/rtg$you$zta;->zta:Lcom/android/server/engineer/rtg$you;

    iget-object v0, v0, Lcom/android/server/engineer/rtg$you;->zta:Lcom/android/server/engineer/rtg;

    invoke-static {v0}, Lcom/android/server/engineer/rtg;->ssp(Lcom/android/server/engineer/rtg;)Landroid/net/LocalServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iget-object p0, p0, Lcom/android/server/engineer/rtg$you$zta;->zta:Lcom/android/server/engineer/rtg$you;

    iget-object p0, p0, Lcom/android/server/engineer/rtg$you;->zta:Lcom/android/server/engineer/rtg;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/engineer/rtg;->cno(Lcom/android/server/engineer/rtg;Landroid/net/LocalServerSocket;)Landroid/net/LocalServerSocket;

    :cond_1
    :goto_2
    return-void
.end method
