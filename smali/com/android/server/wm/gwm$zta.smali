.class Lcom/android/server/wm/gwm$zta;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/gwm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zta"
.end annotation


# instance fields
.field private rtg:Lcom/android/server/wm/SurfaceAnimator;

.field private sis:Lcom/android/server/wm/SurfaceAnimator;

.field final synthetic ssp:Lcom/android/server/wm/gwm;

.field private tsu:Lcom/android/server/wm/SurfaceAnimator;

.field private you:Lcom/android/server/wm/SurfaceAnimator;

.field private zta:Lcom/android/server/wm/SurfaceAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/wm/gwm;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private cno(Lcom/android/server/wm/SurfaceAnimator$Animatable;Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)Lcom/android/server/wm/SurfaceAnimator;
    .locals 2

    new-instance v0, Lcom/android/server/wm/SurfaceAnimator;

    iget-object v1, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {v1}, Lcom/android/server/wm/gwm;->zta(Lcom/android/server/wm/gwm;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    invoke-direct {v0, p1, p3, v1}, Lcom/android/server/wm/SurfaceAnimator;-><init>(Lcom/android/server/wm/SurfaceAnimator$Animatable;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;Lcom/android/server/wm/WindowManagerService;)V

    new-instance p1, Lcom/android/server/wm/LocalAnimationAdapter;

    iget-object p3, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {p3}, Lcom/android/server/wm/gwm;->zta(Lcom/android/server/wm/gwm;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p3

    iget-object p3, p3, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-direct {p1, p2, p3}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    iget-object p0, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {p0}, Lcom/android/server/wm/gwm;->igw(Lcom/android/server/wm/gwm;)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    const/4 p2, 0x0

    const/4 p3, 0x2

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/server/wm/SurfaceAnimator;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V

    return-object v0
.end method

.method private dma()Lcom/android/server/wm/SurfaceAnimator;
    .locals 3

    invoke-direct {p0}, Lcom/android/server/wm/gwm$zta;->sis()Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {v1}, Lcom/android/server/wm/gwm;->ywr(Lcom/android/server/wm/gwm;)Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setSurfaceControl(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {v1}, Lcom/android/server/wm/gwm;->igw(Lcom/android/server/wm/gwm;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getOverlayLayer()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setAnimationLeashParent(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {v1}, Lcom/android/server/wm/gwm;->dma(Lcom/android/server/wm/gwm;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setWidth(I)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {v1}, Lcom/android/server/wm/gwm;->gck(Lcom/android/server/wm/gwm;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setHeight(I)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->build()Lcom/android/server/wm/SurfaceAnimator$Animatable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {v1}, Lcom/android/server/wm/gwm;->qbh(Lcom/android/server/wm/gwm;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wm/gwm$zta;->you(Landroid/view/animation/Animation;)Lcom/android/server/wm/WindowAnimationSpec;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/ssp;

    invoke-direct {v2, p0}, Lcom/android/server/wm/ssp;-><init>(Lcom/android/server/wm/gwm$zta;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/gwm$zta;->cno(Lcom/android/server/wm/SurfaceAnimator$Animatable;Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)Lcom/android/server/wm/SurfaceAnimator;

    move-result-object p0

    return-object p0
.end method

.method private igw()Lcom/android/server/wm/SurfaceAnimator;
    .locals 3

    invoke-direct {p0}, Lcom/android/server/wm/gwm$zta;->sis()Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {v1}, Lcom/android/server/wm/gwm;->igw(Lcom/android/server/wm/gwm;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setAnimationLeashParent(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {v1}, Lcom/android/server/wm/gwm;->igw(Lcom/android/server/wm/gwm;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getWindowingLayer()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setSurfaceControl(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {v1}, Lcom/android/server/wm/gwm;->igw(Lcom/android/server/wm/gwm;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setParentSurfaceControl(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {v1}, Lcom/android/server/wm/gwm;->igw(Lcom/android/server/wm/gwm;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getSurfaceWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setWidth(I)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {v1}, Lcom/android/server/wm/gwm;->igw(Lcom/android/server/wm/gwm;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getSurfaceHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setHeight(I)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->build()Lcom/android/server/wm/SurfaceAnimator$Animatable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {v1}, Lcom/android/server/wm/gwm;->wtn(Lcom/android/server/wm/gwm;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wm/gwm$zta;->you(Landroid/view/animation/Animation;)Lcom/android/server/wm/WindowAnimationSpec;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/ssp;

    invoke-direct {v2, p0}, Lcom/android/server/wm/ssp;-><init>(Lcom/android/server/wm/gwm$zta;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/gwm$zta;->cno(Lcom/android/server/wm/SurfaceAnimator$Animatable;Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)Lcom/android/server/wm/SurfaceAnimator;

    move-result-object p0

    return-object p0
.end method

.method private kth()V
    .locals 11

    iget-object v0, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {v0}, Lcom/android/server/wm/gwm;->ssp(Lcom/android/server/wm/gwm;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    iget-object v0, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {v0}, Lcom/android/server/wm/gwm;->zta(Lcom/android/server/wm/gwm;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    const/4 v1, 0x3

    new-array v9, v1, [F

    iget-object v1, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {v1}, Lcom/android/server/wm/gwm;->cno(Lcom/android/server/wm/gwm;)F

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {v2}, Lcom/android/server/wm/gwm;->cno(Lcom/android/server/wm/gwm;)F

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {v3}, Lcom/android/server/wm/gwm;->cno(Lcom/android/server/wm/gwm;)F

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(FFF)I

    move-result v7

    iget-object v1, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {v1}, Lcom/android/server/wm/gwm;->kth(Lcom/android/server/wm/gwm;)F

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {v2}, Lcom/android/server/wm/gwm;->kth(Lcom/android/server/wm/gwm;)F

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {v3}, Lcom/android/server/wm/gwm;->kth(Lcom/android/server/wm/gwm;)F

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(FFF)I

    move-result v8

    int-to-long v1, v10

    iget-object v3, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {v3}, Lcom/android/server/wm/gwm;->zta(Lcom/android/server/wm/gwm;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getCurrentAnimatorScale()F

    move-result v3

    float-to-long v3, v3

    mul-long v4, v1, v3

    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v6

    new-instance v1, Lcom/android/server/wm/gwm$zta$zta;

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/server/wm/gwm$zta$zta;-><init>(Lcom/android/server/wm/gwm$zta;JLandroid/animation/ArgbEvaluator;II[FI)V

    iget-object v2, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {v2}, Lcom/android/server/wm/gwm;->bio(Lcom/android/server/wm/gwm;)Landroid/view/SurfaceControl;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {p0}, Lcom/android/server/wm/gwm;->igw(Lcom/android/server/wm/gwm;)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/android/server/wm/SurfaceAnimationRunner;->startAnimation(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V

    return-void
.end method

.method private qbh()Lcom/android/server/wm/SurfaceAnimator;
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {v0}, Lcom/android/server/wm/gwm;->bvj(Lcom/android/server/wm/gwm;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/gwm$zta;->sis()Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {v1}, Lcom/android/server/wm/gwm;->ywr(Lcom/android/server/wm/gwm;)Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setSurfaceControl(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {v1}, Lcom/android/server/wm/gwm;->igw(Lcom/android/server/wm/gwm;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayCoveredLayer()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setAnimationLeashParent(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->build()Lcom/android/server/wm/SurfaceAnimator$Animatable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {v1}, Lcom/android/server/wm/gwm;->sis(Lcom/android/server/wm/gwm;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wm/gwm$zta;->you(Landroid/view/animation/Animation;)Lcom/android/server/wm/WindowAnimationSpec;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/ssp;

    invoke-direct {v2, p0}, Lcom/android/server/wm/ssp;-><init>(Lcom/android/server/wm/gwm$zta;)V

    :goto_0
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/gwm$zta;->cno(Lcom/android/server/wm/SurfaceAnimator$Animatable;Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)Lcom/android/server/wm/SurfaceAnimator;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/gwm$zta;->sis()Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {v1}, Lcom/android/server/wm/gwm;->ywr(Lcom/android/server/wm/gwm;)Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setSurfaceControl(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {v1}, Lcom/android/server/wm/gwm;->igw(Lcom/android/server/wm/gwm;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getOverlayLayer()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setAnimationLeashParent(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->build()Lcom/android/server/wm/SurfaceAnimator$Animatable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {v1}, Lcom/android/server/wm/gwm;->sis(Lcom/android/server/wm/gwm;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wm/gwm$zta;->you(Landroid/view/animation/Animation;)Lcom/android/server/wm/WindowAnimationSpec;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/ssp;

    invoke-direct {v2, p0}, Lcom/android/server/wm/ssp;-><init>(Lcom/android/server/wm/gwm$zta;)V

    goto :goto_0
.end method

.method public static synthetic rtg(Lcom/android/server/wm/gwm$zta;ILcom/android/server/wm/AnimationAdapter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/gwm$zta;->ssp(ILcom/android/server/wm/AnimationAdapter;)V

    return-void
.end method

.method private sis()Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;
    .locals 3

    new-instance v0, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    invoke-direct {v0}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {v1}, Lcom/android/server/wm/gwm;->igw(Lcom/android/server/wm/gwm;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/wm/zta;

    invoke-direct {v2, v1}, Lcom/android/server/wm/zta;-><init>(Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setPendingTransactionSupplier(Ljava/util/function/Supplier;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {v1}, Lcom/android/server/wm/gwm;->igw(Lcom/android/server/wm/gwm;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/wm/you;

    invoke-direct {v2, v1}, Lcom/android/server/wm/you;-><init>(Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setCommitTransactionRunnable(Ljava/lang/Runnable;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {p0}, Lcom/android/server/wm/gwm;->igw(Lcom/android/server/wm/gwm;)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/wm/sis;

    invoke-direct {v1, p0}, Lcom/android/server/wm/sis;-><init>(Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setAnimationLeashSupplier(Ljava/util/function/Supplier;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object p0

    return-object p0
.end method

.method private ssp(ILcom/android/server/wm/AnimationAdapter;)V
    .locals 3

    iget-object p2, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {p2}, Lcom/android/server/wm/gwm;->zta(Lcom/android/server/wm/gwm;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p2

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/gwm$zta;->tsu()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_4

    const-string v0, "OpLandscapeAppAnimationImprovement"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LandscapeApp still animating: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/wm/gwm$zta;->zta:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz p1, :cond_0

    const-string p1, "OpLandscapeAppAnimationImprovement"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDisplayAnimator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/gwm$zta;->zta:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/gwm$zta;->tsu:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz p1, :cond_1

    const-string p1, "OpLandscapeAppAnimationImprovement"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDisplayAnimator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/gwm$zta;->tsu:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/gwm$zta;->sis:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz p1, :cond_2

    const-string p1, "OpLandscapeAppAnimationImprovement"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDisplayAnimator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/gwm$zta;->sis:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p1, p0, Lcom/android/server/wm/gwm$zta;->you:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz p1, :cond_3

    const-string p1, "OpLandscapeAppAnimationImprovement"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDisplayAnimator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/gwm$zta;->you:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object p1, p0, Lcom/android/server/wm/gwm$zta;->rtg:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz p1, :cond_4

    const-string p1, "OpLandscapeAppAnimationImprovement"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mScreenshotOverlayAlphaAnimator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/gwm$zta;->rtg:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {p0}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    monitor-exit p2

    return-void

    :cond_5
    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_6

    const-string p1, "OpLandscapeAppAnimationImprovement"

    const-string v0, "LandscapeAppAnimation onAnimationEnd"

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/gwm$zta;->tsu:Lcom/android/server/wm/SurfaceAnimator;

    iput-object p1, p0, Lcom/android/server/wm/gwm$zta;->you:Lcom/android/server/wm/SurfaceAnimator;

    iput-object p1, p0, Lcom/android/server/wm/gwm$zta;->sis:Lcom/android/server/wm/SurfaceAnimator;

    iget-object p1, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {p1}, Lcom/android/server/wm/gwm;->zta(Lcom/android/server/wm/gwm;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v0, p1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    iget-object p1, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-virtual {p1}, Lcom/android/server/wm/gwm;->kill()V

    iget-object p1, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {p1}, Lcom/android/server/wm/gwm;->zta(Lcom/android/server/wm/gwm;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/android/server/wm/WindowManagerService;->updateRotation(ZZ)V

    iget-object p1, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {p1}, Lcom/android/server/wm/gwm;->zta(Lcom/android/server/wm/gwm;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {p0}, Lcom/android/server/wm/gwm;->igw(Lcom/android/server/wm/gwm;)Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/wm/AccessibilityController;->onRotationChangedLocked(Lcom/android/server/wm/DisplayContent;)V

    :cond_7
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private wtn()Lcom/android/server/wm/SurfaceAnimator;
    .locals 3

    invoke-direct {p0}, Lcom/android/server/wm/gwm$zta;->sis()Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {v1}, Lcom/android/server/wm/gwm;->oif(Lcom/android/server/wm/gwm;)Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setSurfaceControl(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {v1}, Lcom/android/server/wm/gwm;->igw(Lcom/android/server/wm/gwm;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getOverlayLayer()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setAnimationLeashParent(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->build()Lcom/android/server/wm/SurfaceAnimator$Animatable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {v1}, Lcom/android/server/wm/gwm;->wtn(Lcom/android/server/wm/gwm;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wm/gwm$zta;->you(Landroid/view/animation/Animation;)Lcom/android/server/wm/WindowAnimationSpec;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/ssp;

    invoke-direct {v2, p0}, Lcom/android/server/wm/ssp;-><init>(Lcom/android/server/wm/gwm$zta;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/gwm$zta;->cno(Lcom/android/server/wm/SurfaceAnimator$Animatable;Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)Lcom/android/server/wm/SurfaceAnimator;

    move-result-object p0

    return-object p0
.end method

.method private you(Landroid/view/animation/Animation;)Lcom/android/server/wm/WindowAnimationSpec;
    .locals 3

    new-instance p0, Lcom/android/server/wm/WindowAnimationSpec;

    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/wm/WindowAnimationSpec;-><init>(Landroid/view/animation/Animation;Landroid/graphics/Point;ZF)V

    return-object p0
.end method

.method private ywr()Lcom/android/server/wm/SurfaceAnimator;
    .locals 3

    invoke-direct {p0}, Lcom/android/server/wm/gwm$zta;->sis()Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {v1}, Lcom/android/server/wm/gwm;->tsu(Lcom/android/server/wm/gwm;)Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setSurfaceControl(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {v1}, Lcom/android/server/wm/gwm;->igw(Lcom/android/server/wm/gwm;)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getOverlayLayer()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setAnimationLeashParent(Landroid/view/SurfaceControl;)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {v1}, Lcom/android/server/wm/gwm;->dma(Lcom/android/server/wm/gwm;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setWidth(I)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {v1}, Lcom/android/server/wm/gwm;->gck(Lcom/android/server/wm/gwm;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->setHeight(I)Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/SimpleSurfaceAnimatable$Builder;->build()Lcom/android/server/wm/SurfaceAnimator$Animatable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {v1}, Lcom/android/server/wm/gwm;->rtg(Lcom/android/server/wm/gwm;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wm/gwm$zta;->you(Landroid/view/animation/Animation;)Lcom/android/server/wm/WindowAnimationSpec;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/ssp;

    invoke-direct {v2, p0}, Lcom/android/server/wm/ssp;-><init>(Lcom/android/server/wm/gwm$zta;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/gwm$zta;->cno(Lcom/android/server/wm/SurfaceAnimator$Animatable;Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)Lcom/android/server/wm/SurfaceAnimator;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method bio()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {v0}, Lcom/android/server/wm/gwm;->zta(Lcom/android/server/wm/gwm;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->deferStartingAnimations()V

    invoke-direct {p0}, Lcom/android/server/wm/gwm$zta;->dma()Lcom/android/server/wm/SurfaceAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/gwm$zta;->sis:Lcom/android/server/wm/SurfaceAnimator;

    invoke-direct {p0}, Lcom/android/server/wm/gwm$zta;->igw()Lcom/android/server/wm/SurfaceAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/gwm$zta;->zta:Lcom/android/server/wm/SurfaceAnimator;

    iget-object v0, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {v0}, Lcom/android/server/wm/gwm;->you(Lcom/android/server/wm/gwm;)Lcom/android/server/wm/BlackFrame;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/gwm$zta;->wtn()Lcom/android/server/wm/SurfaceAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/gwm$zta;->tsu:Lcom/android/server/wm/SurfaceAnimator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {p0}, Lcom/android/server/wm/gwm;->zta(Lcom/android/server/wm/gwm;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {p0}, Lcom/android/server/wm/SurfaceAnimationRunner;->continueStartingAnimations()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {p0}, Lcom/android/server/wm/gwm;->zta(Lcom/android/server/wm/gwm;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {p0}, Lcom/android/server/wm/SurfaceAnimationRunner;->continueStartingAnimations()V

    throw v0
.end method

.method gck()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {v0}, Lcom/android/server/wm/gwm;->zta(Lcom/android/server/wm/gwm;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->deferStartingAnimations()V

    invoke-direct {p0}, Lcom/android/server/wm/gwm$zta;->igw()Lcom/android/server/wm/SurfaceAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/gwm$zta;->zta:Lcom/android/server/wm/SurfaceAnimator;

    invoke-direct {p0}, Lcom/android/server/wm/gwm$zta;->qbh()Lcom/android/server/wm/SurfaceAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/gwm$zta;->you:Lcom/android/server/wm/SurfaceAnimator;

    invoke-direct {p0}, Lcom/android/server/wm/gwm$zta;->ywr()Lcom/android/server/wm/SurfaceAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/gwm$zta;->rtg:Lcom/android/server/wm/SurfaceAnimator;

    invoke-direct {p0}, Lcom/android/server/wm/gwm$zta;->kth()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {p0}, Lcom/android/server/wm/gwm;->zta(Lcom/android/server/wm/gwm;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {p0}, Lcom/android/server/wm/SurfaceAnimationRunner;->continueStartingAnimations()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {p0}, Lcom/android/server/wm/gwm;->zta(Lcom/android/server/wm/gwm;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {p0}, Lcom/android/server/wm/SurfaceAnimationRunner;->continueStartingAnimations()V

    throw v0
.end method

.method public tsu()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/gwm$zta;->zta:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/gwm$zta;->tsu:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/gwm$zta;->sis:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/gwm$zta;->you:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/gwm$zta;->rtg:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    const/4 p0, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public zta()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/gwm$zta;->tsu:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/gwm$zta;->you:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation()V

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/gwm$zta;->sis:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation()V

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/gwm$zta;->zta:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation()V

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/gwm$zta;->rtg:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation()V

    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {v0}, Lcom/android/server/wm/gwm;->bio(Lcom/android/server/wm/gwm;)Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {v0}, Lcom/android/server/wm/gwm;->zta(Lcom/android/server/wm/gwm;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    iget-object p0, p0, Lcom/android/server/wm/gwm$zta;->ssp:Lcom/android/server/wm/gwm;

    invoke-static {p0}, Lcom/android/server/wm/gwm;->bio(Lcom/android/server/wm/gwm;)Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/SurfaceAnimationRunner;->onAnimationCancelled(Landroid/view/SurfaceControl;)V

    :cond_5
    return-void
.end method
