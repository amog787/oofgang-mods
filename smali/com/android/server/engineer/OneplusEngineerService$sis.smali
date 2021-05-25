.class Lcom/android/server/engineer/OneplusEngineerService$sis;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/engineer/you$zta;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/engineer/OneplusEngineerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/engineer/OneplusEngineerService;


# direct methods
.method constructor <init>(Lcom/android/server/engineer/OneplusEngineerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/engineer/OneplusEngineerService$sis;->zta:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public you()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$sis;->zta:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->cno(Lcom/android/server/engineer/OneplusEngineerService;)Lcom/android/server/engineer/you;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/engineer/you;->oxb()Z

    move-result v0

    invoke-static {}, Lcom/android/server/engineer/ssp;->bvj()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$sis;->zta:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-virtual {v0}, Lcom/android/server/engineer/OneplusEngineerService;->hmo()Z

    move-result v0

    const-string v1, "OneplusEngineerService"

    if-eqz v0, :cond_0

    const-string p0, "reset wp state success"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string p0, "sys.usb.config.meta"

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set usb charge switch caught exception : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/16 p0, 0x66

    const-string v0, "WriteProtectResetDone"

    const-string v1, "ANDROID"

    const-string v2, "WriteProtectIssue"

    invoke-static {p0, v0, v1, v2, v0}, Lcom/android/server/engineer/ssp;->lqr(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const-string v0, "reset wp state fail"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService$sis;->zta:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p0}, Lcom/android/server/engineer/OneplusEngineerService;->kth(Lcom/android/server/engineer/OneplusEngineerService;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public zta()V
    .locals 0

    return-void
.end method
