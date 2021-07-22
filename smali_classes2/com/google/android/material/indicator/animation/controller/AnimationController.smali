.class public Lcom/google/android/material/indicator/animation/controller/AnimationController;
.super Ljava/lang/Object;
.source "AnimationController.java"


# instance fields
.field private indicator:Lcom/google/android/material/indicator/draw/data/Indicator;

.field private isInteractive:Z

.field private progress:F

.field private runningAnimation:Lcom/google/android/material/indicator/animation/type/BaseAnimation;

.field private valueController:Lcom/google/android/material/indicator/animation/controller/ValueController;


# direct methods
.method public constructor <init>(Lcom/google/android/material/indicator/draw/data/Indicator;Lcom/google/android/material/indicator/animation/controller/ValueController$UpdateListener;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/google/android/material/indicator/animation/controller/ValueController;

    invoke-direct {v0, p2}, Lcom/google/android/material/indicator/animation/controller/ValueController;-><init>(Lcom/google/android/material/indicator/animation/controller/ValueController$UpdateListener;)V

    iput-object v0, p0, Lcom/google/android/material/indicator/animation/controller/AnimationController;->valueController:Lcom/google/android/material/indicator/animation/controller/ValueController;

    .line 27
    iput-object p1, p0, Lcom/google/android/material/indicator/animation/controller/AnimationController;->indicator:Lcom/google/android/material/indicator/draw/data/Indicator;

    return-void
.end method

.method private animate()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/google/android/material/indicator/animation/controller/AnimationController;->wormAnimation()V

    return-void
.end method

.method private wormAnimation()V
    .locals 7

    .line 53
    iget-object v0, p0, Lcom/google/android/material/indicator/animation/controller/AnimationController;->indicator:Lcom/google/android/material/indicator/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/google/android/material/indicator/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/indicator/animation/controller/AnimationController;->indicator:Lcom/google/android/material/indicator/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/google/android/material/indicator/draw/data/Indicator;->getSelectedPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/indicator/animation/controller/AnimationController;->indicator:Lcom/google/android/material/indicator/draw/data/Indicator;

    invoke-virtual {v0}, Lcom/google/android/material/indicator/draw/data/Indicator;->getLastSelectedPosition()I

    move-result v0

    .line 54
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/indicator/animation/controller/AnimationController;->indicator:Lcom/google/android/material/indicator/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/google/android/material/indicator/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/material/indicator/animation/controller/AnimationController;->indicator:Lcom/google/android/material/indicator/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/google/android/material/indicator/draw/data/Indicator;->getSelectingPosition()I

    move-result v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/material/indicator/animation/controller/AnimationController;->indicator:Lcom/google/android/material/indicator/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/google/android/material/indicator/draw/data/Indicator;->getSelectedPosition()I

    move-result v1

    .line 56
    :goto_1
    iget-object v2, p0, Lcom/google/android/material/indicator/animation/controller/AnimationController;->indicator:Lcom/google/android/material/indicator/draw/data/Indicator;

    invoke-static {v2, v0}, Lcom/google/android/material/indicator/utils/CoordinatesUtils;->getCoordinate(Lcom/google/android/material/indicator/draw/data/Indicator;I)I

    move-result v2

    .line 57
    iget-object v3, p0, Lcom/google/android/material/indicator/animation/controller/AnimationController;->indicator:Lcom/google/android/material/indicator/draw/data/Indicator;

    invoke-static {v3, v1}, Lcom/google/android/material/indicator/utils/CoordinatesUtils;->getCoordinate(Lcom/google/android/material/indicator/draw/data/Indicator;I)I

    move-result v3

    if-le v1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 59
    :goto_2
    iget-object v1, p0, Lcom/google/android/material/indicator/animation/controller/AnimationController;->indicator:Lcom/google/android/material/indicator/draw/data/Indicator;

    invoke-virtual {v1}, Lcom/google/android/material/indicator/draw/data/Indicator;->getRadius()I

    move-result v1

    .line 60
    iget-object v4, p0, Lcom/google/android/material/indicator/animation/controller/AnimationController;->indicator:Lcom/google/android/material/indicator/draw/data/Indicator;

    invoke-virtual {v4}, Lcom/google/android/material/indicator/draw/data/Indicator;->getAnimationDuration()J

    move-result-wide v4

    .line 62
    iget-object v6, p0, Lcom/google/android/material/indicator/animation/controller/AnimationController;->valueController:Lcom/google/android/material/indicator/animation/controller/ValueController;

    .line 63
    invoke-virtual {v6}, Lcom/google/android/material/indicator/animation/controller/ValueController;->worm()Lcom/google/android/material/indicator/animation/type/WormAnimation;

    move-result-object v6

    .line 64
    invoke-virtual {v6, v2, v3, v1, v0}, Lcom/google/android/material/indicator/animation/type/WormAnimation;->with(IIIZ)Lcom/google/android/material/indicator/animation/type/WormAnimation;

    .line 65
    invoke-virtual {v6, v4, v5}, Lcom/google/android/material/indicator/animation/type/WormAnimation;->duration(J)Lcom/google/android/material/indicator/animation/type/WormAnimation;

    .line 67
    iget-boolean v0, p0, Lcom/google/android/material/indicator/animation/controller/AnimationController;->isInteractive:Z

    if-eqz v0, :cond_3

    .line 68
    iget v0, p0, Lcom/google/android/material/indicator/animation/controller/AnimationController;->progress:F

    invoke-virtual {v6, v0}, Lcom/google/android/material/indicator/animation/type/BaseAnimation;->progress(F)Lcom/google/android/material/indicator/animation/type/BaseAnimation;

    goto :goto_3

    .line 70
    :cond_3
    invoke-virtual {v6}, Lcom/google/android/material/indicator/animation/type/BaseAnimation;->start()V

    .line 73
    :goto_3
    iput-object v6, p0, Lcom/google/android/material/indicator/animation/controller/AnimationController;->runningAnimation:Lcom/google/android/material/indicator/animation/type/BaseAnimation;

    return-void
.end method


# virtual methods
.method public basic()V
    .locals 1

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/google/android/material/indicator/animation/controller/AnimationController;->isInteractive:Z

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/google/android/material/indicator/animation/controller/AnimationController;->progress:F

    .line 39
    invoke-direct {p0}, Lcom/google/android/material/indicator/animation/controller/AnimationController;->animate()V

    return-void
.end method

.method public end()V
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/google/android/material/indicator/animation/controller/AnimationController;->runningAnimation:Lcom/google/android/material/indicator/animation/type/BaseAnimation;

    if-eqz p0, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/google/android/material/indicator/animation/type/BaseAnimation;->end()V

    :cond_0
    return-void
.end method

.method public interactive(F)V
    .locals 1

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/google/android/material/indicator/animation/controller/AnimationController;->isInteractive:Z

    .line 32
    iput p1, p0, Lcom/google/android/material/indicator/animation/controller/AnimationController;->progress:F

    .line 33
    invoke-direct {p0}, Lcom/google/android/material/indicator/animation/controller/AnimationController;->animate()V

    return-void
.end method
