.class public Lcom/oneplus/android/server/scene/OemSceneVibrationController$AllowWhiteVibration;
.super Lcom/oneplus/core/oimc/IOIMCRemoteAction$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/scene/OemSceneVibrationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AllowWhiteVibration"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/scene/OemSceneVibrationController;


# direct methods
.method public constructor <init>(Lcom/oneplus/android/server/scene/OemSceneVibrationController;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneVibrationController$AllowWhiteVibration;->this$0:Lcom/oneplus/android/server/scene/OemSceneVibrationController;

    invoke-direct {p0}, Lcom/oneplus/core/oimc/IOIMCRemoteAction$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfig(Ljava/lang/String;)I
    .locals 0

    sget-boolean p0, Lcom/oneplus/android/server/scene/OemSceneVibrationController;->cno:Z

    if-eqz p0, :cond_0

    const-string p0, "OemSceneVibrationController"

    const-string p1, "[scene] AllowWhiteVibration: config"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onStart([Ljava/lang/String;)I
    .locals 2

    sget-boolean p1, Lcom/oneplus/android/server/scene/OemSceneVibrationController;->cno:Z

    if-eqz p1, :cond_0

    const-string p1, "OemSceneVibrationController"

    const-string v0, "[scene] AllowWhiteVibration: start"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneVibrationController$AllowWhiteVibration;->this$0:Lcom/oneplus/android/server/scene/OemSceneVibrationController;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/OemSceneVibrationController;->zta(Lcom/oneplus/android/server/scene/OemSceneVibrationController;)Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oem.intent.action.CANCEL_VIBRATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneVibrationController$AllowWhiteVibration;->this$0:Lcom/oneplus/android/server/scene/OemSceneVibrationController;

    sget-object p1, Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;->you:Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/oneplus/android/server/scene/OemSceneVibrationController;->you(Lcom/oneplus/android/server/scene/OemSceneVibrationController;IZ)V

    const/4 p0, 0x0

    return p0
.end method

.method public onStop([Ljava/lang/String;)I
    .locals 1

    sget-boolean p1, Lcom/oneplus/android/server/scene/OemSceneVibrationController;->cno:Z

    if-eqz p1, :cond_0

    const-string p1, "OemSceneVibrationController"

    const-string v0, "[scene] AllowWhiteVibration: stop"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneVibrationController$AllowWhiteVibration;->this$0:Lcom/oneplus/android/server/scene/OemSceneVibrationController;

    sget-object p1, Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;->you:Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/oneplus/android/server/scene/OemSceneVibrationController;->you(Lcom/oneplus/android/server/scene/OemSceneVibrationController;IZ)V

    return v0
.end method
