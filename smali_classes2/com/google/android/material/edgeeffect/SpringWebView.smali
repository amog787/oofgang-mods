.class public Lcom/google/android/material/edgeeffect/SpringWebView;
.super Landroid/webkit/WebView;
.source "SpringWebView.java"


# instance fields
.field mAllowBottomGlow:Z

.field private mBottomGlow:Landroid/widget/EdgeEffect;

.field private mDispatchScrollCounter:I

.field private mEdgeEffectFactory:Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;

.field private mGlowing:Z

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

.field private mSpringLayout:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

.field private mTopGlow:Landroid/widget/EdgeEffect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 49
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mOverScrollNested:Z

    const v0, 0x3dcccccd    # 0.1f

    .line 38
    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mPullGrowTop:F

    const v0, 0x3f666666    # 0.9f

    .line 39
    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mPullGrowBottom:F

    .line 41
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mAllowBottomGlow:Z

    .line 43
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mGlowing:Z

    .line 50
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringWebView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mOverScrollNested:Z

    const p2, 0x3dcccccd    # 0.1f

    .line 38
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mPullGrowTop:F

    const p2, 0x3f666666    # 0.9f

    .line 39
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mPullGrowBottom:F

    .line 41
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mAllowBottomGlow:Z

    .line 43
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mGlowing:Z

    .line 55
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringWebView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mOverScrollNested:Z

    const p2, 0x3dcccccd    # 0.1f

    .line 38
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mPullGrowTop:F

    const p2, 0x3f666666    # 0.9f

    .line 39
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mPullGrowBottom:F

    .line 41
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mAllowBottomGlow:Z

    .line 43
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mGlowing:Z

    .line 60
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringWebView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mOverScrollNested:Z

    const p2, 0x3dcccccd    # 0.1f

    .line 38
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mPullGrowTop:F

    const p2, 0x3f666666    # 0.9f

    .line 39
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mPullGrowBottom:F

    .line 41
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mAllowBottomGlow:Z

    .line 43
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mGlowing:Z

    .line 65
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringWebView;->init()V

    return-void
.end method

.method private cancelTouch()V
    .locals 1

    .line 691
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringWebView;->resetTouch()V

    const/4 v0, 0x0

    .line 692
    invoke-virtual {p0, v0}, Lcom/google/android/material/edgeeffect/SpringWebView;->setScrollState(I)V

    return-void
.end method

