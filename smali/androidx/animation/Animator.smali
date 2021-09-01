.class public abstract Landroidx/animation/Animator;
.super Ljava/lang/Object;
.source "Animator.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/animation/Animator$AnimatorUpdateListener;,
        Landroidx/animation/Animator$AnimatorListener;
    }
.end annotation


# instance fields
.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field mPauseListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mPaused:Z

.field mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/animation/Animator$AnimatorUpdateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Landroidx/animation/Animator;->mListeners:Ljava/util/ArrayList;

    .line 43
    iput-object v0, p0, Landroidx/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    .line 48
    iput-object v0, p0, Landroidx/animation/Animator;->mUpdateListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Landroidx/animation/Animator;->mPaused:Z

    return-void
.end method

.method static addAnimationCallback(Landroidx/animation/AnimationHandler$AnimationFrameCallback;)V
    .locals 1

    .line 406
    invoke-static {}, Landroidx/animation/AnimationHandler;->getInstance()Landroidx/animation/AnimationHandler;

    move-result-object v0

    .line 407
    invoke-virtual {v0, p0}, Landroidx/animation/AnimationHandler;->addAnimationFrameCallback(Landroidx/animation/AnimationHandler$AnimationFrameCallback;)V

    return-void
.end method

.method static removeAnimationCallback(Landroidx/animation/AnimationHandler$AnimationFrameCallback;)V
    .locals 1

    .line 411
    invoke-static {}, Landroidx/animation/AnimationHandler;->getInstance()Landroidx/animation/AnimationHandler;

    move-result-object v0

    .line 412
    invoke-virtual {v0, p0}, Landroidx/animation/AnimationHandler;->removeCallback(Landroidx/animation/AnimationHandler$AnimationFrameCallback;)V

    return-void
.end method


# virtual methods
.method public addListener(Landroidx/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 270
    iget-object v0, p0, Landroidx/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/animation/Animator;->mListeners:Ljava/util/ArrayList;

    .line 273
    :cond_0
    iget-object p0, p0, Landroidx/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancel()V
    .locals 0

    return-void
.end method

.method public clone()Landroidx/animation/Animator;
    .locals 3

    .line 392
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/animation/Animator;

    .line 393
    iget-object v1, p0, Landroidx/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 394
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroidx/animation/Animator;->mListeners:Ljava/util/ArrayList;

    .line 396
    :cond_0
    iget-object v1, p0, Landroidx/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 397
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Landroidx/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroidx/animation/Animator;->mPauseListeners:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    .line 401
    :catch_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 28
    invoke-virtual {p0}, Landroidx/animation/Animator;->clone()Landroidx/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public end()V
    .locals 0

    return-void
.end method

.method public abstract getDuration()J
.end method

.method public abstract getStartDelay()J
.end method

.method public getTotalDuration()J
    .locals 5

    .line 208
    invoke-virtual {p0}, Landroidx/animation/Animator;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 212
    :cond_0
    invoke-virtual {p0}, Landroidx/animation/Animator;->getStartDelay()J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2
.end method

.method isInitialized()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract isRunning()Z
.end method

.method public isStarted()Z
    .locals 0

    .line 260
    invoke-virtual {p0}, Landroidx/animation/Animator;->isRunning()Z

    move-result p0

    return p0
.end method

.method pulseAnimationFrame(J)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public removeListener(Landroidx/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 283
    iget-object v0, p0, Landroidx/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 286
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 287
    iget-object p1, p0, Landroidx/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 288
    iput-object p1, p0, Landroidx/animation/Animator;->mListeners:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method

.method reverse()V
    .locals 1

    .line 461
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Reverse is not supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract setDuration(J)Landroidx/animation/Animator;
.end method

.method public abstract setInterpolator(Landroidx/animation/Interpolator;)V
.end method

.method skipToEndValue(Z)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method startWithoutPulsing(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 482
    invoke-virtual {p0}, Landroidx/animation/Animator;->reverse()V

    goto :goto_0

    .line 484
    :cond_0
    invoke-virtual {p0}, Landroidx/animation/Animator;->start()V

    :goto_0
    return-void
.end method
