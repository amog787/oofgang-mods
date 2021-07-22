.class public Lcom/google/android/material/checkbox/CheckableFlipDrawable;
.super Lcom/oneplus/libs/FlipDrawable;
.source "CheckableFlipDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/checkbox/CheckableFlipDrawable$CheckmarkDrawable;,
        Lcom/google/android/material/checkbox/CheckableFlipDrawable$FrontDrawable;
    }
.end annotation


# instance fields
.field private final mCheckmarkAlphaAnimator:Landroid/animation/ValueAnimator;

.field private final mCheckmarkDrawable:Lcom/google/android/material/checkbox/CheckableFlipDrawable$CheckmarkDrawable;

.field private final mFrontDrawable:Lcom/google/android/material/checkbox/CheckableFlipDrawable$FrontDrawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;III)V
    .locals 6

    .line 40
    new-instance v1, Lcom/google/android/material/checkbox/CheckableFlipDrawable$FrontDrawable;

    invoke-direct {v1, p1}, Lcom/google/android/material/checkbox/CheckableFlipDrawable$FrontDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Lcom/google/android/material/checkbox/CheckableFlipDrawable$CheckmarkDrawable;

    invoke-direct {v2, p2, p3, p4}, Lcom/google/android/material/checkbox/CheckableFlipDrawable$CheckmarkDrawable;-><init>(Landroid/content/res/Resources;II)V

    const/4 v4, 0x0

    const/16 v5, 0x96

    move-object v0, p0

    move v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/libs/FlipDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;III)V

    .line 43
    iget-object p1, p0, Lcom/oneplus/libs/FlipDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    check-cast p1, Lcom/google/android/material/checkbox/CheckableFlipDrawable$FrontDrawable;

    iput-object p1, p0, Lcom/google/android/material/checkbox/CheckableFlipDrawable;->mFrontDrawable:Lcom/google/android/material/checkbox/CheckableFlipDrawable$FrontDrawable;

    .line 44
    iget-object p1, p0, Lcom/oneplus/libs/FlipDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    check-cast p1, Lcom/google/android/material/checkbox/CheckableFlipDrawable$CheckmarkDrawable;

    iput-object p1, p0, Lcom/google/android/material/checkbox/CheckableFlipDrawable;->mCheckmarkDrawable:Lcom/google/android/material/checkbox/CheckableFlipDrawable$CheckmarkDrawable;

    .line 55
    iget-wide p1, p0, Lcom/oneplus/libs/FlipDrawable;->mPreFlipDurationMs:J

    iget-wide p3, p0, Lcom/oneplus/libs/FlipDrawable;->mFlipDurationMs:J

    const-wide/16 v0, 0x2

    div-long v2, p3, v0

    add-long/2addr p1, v2

    .line 57
    div-long/2addr p3, v0

    iget-wide v0, p0, Lcom/oneplus/libs/FlipDrawable;->mPostFlipDurationMs:J

    add-long/2addr p3, v0

    const/4 p5, 0x2

    new-array p5, p5, [F

    .line 64
    fill-array-data p5, :array_0

    invoke-static {p5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p5

    .line 65
    invoke-virtual {p5, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/checkbox/CheckableFlipDrawable;->mCheckmarkAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 66
    invoke-virtual {p3, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 67
    iget-object p1, p0, Lcom/google/android/material/checkbox/CheckableFlipDrawable;->mCheckmarkAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/PathInterpolator;

    const p3, 0x3ecccccd    # 0.4f

    const/4 p4, 0x0

    const p5, 0x3e4ccccd    # 0.2f

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p2, p3, p4, p5, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 69
    iget-object p1, p0, Lcom/google/android/material/checkbox/CheckableFlipDrawable;->mCheckmarkAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public flip()V
    .locals 1

    .line 110
    invoke-super {p0}, Lcom/oneplus/libs/FlipDrawable;->flip()V

    .line 124
    iget-object v0, p0, Lcom/google/android/material/checkbox/CheckableFlipDrawable;->mCheckmarkAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object p0, p0, Lcom/google/android/material/checkbox/CheckableFlipDrawable;->mCheckmarkAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/libs/FlipDrawable;->getSideFlippingTowards()Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    iget-object p0, p0, Lcom/google/android/material/checkbox/CheckableFlipDrawable;->mCheckmarkAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 130
    :cond_1
    iget-object p0, p0, Lcom/google/android/material/checkbox/CheckableFlipDrawable;->mCheckmarkAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    :goto_0
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 138
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 143
    iget-object v1, p0, Lcom/google/android/material/checkbox/CheckableFlipDrawable;->mCheckmarkAlphaAnimator:Landroid/animation/ValueAnimator;

    if-ne p1, v1, :cond_0

    .line 144
    iget-object p0, p0, Lcom/google/android/material/checkbox/CheckableFlipDrawable;->mCheckmarkDrawable:Lcom/google/android/material/checkbox/CheckableFlipDrawable$CheckmarkDrawable;

    invoke-virtual {p0, v0}, Lcom/google/android/material/checkbox/CheckableFlipDrawable$CheckmarkDrawable;->setAlphaAnimatorValue(F)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .line 93
    invoke-super {p0}, Lcom/oneplus/libs/FlipDrawable;->reset()V

    .line 99
    iget-object v0, p0, Lcom/google/android/material/checkbox/CheckableFlipDrawable;->mCheckmarkAlphaAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    return-void

    .line 102
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 103
    invoke-virtual {p0}, Lcom/oneplus/libs/FlipDrawable;->getSideFlippingTowards()Z

    move-result v0

    .line 105
    iget-object p0, p0, Lcom/google/android/material/checkbox/CheckableFlipDrawable;->mCheckmarkDrawable:Lcom/google/android/material/checkbox/CheckableFlipDrawable$CheckmarkDrawable;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/checkbox/CheckableFlipDrawable$CheckmarkDrawable;->setAlphaAnimatorValue(F)V

    return-void
.end method

.method public setCheckMarkBackgroundColor(I)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/google/android/material/checkbox/CheckableFlipDrawable;->mCheckmarkDrawable:Lcom/google/android/material/checkbox/CheckableFlipDrawable$CheckmarkDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/material/checkbox/CheckableFlipDrawable$CheckmarkDrawable;->setBackgroundColor(I)V

    .line 79
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setCheckMarkColor(I)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/google/android/material/checkbox/CheckableFlipDrawable;->mCheckmarkDrawable:Lcom/google/android/material/checkbox/CheckableFlipDrawable$CheckmarkDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/material/checkbox/CheckableFlipDrawable$CheckmarkDrawable;->setCheckMarkColor(I)V

    .line 84
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setFront(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/google/android/material/checkbox/CheckableFlipDrawable;->mFrontDrawable:Lcom/google/android/material/checkbox/CheckableFlipDrawable$FrontDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/material/checkbox/CheckableFlipDrawable$FrontDrawable;->setInnerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
