.class public Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;
.super Landroidx/core/widget/NestedScrollView;
.source "SpringNestScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$SEdgeEffectFactory;,
        Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$SpringEdgeEffect;,
        Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$ViewEdgeEffectFactory;
    }
.end annotation


# static fields
.field private static final DAMPED_SCROLL:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActiveEdge:Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$SpringEdgeEffect;

.field private mBottomGlow:Landroid/widget/EdgeEffect;

.field private mDampedScrollShift:F

.field private mDispatchScrollCounter:I

.field private mDistance:F

.field private mEdgeEffectFactory:Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$SEdgeEffectFactory;

.field private mGlowingBottom:Z

.field private mGlowingTop:Z

.field private mLastTouchY:I

.field private mLastX:F

.field private mLastY:F

.field private mLastYVel:F

.field private mMaxFlingVelocity:I

.field private mNestedOffsets:[I

.field mOverScrollNested:Z

.field private mPullCount:I

.field mPullGrowBottom:F

.field mPullGrowTop:F

.field mScrollConsumed:[I

.field private mScrollOffset:[I

.field private mScrollPointerId:I

.field private mScrollState:I

.field mScrollStepConsumed:[I

.field private mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mTopGlow:Landroid/widget/EdgeEffect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 65
    new-instance v0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$1;

    const-string v1, "value"

    invoke-direct {v0, v1}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->DAMPED_SCROLL:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 80
    invoke-direct {p0, p1}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mOverScrollNested:Z

    const v0, 0x3dcccccd    # 0.1f

    .line 50
    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mPullGrowTop:F

    const v0, 0x3f666666    # 0.9f

    .line 51
    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mPullGrowBottom:F

    .line 53
    iput-boolean p1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mGlowingTop:Z

    .line 54
    iput-boolean p1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mGlowingBottom:Z

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mDampedScrollShift:F

    .line 61
    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mDistance:F

    .line 62
    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mPullCount:I

    .line 81
    invoke-direct {p0}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mOverScrollNested:Z

    const p2, 0x3dcccccd    # 0.1f

    .line 50
    iput p2, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mPullGrowTop:F

    const p2, 0x3f666666    # 0.9f

    .line 51
    iput p2, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mPullGrowBottom:F

    .line 53
    iput-boolean p1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mGlowingTop:Z

    .line 54
    iput-boolean p1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mGlowingBottom:Z

    const/4 p2, 0x0

    .line 60
    iput p2, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mDampedScrollShift:F

    .line 61
    iput p2, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mDistance:F

    .line 62
    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mPullCount:I

    .line 86
    invoke-direct {p0}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 49
    iput-boolean p1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mOverScrollNested:Z

    const p2, 0x3dcccccd    # 0.1f

    .line 50
    iput p2, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mPullGrowTop:F

    const p2, 0x3f666666    # 0.9f

    .line 51
    iput p2, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mPullGrowBottom:F

    .line 53
    iput-boolean p1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mGlowingTop:Z

    .line 54
    iput-boolean p1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mGlowingBottom:Z

    const/4 p2, 0x0

    .line 60
    iput p2, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mDampedScrollShift:F

    .line 61
    iput p2, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mDistance:F

    .line 62
    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mPullCount:I

    .line 91
    invoke-direct {p0}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;)F
    .locals 0

    .line 28
    iget p0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mDampedScrollShift:F

    return p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;F)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->finishScrollWithVelocity(F)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;)F
    .locals 0

    .line 28
    iget p0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mDistance:F

    return p0
.end method

.method static synthetic access$302(Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;F)F
    .locals 0

    .line 28
    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mDistance:F

    return p1
.end method

.method static synthetic access$316(Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;F)F
    .locals 1

    .line 28
    iget v0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mDistance:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mDistance:F

    return v0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method static synthetic access$502(Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mPullCount:I

    return p1
.end method

.method static synthetic access$508(Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;)I
    .locals 2

    .line 28
    iget v0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mPullCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mPullCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$SpringEdgeEffect;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->setActiveEdge(Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$SpringEdgeEffect;)V

    return-void
.end method

.method private cancelTouch()V
    .locals 1

    .line 474
    invoke-direct {p0}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->resetTouch()V

    const/4 v0, 0x0

    .line 475
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->setScrollState(I)V

    return-void
.end method

.method private finishScrollWithVelocity(F)V
    .locals 1

    .line 809
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 810
    iget-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mDampedScrollShift:F

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 811
    iget-object p0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 95
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mTouchSlop:I

    .line 97
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mMaxFlingVelocity:I

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 98
    iput-object v1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mScrollStepConsumed:[I

    new-array v1, v0, [I

    .line 99
    iput-object v1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mScrollOffset:[I

    new-array v1, v0, [I

    .line 100
    iput-object v1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mNestedOffsets:[I

    new-array v0, v0, [I

    .line 101
    iput-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mScrollConsumed:[I

    .line 102
    invoke-virtual {p0}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->createViewEdgeEffectFactory()Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$ViewEdgeEffectFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mEdgeEffectFactory:Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$SEdgeEffectFactory;

    .line 103
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->setEdgeEffectFactory(Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$SEdgeEffectFactory;)V

    .line 104
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->DAMPED_SCROLL:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 105
    new-instance p0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p0, v2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const v1, 0x44138000    # 590.0f

    .line 106
    invoke-virtual {p0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v1, 0x3f000000    # 0.5f

    .line 107
    invoke-virtual {p0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 105
    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    return-void
.end method

.method private isReadyToOverScroll(Z)Z
    .locals 2

    .line 599
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    .line 603
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->canScrollVertically(I)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_1
    if-nez p1, :cond_2

    .line 613
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->canScrollVertically(I)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_2
    return v1
.end method

.method private onPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 479
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 480
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mScrollPointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 482
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mScrollPointerId:I

    .line 483
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mLastTouchY:I

    :cond_1
    return-void
.end method

.method private pullGlows(FFFF)V
    .locals 5

    .line 408
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p3, v0

    if-gtz v0, :cond_4

    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-gez v1, :cond_0

    goto :goto_1

    .line 412
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p3, v1

    cmpg-float v1, p4, v0

    const/4 v2, 0x1

    if-gez v1, :cond_1

    .line 414
    iget v1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mPullGrowBottom:F

    cmpg-float v1, p3, v1

    if-gez v1, :cond_1

    iget v1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mPullGrowTop:F

    cmpl-float v1, p3, v1

    if-lez v1, :cond_1

    .line 415
    invoke-virtual {p0}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->ensureTopGlow()V

    .line 417
    iget-object p3, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mTopGlow:Landroid/widget/EdgeEffect;

    neg-float v1, p4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p1, v3

    invoke-virtual {p3, v1, p1}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 419
    iput-boolean v2, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mGlowingTop:Z

    goto :goto_0

    :cond_1
    cmpl-float v1, p4, v0

    if-lez v1, :cond_2

    .line 421
    iget v1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mPullGrowTop:F

    cmpl-float v1, p3, v1

    if-lez v1, :cond_2

    iget v1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mPullGrowBottom:F

    cmpg-float p3, p3, v1

    if-gez p3, :cond_2

    .line 422
    invoke-virtual {p0}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->ensureBottomGlow()V

    .line 424
    iget-object p3, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p4, v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr p1, v4

    sub-float/2addr v3, p1

    invoke-virtual {p3, v1, v3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 426
    iput-boolean v2, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mGlowingBottom:Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_3

    cmpl-float p1, p2, v0

    if-nez p1, :cond_3

    cmpl-float p1, p4, v0

    if-eqz p1, :cond_4

    .line 431
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidateOnAnimation()V

    :cond_4
    :goto_1
    return-void
.end method

.method private releaseGlows()V
    .locals 3

    .line 454
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mTopGlow:Landroid/widget/EdgeEffect;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 455
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 457
    iput-boolean v1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mGlowingTop:Z

    .line 458
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 461
    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_1

    .line 462
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 464
    iput-boolean v1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mGlowingBottom:Z

    .line 465
    iget-object v1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    if-eqz v0, :cond_2

    .line 469
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidateOnAnimation()V

    :cond_2
    return-void
.end method

.method private resetTouch()V
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 446
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 449
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->releaseGlows()V

    return-void
.end method

.method private setActiveEdge(Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$SpringEdgeEffect;)V
    .locals 1

    .line 800
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mActiveEdge:Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$SpringEdgeEffect;

    .line 803
    iput-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mActiveEdge:Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$SpringEdgeEffect;

    return-void
.end method


# virtual methods
.method considerReleasingGlowsOnScroll(II)V
    .locals 1

    .line 635
    iget-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mTopGlow:Landroid/widget/EdgeEffect;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_0

    if-lez p2, :cond_0

    .line 636
    iget-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 637
    iget-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    .line 640
    :cond_0
    iget-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_1

    if-gez p2, :cond_1

    .line 641
    iget-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 642
    iget-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_1
    if-eqz v0, :cond_2

    .line 646
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidateOnAnimation()V

    :cond_2
    return-void
.end method

.method public createViewEdgeEffectFactory()Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$ViewEdgeEffectFactory;
    .locals 2

    .line 706
    new-instance v0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$ViewEdgeEffectFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$ViewEdgeEffectFactory;-><init>(Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$1;)V

    return-object v0
.end method

.method dispatchOnScrolled(II)V
    .locals 2

    .line 489
    iget v0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mDispatchScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mDispatchScrollCounter:I

    .line 490
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v0

    .line 491
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    .line 492
    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->onScrollChanged(IIII)V

    .line 493
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->onScrolled(II)V

    .line 506
    iget p1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mDispatchScrollCounter:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mDispatchScrollCounter:I

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 825
    iget v0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mDampedScrollShift:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 826
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 828
    iget v2, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mDampedScrollShift:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 830
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->draw(Landroid/graphics/Canvas;)V

    .line 831
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    .line 836
    :cond_0
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method ensureBottomGlow()V
    .locals 4

    .line 389
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mEdgeEffectFactory:Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$SEdgeEffectFactory;

    if-eqz v0, :cond_2

    .line 393
    iget-object v1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_1

    const/4 v1, 0x3

    .line 394
    invoke-virtual {v0, p0, v1}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$SEdgeEffectFactory;->createEdgeEffect(Landroid/view/View;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 395
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_1
    :goto_0
    return-void

    .line 390
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setEdgeEffectFactory first, please!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method ensureTopGlow()V
    .locals 4

    .line 373
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mEdgeEffectFactory:Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$SEdgeEffectFactory;

    if-eqz v0, :cond_2

    .line 377
    iget-object v1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 378
    invoke-virtual {v0, p0, v1}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$SEdgeEffectFactory;->createEdgeEffect(Landroid/view/View;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 379
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_1
    :goto_0
    return-void

    .line 374
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setEdgeEffectFactory first, please!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCanvasClipTopForOverscroll()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method invalidateGlows()V
    .locals 1

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mBottomGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mTopGlow:Landroid/widget/EdgeEffect;

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 121
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 122
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 125
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 126
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 128
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    const/4 v3, 0x2

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_c

    if-eq v0, v6, :cond_a

    if-eq v0, v3, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    goto/16 :goto_3

    .line 230
    :cond_1
    invoke-direct {p0, p1}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    .line 226
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mScrollPointerId:I

    .line 227
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mLastTouchY:I

    goto/16 :goto_3

    .line 220
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->cancelTouch()V

    goto/16 :goto_3

    .line 169
    :cond_4
    iget v0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mScrollPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_5

    .line 171
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error processing scroll; pointer index for id "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mScrollPointerId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SpringScrollView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 175
    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 176
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v4

    float-to-int v0, v0

    .line 177
    iget v1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mLastTouchY:I

    sub-int/2addr v1, v0

    .line 181
    iget-object v3, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mScrollConsumed:[I

    iget-object v4, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mScrollOffset:[I

    invoke-virtual {p0, v5, v1, v3, v4}, Landroidx/core/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 183
    iget-object v3, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mScrollConsumed:[I

    aget v3, v3, v6

    sub-int/2addr v1, v3

    .line 184
    iget-object v3, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mScrollOffset:[I

    aget v4, v3, v5

    int-to-float v4, v4

    aget v3, v3, v6

    int-to-float v3, v3

    invoke-virtual {v2, v4, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 185
    iget-object v3, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mNestedOffsets:[I

    .line 186
    aget v4, v3, v5

    iget-object v7, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mScrollOffset:[I

    aget v8, v7, v5

    add-int/2addr v4, v8

    aput v4, v3, v5

    .line 188
    aget v4, v3, v6

    aget v7, v7, v6

    add-int/2addr v4, v7

    aput v4, v3, v6

    .line 191
    :cond_6
    iget v3, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mScrollState:I

    if-eq v3, v6, :cond_9

    .line 193
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mTouchSlop:I

    if-le v3, v4, :cond_8

    if-lez v1, :cond_7

    sub-int/2addr v1, v4

    goto :goto_0

    :cond_7
    add-int/2addr v1, v4

    :goto_0
    move v3, v6

    goto :goto_1

    :cond_8
    move v3, v5

    :goto_1
    if-eqz v3, :cond_9

    .line 204
    invoke-virtual {p0, v6}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->setScrollState(I)V

    .line 208
    :cond_9
    iget v3, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mScrollState:I

    if-ne v3, v6, :cond_e

    .line 209
    iget-object v3, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mScrollOffset:[I

    aget v3, v3, v6

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mLastTouchY:I

    .line 210
    invoke-virtual {p0, v5, v1, v2}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 211
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_3

    .line 151
    :cond_a
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 153
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mMaxFlingVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 154
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mScrollPointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    neg-float v0, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_b

    .line 157
    invoke-virtual {p0, v5}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->setScrollState(I)V

    goto :goto_2

    .line 160
    :cond_b
    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mLastYVel:F

    .line 161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mLastX:F

    .line 162
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mLastY:F

    .line 165
    :goto_2
    invoke-direct {p0}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->resetTouch()V

    .line 166
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->stopNestedScroll()V

    goto :goto_3

    .line 133
    :cond_c
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mScrollPointerId:I

    .line 134
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mLastTouchY:I

    .line 136
    iget v0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mScrollState:I

    if-ne v0, v3, :cond_d

    .line 137
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 138
    invoke-virtual {p0, v6}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->setScrollState(I)V

    .line 141
    :cond_d
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mNestedOffsets:[I

    aput v5, v0, v6

    aput v5, v0, v5

    .line 234
    :cond_e
    :goto_3
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onRecyclerViewScrolled()V
    .locals 2

    .line 815
    iget v0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mPullCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 819
    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mDistance:F

    const/4 v1, 0x0

    .line 820
    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mPullCount:I

    .line 821
    invoke-direct {p0, v0}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->finishScrollWithVelocity(F)V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 4

    .line 653
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/core/widget/NestedScrollView;->onScrollChanged(IIII)V

    .line 655
    iget-boolean p1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mGlowingTop:Z

    const/4 p3, -0x1

    if-eqz p1, :cond_0

    .line 656
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_0

    if-le p2, p4, :cond_0

    .line 657
    invoke-virtual {p0}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->onRecyclerViewScrolled()V

    .line 663
    :cond_0
    iget-boolean p1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mGlowingBottom:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 664
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_1

    if-ge p2, p4, :cond_1

    .line 665
    invoke-virtual {p0}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->onRecyclerViewScrolled()V

    .line 670
    :cond_1
    iget-boolean p1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mGlowingTop:Z

    const/4 v1, 0x0

    const/high16 v2, 0x41a00000    # 20.0f

    if-nez p1, :cond_2

    .line 671
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_2

    if-ge p2, p4, :cond_2

    .line 673
    iget p1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mLastX:F

    iget p3, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mLastY:F

    iget v3, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mLastYVel:F

    div-float/2addr v3, v2

    invoke-direct {p0, p1, v1, p3, v3}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->pullGlows(FFFF)V

    .line 675
    iget-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz p1, :cond_2

    .line 676
    iget p3, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mLastYVel:F

    div-float/2addr p3, v2

    float-to-int p3, p3

    invoke-virtual {p1, p3}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 681
    :cond_2
    iget-boolean p1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mGlowingBottom:Z

    if-nez p1, :cond_3

    .line 682
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_3

    if-le p2, p4, :cond_3

    .line 683
    iget p1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mLastX:F

    iget p2, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mLastY:F

    iget p3, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mLastYVel:F

    div-float/2addr p3, v2

    invoke-direct {p0, p1, v1, p2, p3}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->pullGlows(FFFF)V

    .line 685
    iget-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz p1, :cond_3

    .line 686
    iget p0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mLastYVel:F

    div-float/2addr p0, v2

    float-to-int p0, p0

    invoke-virtual {p1, p0}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_3
    return-void
.end method

.method public onScrolled(II)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 243
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 244
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 248
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 249
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 250
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_1

    .line 252
    iget-object v5, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mNestedOffsets:[I

    aput v3, v5, v4

    aput v3, v5, v3

    .line 255
    :cond_1
    iget-object v5, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mNestedOffsets:[I

    aget v6, v5, v3

    int-to-float v6, v6

    aget v5, v5, v4

    int-to-float v5, v5

    invoke-virtual {v0, v6, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v1, :cond_d

    if-eq v1, v4, :cond_b

    const/4 v6, 0x2

    if-eq v1, v6, :cond_5

    const/4 v4, 0x3

    if-eq v1, v4, :cond_4

    const/4 v4, 0x5

    if-eq v1, v4, :cond_3

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    goto/16 :goto_3

    .line 359
    :cond_2
    invoke-direct {p0, p1}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    .line 355
    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mScrollPointerId:I

    .line 356
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mLastTouchY:I

    goto/16 :goto_3

    .line 349
    :cond_4
    invoke-direct {p0}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->cancelTouch()V

    goto/16 :goto_3

    .line 298
    :cond_5
    iget v1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mScrollPointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-gez v1, :cond_6

    .line 300
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error processing scroll; pointer index for id "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mScrollPointerId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SpringScrollView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 304
    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 305
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v5

    float-to-int v1, v1

    .line 306
    iget v2, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mLastTouchY:I

    sub-int/2addr v2, v1

    .line 310
    iget-object v5, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mScrollConsumed:[I

    iget-object v6, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mScrollOffset:[I

    invoke-virtual {p0, v3, v2, v5, v6}, Landroidx/core/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 312
    iget-object v5, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mScrollConsumed:[I

    aget v5, v5, v4

    sub-int/2addr v2, v5

    .line 313
    iget-object v5, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mScrollOffset:[I

    aget v6, v5, v3

    int-to-float v6, v6

    aget v5, v5, v4

    int-to-float v5, v5

    invoke-virtual {v0, v6, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 314
    iget-object v5, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mNestedOffsets:[I

    .line 315
    aget v6, v5, v3

    iget-object v7, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mScrollOffset:[I

    aget v8, v7, v3

    add-int/2addr v6, v8

    aput v6, v5, v3

    .line 317
    aget v6, v5, v4

    aget v7, v7, v4

    add-int/2addr v6, v7

    aput v6, v5, v4

    .line 320
    :cond_7
    iget v5, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mScrollState:I

    if-eq v5, v4, :cond_a

    .line 322
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mTouchSlop:I

    if-le v5, v6, :cond_9

    if-lez v2, :cond_8

    sub-int/2addr v2, v6

    goto :goto_0

    :cond_8
    add-int/2addr v2, v6

    :goto_0
    move v5, v4

    goto :goto_1

    :cond_9
    move v5, v3

    :goto_1
    if-eqz v5, :cond_a

    .line 333
    invoke-virtual {p0, v4}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->setScrollState(I)V

    .line 337
    :cond_a
    iget v5, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mScrollState:I

    if-ne v5, v4, :cond_e

    .line 338
    iget-object v5, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mScrollOffset:[I

    aget v5, v5, v4

    sub-int/2addr v1, v5

    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mLastTouchY:I

    .line 339
    invoke-virtual {p0, v3, v2, v0}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 340
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_3

    .line 277
    :cond_b
    iget-object v1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 279
    iget-object v1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    iget v5, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mMaxFlingVelocity:I

    int-to-float v5, v5

    invoke-virtual {v1, v2, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 280
    iget-object v1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mScrollPointerId:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    neg-float v1, v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_c

    .line 284
    invoke-virtual {p0, v3}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->setScrollState(I)V

    goto :goto_2

    .line 290
    :cond_c
    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mLastYVel:F

    .line 291
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mLastX:F

    .line 292
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mLastY:F

    .line 295
    :goto_2
    invoke-direct {p0}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->resetTouch()V

    move v3, v4

    goto :goto_3

    .line 261
    :cond_d
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mScrollPointerId:I

    .line 262
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    add-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mLastTouchY:I

    :cond_e
    :goto_3
    if-nez v3, :cond_f

    .line 363
    iget-object v1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 365
    :cond_f
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 368
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method scrollByInternal(IILandroid/view/MotionEvent;)Z
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 513
    :goto_0
    invoke-direct {p0, v2}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->isReadyToOverScroll(Z)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 524
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ltz v2, :cond_2

    .line 525
    iget-object v2, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mScrollStepConsumed:[I

    invoke-virtual {p0, p1, p2, v2}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->scrollStep(II[I)V

    .line 526
    iget-object v2, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mScrollStepConsumed:[I

    aget v3, v2, v1

    .line 527
    aget v2, v2, v0

    sub-int v4, p1, v3

    sub-int v5, p2, v2

    goto :goto_1

    :cond_2
    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    .line 533
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 536
    iget-object v11, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mScrollOffset:[I

    move-object v6, p0

    move v7, v3

    move v8, v2

    move v9, v4

    move v10, v5

    invoke-virtual/range {v6 .. v11}, Landroidx/core/widget/NestedScrollView;->dispatchNestedScroll(IIII[I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 538
    iget v7, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mLastTouchY:I

    iget-object v8, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mScrollOffset:[I

    aget v9, v8, v0

    sub-int/2addr v7, v9

    iput v7, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mLastTouchY:I

    if-eqz p3, :cond_3

    .line 540
    aget v7, v8, v1

    int-to-float v7, v7

    aget v8, v8, v0

    int-to-float v8, v8

    invoke-virtual {p3, v7, v8}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 543
    :cond_3
    iget-object v7, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mNestedOffsets:[I

    .line 544
    aget v8, v7, v1

    iget-object v9, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mScrollOffset:[I

    aget v10, v9, v1

    add-int/2addr v8, v10

    aput v8, v7, v1

    .line 546
    aget v8, v7, v0

    aget v9, v9, v0

    add-int/2addr v8, v9

    aput v8, v7, v0

    :cond_4
    if-eqz v6, :cond_5

    .line 549
    iget-boolean v6, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mOverScrollNested:Z

    if-eqz v6, :cond_7

    .line 550
    :cond_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getOverScrollMode()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_7

    if-eqz p3, :cond_6

    const/16 v6, 0x2002

    .line 551
    invoke-virtual {p3, v6}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v6

    if-nez v6, :cond_6

    .line 553
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    int-to-float v4, v4

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    int-to-float v5, v5

    invoke-direct {p0, v6, v4, p3, v5}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->pullGlows(FFFF)V

    .line 556
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->considerReleasingGlowsOnScroll(II)V

    :cond_7
    if-nez v3, :cond_8

    if-eqz v2, :cond_9

    .line 561
    :cond_8
    invoke-virtual {p0, v3, v2}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->dispatchOnScrolled(II)V

    .line 564
    :cond_9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->awakenScrollBars()Z

    move-result p1

    if-nez p1, :cond_a

    .line 565
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_a
    if-nez v3, :cond_c

    if-eqz v2, :cond_b

    goto :goto_2

    :cond_b
    move v0, v1

    :cond_c
    :goto_2
    return v0
.end method

.method scrollStep(II[I)V
    .locals 0

    if-eqz p3, :cond_0

    const/4 p0, 0x1

    const/4 p1, 0x0

    .line 592
    aput p1, p3, p0

    :cond_0
    return-void
.end method

.method protected setDampedScrollShift(F)V
    .locals 1

    .line 792
    iget v0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mDampedScrollShift:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 793
    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mDampedScrollShift:F

    .line 795
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public setEdgeEffectFactory(Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$SEdgeEffectFactory;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mEdgeEffectFactory:Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$SEdgeEffectFactory;

    .line 112
    invoke-virtual {p0}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->invalidateGlows()V

    return-void
.end method

.method setScrollState(I)V
    .locals 1

    .line 436
    iget v0, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mScrollState:I

    if-eq p1, v0, :cond_0

    .line 437
    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;->mScrollState:I

    :cond_0
    return-void
.end method
