.class public Lcom/oneplus/android/server/scene/kth;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/android/server/zenmode/IZenModeManager;


# instance fields
.field private zta:Lcom/oneplus/android/server/scene/ZenModeObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/oneplus/android/server/scene/ZenModeObserver;->getInstance()Lcom/oneplus/android/server/scene/ZenModeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/server/scene/kth;->zta:Lcom/oneplus/android/server/scene/ZenModeObserver;

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/oneplus/android/server/zenmode/ZenModeInjector$Callback;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/kth;->zta:Lcom/oneplus/android/server/scene/ZenModeObserver;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/scene/ZenModeObserver;->addCallback(Lcom/oneplus/android/server/zenmode/ZenModeInjector$Callback;)V

    return-void
.end method

.method public canActivityGo(Landroid/content/pm/ActivityInfo;)Z
    .locals 0

    invoke-static {p1}, Lcom/oneplus/android/server/scene/OemSceneActivityController;->you(Landroid/content/pm/ActivityInfo;)Z

    move-result p0

    return p0
.end method

.method public canEnterPictureInPicture(Ljava/lang/String;I)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;->you(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public canInitAppOpVisibilityLw(Ljava/lang/String;II)Z
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;->tsu(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public canSetAppOpVisibilityLw(Ljava/lang/String;I)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;->rtg(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public canSetLights(III)Z
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/oneplus/android/server/scene/OemSceneLightsController;->sis(III)Z

    move-result p0

    return p0
.end method

.method public canVibrationGo(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/oneplus/android/server/scene/OemSceneVibrationController;->sis(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isZenModeOn()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/kth;->zta:Lcom/oneplus/android/server/scene/ZenModeObserver;

    invoke-virtual {p0}, Lcom/oneplus/android/server/scene/ZenModeObserver;->isZenModeOn()Z

    move-result p0

    return p0
.end method

.method public needBlockWakeUp(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/kth;->zta:Lcom/oneplus/android/server/scene/ZenModeObserver;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/android/server/scene/ZenModeObserver;->needBlockWakeUp(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public shouldBlockNotifSound(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/kth;->zta:Lcom/oneplus/android/server/scene/ZenModeObserver;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/scene/ZenModeObserver;->shouldBlockNotifSound(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
