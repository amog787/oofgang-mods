.class public Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController$FloatingWindowController;
.super Lcom/oneplus/core/oimc/IOIMCRemoteAction$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FloatingWindowController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;


# direct methods
.method public constructor <init>(Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController$FloatingWindowController;->this$0:Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;

    invoke-direct {p0}, Lcom/oneplus/core/oimc/IOIMCRemoteAction$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfig(Ljava/lang/String;)I
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;->ssp:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[scene] FloatingWindowController: config => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OemSceneFloatingWindowController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController$FloatingWindowController;->this$0:Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;->zta(Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;Z)V

    goto :goto_0

    :cond_1
    const-string v0, "stop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController$FloatingWindowController;->this$0:Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;

    invoke-static {p0, v1}, Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;->zta(Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;Z)V

    :cond_2
    :goto_0
    return v1
.end method

.method public onStart([Ljava/lang/String;)I
    .locals 1

    sget-boolean p1, Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;->ssp:Z

    if-eqz p1, :cond_0

    const-string p1, "OemSceneFloatingWindowController"

    const-string v0, "[scene] FloatingWindowController: start"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController$FloatingWindowController;->this$0:Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;->zta(Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public onStop([Ljava/lang/String;)I
    .locals 1

    sget-boolean p1, Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;->ssp:Z

    if-eqz p1, :cond_0

    const-string p1, "OemSceneFloatingWindowController"

    const-string v0, "[scene] FloatingWindowController: stop"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController$FloatingWindowController;->this$0:Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;->zta(Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;Z)V

    return p1
.end method
