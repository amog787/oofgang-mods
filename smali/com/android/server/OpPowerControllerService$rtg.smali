.class Lcom/android/server/OpPowerControllerService$rtg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OpPowerControllerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/OpPowerControllerService;


# direct methods
.method constructor <init>(Lcom/android/server/OpPowerControllerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OpPowerControllerService$rtg;->zta:Lcom/android/server/OpPowerControllerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .locals 6

    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/OpPowerControllerService$rtg;->zta:Lcom/android/server/OpPowerControllerService;

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/OpPowerControllerService;->getSleepState(Ljava/time/LocalDateTime;)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/OpPowerControllerService;->access$502(I)I

    const-string v1, "OpPowerControllerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Alarm triggered, mSleepState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$500()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/igw$zta;->zta(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v2, "net.oneplus.powercontroller.intent.SLEEP_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "state"

    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$500()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/OpPowerControllerService$rtg;->zta:Lcom/android/server/OpPowerControllerService;

    invoke-static {v2}, Lcom/android/server/OpPowerControllerService;->access$600(Lcom/android/server/OpPowerControllerService;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$500()I

    move-result v2

    const/16 v3, 0x15be

    if-ne v2, v3, :cond_0

    const-string v2, "sl"

    const-string v4, "1"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/OpPowerControllerService$rtg;->zta:Lcom/android/server/OpPowerControllerService;

    invoke-static {v2}, Lcom/android/server/OpPowerControllerService;->access$700(Lcom/android/server/OpPowerControllerService;)I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/OpPowerControllerService$rtg;->zta:Lcom/android/server/OpPowerControllerService;

    invoke-static {v2}, Lcom/android/server/OpPowerControllerService;->access$800(Lcom/android/server/OpPowerControllerService;)I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/android/server/OpPowerControllerService$rtg;->zta:Lcom/android/server/OpPowerControllerService;

    invoke-static {v2}, Lcom/android/server/OpPowerControllerService;->access$900(Lcom/android/server/OpPowerControllerService;)Lcom/android/server/OpPowerControllerService$qbh;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    :goto_0
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$500()I

    move-result v2

    const/16 v3, 0x1e6c

    if-ne v2, v3, :cond_1

    const-string v2, "sl"

    const-string v4, "0"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/OpPowerControllerService$rtg;->zta:Lcom/android/server/OpPowerControllerService;

    invoke-static {v2}, Lcom/android/server/OpPowerControllerService;->access$700(Lcom/android/server/OpPowerControllerService;)I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/OpPowerControllerService$rtg;->zta:Lcom/android/server/OpPowerControllerService;

    invoke-static {v2}, Lcom/android/server/OpPowerControllerService;->access$200(Lcom/android/server/OpPowerControllerService;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/OpPowerControllerService$rtg;->zta:Lcom/android/server/OpPowerControllerService;

    invoke-static {v2}, Lcom/android/server/OpPowerControllerService;->access$900(Lcom/android/server/OpPowerControllerService;)Lcom/android/server/OpPowerControllerService$qbh;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "appid"

    const-string v4, "NYNCG4I0TI"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/OpPowerControllerService$rtg;->zta:Lcom/android/server/OpPowerControllerService;

    invoke-static {v3}, Lcom/android/server/OpPowerControllerService;->access$1000(Lcom/android/server/OpPowerControllerService;)Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/OpPowerControllerService$rtg;->zta:Lcom/android/server/OpPowerControllerService;

    invoke-static {v3}, Lcom/android/server/OpPowerControllerService;->access$1000(Lcom/android/server/OpPowerControllerService;)Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/OpPowerControllerService$rtg;->zta:Lcom/android/server/OpPowerControllerService;

    invoke-static {v4}, Lcom/android/server/OpPowerControllerService;->access$600(Lcom/android/server/OpPowerControllerService;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "usersleep"

    invoke-virtual {v3, v4, v5, v1, v2}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    :cond_2
    iget-object p0, p0, Lcom/android/server/OpPowerControllerService$rtg;->zta:Lcom/android/server/OpPowerControllerService;

    invoke-virtual {p0}, Lcom/android/server/OpPowerControllerService;->scheduleNextAlarmIfNeededLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
