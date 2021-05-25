.class public Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController$zta;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "zta"
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;


# direct methods
.method public constructor <init>(Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController$zta;->zta:Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;

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

    const-string v0, "[scene] Auto backlight Settings changed!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController$zta;->zta:Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->access$200(Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController$zta;->zta:Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;

    invoke-static {p0, v0}, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->access$202(Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;Z)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController$zta;->zta:Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->access$300(Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController$zta;->zta:Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->access$400(Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController$zta;->zta:Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;

    invoke-static {p0, v0}, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->access$500(Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;Z)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController$zta;->zta:Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;

    invoke-static {p0, v0}, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->access$302(Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;Z)Z

    :cond_3
    :goto_0
    return-void
.end method
