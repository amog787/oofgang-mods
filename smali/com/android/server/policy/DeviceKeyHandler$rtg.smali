.class Lcom/android/server/policy/DeviceKeyHandler$rtg;
.super Landroid/hardware/camera2/CameraManager$TorchCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/DeviceKeyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/policy/DeviceKeyHandler;


# direct methods
.method constructor <init>(Lcom/android/server/policy/DeviceKeyHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/DeviceKeyHandler$rtg;->zta:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$TorchCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTorchModeChanged(Ljava/lang/String;Z)V
    .locals 1

    invoke-static {}, Lcom/android/server/policy/DeviceKeyHandler;->wtn()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTorchModeChanged(): enabled = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DeviceKeyHandler"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/android/server/policy/DeviceKeyHandler$rtg;->zta:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-static {p1}, Lcom/android/server/policy/DeviceKeyHandler;->tsu(Lcom/android/server/policy/DeviceKeyHandler;)Z

    move-result p1

    if-eq p1, p2, :cond_1

    iget-object p0, p0, Lcom/android/server/policy/DeviceKeyHandler$rtg;->zta:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-static {p0, p2}, Lcom/android/server/policy/DeviceKeyHandler;->rtg(Lcom/android/server/policy/DeviceKeyHandler;Z)Z

    :cond_1
    return-void
.end method

.method public onTorchModeUnavailable(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/policy/DeviceKeyHandler$rtg;->zta:Lcom/android/server/policy/DeviceKeyHandler;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/policy/DeviceKeyHandler;->rtg(Lcom/android/server/policy/DeviceKeyHandler;Z)Z

    return-void
.end method
