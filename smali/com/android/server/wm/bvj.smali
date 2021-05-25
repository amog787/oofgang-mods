.class public Lcom/android/server/wm/bvj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/wm/IOpDisplayContent;


# static fields
.field private static bio:Lcom/android/server/wm/ActivityRecord; = null

.field private static final cno:Z

.field private static igw:Lcom/android/server/wm/ActivityRecord; = null

.field private static final kth:Ljava/lang/String; = "OpDisplayContent"


# instance fields
.field private rtg:Landroid/view/SurfaceSession;

.field private sis:I

.field private ssp:Landroid/view/SurfaceControl;

.field private tsu:Lcom/android/server/wm/DisplayContent;

.field private you:Landroid/view/Display;

.field private zta:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/wm/bvj;->cno:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wm/bvj;->bio:Lcom/android/server/wm/ActivityRecord;

    sput-object v0, Lcom/android/server/wm/bvj;->igw:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/bvj;->rtg:Landroid/view/SurfaceSession;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/bvj;->ssp:Landroid/view/SurfaceControl;

    return-void
.end method

.method public static you()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    sget-object v0, Lcom/android/server/wm/bvj;->igw:Lcom/android/server/wm/ActivityRecord;

    return-object v0
.end method

.method public static zta()Lcom/android/server/wm/ActivityRecord;
    .locals 1

    sget-object v0, Lcom/android/server/wm/bvj;->bio:Lcom/android/server/wm/ActivityRecord;

    return-object v0
.end method


# virtual methods
.method public handleAppTransitionReady()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/bvj;->tsu:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->mIsNotificationRemoteInputeDraft:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public init(Lcom/android/server/wm/WindowManagerService;Landroid/view/Display;Lcom/android/server/wm/DisplayContent;)V
    .locals 2

    const-string v0, "OpDisplayContent"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/wm/bvj;->zta:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/bvj;->you:Landroid/view/Display;

    invoke-virtual {p2}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/bvj;->sis:I

    iput-object p3, p0, Lcom/android/server/wm/bvj;->tsu:Lcom/android/server/wm/DisplayContent;

    return-void
.end method

.method public makeCovered()Landroid/view/SurfaceControl$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/bvj;->zta:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/bvj;->rtg:Landroid/view/SurfaceSession;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/bvj;->tsu:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayCoveredLayer()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    return-object p0
.end method

.method public removeImmediately()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/bvj;->ssp:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/wm/bvj;->cno:Z

    if-eqz v0, :cond_0

    const-string v0, "OpDisplayContent"

    const-string v1, "removeImmediately(): mCoveredLayer released"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/bvj;->ssp:Landroid/view/SurfaceControl;

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->release()V

    :cond_1
    return-void
.end method

.method public setBooleanNotificationRemoteInputeDraft(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/bvj;->tsu:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    const-string v1, "OpDisplayContent"

    if-eqz v0, :cond_0

    iput-boolean p1, v0, Lcom/android/server/wm/ActivityRecord;->mIsNotificationRemoteInputeDraft:Z

    sget-boolean v0, Lcom/android/server/wm/bvj;->cno:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBooleanNotificationRemoteInputeDraft(): mFocusedApp="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/bvj;->tsu:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", mIsNotificationRemoteInputeDraft = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-boolean p0, Lcom/android/server/wm/bvj;->cno:Z

    if-eqz p0, :cond_1

    const-string p0, "setBooleanNotificationRemoteInputeDraft(): mFocusedApp=null"

    :goto_0
    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public setFocusedApp(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/wm/bvj;->cno:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFocusedApp(): newFocus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpDisplayContent"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/bvj;->tsu:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    sput-object v0, Lcom/android/server/wm/bvj;->bio:Lcom/android/server/wm/ActivityRecord;

    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/bvj;->tsu:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_2

    sput-object p0, Lcom/android/server/wm/bvj;->igw:Lcom/android/server/wm/ActivityRecord;

    :cond_2
    return-void
.end method

.method public setSourceBoundFromIntent(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "OpDisplayContent"

    if-nez p1, :cond_1

    sget-boolean p0, Lcom/android/server/wm/bvj;->cno:Z

    if-eqz p0, :cond_0

    const-string p0, "setSourceBoundFromIntent(): intent=null"

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/wm/bvj;->tsu:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getRootHomeTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/bvj;->tsu:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getRootHomeTask()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    iput-object p1, v1, Lcom/android/server/wm/ActivityStack;->mSourceBoundFromIntent:Landroid/graphics/Rect;

    :cond_2
    sget-boolean v1, Lcom/android/server/wm/bvj;->cno:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSourceBoundFromIntent(): HomeStack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/bvj;->tsu:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootHomeTask()Lcom/android/server/wm/ActivityStack;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", sourceBound="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method
