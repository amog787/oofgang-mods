.class Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$tsu;
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

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$tsu;->zta:Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$tsu;->zta:Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;

    invoke-static {v0}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->access$600(Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, -0x1

    const-string v0, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_a

    goto :goto_0

    :cond_2
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$tsu;->zta:Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;

    invoke-static {p0}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->access$300(Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;)V

    goto/16 :goto_3

    :cond_3
    const-string v1, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    const-string p1, "android.media.extra.AUDIO_PLUG_STATE"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_4

    goto :goto_1

    :cond_4
    move v2, v0

    :goto_1
    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$tsu;->zta:Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->access$100(Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;)Z

    move-result p1

    if-eqz p1, :cond_a

    if-eqz v2, :cond_5

    new-instance p1, Ljava/lang/Thread;

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$tsu;->zta:Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->updateVolumeRunnableForDP:Ljava/lang/Runnable;

    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_3

    :cond_5
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$tsu;->zta:Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->updateVolumeRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x9c4

    goto :goto_2

    :cond_6
    const-string p2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$tsu;->zta:Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;

    invoke-static {p2}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->access$100(Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;)Z

    move-result p2

    if-nez p2, :cond_7

    return-void

    :cond_7
    iget-object p2, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$tsu;->zta:Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;

    invoke-static {p2}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->access$700(Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;)Landroid/telephony/TelephonyManager;

    move-result-object p2

    if-nez p2, :cond_8

    iget-object p2, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$tsu;->zta:Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    invoke-static {p2, p1}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->access$702(Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;

    :cond_8
    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$tsu;->zta:Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->access$700(Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result p1

    if-eqz p1, :cond_9

    if-ne p1, v2, :cond_a

    :cond_9
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$tsu;->zta:Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->updateVolumeRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    :goto_2
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_a
    :goto_3
    return-void
.end method
