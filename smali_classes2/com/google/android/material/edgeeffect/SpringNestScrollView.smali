.class public Lcom/google/android/material/edgeeffect/SpringNestScrollView;
.super Landroidx/core/widget/NestedScrollView;
.source "SpringNestScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/edgeeffect/SpringNestScrollView$SEdgeEffectFactory;,
        Lcom/google/android/material/edgeeffect/SpringNestScrollView$SpringEdgeEffect;,
        Lcom/google/android/material/edgeeffect/SpringNestScrollView$ViewEdgeEffectFactory;
    }
.end annotation


# static fields
.field private static final DAMPED_SCROLL:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/google/android/material/edgeeffect/SpringNestScrollView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActiveEdge:Lcom/google/android/material/edgeeffect/SpringNestScrollView$SpringEdgeEffect;

.field private mBottomGlow:Landroid/widget/EdgeEffect;

.field private mDampedScrollShift:F

.field private mDamping:F

.field private mDisableEffectBottom:Z

.field private mDisableEffectTop:Z

.field private mDispatchScrollCounter:I

.field private mDistance:F

.field private mEdgeEffectFactory:Lcom/google/android/material/edgeeffect/SpringNestScrollView$SEdgeEffectFactory;

.field private mGlowingBottom:Z

.field private mGlowingTop:Z

.field private mIsEmpty:Z

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

.field private mScrollOffset:[I

.field private mScrollPointerId:I

.field private mScrollState:I

.field mScrollStepConsumed:[I

.field private mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mStif:F

.field private mTopGlow:Landroid/widget/EdgeEffect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVelocity_multiplier:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 83
    new-instance v0, Lcom/google/android/material/edgeeffect/SpringNestScrollView$1;

    const-string v1, "value"

    invoke-direct {v0, v1}, Lcom/google/android/material/edgeeffect/SpringNestScrollView$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->DAMPED_SCROLL:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 99
    invoke-direct {p0, p1}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;)V

    const p1, 0x3e99999a    # 0.3f

    .line 43
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mVelocity_multiplier:F

    const p1, 0x44138000    # 590.0f

    .line 44
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mStif:F

    const/high16 p1, 0x3f000000    # 0.5f

    .line 45
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDamping:F

    const/4 p1, 0x0

    .line 63
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mOverScrollNested:Z

    const v0, 0x3dcccccd    # 0.1f

    .line 64
    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mPullGrowTop:F

    const v0, 0x3f666666    # 0.9f

    .line 65
    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mPullGrowBottom:F

    .line 67
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mGlowingTop:Z

    .line 68
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mGlowingBottom:Z

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDampedScrollShift:F

    .line 75
    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDistance:F

    .line 76
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mPullCount:I

    .line 79
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDisableEffectTop:Z

    .line 80
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDisableEffectBottom:Z

    .line 81
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mIsEmpty:Z

    .line 100
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x3e99999a    # 0.3f

    .line 43
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mVelocity_multiplier:F

    const p1, 0x44138000    # 590.0f

    .line 44
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mStif:F

    const/high16 p1, 0x3f000000    # 0.5f

    .line 45
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDamping:F

    const/4 p1, 0x0

    .line 63
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mOverScrollNested:Z

    const p2, 0x3dcccccd    # 0.1f

    .line 64
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mPullGrowTop:F

    const p2, 0x3f666666    # 0.9f

    .line 65
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mPullGrowBottom:F

    .line 67
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mGlowingTop:Z

    .line 68
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mGlowingBottom:Z

    const/4 p2, 0x0

    .line 74
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDampedScrollShift:F

    .line 75
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDistance:F

    .line 76
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mPullCount:I

    .line 79
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDisableEffectTop:Z

    .line 80
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDisableEffectBottom:Z

    .line 81
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mIsEmpty:Z

    .line 105
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 109
    invoke-direct {p0, p1, p2, p3}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x3e99999a    # 0.3f

    .line 43
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mVelocity_multiplier:F

    const p1, 0x44138000    # 590.0f

    .line 44
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mStif:F

    const/high16 p1, 0x3f000000    # 0.5f

    .line 45
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDamping:F

    const/4 p1, 0x0

    .line 63
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mOverScrollNested:Z

    const p2, 0x3dcccccd    # 0.1f

    .line 64
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mPullGrowTop:F

    const p2, 0x3f666666    # 0.9f

    .line 65
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mPullGrowBottom:F

    .line 67
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mGlowingTop:Z

    .line 68
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mGlowingBottom:Z

    const/4 p2, 0x0

    .line 74
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDampedScrollShift:F

    .line 75
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDistance:F

    .line 76
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mPullCount:I

    .line 79
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDisableEffectTop:Z

    .line 80
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDisableEffectBottom:Z

    .line 81
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mIsEmpty:Z

    .line 110
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/edgeeffect/SpringNestScrollView;)F
    .locals 0

    .line 39
    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDampedScrollShift:F

    return p0
