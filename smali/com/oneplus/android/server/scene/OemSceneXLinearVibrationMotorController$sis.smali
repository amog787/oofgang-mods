.class Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$sis;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$sis;->zta:Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$sis;->zta:Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;

    invoke-static {v0}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->access$100(Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$sis;->zta:Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;

    invoke-static {v1}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->access$400(Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iget-object v3, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$sis;->zta:Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;

    invoke-static {v3}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->access$400(Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v3

    invoke-static {v3}, Landroid/media/AudioDeviceInfo;->convertInternalDeviceToDeviceType(I)I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$sis;->zta:Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;

    invoke-static {v5}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->access$400(Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;)Landroid/media/AudioManager;

    move-result-object v5

    invoke-virtual {v5, v2, v1, v4}, Landroid/media/AudioManager;->getStreamVolumeDb(III)F

    move-result v2

    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-eqz v5, :cond_1

    const-wide/16 v1, 0xc8

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    iget-object v1, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$sis;->zta:Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;

    invoke-static {v1}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->access$100(Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_1
    sget-boolean v5, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mDebug:Z

    if-eqz v5, :cond_2

    const-string v5, "XLVMotor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateVolume device:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " type:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "decibels="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " mCurrentVolumeIndex="

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->access$500()Lcom/oneplus/android/server/scene/sis;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/oneplus/android/server/scene/sis;->you(F)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    const/16 v1, 0x19

    if-le v0, v1, :cond_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    return-void
.end method
