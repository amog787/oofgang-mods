.class Lcom/android/server/display/zta$sis;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/zta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/display/zta;


# direct methods
.method constructor <init>(Lcom/android/server/display/zta;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/zta$sis;->zta:Lcom/android/server/display/zta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    invoke-static {}, Lcom/android/server/display/zta;->cgv()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "motion:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OpProximityController"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    invoke-static {}, Lcom/android/server/display/zta;->sis()Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {v1, v0}, Lcom/android/server/display/zta;->you(II)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/server/display/zta;->sis()Landroid/os/Handler;

    move-result-object p1

    invoke-static {v1, v0}, Lcom/android/server/display/zta;->you(II)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    invoke-static {v1}, Lcom/android/server/display/zta;->ibl(Z)Z

    invoke-static {}, Lcom/android/server/display/zta;->sis()Landroid/os/Handler;

    move-result-object p1

    invoke-static {v1, v0}, Lcom/android/server/display/zta;->you(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-static {}, Lcom/android/server/display/zta;->sis()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/android/server/display/zta;->lqr()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p0, p0, Lcom/android/server/display/zta$sis;->zta:Lcom/android/server/display/zta;

    const/4 p1, 0x3

    invoke-static {p0, p1}, Lcom/android/server/display/zta;->oif(Lcom/android/server/display/zta;I)V

    :cond_2
    return-void
.end method
