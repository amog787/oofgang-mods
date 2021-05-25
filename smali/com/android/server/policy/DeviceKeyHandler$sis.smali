.class Lcom/android/server/policy/DeviceKeyHandler$sis;
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

    iput-object p1, p0, Lcom/android/server/policy/DeviceKeyHandler$sis;->zta:Lcom/android/server/policy/DeviceKeyHandler;

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

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    const v1, 0x3dcccccd    # 0.1f

    cmpl-float p1, p1, v1

    if-lez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object p1, p0, Lcom/android/server/policy/DeviceKeyHandler$sis;->zta:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-static {p1}, Lcom/android/server/policy/DeviceKeyHandler;->igw(Lcom/android/server/policy/DeviceKeyHandler;)Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lcom/android/server/policy/DeviceKeyHandler$sis$zta;

    invoke-direct {v1, p0, v0}, Lcom/android/server/policy/DeviceKeyHandler$sis$zta;-><init>(Lcom/android/server/policy/DeviceKeyHandler$sis;Z)V

    const-wide/16 v2, 0x28

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
