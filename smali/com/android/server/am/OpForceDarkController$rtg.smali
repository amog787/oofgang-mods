.class Lcom/android/server/am/OpForceDarkController$rtg;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/OpForceDarkController;->scheduleUpdateAppOpsDelay(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic you:Lcom/android/server/am/OpForceDarkController;

.field final synthetic zta:J


# direct methods
.method constructor <init>(Lcom/android/server/am/OpForceDarkController;J)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OpForceDarkController$rtg;->you:Lcom/android/server/am/OpForceDarkController;

    iput-wide p2, p0, Lcom/android/server/am/OpForceDarkController$rtg;->zta:J

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object p1, p0, Lcom/android/server/am/OpForceDarkController$rtg;->you:Lcom/android/server/am/OpForceDarkController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateAppOps Due to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/server/am/OpForceDarkController;->access$200(Lcom/android/server/am/OpForceDarkController;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/android/server/am/OpForceDarkController$rtg;->you:Lcom/android/server/am/OpForceDarkController;

    invoke-static {p1}, Lcom/android/server/am/OpForceDarkController;->access$1500(Lcom/android/server/am/OpForceDarkController;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/am/OpForceDarkController$rtg;->you:Lcom/android/server/am/OpForceDarkController;

    invoke-static {p1}, Lcom/android/server/am/OpForceDarkController;->access$1200(Lcom/android/server/am/OpForceDarkController;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/am/OpForceDarkController$rtg;->you:Lcom/android/server/am/OpForceDarkController;

    invoke-static {p1}, Lcom/android/server/am/OpForceDarkController;->access$1200(Lcom/android/server/am/OpForceDarkController;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x3e9

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-wide p1, p0, Lcom/android/server/am/OpForceDarkController$rtg;->zta:J

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/am/OpForceDarkController$rtg;->you:Lcom/android/server/am/OpForceDarkController;

    invoke-static {v1}, Lcom/android/server/am/OpForceDarkController;->access$1200(Lcom/android/server/am/OpForceDarkController;)Landroid/os/Handler;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/am/OpForceDarkController$rtg;->you:Lcom/android/server/am/OpForceDarkController;

    invoke-static {p0}, Lcom/android/server/am/OpForceDarkController;->access$1200(Lcom/android/server/am/OpForceDarkController;)Landroid/os/Handler;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v1, p0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method
