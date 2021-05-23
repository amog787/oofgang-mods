.class Lcom/android/server/policy/DeviceKeyHandler$tsu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/SensorEventListener;


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

    iput-object p1, p0, Lcom/android/server/policy/DeviceKeyHandler$tsu;->zta:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    invoke-static {}, Lcom/android/server/policy/DeviceKeyHandler;->wtn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mProximityListener.onSensorChanged(): values[0]: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DeviceKeyHandler"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler$tsu;->zta:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-static {v0}, Lcom/android/server/policy/DeviceKeyHandler;->gck(Lcom/android/server/policy/DeviceKeyHandler;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v1

    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler$tsu;->zta:Lcom/android/server/policy/DeviceKeyHandler;

    const v3, 0x3dcccccd    # 0.1f

    cmpl-float p1, p1, v3

    if-lez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v2, v1}, Lcom/android/server/policy/DeviceKeyHandler;->ywr(Lcom/android/server/policy/DeviceKeyHandler;Z)Z

    invoke-static {}, Lcom/android/server/policy/DeviceKeyHandler;->wtn()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "DeviceKeyHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mProximityListener.onSensorChanged(): active = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler$tsu;->zta:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-static {v2}, Lcom/android/server/policy/DeviceKeyHandler;->dma(Lcom/android/server/policy/DeviceKeyHandler;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p0, p0, Lcom/android/server/policy/DeviceKeyHandler$tsu;->zta:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-static {p0}, Lcom/android/server/policy/DeviceKeyHandler;->gck(Lcom/android/server/policy/DeviceKeyHandler;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
