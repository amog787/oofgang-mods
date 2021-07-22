.class public Lcom/oneplus/libs/FlipDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FlipDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field protected final mBack:Landroid/graphics/drawable/Drawable;

.field private final mFlipAnimator:Landroid/animation/ValueAnimator;

.field protected final mFlipDurationMs:J

.field private mFlipFraction:F

.field private mFlipToSide:Z

.field protected mFront:Landroid/graphics/drawable/Drawable;

.field protected final mPostFlipDurationMs:J

.field protected final mPreFlipDurationMs:J


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;III)V
    .locals 1

    .line 88
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/oneplus/libs/FlipDrawable;->mFlipFraction:F

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/oneplus/libs/FlipDrawable;->mFlipToSide:Z

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 92
    iput-object p1, p0, Lcom/oneplus/libs/FlipDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    .line 93
    iput-object p2, p0, Lcom/oneplus/libs/FlipDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    .line 95
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 96
    iget-object p1, p0, Lcom/oneplus/libs/FlipDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    int-to-long p1, p3

    .line 98
    iput-wide p1, p0, Lcom/oneplus/libs/FlipDrawable;->mFlipDurationMs:J

    int-to-long p1, p4

    .line 99
    iput-wide p1, p0, Lcom/oneplus/libs/FlipDrawable;->mPreFlipDurationMs:J

    int-to-long p1, p5

    .line 100
    iput-wide p1, p0, Lcom/oneplus/libs/FlipDrawable;->mPostFlipDurationMs:J

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 102
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iget-wide p2, p0, Lcom/oneplus/libs/FlipDrawable;->mPreFlipDurationMs:J

    iget-wide p4, p0, Lcom/oneplus/libs/FlipDrawable;->mFlipDurationMs:J

    add-long/2addr p2, p4

    iget-wide p4, p0, Lcom/oneplus/libs/FlipDrawable;->mPostFlipDurationMs:J

    add-long/2addr p2, p4

    .line 103
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/libs/FlipDrawable;->mFlipAnimator:Landroid/animation/ValueAnimator;

    .line 104
    new-instance p2, Lcom/oneplus/libs/FlipDrawable$1;

    invoke-direct {p2, p0}, Lcom/oneplus/libs/FlipDrawable$1;-><init>(Lcom/oneplus/libs/FlipDrawable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 116
    invoke-virtual {p0}, Lcom/oneplus/libs/FlipDrawable;->reset()V

    return-void

    .line 90
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Front and back drawables must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :array_0
    .array-data 4
        0x0
        0x40000000    # 2.0f
    .end array-data
.end method

.method static synthetic access$000(Lcom/oneplus/libs/FlipDrawable;)F
    .locals 0

    .line 40
    iget p0, p0, Lcom/oneplus/libs/FlipDrawable;->mFlipFraction:F

    return p0
.end method

.method static synthetic access$002(Lcom/oneplus/libs/FlipDrawable;F)F
    .locals 0

    .line 40
    iput p1, p0, Lcom/oneplus/libs/FlipDrawable;->mFlipFraction:F

    return p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 133
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 134
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 166
    iget-object v0, p0, Lcom/oneplus/libs/FlipDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 167
    iget-object p0, p0, Lcom/oneplus/libs/FlipDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 168
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    :goto_0
    return-void
.end method

.method public flip()V
    .locals 1

    .line 244
    iget-boolean v0, p0, Lcom/oneplus/libs/FlipDrawable;->mFlipToSide:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/libs/FlipDrawable;->mFlipToSide:Z

    .line 245
    iget-object v0, p0, Lcom/oneplus/libs/FlipDrawable;->mFlipAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object p0, p0, Lcom/oneplus/libs/FlipDrawable;->mFlipAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_0

    .line 248
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/libs/FlipDrawable;->mFlipToSide:Z

    if-nez v0, :cond_1

    .line 249
    iget-object p0, p0, Lcom/oneplus/libs/FlipDrawable;->mFlipAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 251
    :cond_1
    iget-object p0, p0, Lcom/oneplus/libs/FlipDrawable;->mFlipAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    :goto_0
    return-void
.end method

.method public flipTo(Z)V
    .locals 1

    .line 262
    iget-boolean v0, p0, Lcom/oneplus/libs/FlipDrawable;->mFlipToSide:Z

    if-eq v0, p1, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/oneplus/libs/FlipDrawable;->flip()V

    :cond_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/oneplus/libs/FlipDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    iget-object p0, p0, Lcom/oneplus/libs/FlipDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result p0

    invoke-static {v0, p0}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result p0

    return p0
.end method

.method public getSideFlippingTowards()Z
    .locals 0

    .line 236
    iget-boolean p0, p0, Lcom/oneplus/libs/FlipDrawable;->mFlipToSide:Z

    return p0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 195
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/oneplus/libs/FlipDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/oneplus/libs/FlipDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 121
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 122
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object p1, p0, Lcom/oneplus/libs/FlipDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 124
    iget-object p0, p0, Lcom/oneplus/libs/FlipDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/oneplus/libs/FlipDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 127
    iget-object p0, p0, Lcom/oneplus/libs/FlipDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/oneplus/libs/FlipDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/oneplus/libs/FlipDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public reset()V
    .locals 2

    .line 213
    iget v0, p0, Lcom/oneplus/libs/FlipDrawable;->mFlipFraction:F

    .line 214
    iget-object v1, p0, Lcom/oneplus/libs/FlipDrawable;->mFlipAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 215
    iget-boolean v1, p0, Lcom/oneplus/libs/FlipDrawable;->mFlipToSide:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    :goto_0
    iput v1, p0, Lcom/oneplus/libs/FlipDrawable;->mFlipFraction:F

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_1

    .line 217
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .line 200
    invoke-virtual {p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/oneplus/libs/FlipDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 174
    iget-object p0, p0, Lcom/oneplus/libs/FlipDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/oneplus/libs/FlipDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 180
    iget-object p0, p0, Lcom/oneplus/libs/FlipDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setState([I)Z
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/oneplus/libs/FlipDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/oneplus/libs/FlipDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/oneplus/libs/FlipDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 293
    iget-object p0, p0, Lcom/oneplus/libs/FlipDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/oneplus/libs/FlipDrawable;->mFront:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 287
    iget-object p0, p0, Lcom/oneplus/libs/FlipDrawable;->mBack:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 205
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
