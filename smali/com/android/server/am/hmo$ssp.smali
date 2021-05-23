.class public Lcom/android/server/am/hmo$ssp;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/hmo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ssp"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/am/hmo;


# direct methods
.method public constructor <init>(Lcom/android/server/am/hmo;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/hmo$ssp;->zta:Lcom/android/server/am/hmo;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/hmo$ssp;->zta:Lcom/android/server/am/hmo;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Lcom/android/server/am/hmo;->rtg(Lcom/android/server/am/hmo;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/hmo$ssp;->zta:Lcom/android/server/am/hmo;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v2}, Lcom/android/server/am/hmo;->ssp(Lcom/android/server/am/hmo;I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "what:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/server/am/hmo$ssp;->zta:Lcom/android/server/am/hmo;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/am/hmo;->bio(Lcom/android/server/am/hmo;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "packageName"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharArray(Ljava/lang/String;)[C

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/am/hmo$ssp;->zta:Lcom/android/server/am/hmo;

    invoke-static {v1}, Lcom/android/server/am/hmo;->cno(Lcom/android/server/am/hmo;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->getUidState(I)I

    move-result v1

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->rtg()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/OnePlusUtil$zta;->tsu()I

    move-result v2

    invoke-static {}, Lcom/android/server/OnePlusUtil$you;->tsu()Lcom/android/server/OnePlusUtil$you;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/OnePlusUtil$you;->cno(I)Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "try handle unnoticeable:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " uid ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " uid state ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " frontUid ="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isHoldTouchWin ="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "StartAppControl"

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v2, v0, :cond_2

    if-nez v3, :cond_2

    sget-boolean v1, Lcom/android/server/am/hmo;->r:Z

    if-eqz v1, :cond_2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/hmo$ssp;->zta:Lcom/android/server/am/hmo;

    invoke-static {p0}, Lcom/android/server/am/hmo;->kth(Lcom/android/server/am/hmo;)Landroid/app/ActivityManager;

    move-result-object p0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/ActivityManager;->forceStopPackageAsUser(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MSG_FORCE_STOP_UNNOTICEABLE: failed "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
