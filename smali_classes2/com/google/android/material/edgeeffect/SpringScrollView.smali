.class public Lcom/google/android/material/edgeeffect/SpringScrollView;
.super Landroid/widget/ScrollView;
.source "SpringScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/edgeeffect/SpringScrollView$scrollingChangeListener;
    }
.end annotation


# instance fields
.field private mBottomGlow:Landroid/widget/EdgeEffect;

.field private mCanScrollingChangeListener:Lcom/google/android/material/edgeeffect/SpringScrollView$scrollingChangeListener;

.field private mDispatchScrollCounter:I

.field private mEdgeEffectFactory:Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;

.field private mGlowingBottom:Z

.field private mGlowingTop:Z

.field private mLastTouchY:I

.field private mLastX:F

.field private mLastY:F

.field private mLastYVel:F

.field private mMaxFlingVelocity:I

.field private mNestedOffsets:[I

.field mOverScrollNested:Z

.field mPullGrowBottom:F

.field mPullGrowTop:F

.field private mScrollOffset:[I

.field private mScrollPointerId:I

.field private mScrollState:I

.field mScrollStepConsumed:[I

.field private mScrollingAllowed:Z

.field private mSpringLayout:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

.field private mTopGlow:Landroid/widget/EdgeEffect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 56
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mOverScrollNested:Z

    const v0, 0x3dcccccd    # 0.1f

    .line 42
    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mPullGrowTop:F

    const v0, 0x3f666666    # 0.9f

    .line 43
    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mPullGrowBottom:F

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mSpringLayout:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    .line 46
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mGlowingTop:Z

    .line 47
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mGlowingBottom:Z

    .line 53
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mScrollingAllowed:Z

    .line 57
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringScrollView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mOverScrollNested:Z

    const p2, 0x3dcccccd    # 0.1f

    .line 42
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mPullGrowTop:F

    const p2, 0x3f666666    # 0.9f

    .line 43
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mPullGrowBottom:F

    const/4 p2, 0x0

    .line 44
    iput-object p2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mSpringLayout:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    .line 46
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mGlowingTop:Z

    .line 47
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mGlowingBottom:Z

    .line 53
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mScrollingAllowed:Z

    .line 62
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringScrollView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mOverScrollNested:Z

    const p2, 0x3dcccccd    # 0.1f

    .line 42
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mPullGrowTop:F

    const p2, 0x3f666666    # 0.9f

    .line 43
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mPullGrowBottom:F

    const/4 p2, 0x0

    .line 44
    iput-object p2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mSpringLayout:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    .line 46
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mGlowingTop:Z

    .line 47
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mGlowingBottom:Z

    .line 53
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mScrollingAllowed:Z

    .line 67
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringScrollView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mOverScrollNested:Z

    const p2, 0x3dcccccd    # 0.1f

    .line 42
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mPullGrowTop:F

    const p2, 0x3f666666    # 0.9f

    .line 43
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mPullGrowBottom:F

    const/4 p2, 0x0

    .line 44
    iput-object p2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mSpringLayout:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    .line 46
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mGlowingTop:Z

    .line 47
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mGlowingBottom:Z

    .line 53
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mScrollingAllowed:Z

    .line 72
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringScrollView;->init()V

    return-void
.end method

.method private cancelTouch()V
    .locals 1

    .line 479
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringScrollView;->resetTouch()V

    const/4 v0, 0x0

    .line 480
    invoke-virtual {p0, v0}, Lcom/google/android/material/edgeeffect/SpringScrollView;->setScrollState(I)V

    return-void
.end method

.method private init()V
    .locals 2

    .line 76
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mTouchSlop:I

    .line 78
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mMaxFlingVelocity:I

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 79
    iput-object v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mScrollStepConsumed:[I

    new-array v1, v0, [I

    .line 80
    iput-object v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mScrollOffset:[I

    new-array v0, v0, [I

    .line 81
    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mNestedOffsets:[I

    return-void
.end method

.method private isReadyToOverScroll(Z)Z
    .locals 1

    .line 617
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    .line 621
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    .line 629
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method private onPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 484
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 485
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mScrollPointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 487
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mScrollPointerId:I

    .line 488
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mLastTouchY:I

    :cond_1
    return-void
.end method

.method private pullGlows(FFFF)V
    .locals 5

    .line 410
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p3, v0

    if-gtz v0, :cond_4

    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-gez v1, :cond_0

    goto :goto_1

    .line 414
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p3, v1

    cmpg-float v1, p4, v0

    const/4 v2, 0x1

    if-gez v1, :cond_1

    .line 415
    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mPullGrowBottom:F

    cmpg-float v1, p3, v1

    if-gez v1, :cond_1

    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mPullGrowTop:F

    cmpl-float v1, p3, v1

    if-lez v1, :cond_1

    .line 416
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringScrollView;->ensureTopGlow()V

    .line 418
    iget-object p3, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz p3, :cond_2

    neg-float v1, p4

    .line 419
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p1, v3

    invoke-virtual {p3, v1, p1}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 421
    iput-boolean v2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mGlowingTop:Z

    goto :goto_0

    :cond_1
    cmpl-float v1, p4, v0

    if-lez v1, :cond_2

    .line 424
    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mPullGrowTop:F

    cmpl-float v1, p3, v1

    if-lez v1, :cond_2

    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mPullGrowBottom:F

    cmpg-float p3, p3, v1

    if-gez p3, :cond_2

    .line 425
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringScrollView;->ensureBottomGlow()V

    .line 427
    iget-object p3, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz p3, :cond_2

    .line 428
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p4, v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr p1, v4

    sub-float/2addr v3, p1

    invoke-virtual {p3, v1, v3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 430
    iput-boolean v2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mGlowingBottom:Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_3

    cmpl-float p1, p2, v0

    if-nez p1, :cond_3

    cmpl-float p1, p4, v0

    if-eqz p1, :cond_4

    .line 436
    :cond_3
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    :cond_4
    :goto_1
    return-void
.end method

.method private releaseGlows()V
    .locals 3

    .line 459
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mTopGlow:Landroid/widget/EdgeEffect;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 462
    iput-boolean v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mGlowingTop:Z

    .line 463
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 466
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_1

    .line 467
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 469
    iput-boolean v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mGlowingBottom:Z

    .line 470
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    if-eqz v0, :cond_2

    .line 474
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    :cond_2
    return-void
.end method

.method private resetTouch()V
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 451
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 454
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringScrollView;->releaseGlows()V

    return-void
.end method


# virtual methods
.method computeVelocity()F
    .locals 3

    .line 832
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 833
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 835
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mMaxFlingVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 836
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mScrollPointerId:I

    invoke-virtual {v0, p0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result p0

    neg-float p0, p0

    return p0
.end method

.method considerReleasingGlowsOnScroll(II)V
    .locals 1

    .line 649
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mTopGlow:Landroid/widget/EdgeEffect;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_0

    if-lez p2, :cond_0

    .line 650
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 651
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    .line 654
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_1

    if-gez p2, :cond_1

    .line 655
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 656
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_1
    if-eqz v0, :cond_2

    .line 660
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    :cond_2
    return-void
.end method

.method dispatchOnScrolled(II)V
    .locals 2

    .line 494
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mDispatchScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mDispatchScrollCounter:I

    .line 495
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v0

    .line 496
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    .line 497
    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/google/android/material/edgeeffect/SpringScrollView;->onScrollChanged(IIII)V

    .line 498
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/edgeeffect/SpringScrollView;->onScrolled(II)V

    .line 511
    iget p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mDispatchScrollCounter:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mDispatchScrollCounter:I

    return-void
.end method

.method ensureBottomGlow()V
    .locals 4

    .line 389
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mEdgeEffectFactory:Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;

    if-nez v0, :cond_0

    const-string p0, "SpringScrollView"

    const-string v0, "setEdgeEffectFactory first, please!"

    .line 391
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 395
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_2

    const/4 v1, 0x3

    .line 396
    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;->createEdgeEffect(Landroid/view/View;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 397
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 398
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method ensureTopGlow()V
    .locals 4

    .line 371
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mEdgeEffectFactory:Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;

    if-nez v0, :cond_0

    const-string p0, "SpringScrollView"

    const-string v0, "setEdgeEffectFactory first, please!"

    .line 373
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 377
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 378
    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;->createEdgeEffect(Landroid/view/View;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 379
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method invalidateGlows()V
    .locals 1

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mBottomGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mTopGlow:Landroid/widget/EdgeEffect;

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 97
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 98
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 103
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    const/4 v3, 0x2

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_b

    if-eq v0, v6, :cond_9

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/4 v3, 0x5

    if-eq v0, v3, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    goto/16 :goto_2

    .line 223
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/SpringScrollView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    .line 219
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mScrollPointerId:I

    .line 220
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mLastTouchY:I

    goto/16 :goto_2

    .line 213
    :cond_3
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringScrollView;->cancelTouch()V

    goto/16 :goto_2

    .line 159
    :cond_4
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mScrollPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_5

    .line 161
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error processing scroll; pointer index for id "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mScrollPointerId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SpringScrollView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    return v5

    .line 166
    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 167
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v4

    float-to-int v0, v0

    .line 168
    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mLastTouchY:I

    sub-int/2addr v1, v0

    .line 184
    iget v3, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mScrollState:I

    if-eq v3, v6, :cond_8

    .line 186
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mTouchSlop:I

    if-le v3, v4, :cond_7

    if-lez v1, :cond_6

    sub-int/2addr v1, v4

    goto :goto_0

    :cond_6
    add-int/2addr v1, v4

    :goto_0
    move v3, v6

    goto :goto_1

    :cond_7
    move v3, v5

    :goto_1
    if-eqz v3, :cond_8

    .line 197
    invoke-virtual {p0, v6}, Lcom/google/android/material/edgeeffect/SpringScrollView;->setScrollState(I)V

    .line 201
    :cond_8
    iget v3, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mScrollState:I

    if-ne v3, v6, :cond_d

    .line 202
    iget-object v3, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mScrollOffset:[I

    aget v3, v3, v6

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mLastTouchY:I

    .line 203
    invoke-virtual {p0, v5, v1, v2}, Lcom/google/android/material/edgeeffect/SpringScrollView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 204
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_2

    .line 124
    :cond_9
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 126
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v3, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mMaxFlingVelocity:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 127
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mScrollPointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    neg-float v0, v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_a

    .line 130
    invoke-virtual {p0, v5}, Lcom/google/android/material/edgeeffect/SpringScrollView;->setScrollState(I)V

    .line 135
    :cond_a
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringScrollView;->resetTouch()V

    goto :goto_2

    .line 108
    :cond_b
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mScrollPointerId:I

    .line 109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mLastTouchY:I

    .line 111
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mScrollState:I

    if-ne v0, v3, :cond_c

    .line 112
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 113
    invoke-virtual {p0, v6}, Lcom/google/android/material/edgeeffect/SpringScrollView;->setScrollState(I)V

    .line 116
    :cond_c
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mNestedOffsets:[I

    aput v5, v0, v6

    aput v5, v0, v5

    .line 227
    :cond_d
    :goto_2
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 228
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mLastX:F

    .line 229
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mLastY:F

    .line 231
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method onRecyclerViewScrolled()V
    .locals 2

    .line 780
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mSpringLayout:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    if-nez v0, :cond_0

    .line 781
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 782
    instance-of v1, v0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    if-eqz v1, :cond_0

    .line 783
    check-cast v0, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mSpringLayout:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    .line 786
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mSpringLayout:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    if-eqz p0, :cond_1

    .line 787
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->onRecyclerViewScrolled()V

    :cond_1
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 6

    .line 688
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 690
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mCanScrollingChangeListener:Lcom/google/android/material/edgeeffect/SpringScrollView$scrollingChangeListener;

    if-eqz v0, :cond_1

    .line 691
    invoke-interface {v0}, Lcom/google/android/material/edgeeffect/SpringScrollView$scrollingChangeListener;->getDir()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v0

    .line 692
    iget-boolean v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mScrollingAllowed:Z

    if-eq v1, v0, :cond_1

    .line 693
    iput-boolean v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mScrollingAllowed:Z

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mCanScrollingChangeListener:Lcom/google/android/material/edgeeffect/SpringScrollView$scrollingChangeListener;

    invoke-interface {v0}, Lcom/google/android/material/edgeeffect/SpringScrollView$scrollingChangeListener;->getDir()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/material/edgeeffect/SpringScrollView$scrollingChangeListener;->onAllowed(I)V

    goto :goto_0

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mCanScrollingChangeListener:Lcom/google/android/material/edgeeffect/SpringScrollView$scrollingChangeListener;

    invoke-interface {v0}, Lcom/google/android/material/edgeeffect/SpringScrollView$scrollingChangeListener;->getDir()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/material/edgeeffect/SpringScrollView$scrollingChangeListener;->onStop(I)V

    .line 722
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mGlowingTop:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 723
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_2

    if-le p2, p4, :cond_2

    .line 724
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringScrollView;->onRecyclerViewScrolled()V

    .line 730
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mGlowingBottom:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 731
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_3

    if-ge p2, p4, :cond_3

    .line 732
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringScrollView;->onRecyclerViewScrolled()V

    .line 737
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mGlowingTop:Z

    const/high16 v3, 0x41a00000    # 20.0f

    const/4 v4, 0x0

    if-nez v0, :cond_5

    .line 738
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_5

    if-ge p2, p4, :cond_5

    .line 739
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mLastYVel:F

    cmpl-float v1, v0, v4

    if-ltz v1, :cond_4

    .line 744
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringScrollView;->computeVelocity()F

    move-result v0

    .line 748
    :cond_4
    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mLastX:F

    iget v5, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mLastY:F

    div-float/2addr v0, v3

    invoke-direct {p0, v1, v4, v5, v0}, Lcom/google/android/material/edgeeffect/SpringScrollView;->pullGlows(FFFF)V

    .line 750
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_5

    float-to-int v0, v0

    .line 751
    invoke-virtual {v1, v0}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 756
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mGlowingBottom:Z

    if-nez v0, :cond_7

    .line 757
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_7

    if-le p2, p4, :cond_7

    .line 758
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mLastYVel:F

    cmpg-float v1, v0, v4

    if-gtz v1, :cond_6

    .line 763
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringScrollView;->computeVelocity()F

    move-result v0

    .line 767
    :cond_6
    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mLastX:F

    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mLastY:F

    div-float/2addr v0, v3

    invoke-direct {p0, v1, v4, v2, v0}, Lcom/google/android/material/edgeeffect/SpringScrollView;->pullGlows(FFFF)V

    .line 769
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_7

    float-to-int v0, v0

    .line 770
    invoke-virtual {v1, v0}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 776
    :cond_7
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    return-void
.end method

.method public onScrolled(II)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 239
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 240
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 244
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 245
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 246
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_1

    .line 248
    iget-object v5, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mNestedOffsets:[I

    aput v3, v5, v4

    aput v3, v5, v3

    .line 251
    :cond_1
    iget-object v5, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mNestedOffsets:[I

    aget v6, v5, v3

    int-to-float v6, v6

    aget v5, v5, v4

    int-to-float v5, v5

    invoke-virtual {v0, v6, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v1, :cond_c

    if-eq v1, v4, :cond_a

    const/4 v6, 0x2

    if-eq v1, v6, :cond_5

    const/4 v4, 0x3

    if-eq v1, v4, :cond_4

    const/4 v4, 0x5

    if-eq v1, v4, :cond_3

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    goto/16 :goto_3

    .line 356
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/SpringScrollView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    .line 352
    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mScrollPointerId:I

    .line 353
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mLastTouchY:I

    goto/16 :goto_3

    .line 346
    :cond_4
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringScrollView;->cancelTouch()V

    goto/16 :goto_3

    .line 292
    :cond_5
    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mScrollPointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-gez v1, :cond_6

    .line 294
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error processing scroll; pointer index for id "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mScrollPointerId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SpringScrollView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return v3

    .line 299
    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 300
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v5

    float-to-int v1, v1

    .line 301
    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mLastTouchY:I

    sub-int/2addr v2, v1

    .line 317
    iget v5, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mScrollState:I

    if-eq v5, v4, :cond_9

    .line 319
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mTouchSlop:I

    if-le v5, v6, :cond_8

    if-lez v2, :cond_7

    sub-int/2addr v2, v6

    goto :goto_0

    :cond_7
    add-int/2addr v2, v6

    :goto_0
    move v5, v4

    goto :goto_1

    :cond_8
    move v5, v3

    :goto_1
    if-eqz v5, :cond_9

    .line 330
    invoke-virtual {p0, v4}, Lcom/google/android/material/edgeeffect/SpringScrollView;->setScrollState(I)V

    .line 334
    :cond_9
    iget v5, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mScrollState:I

    if-ne v5, v4, :cond_d

    .line 335
    iget-object v5, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mScrollOffset:[I

    aget v5, v5, v4

    sub-int/2addr v1, v5

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mLastTouchY:I

    .line 336
    invoke-virtual {p0, v3, v2, v0}, Lcom/google/android/material/edgeeffect/SpringScrollView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 337
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_3

    .line 273
    :cond_a
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 275
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    iget v5, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mMaxFlingVelocity:I

    int-to-float v5, v5

    invoke-virtual {v1, v2, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 276
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mScrollPointerId:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    neg-float v1, v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_b

    .line 280
    invoke-virtual {p0, v3}, Lcom/google/android/material/edgeeffect/SpringScrollView;->setScrollState(I)V

    goto :goto_2

    .line 286
    :cond_b
    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mLastYVel:F

    .line 289
    :goto_2
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringScrollView;->resetTouch()V

    move v3, v4

    goto :goto_3

    .line 257
    :cond_c
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mScrollPointerId:I

    .line 258
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    add-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mLastTouchY:I

    :cond_d
    :goto_3
    if-nez v3, :cond_e

    .line 360
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 362
    :cond_e
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 363
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mLastX:F

    .line 364
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mLastY:F

    .line 367
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 10

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v2, p2

    move v4, p4

    move/from16 v6, p6

    move/from16 v9, p9

    .line 679
    invoke-super/range {v0 .. v9}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method scrollByInternal(IILandroid/view/MotionEvent;)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 517
    :goto_0
    invoke-direct {p0, v2}, Lcom/google/android/material/edgeeffect/SpringScrollView;->isReadyToOverScroll(Z)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 540
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v2

    if-ltz v2, :cond_2

    .line 541
    iget-object v2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mScrollStepConsumed:[I

    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/material/edgeeffect/SpringScrollView;->scrollStep(II[I)V

    .line 542
    iget-object v2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mScrollStepConsumed:[I

    aget v3, v2, v1

    .line 543
    aget v2, v2, v0

    sub-int v4, p1, v3

    sub-int v5, p2, v2

    goto :goto_1

    :cond_2
    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    .line 549
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    .line 568
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_4

    if-eqz p3, :cond_3

    const/16 v6, 0x2002

    .line 569
    invoke-virtual {p3, v6}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 571
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    int-to-float v4, v4

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    int-to-float v5, v5

    invoke-direct {p0, v6, v4, p3, v5}, Lcom/google/android/material/edgeeffect/SpringScrollView;->pullGlows(FFFF)V

    .line 574
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/edgeeffect/SpringScrollView;->considerReleasingGlowsOnScroll(II)V

    :cond_4
    if-nez v3, :cond_5

    if-eqz v2, :cond_6

    .line 579
    :cond_5
    invoke-virtual {p0, v3, v2}, Lcom/google/android/material/edgeeffect/SpringScrollView;->dispatchOnScrolled(II)V

    .line 582
    :cond_6
    invoke-virtual {p0}, Landroid/widget/ScrollView;->awakenScrollBars()Z

    move-result p1

    if-nez p1, :cond_7

    .line 583
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    :cond_7
    if-nez v3, :cond_9

    if-eqz v2, :cond_8

    goto :goto_2

    :cond_8
    move v0, v1

    :cond_9
    :goto_2
    return v0
.end method

.method scrollStep(II[I)V
    .locals 0

    if-eqz p3, :cond_0

    const/4 p0, 0x1

    const/4 p1, 0x0

    .line 610
    aput p1, p3, p0

    :cond_0
    return-void
.end method

.method public setEdgeEffectFactory(Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mEdgeEffectFactory:Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;

    .line 88
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringScrollView;->invalidateGlows()V

    return-void
.end method

.method public setOverScrollNested(Z)V
    .locals 0

    .line 672
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mOverScrollNested:Z

    return-void
.end method

.method setScrollState(I)V
    .locals 1

    .line 441
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mScrollState:I

    if-eq p1, v0, :cond_0

    .line 442
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mScrollState:I

    :cond_0
    return-void
.end method

.method public setScrollingChangeListener(Lcom/google/android/material/edgeeffect/SpringScrollView$scrollingChangeListener;)V
    .locals 0

    .line 828
    iput-object p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView;->mCanScrollingChangeListener:Lcom/google/android/material/edgeeffect/SpringScrollView$scrollingChangeListener;

    return-void
.end method
