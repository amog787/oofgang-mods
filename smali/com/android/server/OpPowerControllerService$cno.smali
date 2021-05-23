.class Lcom/android/server/OpPowerControllerService$cno;
.super Landroid/content/BroadcastReceiver;
.source ""


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

    iput-object p1, p0, Lcom/android/server/OpPowerControllerService$cno;->zta:Lcom/android/server/OpPowerControllerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object p2, p0, Lcom/android/server/OpPowerControllerService$cno;->zta:Lcom/android/server/OpPowerControllerService;

    invoke-static {p2}, Lcom/android/server/OpPowerControllerService;->access$1600(Lcom/android/server/OpPowerControllerService;)Landroid/os/PowerManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/PowerManager;->isLightDeviceIdleMode()Z

    move-result p2

    iget-object v0, p0, Lcom/android/server/OpPowerControllerService$cno;->zta:Lcom/android/server/OpPowerControllerService;

    invoke-static {v0}, Lcom/android/server/OpPowerControllerService;->access$1600(Lcom/android/server/OpPowerControllerService;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", isLightIdle="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isDeepIdle="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OpPowerControllerService"

    invoke-static {p2, p1}, Lcom/android/server/qbh$zta;->zta(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/OpPowerControllerService$cno;->zta:Lcom/android/server/OpPowerControllerService;

    invoke-static {p1}, Lcom/android/server/OpPowerControllerService;->access$1600(Lcom/android/server/OpPowerControllerService;)Landroid/os/PowerManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager;->isLightDeviceIdleMode()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$1500()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "OpPowerControllerService"

    const-string p1, "Enter light idle"

    :goto_0
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v1}, Lcom/android/server/power/OpPowerManagerInjector;->disableExclusiveWakeLocks(Z)V

    goto/16 :goto_4

    :cond_1
    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$1500()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "OpPowerControllerService"

    const-string p2, "Leave light idle"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p0, p0, Lcom/android/server/OpPowerControllerService$cno;->zta:Lcom/android/server/OpPowerControllerService;

    invoke-static {p0}, Lcom/android/server/OpPowerControllerService;->access$1600(Lcom/android/server/OpPowerControllerService;)Landroid/os/PowerManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result p0

    if-nez p0, :cond_19

    :cond_3
    :goto_1
    invoke-static {v1}, Lcom/android/server/power/OpPowerManagerInjector;->enableExclusiveWakeLocks(Z)V

    goto/16 :goto_4

    :cond_4
    const-string v0, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p2, p0, Lcom/android/server/OpPowerControllerService$cno;->zta:Lcom/android/server/OpPowerControllerService;

    invoke-static {p2}, Lcom/android/server/OpPowerControllerService;->access$1600(Lcom/android/server/OpPowerControllerService;)Landroid/os/PowerManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/PowerManager;->isLightDeviceIdleMode()Z

    move-result p2

    iget-object v0, p0, Lcom/android/server/OpPowerControllerService$cno;->zta:Lcom/android/server/OpPowerControllerService;

    invoke-static {v0}, Lcom/android/server/OpPowerControllerService;->access$1600(Lcom/android/server/OpPowerControllerService;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", isLightIdle="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isDeepIdle="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OpPowerControllerService"

    invoke-static {p2, p1}, Lcom/android/server/qbh$zta;->zta(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/OpPowerControllerService$cno;->zta:Lcom/android/server/OpPowerControllerService;

    invoke-static {p0}, Lcom/android/server/OpPowerControllerService;->access$1600(Lcom/android/server/OpPowerControllerService;)Landroid/os/PowerManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result p0

    if-nez p0, :cond_5

    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$1500()Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "OpPowerControllerService"

    const-string p1, "Leave deep idle"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$1500()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "OpPowerControllerService"

    const-string p1, "Enter deep idle"

    goto/16 :goto_0

    :cond_6
    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_3

    :cond_7
    const-string v0, "net.oneplus.powercontroller.intent.OPSM"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x5

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p1, p0, Lcom/android/server/OpPowerControllerService$cno;->zta:Lcom/android/server/OpPowerControllerService;

    invoke-static {p1}, Lcom/android/server/OpPowerControllerService;->access$700(Lcom/android/server/OpPowerControllerService;)I

    move-result p1

    if-lez p1, :cond_8

    iget-object p1, p0, Lcom/android/server/OpPowerControllerService$cno;->zta:Lcom/android/server/OpPowerControllerService;

    invoke-static {p1}, Lcom/android/server/OpPowerControllerService;->access$800(Lcom/android/server/OpPowerControllerService;)I

    move-result p1

    if-ne p1, v2, :cond_8

    iget-object p0, p0, Lcom/android/server/OpPowerControllerService$cno;->zta:Lcom/android/server/OpPowerControllerService;

    invoke-static {p0}, Lcom/android/server/OpPowerControllerService;->access$900(Lcom/android/server/OpPowerControllerService;)Lcom/android/server/OpPowerControllerService$qbh;

    move-result-object p0

    const/16 p1, 0x15be

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_8
    monitor-exit v0

    goto/16 :goto_4

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_9
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 p1, -0x1

    const-string v0, "plugged"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p0, p0, Lcom/android/server/OpPowerControllerService$cno;->zta:Lcom/android/server/OpPowerControllerService;

    and-int/lit8 p1, p1, 0x7

    if-eqz p1, :cond_a

    const/4 v1, 0x1

    :cond_a
    invoke-static {p0, v1}, Lcom/android/server/OpPowerControllerService;->access$302(Lcom/android/server/OpPowerControllerService;Z)Z

    goto/16 :goto_4

    :cond_b
    const-string v0, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object p0, p0, Lcom/android/server/OpPowerControllerService$cno;->zta:Lcom/android/server/OpPowerControllerService;

    invoke-static {p0}, Lcom/android/server/OpPowerControllerService;->access$900(Lcom/android/server/OpPowerControllerService;)Lcom/android/server/OpPowerControllerService$qbh;

    move-result-object p0

    const/16 p1, 0x10

    :goto_2
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_4

    :cond_c
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/android/server/OpPowerControllerService$cno;->zta:Lcom/android/server/OpPowerControllerService;

    invoke-static {p0}, Lcom/android/server/OpPowerControllerService;->access$900(Lcom/android/server/OpPowerControllerService;)Lcom/android/server/OpPowerControllerService$qbh;

    move-result-object p0

    const/16 p1, 0xf

    goto :goto_2

    :cond_d
    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$1500()Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "net.oneplus.powercontroller.action.RECORD_IDLE_ITEM"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/OpPowerControllerService$cno;->zta:Lcom/android/server/OpPowerControllerService;

    invoke-static {v0}, Lcom/android/server/OpPowerControllerService;->access$900(Lcom/android/server/OpPowerControllerService;)Lcom/android/server/OpPowerControllerService$qbh;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_e
    const-string v0, "net.oneplus.powercontroller.action.RESTORE_IDLE_ITEM"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/OpPowerControllerService$cno;->zta:Lcom/android/server/OpPowerControllerService;

    invoke-static {v0}, Lcom/android/server/OpPowerControllerService;->access$900(Lcom/android/server/OpPowerControllerService;)Lcom/android/server/OpPowerControllerService$qbh;

    move-result-object v0

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_f
    const-string v0, "net.oneplus.powercontroller.action.PROCESS_KMEANS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/android/server/OpPowerControllerService$cno;->zta:Lcom/android/server/OpPowerControllerService;

    invoke-static {p0}, Lcom/android/server/OpPowerControllerService;->access$900(Lcom/android/server/OpPowerControllerService;)Lcom/android/server/OpPowerControllerService$qbh;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_10
    const-string p0, "net.oneplus.powercontroller.action.IDLE_STATS_CONFIG"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    const-string p0, "seed"

    invoke-virtual {p2, p0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const-string p1, "cluster"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "min_rec"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "minIdle"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "max_idle"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "min_len"

    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "max_len"

    invoke-virtual {p2, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "tolerance"

    invoke-virtual {p2, v6, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-lez p0, :cond_11

    invoke-static {p0}, Lcom/android/server/OpPowerControllerService;->access$1702(I)I

    :cond_11
    if-lez p1, :cond_12

    invoke-static {p1}, Lcom/android/server/OpPowerControllerService;->access$1802(I)I

    :cond_12
    if-lez v0, :cond_13

    invoke-static {v0}, Lcom/android/server/OpPowerControllerService;->access$1902(I)I

    :cond_13
    if-lez v2, :cond_14

    invoke-static {v2}, Lcom/android/server/OpPowerControllerService;->access$2002(I)I

    :cond_14
    if-lez v3, :cond_15

    invoke-static {v3}, Lcom/android/server/OpPowerControllerService;->access$2102(I)I

    :cond_15
    if-lez v4, :cond_16

    invoke-static {v4}, Lcom/android/server/OpPowerControllerService;->access$2202(I)I

    :cond_16
    if-lez v5, :cond_17

    invoke-static {v5}, Lcom/android/server/OpPowerControllerService;->access$2302(I)I

    :cond_17
    if-lez p2, :cond_19

    invoke-static {p2}, Lcom/android/server/OpPowerControllerService;->access$2402(I)I

    goto :goto_4

    :cond_18
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "action: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OpPowerControllerService"

    invoke-static {p2, p1}, Lcom/android/server/qbh$zta;->zta(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/OpPowerControllerService;->access$000()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_1
    iget-object p0, p0, Lcom/android/server/OpPowerControllerService$cno;->zta:Lcom/android/server/OpPowerControllerService;

    invoke-virtual {p0}, Lcom/android/server/OpPowerControllerService;->scheduleNextAlarmIfNeededLocked()V

    monitor-exit p1

    :cond_19
    :goto_4
    return-void

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method
