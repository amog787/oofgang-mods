.class Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$you;
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

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$you;->zta:Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$you;->zta:Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;

    invoke-static {v0}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->access$100(Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$you;->zta:Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;

    invoke-static {p0}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->access$300(Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;)V

    :cond_0
    return-void
.end method
