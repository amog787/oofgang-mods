.class Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$ssp;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ssp"
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;


# direct methods
.method public constructor <init>(Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$ssp;->zta:Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController$ssp;->zta:Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;

    invoke-static {p0}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->access$800(Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;)V

    return-void
.end method
