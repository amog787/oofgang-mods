.class public Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController$you;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "you"
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;


# direct methods
.method public constructor <init>(Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController$you;->zta:Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    invoke-static {}, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->access$000()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "OemSceneAutoBrightnessController"

    const-string v0, "[scene] Block auto backlight Settings changed!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController$you;->zta:Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;

    invoke-static {p0}, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->access$100(Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->updateFunctionRule(I)V

    return-void
.end method
