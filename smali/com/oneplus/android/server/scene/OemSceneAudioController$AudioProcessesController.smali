.class public Lcom/oneplus/android/server/scene/OemSceneAudioController$AudioProcessesController;
.super Lcom/oneplus/core/oimc/IOIMCRemoteAction$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/scene/OemSceneAudioController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AudioProcessesController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/scene/OemSceneAudioController;


# direct methods
.method public constructor <init>(Lcom/oneplus/android/server/scene/OemSceneAudioController;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneAudioController$AudioProcessesController;->this$0:Lcom/oneplus/android/server/scene/OemSceneAudioController;

    invoke-direct {p0}, Lcom/oneplus/core/oimc/IOIMCRemoteAction$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfig(Ljava/lang/String;)I
    .locals 0

    sget-boolean p0, Lcom/oneplus/android/server/scene/OemSceneAudioController;->rtg:Z

    if-eqz p0, :cond_0

    const-string p0, "OemSceneAudioController"

    const-string p1, "[scene] AudioProcessesController: config"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onStart([Ljava/lang/String;)I
    .locals 1

    sget-boolean p1, Lcom/oneplus/android/server/scene/OemSceneAudioController;->rtg:Z

    if-eqz p1, :cond_0

    const-string p1, "OemSceneAudioController"

    const-string v0, "[scene] AudioProcessesController: start"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneAudioController$AudioProcessesController;->this$0:Lcom/oneplus/android/server/scene/OemSceneAudioController;

    invoke-static {p0}, Lcom/oneplus/android/server/scene/OemSceneAudioController;->zta(Lcom/oneplus/android/server/scene/OemSceneAudioController;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onStop([Ljava/lang/String;)I
    .locals 0

    sget-boolean p0, Lcom/oneplus/android/server/scene/OemSceneAudioController;->rtg:Z

    if-eqz p0, :cond_0

    const-string p0, "OemSceneAudioController"

    const-string p1, "[scene] AudioProcessesController: stop"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