.end method

.method static synthetic access$200(Lcom/google/android/material/edgeeffect/SpringNestScrollView;)F
    .locals 0

    .line 39
    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mVelocity_multiplier:F

    return p0
.end method

.method static synthetic access$300(Lcom/google/android/material/edgeeffect/SpringNestScrollView;F)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->finishScrollWithVelocity(F)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/material/edgeeffect/SpringNestScrollView;)F
    .locals 0

    .line 39
    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDistance:F

    return p0
.end method

.method static synthetic access$402(Lcom/google/android/material/edgeeffect/SpringNestScrollView;F)F
    .locals 0

    .line 39
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDistance:F

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/material/edgeeffect/SpringNestScrollView;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method static synthetic access$602(Lcom/google/android/material/edgeeffect/SpringNestScrollView;I)I
    .locals 0

    .line 39
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mPullCount:I

    return p1
.end method

.method static synthetic access$608(Lcom/google/android/material/edgeeffect/SpringNestScrollView;)I
    .locals 2

    .line 39
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mPullCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mPullCount:I

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/material/edgeeffect/SpringNestScrollView;Lcom/google/android/material/edgeeffect/SpringNestScrollView$SpringEdgeEffect;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->setActiveEdge(Lcom/google/android/material/edgeeffect/SpringNestScrollView$SpringEdgeEffect;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/material/edgeeffect/SpringNestScrollView;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDisableEffectTop:Z

    return p0
.end method

.method static synthetic access$900(Lcom/google/android/material/edgeeffect/SpringNestScrollView;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDisableEffectBottom:Z

    return p0
.end method

.method private cancelTouch()V
    .locals 1

    .line 532
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->resetTouch()V

    const/4 v0, 0x0

    .line 533
    invoke-virtual {p0, v0}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->setScrollState(I)V

    return-void
.end method

.method private finishScrollWithVelocity(F)V
    .locals 2

    .line 904
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDampedScrollShift:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_3

    const v1, -0x800001

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    .line 910
    iget-boolean v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDisableEffectTop:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 912
    iget-boolean v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDisableEffectBottom:Z

    if-eqz v0, :cond_2

    return-void

    .line 915
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 916
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDampedScrollShift:F

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 917
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void

    :cond_3
    :goto_0
    const-string p0, "SpringNestScrollView"

    const-string p1, "animation parameter out of range!"

    .line 905
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private init()V
    .locals 3

    .line 114
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mTouchSlop:I

    .line 116
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mMaxFlingVelocity:I

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 117
    iput-object v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mScrollStepConsumed:[I

    new-array v1, v0, [I

    .line 118
    iput-object v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mScrollOffset:[I

    new-array v0, v0, [I

    .line 119
    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mNestedOffsets:[I

    .line 121
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->createViewEdgeEffectFactory()Lcom/google/android/material/edgeeffect/SpringNestScrollView$ViewEdgeEffectFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mEdgeEffectFactory:Lcom/google/android/material/edgeeffect/SpringNestScrollView$SEdgeEffectFactory;

    .line 122
    invoke-virtual {p0, v0}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->setEdgeEffectFactory(Lcom/google/android/material/edgeeffect/SpringNestScrollView$SEdgeEffectFactory;)V

    .line 123
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->DAMPED_SCROLL:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 124
    new-instance p0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p0, v2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const v1, 0x44138000    # 590.0f

    .line 125
    invoke-virtual {p0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v1, 0x3f000000    # 0.5f

    .line 126
    invoke-virtual {p0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 124
    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    return-void
.end method

.method private isReadyToOverScroll(Z)Z
    .locals 1

    .line 670
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    .line 674
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->canScrollVertically(I)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    .line 684
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->canScrollVertically(I)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method private onPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 537
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 538
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mScrollPointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 540
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mScrollPointerId:I

    .line 541
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mLastTouchY:I

    :cond_1
    return-void
.end method

.method private pullGlows(FFFF)V
    .locals 5

    .line 462
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p3, v0

    if-gtz v0, :cond_4

    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-gez v1, :cond_0

    goto :goto_1

    .line 466
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p3, v1

    cmpg-float v1, p4, v0

    const/4 v2, 0x1

    if-gez v1, :cond_1

    .line 468
    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mPullGrowBottom:F

    cmpg-float v1, p3, v1

    if-gez v1, :cond_1

    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mPullGrowTop:F

    cmpl-float v1, p3, v1

    if-lez v1, :cond_1

    .line 469
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->ensureTopGlow()V

    .line 471
    iget-object p3, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz p3, :cond_2

    neg-float v1, p4

    .line 472
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p1, v3

    invoke-virtual {p3, v1, p1}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 474
    iput-boolean v2, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mGlowingTop:Z

    goto :goto_0

    :cond_1
    cmpl-float v1, p4, v0

    if-lez v1, :cond_2

    .line 477
    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mPullGrowTop:F

    cmpl-float v1, p3, v1

    if-lez v1, :cond_2

    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mPullGrowBottom:F

    cmpg-float p3, p3, v1

    if-gez p3, :cond_2

    .line 478
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->ensureBottomGlow()V

    .line 480
    iget-object p3, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz p3, :cond_2

    .line 481
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

    .line 483
    iput-boolean v2, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mGlowingBottom:Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_3

    cmpl-float p1, p2, v0

    if-nez p1, :cond_3

    cmpl-float p1, p4, v0

    if-eqz p1, :cond_4

    .line 489
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidateOnAnimation()V

    :cond_4
    :goto_1
    return-void
.end method

.method private releaseGlows()V
    .locals 3

    .line 512
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mTopGlow:Landroid/widget/EdgeEffect;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 513
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 515
    iput-boolean v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mGlowingTop:Z

    .line 516
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 519
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_1

    .line 520
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 522
    iput-boolean v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mGlowingBottom:Z

    .line 523
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    if-eqz v0, :cond_2

    .line 527
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidateOnAnimation()V

    :cond_2
    return-void
.end method

.method private resetTouch()V
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 504
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 507
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->releaseGlows()V

    return-void
.end method

.method private setActiveEdge(Lcom/google/android/material/edgeeffect/SpringNestScrollView$SpringEdgeEffect;)V
    .locals 1

    .line 897
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mActiveEdge:Lcom/google/android/material/edgeeffect/SpringNestScrollView$SpringEdgeEffect;

    .line 900
    iput-object p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mActiveEdge:Lcom/google/android/material/edgeeffect/SpringNestScrollView$SpringEdgeEffect;

    return-void
.end method


# virtual methods
.method computeVelocity()F
    .locals 3

    .line 957
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 958
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 960
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mMaxFlingVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 961
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mScrollPointerId:I

    invoke-virtual {v0, p0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result p0

    neg-float p0, p0

    return p0
.end method

.method considerReleasingGlowsOnScroll(II)V
    .locals 1

    .line 704
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mTopGlow:Landroid/widget/EdgeEffect;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_0

    if-lez p2, :cond_0

    .line 705
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 706
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    .line 709
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_1

    if-gez p2, :cond_1

    .line 710
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 711
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_1
    if-eqz v0, :cond_2

    .line 715
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidateOnAnimation()V

    :cond_2
    return-void
.end method

.method public createViewEdgeEffectFactory()Lcom/google/android/material/edgeeffect/SpringNestScrollView$ViewEdgeEffectFactory;
    .locals 2

    .line 789
    new-instance v0, Lcom/google/android/material/edgeeffect/SpringNestScrollView$ViewEdgeEffectFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/edgeeffect/SpringNestScrollView$ViewEdgeEffectFactory;-><init>(Lcom/google/android/material/edgeeffect/SpringNestScrollView;Lcom/google/android/material/edgeeffect/SpringNestScrollView$1;)V

    return-object v0
.end method

.method dispatchOnScrolled(II)V
    .locals 2

    .line 547
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDispatchScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDispatchScrollCounter:I

    .line 548
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v0

    .line 549
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    .line 550
    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->onScrollChanged(IIII)V

    .line 551
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->onScrolled(II)V

    .line 564
    iget p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDispatchScrollCounter:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDispatchScrollCounter:I

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 935
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDampedScrollShift:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 936
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 938
    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDampedScrollShift:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 940
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->draw(Landroid/graphics/Canvas;)V

    .line 941
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    .line 946
    :cond_0
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method ensureBottomGlow()V
    .locals 4

    .line 441
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mEdgeEffectFactory:Lcom/google/android/material/edgeeffect/SpringNestScrollView$SEdgeEffectFactory;

    if-nez v0, :cond_0

    const-string p0, "SpringNestScrollView"

    const-string v0, "setEdgeEffectFactory first, please!"

    .line 443
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 447
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_2

    const/4 v1, 0x3

    .line 448
    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/edgeeffect/SpringNestScrollView$SEdgeEffectFactory;->createEdgeEffect(Landroid/view/View;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 449
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 450
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mBottomGlow:Landroid/widget/EdgeEffect;

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

    .line 452
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method ensureTopGlow()V
    .locals 4

    .line 423
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mEdgeEffectFactory:Lcom/google/android/material/edgeeffect/SpringNestScrollView$SEdgeEffectFactory;

    if-nez v0, :cond_0

    const-string p0, "SpringNestScrollView"

    const-string v0, "setEdgeEffectFactory first, please!"

    .line 425
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 429
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 430
    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/edgeeffect/SpringNestScrollView$SEdgeEffectFactory;->createEdgeEffect(Landroid/view/View;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 431
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 432
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mTopGlow:Landroid/widget/EdgeEffect;

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

    .line 434
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public fling(I)V
    .locals 1

    const/16 v0, 0x2710

    if-le p1, v0, :cond_0

    .line 631
    iget-boolean v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mIsEmpty:Z

    if-eqz v0, :cond_0

    const/16 p1, 0x4b0

    .line 632
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->fling(I)V

    goto :goto_0

    .line 634
    :cond_0
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->fling(I)V

    :goto_0
    return-void
.end method

.method public getCanvasClipTopForOverscroll()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method invalidateGlows()V
    .locals 1

    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mBottomGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mTopGlow:Landroid/widget/EdgeEffect;

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 162
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 163
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 166
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 167
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 169
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

    goto/16 :goto_3

    .line 274
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    .line 270
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mScrollPointerId:I

    .line 271
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mLastTouchY:I

    goto/16 :goto_3

    .line 264
    :cond_3
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->cancelTouch()V

    goto/16 :goto_3

    .line 210
    :cond_4
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mScrollPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_5

    .line 212
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error processing scroll; pointer index for id "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mScrollPointerId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SpringScrollView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    return v5

    .line 217
    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 218
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v4

    float-to-int v0, v0

    .line 219
    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mLastTouchY:I

    sub-int/2addr v1, v0

    .line 235
    iget v3, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mScrollState:I

    if-eq v3, v6, :cond_8

    .line 237
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mTouchSlop:I

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

    .line 248
    invoke-virtual {p0, v6}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->setScrollState(I)V

    .line 252
    :cond_8
    iget v3, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mScrollState:I

    if-ne v3, v6, :cond_d

    .line 253
    iget-object v3, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mScrollOffset:[I

    aget v3, v3, v6

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mLastTouchY:I

    .line 254
    invoke-virtual {p0, v5, v1, v2}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 255
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_3

    .line 192
    :cond_9
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 194
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v3, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mMaxFlingVelocity:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 195
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mScrollPointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    neg-float v0, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_a

    .line 198
    invoke-virtual {p0, v5}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->setScrollState(I)V

    goto :goto_2

    .line 201
    :cond_a
    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mLastYVel:F

    .line 202
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mLastX:F

    .line 203
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mLastY:F

    .line 206
    :goto_2
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->resetTouch()V

    .line 207
    invoke-virtual {p0}, Landroidx/core/widget/NestedScrollView;->stopNestedScroll()V

    goto :goto_3

    .line 174
    :cond_b
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mScrollPointerId:I

    .line 175
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mLastTouchY:I

    .line 177
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mScrollState:I

    if-ne v0, v3, :cond_c

    .line 178
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 179
    invoke-virtual {p0, v6}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->setScrollState(I)V

    .line 182
    :cond_c
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mNestedOffsets:[I

    aput v5, v0, v6

    aput v5, v0, v5

    .line 278
    :cond_d
    :goto_3
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 279
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mLastX:F

    .line 280
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mLastY:F

    .line 281
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onRecyclerViewScrolled()V
    .locals 2

    .line 921
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mPullCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 925
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 928
    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDistance:F

    const/4 v1, 0x0

    .line 929
    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mPullCount:I

    .line 930
    invoke-direct {p0, v0}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->finishScrollWithVelocity(F)V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 6

    .line 723
    iget-boolean v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mGlowingTop:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 724
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-le p2, p4, :cond_0

    .line 725
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->onRecyclerViewScrolled()V

    .line 731
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mGlowingBottom:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 732
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-ge p2, p4, :cond_1

    .line 733
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->onRecyclerViewScrolled()V

    .line 738
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mGlowingTop:Z

    const/high16 v3, 0x41a00000    # 20.0f

    const/4 v4, 0x0

    if-nez v0, :cond_3

    .line 739
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_3

    if-ge p2, p4, :cond_3

    .line 740
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mLastYVel:F

    cmpl-float v1, v0, v4

    if-ltz v1, :cond_2

    .line 745
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->computeVelocity()F

    move-result v0

    .line 748
    :cond_2
    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mLastX:F

    iget v5, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mLastY:F

    div-float/2addr v0, v3

    invoke-direct {p0, v1, v4, v5, v0}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->pullGlows(FFFF)V

    .line 750
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_3

    float-to-int v0, v0

    .line 751
    invoke-virtual {v1, v0}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 756
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mGlowingBottom:Z

    if-nez v0, :cond_5

    .line 757
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_5

    if-le p2, p4, :cond_5

    .line 758
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mLastYVel:F

    cmpg-float v1, v0, v4

    if-gtz v1, :cond_4

    .line 763
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->computeVelocity()F

    move-result v0

    .line 765
    :cond_4
    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mLastX:F

    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mLastY:F

    div-float/2addr v0, v3

    invoke-direct {p0, v1, v4, v2, v0}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->pullGlows(FFFF)V

    .line 767
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_5

    float-to-int v0, v0

    .line 768
    invoke-virtual {v1, v0}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 772
    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/core/widget/NestedScrollView;->onScrollChanged(IIII)V

    return-void
.end method

.method public onScrolled(II)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 290
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 291
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 295
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 296
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 297
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_1

    .line 299
    iget-object v5, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mNestedOffsets:[I

    aput v3, v5, v4

    aput v3, v5, v3

    .line 302
    :cond_1
    iget-object v5, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mNestedOffsets:[I

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

    .line 406
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    .line 402
    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mScrollPointerId:I

    .line 403
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mLastTouchY:I

    goto/16 :goto_3

    .line 396
    :cond_4
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->cancelTouch()V

    goto/16 :goto_3

    .line 343
    :cond_5
    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mScrollPointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-gez v1, :cond_6

    .line 345
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error processing scroll; pointer index for id "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mScrollPointerId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SpringScrollView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return v3

    .line 350
    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 351
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v5

    float-to-int v1, v1

    .line 352
    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mLastTouchY:I

    sub-int/2addr v2, v1

    .line 367
    iget v5, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mScrollState:I

    if-eq v5, v4, :cond_9

    .line 369
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mTouchSlop:I

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

    .line 380
    invoke-virtual {p0, v4}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->setScrollState(I)V

    .line 384
    :cond_9
    iget v5, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mScrollState:I

    if-ne v5, v4, :cond_d

    .line 385
    iget-object v5, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mScrollOffset:[I

    aget v5, v5, v4

    sub-int/2addr v1, v5

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mLastTouchY:I

    .line 386
    invoke-virtual {p0, v3, v2, v0}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 387
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_3

    .line 324
    :cond_a
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 326
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    iget v5, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mMaxFlingVelocity:I

    int-to-float v5, v5

    invoke-virtual {v1, v2, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 327
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mScrollPointerId:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    neg-float v1, v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_b

    .line 331
    invoke-virtual {p0, v3}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->setScrollState(I)V

    goto :goto_2

    .line 337
    :cond_b
    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mLastYVel:F

    .line 340
    :goto_2
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->resetTouch()V

    move v3, v4

    goto :goto_3

    .line 308
    :cond_c
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mScrollPointerId:I

    .line 309
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    add-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mLastTouchY:I

    :cond_d
    :goto_3
    if-nez v3, :cond_e

    .line 410
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 412
    :cond_e
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 414
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mLastX:F

    .line 415
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mLastY:F

    .line 418
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
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

    .line 571
    :goto_0
    invoke-direct {p0, v2}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->isReadyToOverScroll(Z)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 582
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ltz v2, :cond_2

    .line 583
    iget-object v2, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mScrollStepConsumed:[I

    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->scrollStep(II[I)V

    .line 584
    iget-object v2, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mScrollStepConsumed:[I

    aget v3, v2, v1

    .line 585
    aget v2, v2, v0

    sub-int v4, p1, v3

    sub-int v5, p2, v2

    goto :goto_1

    :cond_2
    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    .line 591
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 608
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getOverScrollMode()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_4

    if-eqz p3, :cond_3

    const/16 v6, 0x2002

    .line 609
    invoke-virtual {p3, v6}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 611
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    int-to-float v4, v4

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    int-to-float v5, v5

    invoke-direct {p0, v6, v4, p3, v5}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->pullGlows(FFFF)V

    .line 614
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->considerReleasingGlowsOnScroll(II)V

    :cond_4
    if-nez v3, :cond_5

    if-eqz v2, :cond_6

    .line 619
    :cond_5
    invoke-virtual {p0, v3, v2}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->dispatchOnScrolled(II)V

    .line 622
    :cond_6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->awakenScrollBars()Z

    move-result p1

    if-nez p1, :cond_7

    .line 623
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

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

    .line 663
    aput p1, p3, p0

    :cond_0
    return-void
.end method

.method public setBouncy(F)V
    .locals 0

    .line 974
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDamping:F

    .line 975
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDamping:F

    invoke-virtual {p1, p0}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    return-void
.end method

.method protected setDampedScrollShift(F)V
    .locals 1

    .line 889
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDampedScrollShift:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 890
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDampedScrollShift:F

    .line 892
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public setEdgeEffectDisable(I)V
    .locals 2

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 993
    iput-boolean v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDisableEffectTop:Z

    :cond_0
    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    .line 997
    iput-boolean v1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mDisableEffectBottom:Z

    :cond_1
    return-void
.end method

.method public setEdgeEffectFactory(Lcom/google/android/material/edgeeffect/SpringNestScrollView$SEdgeEffectFactory;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mEdgeEffectFactory:Lcom/google/android/material/edgeeffect/SpringNestScrollView$SEdgeEffectFactory;

    .line 153
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->invalidateGlows()V

    return-void
.end method

.method public setIsEmpty(Z)V
    .locals 0

    .line 639
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mIsEmpty:Z

    return-void
.end method

.method setScrollState(I)V
    .locals 1

    .line 494
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mScrollState:I

    if-eq p1, v0, :cond_0

    .line 495
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mScrollState:I

    :cond_0
    return-void
.end method

.method public setStiffness(F)V
    .locals 2

    const v0, 0x44bb8000    # 1500.0f

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    const/high16 p1, 0x43480000    # 200.0f

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 969
    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mStif:F

    .line 970
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mStif:F

    invoke-virtual {p1, p0}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    return-void
.end method

.method public setVelocityMultiplier(F)V
    .locals 0

    .line 965
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringNestScrollView;->mVelocity_multiplier:F

    return-void
.end method
