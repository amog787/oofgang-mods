.class public abstract Landroidx/animation/Animator$AnimatorListener;
.super Ljava/lang/Object;
.source "Animator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AnimatorListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onAnimationCancel(Landroidx/animation/Animator;)V
.end method

.method public abstract onAnimationEnd(Landroidx/animation/Animator;)V
.end method

.method public onAnimationEnd(Landroidx/animation/Animator;Z)V
    .locals 0

    .line 549
    invoke-virtual {p0, p1}, Landroidx/animation/Animator$AnimatorListener;->onAnimationEnd(Landroidx/animation/Animator;)V

    return-void
.end method

.method public abstract onAnimationRepeat(Landroidx/animation/Animator;)V
.end method

.method public abstract onAnimationStart(Landroidx/animation/Animator;)V
.end method

.method public onAnimationStart(Landroidx/animation/Animator;Z)V
    .locals 0

    .line 533
    invoke-virtual {p0, p1}, Landroidx/animation/Animator$AnimatorListener;->onAnimationStart(Landroidx/animation/Animator;)V

    return-void
.end method
