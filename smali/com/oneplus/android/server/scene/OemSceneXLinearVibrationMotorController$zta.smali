.class Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$zta;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$zta;->zta:Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    iget-object p2, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$zta;->zta:Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    invoke-static {p2, p1}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->access$002(Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;Z)Z

    sget-boolean p1, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mDebug:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mGlobalBluetoothA2dpOn "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$zta;->zta:Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;

    invoke-static {p2}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->access$000(Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "XLVMotor"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$zta;->zta:Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->access$100(Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;)Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$zta;->zta:Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->access$000(Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$zta;->zta:Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;

    invoke-static {p0, v0}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->access$200(Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;Z)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$zta;->zta:Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;

    invoke-virtual {p1}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->updateFunctionRule()V

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$zta;->zta:Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->updateVolumeRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x9c4

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_1
    return-void
.end method