.method private init()V
    .locals 2

    .line 69
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mTouchSlop:I

    .line 71
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mMaxFlingVelocity:I

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 72
    iput-object v1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mScrollStepConsumed:[I

    new-array v1, v0, [I

    .line 73
    iput-object v1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mScrollOffset:[I

    new-array v0, v0, [I

    .line 74
    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mNestedOffsets:[I

    return-void
.end method

.method private isReadyToOverScroll(Z)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 619
    invoke-virtual {p0}, Landroid/webkit/WebView;->getScrollY()I

    move-result p0

    if-nez p0, :cond_0

    move v0, v1

    :cond_0
    return v0

    :cond_1
    if-nez p1, :cond_3

    .line 622
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getScale()F

    move-result v2

    mul-float/2addr p1, v2

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int p1, v2

    .line 624
    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result v2

    .line 625
    invoke-virtual {p0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v3

    add-int/2addr v3, v2

    if-lt v3, p1, :cond_2

    return v1

    .line 630
    :cond_2
    iget-boolean p0, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mAllowBottomGlow:Z

    if-eqz p0, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method private onPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 696
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 697
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mScrollPointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 699
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mScrollPointerId:I

    .line 700
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mLastTouchY:I

    :cond_1
    return-void
.end method

.method private pullGlows(FFFF)V
    .locals 5

    .line 410
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

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
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p3, v1

    cmpg-float v1, p4, v0

    const/4 v2, 0x1

    if-gez v1, :cond_1

    .line 415
    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mPullGrowBottom:F

    cmpg-float v1, p3, v1

    if-gez v1, :cond_1

    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mPullGrowTop:F

    cmpl-float v1, p3, v1

    if-lez v1, :cond_1

    .line 416
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringWebView;->ensureTopGlow()V

    .line 418
    iget-object p3, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz p3, :cond_2

    neg-float v1, p4

    .line 419
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p1, v3

    invoke-virtual {p3, v1, p1}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 420
    iput-boolean v2, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mGlowing:Z

    goto :goto_0

    :cond_1
    cmpl-float v1, p4, v0

    if-lez v1, :cond_2

    .line 423
    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mPullGrowTop:F

    cmpl-float v1, p3, v1

    if-lez v1, :cond_2

    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mPullGrowBottom:F

    cmpg-float p3, p3, v1

    if-gez p3, :cond_2

    .line 424
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringWebView;->ensureBottomGlow()V

    .line 426
    iget-object p3, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz p3, :cond_2

    .line 427
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p4, v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr p1, v4

    sub-float/2addr v3, p1

    invoke-virtual {p3, v1, v3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 428
    iput-boolean v2, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mGlowing:Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_3

    cmpl-float p1, p2, v0

    if-nez p1, :cond_3

    cmpl-float p1, p4, v0

    if-eqz p1, :cond_4

    .line 434
    :cond_3
    invoke-virtual {p0}, Landroid/webkit/WebView;->postInvalidateOnAnimation()V

    :cond_4
    :goto_1
    return-void
.end method

.method private releaseGlows()V
    .locals 3

    .line 673
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mTopGlow:Landroid/widget/EdgeEffect;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 674
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 675
    iput-boolean v1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mGlowing:Z

    .line 676
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 679
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_1

    .line 680
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 681
    iput-boolean v1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mGlowing:Z

    .line 682
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    if-eqz v0, :cond_2

    .line 686
    invoke-virtual {p0}, Landroid/webkit/WebView;->postInvalidateOnAnimation()V

    :cond_2
    return-void
.end method

.method private resetTouch()V
    .locals 1

    .line 664
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 665
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 668
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringWebView;->releaseGlows()V

    return-void
.end method


# virtual methods
.method computeVelocity()F
    .locals 3

    .line 715
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 716
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 718
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mMaxFlingVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 719
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mScrollPointerId:I

    invoke-virtual {v0, p0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result p0

    neg-float p0, p0

    return p0
.end method

.method considerReleasingGlowsOnScroll(II)V
    .locals 1

    .line 638
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mTopGlow:Landroid/widget/EdgeEffect;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_0

    if-lez p2, :cond_0

    .line 639
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 640
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    .line 643
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_1

    if-gez p2, :cond_1

    .line 644
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 645
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_1
    if-eqz v0, :cond_2

    .line 649
    invoke-virtual {p0}, Landroid/webkit/WebView;->postInvalidateOnAnimation()V

    :cond_2
    return-void
.end method

.method dispatchOnScrolled(II)V
    .locals 2

    .line 496
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mDispatchScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mDispatchScrollCounter:I

    .line 497
    invoke-virtual {p0}, Landroid/webkit/WebView;->getScrollX()I

    move-result v0

    .line 498
    invoke-virtual {p0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v1

    .line 499
    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/google/android/material/edgeeffect/SpringWebView;->onScrollChanged(IIII)V

    .line 500
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/edgeeffect/SpringWebView;->onScrolled(II)V

    .line 513
    iget p1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mDispatchScrollCounter:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mDispatchScrollCounter:I

    return-void
.end method

.method ensureBottomGlow()V
    .locals 4

    .line 389
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mEdgeEffectFactory:Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;

    if-nez v0, :cond_0

    const-string p0, "SpringWebView"

    const-string v0, "setEdgeEffectFactory first, please!"

    .line 391
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 395
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_2

    const/4 v1, 0x3

    .line 396
    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;->createEdgeEffect(Landroid/view/View;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 397
    invoke-virtual {p0}, Landroid/webkit/WebView;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 398
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/webkit/WebView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/webkit/WebView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/webkit/WebView;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method ensureTopGlow()V
    .locals 4

    .line 371
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mEdgeEffectFactory:Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;

    if-nez v0, :cond_0

    const-string p0, "SpringWebView"

    const-string v0, "setEdgeEffectFactory first, please!"

    .line 373
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 377
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 378
    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;->createEdgeEffect(Landroid/view/View;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 379
    invoke-virtual {p0}, Landroid/webkit/WebView;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/webkit/WebView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/webkit/WebView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/webkit/WebView;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method invalidateGlows()V
    .locals 1

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mBottomGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mTopGlow:Landroid/widget/EdgeEffect;

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 89
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 90
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 94
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 95
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_b

    if-eq v0, v6, :cond_9

    if-eq v0, v4, :cond_4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    const/4 v4, 0x5

    if-eq v0, v4, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    goto/16 :goto_2

    .line 226
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/SpringWebView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    .line 222
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mScrollPointerId:I

    .line 223
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mLastTouchY:I

    goto/16 :goto_2

    .line 216
    :cond_3
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringWebView;->cancelTouch()V

    goto/16 :goto_2

    .line 161
    :cond_4
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mScrollPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_5

    .line 163
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error processing scroll; pointer index for id "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mScrollPointerId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SpringScrollView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    return v5

    .line 168
    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 169
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 170
    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mLastTouchY:I

    sub-int/2addr v1, v0

    .line 186
    iget v3, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mScrollState:I

    if-eq v3, v6, :cond_8

    .line 188
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mTouchSlop:I

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

    .line 199
    invoke-virtual {p0, v6}, Lcom/google/android/material/edgeeffect/SpringWebView;->setScrollState(I)V

    .line 203
    :cond_8
    iget v3, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mScrollState:I

    if-ne v3, v6, :cond_d

    .line 204
    iget-object v3, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mScrollOffset:[I

    aget v3, v3, v6

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mLastTouchY:I

    .line 205
    invoke-virtual {p0, v5, v1, v2}, Lcom/google/android/material/edgeeffect/SpringWebView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 206
    invoke-virtual {p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_2

    .line 122
    :cond_9
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 124
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v3, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mMaxFlingVelocity:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 125
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mScrollPointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    neg-float v0, v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_a

    .line 129
    invoke-virtual {p0, v5}, Lcom/google/android/material/edgeeffect/SpringWebView;->setScrollState(I)V

    .line 135
    :cond_a
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringWebView;->resetTouch()V

    goto :goto_2

    .line 100
    :cond_b
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mScrollPointerId:I

    .line 101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mLastTouchY:I

    .line 110
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mScrollState:I

    if-ne v0, v4, :cond_c

    .line 111
    invoke-virtual {p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 112
    invoke-virtual {p0, v6}, Lcom/google/android/material/edgeeffect/SpringWebView;->setScrollState(I)V

    .line 115
    :cond_c
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mNestedOffsets:[I

    aput v5, v0, v6

    aput v5, v0, v5

    .line 118
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->startNestedScroll(I)Z

    .line 230
    :cond_d
    :goto_2
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 231
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mLastX:F

    .line 232
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mLastY:F

    .line 233
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onScrollChanged(IIII)V
    .locals 3

    .line 456
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    const/4 p1, -0x1

    .line 458
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->canScrollVertically(I)Z

    move-result p1

    const/high16 p3, 0x41a00000    # 20.0f

    const/4 v0, 0x0

    if-nez p1, :cond_1

    if-ge p2, p4, :cond_1

    .line 459
    iget-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mGlowing:Z

    if-nez p1, :cond_1

    .line 460
    iget p1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mLastYVel:F

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    .line 465
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringWebView;->computeVelocity()F

    move-result p1

    .line 468
    :cond_0
    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mLastX:F

    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mLastY:F

    div-float/2addr p1, p3

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/google/android/material/edgeeffect/SpringWebView;->pullGlows(FFFF)V

    .line 470
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    float-to-int p1, p1

    .line 471
    invoke-virtual {v1, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_1
    const/4 p1, 0x1

    .line 476
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_3

    if-le p2, p4, :cond_3

    .line 477
    iget-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mGlowing:Z

    if-nez p1, :cond_3

    .line 478
    iget p1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mLastYVel:F

    cmpg-float p2, p1, v0

    if-gtz p2, :cond_2

    .line 483
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringWebView;->computeVelocity()F

    move-result p1

    .line 486
    :cond_2
    iget p2, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mLastX:F

    iget p4, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mLastY:F

    div-float/2addr p1, p3

    invoke-direct {p0, p2, v0, p4, p1}, Lcom/google/android/material/edgeeffect/SpringWebView;->pullGlows(FFFF)V

    .line 488
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz p0, :cond_3

    float-to-int p1, p1

    .line 489
    invoke-virtual {p0, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_3
    return-void
.end method

.method public onScrolled(II)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 241
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 242
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 246
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 247
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 248
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_1

    .line 250
    iget-object v5, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mNestedOffsets:[I

    aput v3, v5, v4

    aput v3, v5, v3

    .line 253
    :cond_1
    iget-object v5, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mNestedOffsets:[I

    aget v6, v5, v3

    int-to-float v6, v6

    aget v5, v5, v4

    int-to-float v5, v5

    invoke-virtual {v0, v6, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/4 v5, 0x2

    const/high16 v6, 0x3f000000    # 0.5f

    if-eqz v1, :cond_c

    if-eq v1, v4, :cond_a

    if-eq v1, v5, :cond_5

    const/4 v4, 0x3

    if-eq v1, v4, :cond_4

    const/4 v4, 0x5

    if-eq v1, v4, :cond_3

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    goto/16 :goto_3

    .line 358
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/SpringWebView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    .line 354
    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mScrollPointerId:I

    .line 355
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mLastTouchY:I

    goto/16 :goto_3

    .line 348
    :cond_4
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringWebView;->cancelTouch()V

    goto/16 :goto_3

    .line 294
    :cond_5
    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mScrollPointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-gez v1, :cond_6

    .line 296
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error processing scroll; pointer index for id "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mScrollPointerId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SpringWebView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return v3

    .line 301
    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 302
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v6

    float-to-int v1, v1

    .line 303
    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mLastTouchY:I

    sub-int/2addr v2, v1

    .line 319
    iget v5, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mScrollState:I

    if-eq v5, v4, :cond_9

    .line 321
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mTouchSlop:I

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

    .line 332
    invoke-virtual {p0, v4}, Lcom/google/android/material/edgeeffect/SpringWebView;->setScrollState(I)V

    .line 336
    :cond_9
    iget v5, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mScrollState:I

    if-ne v5, v4, :cond_d

    .line 337
    iget-object v5, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mScrollOffset:[I

    aget v5, v5, v4

    sub-int/2addr v1, v5

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mLastTouchY:I

    .line 338
    invoke-virtual {p0, v3, v2, v0}, Lcom/google/android/material/edgeeffect/SpringWebView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 339
    invoke-virtual {p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_3

    .line 274
    :cond_a
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 276
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    iget v5, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mMaxFlingVelocity:I

    int-to-float v5, v5

    invoke-virtual {v1, v2, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 277
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mScrollPointerId:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    neg-float v1, v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_b

    .line 281
    invoke-virtual {p0, v3}, Lcom/google/android/material/edgeeffect/SpringWebView;->setScrollState(I)V

    goto :goto_2

    .line 288
    :cond_b
    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mLastYVel:F

    .line 291
    :goto_2
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringWebView;->resetTouch()V

    move v3, v4

    goto :goto_3

    .line 258
    :cond_c
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mScrollPointerId:I

    .line 259
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    add-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mLastTouchY:I

    .line 271
    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->startNestedScroll(I)Z

    :cond_d
    :goto_3
    if-nez v3, :cond_e

    .line 362
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 364
    :cond_e
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 365
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mLastX:F

    .line 366
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mLastY:F

    .line 367
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 10

    move-object v0, p0

    move v4, p4

    const/4 v1, 0x0

    .line 443
    iput-boolean v1, v0, Lcom/google/android/material/edgeeffect/SpringWebView;->mAllowBottomGlow:Z

    move/from16 v6, p6

    if-ne v4, v6, :cond_0

    const/4 v1, 0x1

    .line 447
    iput-boolean v1, v0, Lcom/google/android/material/edgeeffect/SpringWebView;->mAllowBottomGlow:Z

    :cond_0
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

    .line 449
    invoke-super/range {v0 .. v9}, Landroid/webkit/WebView;->overScrollBy(IIIIIIIIZ)Z

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

    .line 520
    :goto_0
    invoke-direct {p0, v2}, Lcom/google/android/material/edgeeffect/SpringWebView;->isReadyToOverScroll(Z)Z

    move-result v2

    if-nez v2, :cond_3

    .line 523
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mSpringLayout:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    if-nez p1, :cond_1

    .line 524
    invoke-virtual {p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 525
    instance-of p3, p1, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    if-eqz p3, :cond_1

    .line 526
    check-cast p1, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    iput-object p1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mSpringLayout:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    .line 529
    :cond_1
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mSpringLayout:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    if-eqz p0, :cond_2

    if-eqz p2, :cond_2

    .line 530
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->onRecyclerViewScrolled()V

    :cond_2
    return v1

    .line 541
    :cond_3
    invoke-virtual {p0}, Landroid/webkit/WebView;->getChildCount()I

    move-result v2

    if-ltz v2, :cond_4

    .line 542
    iget-object v2, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mScrollStepConsumed:[I

    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/material/edgeeffect/SpringWebView;->scrollStep(II[I)V

    .line 543
    iget-object v2, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mScrollStepConsumed:[I

    aget v3, v2, v1

    .line 544
    aget v2, v2, v0

    sub-int v4, p1, v3

    sub-int v5, p2, v2

    goto :goto_1

    :cond_4
    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    .line 550
    :goto_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 569
    invoke-virtual {p0}, Landroid/webkit/WebView;->getOverScrollMode()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_6

    if-eqz p3, :cond_5

    const/16 v6, 0x2002

    .line 570
    invoke-virtual {p3, v6}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v6

    if-nez v6, :cond_5

    .line 572
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    int-to-float v4, v4

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    int-to-float v5, v5

    invoke-direct {p0, v6, v4, p3, v5}, Lcom/google/android/material/edgeeffect/SpringWebView;->pullGlows(FFFF)V

    .line 575
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/edgeeffect/SpringWebView;->considerReleasingGlowsOnScroll(II)V

    :cond_6
    if-nez v3, :cond_7

    if-eqz v2, :cond_8

    .line 580
    :cond_7
    invoke-virtual {p0, v3, v2}, Lcom/google/android/material/edgeeffect/SpringWebView;->dispatchOnScrolled(II)V

    .line 583
    :cond_8
    invoke-virtual {p0}, Landroid/webkit/WebView;->awakenScrollBars()Z

    move-result p1

    if-nez p1, :cond_9

    .line 584
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    :cond_9
    if-nez v3, :cond_b

    if-eqz v2, :cond_a

    goto :goto_2

    :cond_a
    move v0, v1

    :cond_b
    :goto_2
    return v0
.end method

.method scrollStep(II[I)V
    .locals 0

    if-eqz p3, :cond_0

    const/4 p0, 0x1

    const/4 p1, 0x0

    .line 611
    aput p1, p3, p0

    :cond_0
    return-void
.end method

.method public setEdgeEffectFactory(Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mEdgeEffectFactory:Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;

    .line 80
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringWebView;->invalidateGlows()V

    return-void
.end method

.method public setOverScrollNested(Z)V
    .locals 0

    .line 711
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mOverScrollNested:Z

    return-void
.end method

.method setScrollState(I)V
    .locals 1

    .line 655
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mScrollState:I

    if-eq p1, v0, :cond_0

    .line 656
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringWebView;->mScrollState:I

    :cond_0
    return-void
.end method
