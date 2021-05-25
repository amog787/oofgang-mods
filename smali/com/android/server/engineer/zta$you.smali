.class Lcom/android/server/engineer/zta$you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/se/omapi/SEService$OnConnectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/engineer/zta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/engineer/zta;


# direct methods
.method constructor <init>(Lcom/android/server/engineer/zta;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/engineer/zta$you;->zta:Lcom/android/server/engineer/zta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 5

    const-string v0, "EngineerShell_NfcUtils"

    const-string v1, "SE Service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xa

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/server/engineer/zta$you;->zta:Lcom/android/server/engineer/zta;

    invoke-static {v3}, Lcom/android/server/engineer/zta;->you(Lcom/android/server/engineer/zta;)Landroid/se/omapi/SEService;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/engineer/zta$you;->zta:Lcom/android/server/engineer/zta;

    invoke-static {v3}, Lcom/android/server/engineer/zta;->you(Lcom/android/server/engineer/zta;)Landroid/se/omapi/SEService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/se/omapi/SEService;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    :try_start_0
    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3}, Ljava/lang/Thread;-><init>()V

    const-wide/16 v3, 0xc8

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {}, Lcom/android/server/engineer/zta;->sis()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Waiting SE service ready: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "Listener receive connected action, but mService is null or no connect"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_1
    add-int/lit8 v3, v2, 0x1

    if-le v2, v1, :cond_1

    goto :goto_2

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/android/server/engineer/zta$you;->zta:Lcom/android/server/engineer/zta;

    invoke-static {v1}, Lcom/android/server/engineer/zta;->you(Lcom/android/server/engineer/zta;)Landroid/se/omapi/SEService;

    move-result-object v1

    invoke-virtual {v1}, Landroid/se/omapi/SEService;->isConnected()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const-string p0, "Show CPLC failed, cannot get SE service"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/server/engineer/zta$you;->zta:Lcom/android/server/engineer/zta;

    invoke-static {v0}, Lcom/android/server/engineer/zta;->rtg(Lcom/android/server/engineer/zta;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/engineer/zta;->tsu(Lcom/android/server/engineer/zta;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/engineer/zta$you;->zta:Lcom/android/server/engineer/zta;

    invoke-static {v0}, Lcom/android/server/engineer/zta;->ssp(Lcom/android/server/engineer/zta;)V

    iget-object v0, p0, Lcom/android/server/engineer/zta$you;->zta:Lcom/android/server/engineer/zta;

    invoke-static {v0}, Lcom/android/server/engineer/zta;->cno(Lcom/android/server/engineer/zta;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/server/engineer/zta$you;->zta:Lcom/android/server/engineer/zta;

    invoke-static {p0}, Lcom/android/server/engineer/zta;->cno(Lcom/android/server/engineer/zta;)Ljava/util/Timer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Timer;->cancel()V

    :cond_4
    return-void
.end method
