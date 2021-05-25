.class public Lcom/oneplus/android/server/scene/OemSceneModeController$wtn;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/scene/OemSceneModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "wtn"
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/android/server/scene/OemSceneModeController;


# direct methods
.method public constructor <init>(Lcom/oneplus/android/server/scene/OemSceneModeController;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneModeController$wtn;->zta:Lcom/oneplus/android/server/scene/OemSceneModeController;

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneModeController$wtn;->zta:Lcom/oneplus/android/server/scene/OemSceneModeController;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/OemSceneModeController;->zta(Lcom/oneplus/android/server/scene/OemSceneModeController;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneModeController$wtn;->zta:Lcom/oneplus/android/server/scene/OemSceneModeController;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/OemSceneModeController;->you(Lcom/oneplus/android/server/scene/OemSceneModeController;)Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "reading_mode_status_manual"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oneplus/android/server/scene/OemSceneModeController;->ywr(Lcom/oneplus/android/server/scene/OemSceneModeController;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneModeController$wtn;->zta:Lcom/oneplus/android/server/scene/OemSceneModeController;

    invoke-static {p0}, Lcom/oneplus/android/server/scene/OemSceneModeController;->bvj(Lcom/oneplus/android/server/scene/OemSceneModeController;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {}, Lcom/oneplus/android/server/scene/OemSceneModeController;->ibl()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "OemSceneModeController"

    const-string p1, "[scene] Read Manual changed!"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method
