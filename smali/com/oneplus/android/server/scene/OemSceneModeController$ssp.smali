.class Lcom/oneplus/android/server/scene/OemSceneModeController$ssp;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/scene/OemSceneModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ssp"
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/android/server/scene/OemSceneModeController;


# direct methods
.method public constructor <init>(Lcom/oneplus/android/server/scene/OemSceneModeController;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneModeController$ssp;->zta:Lcom/oneplus/android/server/scene/OemSceneModeController;

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    invoke-static {}, Lcom/oneplus/android/server/scene/OemSceneModeController;->ibl()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "OemSceneModeController"

    const-string v0, "[car mode] CarMode changed!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneModeController$ssp;->zta:Lcom/oneplus/android/server/scene/OemSceneModeController;

    invoke-static {p0}, Lcom/oneplus/android/server/scene/OemSceneModeController;->bvj(Lcom/oneplus/android/server/scene/OemSceneModeController;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
