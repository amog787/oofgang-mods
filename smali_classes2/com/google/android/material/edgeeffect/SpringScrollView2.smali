.class public Lcom/google/android/material/edgeeffect/SpringScrollView2;
.super Landroid/widget/ScrollView;
.source "SpringScrollView2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/edgeeffect/SpringScrollView2$SpringEdgeEffect;,
        Lcom/google/android/material/edgeeffect/SpringScrollView2$SEdgeEffectFactory;,
        Lcom/google/android/material/edgeeffect/SpringScrollView2$ViewEdgeEffectFactory;
    }
.end annotation


# static fields
.field private static final DAMPED_SCROLL:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/google/android/material/edgeeffect/SpringScrollView2;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActiveEdge:Lcom/google/android/material/edgeeffect/SpringScrollView2$SpringEdgeEffect;

.field private mBottomGlow:Landroid/widget/EdgeEffect;

.field private mDampedScrollShift:F

.field private mDisableEffectBottom:Z

.field private mDisableEffectTop:Z

.field private mDispatchScrollCounter:I

.field private mDistance:F

.field private mEdgeEffectFactory:Lcom/google/android/material/edgeeffect/SpringScrollView2$SEdgeEffectFactory;

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

.field private mScrollOffset:[I

.field private mScrollPointerId:I

.field private mScrollState:I

.field mScrollStepConsumed:[I

.field private mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mTopGlow:Landroid/widget/EdgeEffect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVelocity_multiplier:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 71
    new-instance v0, Lcom/google/android/material/edgeeffect/SpringScrollView2$1;

    const-string v1, "value"

    invoke-direct {v0, v1}, Lcom/google/android/material/edgeeffect/SpringScrollView2$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->DAMPED_SCROLL:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 86
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const p1, 0x3e99999a    # 0.3f

    .line 32
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mVelocity_multiplier:F

    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mOverScrollNested:Z

    const v0, 0x3dcccccd    # 0.1f

    .line 51
    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mPullGrowTop:F

    const v0, 0x3f666666    # 0.9f

    .line 52
    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mPullGrowBottom:F

    .line 54
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mGlowingTop:Z

    .line 55
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mGlowingBottom:Z

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mDistance:F

    .line 62
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mPullCount:I

    .line 66
    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mDampedScrollShift:F

    .line 68
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mDisableEffectTop:Z

    .line 69
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mDisableEffectBottom:Z

    .line 87
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x3e99999a    # 0.3f

    .line 32
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mVelocity_multiplier:F

    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mOverScrollNested:Z

    const p2, 0x3dcccccd    # 0.1f

    .line 51
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mPullGrowTop:F

    const p2, 0x3f666666    # 0.9f

    .line 52
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mPullGrowBottom:F

    .line 54
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mGlowingTop:Z

    .line 55
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mGlowingBottom:Z

    const/4 p2, 0x0

    .line 61
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mDistance:F

    .line 62
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mPullCount:I

    .line 66
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mDampedScrollShift:F

    .line 68
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mDisableEffectTop:Z

    .line 69
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mDisableEffectBottom:Z

    .line 92
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 96
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x3e99999a    # 0.3f

    .line 32
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mVelocity_multiplier:F

    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mOverScrollNested:Z

    const p2, 0x3dcccccd    # 0.1f

    .line 51
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mPullGrowTop:F

    const p2, 0x3f666666    # 0.9f

    .line 52
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mPullGrowBottom:F

    .line 54
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mGlowingTop:Z

    .line 55
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mGlowingBottom:Z

    const/4 p2, 0x0

    .line 61
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mDistance:F

    .line 62
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mPullCount:I

    .line 66
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mDampedScrollShift:F

    .line 68
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mDisableEffectTop:Z

    .line 69
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mDisableEffectBottom:Z

    .line 97
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p1, 0x3e99999a    # 0.3f

    .line 32
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mVelocity_multiplier:F

    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mOverScrollNested:Z

    const p2, 0x3dcccccd    # 0.1f

    .line 51
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mPullGrowTop:F

    const p2, 0x3f666666    # 0.9f

    .line 52
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mPullGrowBottom:F

    .line 54
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mGlowingTop:Z

    .line 55
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mGlowingBottom:Z

    const/4 p2, 0x0

    .line 61
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mDistance:F

    .line 62
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mPullCount:I

    .line 66
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mDampedScrollShift:F

    .line 68
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mDisableEffectTop:Z

    .line 69
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mDisableEffectBottom:Z

    .line 102
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/edgeeffect/SpringScrollView2;)F
    .locals 0

    .line 28
    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mDampedScrollShift:F

    return p0
.end method

.method static synthetic access$100(Lcom/google/android/material/edgeeffect/SpringScrollView2;)F
    .locals 0

    .line 28
    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mVelocity_multiplier:F

    return p0
.end method

.method static synthetic access$200(Lcom/google/android/material/edgeeffect/SpringScrollView2;F)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->finishScrollWithVelocity(F)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/material/edgeeffect/SpringScrollView2;)F
    .locals 0

    .line 28
    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mDistance:F

    return p0
.end method

.method static synthetic access$302(Lcom/google/android/material/edgeeffect/SpringScrollView2;F)F
    .locals 0

    .line 28
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mDistance:F

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/material/edgeeffect/SpringScrollView2;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method static synthetic access$502(Lcom/google/android/material/edgeeffect/SpringScrollView2;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mPullCount:I

    return p1
.end method

.method static synthetic access$508(Lcom/google/android/material/edgeeffect/SpringScrollView2;)I
    .locals 2

    .line 28
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mPullCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mPullCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/material/edgeeffect/SpringScrollView2;Lcom/google/android/material/edgeeffect/SpringScrollView2$SpringEdgeEffect;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->setActiveEdge(Lcom/google/android/material/edgeeffect/SpringScrollView2$SpringEdgeEffect;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/material/edgeeffect/SpringScrollView2;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mDisableEffectTop:Z

    return p0
.end method

.method static synthetic access$800(Lcom/google/android/material/edgeeffect/SpringScrollView2;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mDisableEffectBottom:Z

    return p0
.end method

.method private cancelTouch()V
    .locals 1

    .line 514
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->resetTouch()V

    const/4 v0, 0x0

    .line 515
    invoke-virtual {p0, v0}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->setScrollState(I)V

    return-void
.end method

.method private finishScrollWithVelocity(F)V
    .locals 2

    .line 899
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mDampedScrollShift:F

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

    .line 905
    iget-boolean v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mDisableEffectTop:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 907
    iget-boolean v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mDisableEffectBottom:Z

    if-eqz v0, :cond_2

    return-void

    .line 910
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 911
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mDampedScrollShift:F

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 912
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void

    :cond_3
    :goto_0
    const-string p0, "SpringScrollView2"

    const-string p1, "animation parameter out of range!"

    .line 900
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private init()V
    .locals 3

    .line 106
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mTouchSlop:I

    .line 108
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mMaxFlingVelocity:I

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 109
    iput-object v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mScrollStepConsumed:[I

    new-array v1, v0, [I

    .line 110
    iput-object v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mScrollOffset:[I

    new-array v0, v0, [I

    .line 111
    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mNestedOffsets:[I

    .line 113
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->createViewEdgeEffectFactory()Lcom/google/android/material/edgeeffect/SpringScrollView2$ViewEdgeEffectFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mEdgeEffectFactory:Lcom/google/android/material/edgeeffect/SpringScrollView2$SEdgeEffectFactory;

    .line 114
    invoke-virtual {p0, v0}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->setEdgeEffectFactory(Lcom/google/android/material/edgeeffect/SpringScrollView2$SEdgeEffectFactory;)V

    .line 115
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Lcom/google/android/material/edgeeffect/SpringScrollView2;->DAMPED_SCROLL:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 116
    new-instance p0, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p0, v2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const v1, 0x44138000    # 590.0f

    .line 117
    invoke-virtual {p0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v1, 0x3f000000    # 0.5f

    .line 118
    invoke-virtual {p0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 116
    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    return-void
.end method

.method private isReadyToOverScroll(Z)Z
    .locals 2

    .line 652
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    .line 656
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_1
    if-nez p1, :cond_2

    .line 664
    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_2
    return v1
.end method

.method private onPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 519
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 520
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mScrollPointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 522
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mScrollPointerId:I

    .line 523
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mLastTouchY:I

    :cond_1
    return-void
.end method

.method private pullGlows(FFFF)V
    .locals 5

    .line 445
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p3, v0

    if-gtz v0, :cond_4

    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-gez v1, :cond_0

    goto :goto_1

    .line 449
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p3, v1

    cmpg-float v1, p4, v0

    const/4 v2, 0x1

    if-gez v1, :cond_1

    .line 450
    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mPullGrowBottom:F

    cmpg-float v1, p3, v1

    if-gez v1, :cond_1

    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mPullGrowTop:F

    cmpl-float v1, p3, v1

    if-lez v1, :cond_1

    .line 451
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->ensureTopGlow()V

    .line 453
    iget-object p3, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz p3, :cond_2

    neg-float v1, p4

    .line 454
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p1, v3

    invoke-virtual {p3, v1, p1}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 456
    iput-boolean v2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mGlowingTop:Z

    goto :goto_0

    :cond_1
    cmpl-float v1, p4, v0

    if-lez v1, :cond_2

    .line 459
    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mPullGrowTop:F

    cmpl-float v1, p3, v1

    if-lez v1, :cond_2

    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mPullGrowBottom:F

    cmpg-float p3, p3, v1

    if-gez p3, :cond_2

    .line 460
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->ensureBottomGlow()V

    .line 462
    iget-object p3, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz p3, :cond_2

    .line 463
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

    .line 465
    iput-boolean v2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mGlowingBottom:Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_3

    cmpl-float p1, p2, v0

    if-nez p1, :cond_3

    cmpl-float p1, p4, v0

    if-eqz p1, :cond_4

    .line 471
    :cond_3
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    :cond_4
    :goto_1
    return-void
.end method

.method private releaseGlows()V
    .locals 3

    .line 494
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mTopGlow:Landroid/widget/EdgeEffect;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 495
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 497
    iput-boolean v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mGlowingTop:Z

    .line 498
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 501
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_1

    .line 502
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 504
    iput-boolean v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mGlowingBottom:Z

    .line 505
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    if-eqz v0, :cond_2

    .line 509
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    :cond_2
    return-void
.end method

.method private resetTouch()V
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 486
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 489
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->releaseGlows()V

    return-void
.end method

.method private setActiveEdge(Lcom/google/android/material/edgeeffect/SpringScrollView2$SpringEdgeEffect;)V
    .locals 1

    .line 916
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mActiveEdge:Lcom/google/android/material/edgeeffect/SpringScrollView2$SpringEdgeEffect;

    .line 919
    iput-object p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mActiveEdge:Lcom/google/android/material/edgeeffect/SpringScrollView2$SpringEdgeEffect;

    return-void
.end method


# virtual methods
.method computeVelocity()F
    .locals 3

    .line 950
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 951
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 953
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mMaxFlingVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 954
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mScrollPointerId:I

    invoke-virtual {v0, p0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result p0

    neg-float p0, p0

    return p0
.end method

.method considerReleasingGlowsOnScroll(II)V
    .locals 1

    .line 685
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mTopGlow:Landroid/widget/EdgeEffect;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_0

    if-lez p2, :cond_0

    .line 686
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 687
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    .line 690
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_1

    if-gez p2, :cond_1

    .line 691
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 692
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_1
    if-eqz v0, :cond_2

    .line 696
    invoke-virtual {p0}, Landroid/widget/ScrollView;->postInvalidateOnAnimation()V

    :cond_2
    return-void
.end method

.method public createViewEdgeEffectFactory()Lcom/google/android/material/edgeeffect/SpringScrollView2$ViewEdgeEffectFactory;
    .locals 2

    .line 931
    new-instance v0, Lcom/google/android/material/edgeeffect/SpringScrollView2$ViewEdgeEffectFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/edgeeffect/SpringScrollView2$ViewEdgeEffectFactory;-><init>(Lcom/google/android/material/edgeeffect/SpringScrollView2;Lcom/google/android/material/edgeeffect/SpringScrollView2$1;)V

    return-object v0
.end method

.method dispatchOnScrolled(II)V
    .locals 2

    .line 529
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mDispatchScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mDispatchScrollCounter:I

    .line 530
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v0

    .line 531
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    .line 532
    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->onScrollChanged(IIII)V

    .line 533
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->onScrolled(II)V

    .line 546
    iget p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mDispatchScrollCounter:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mDispatchScrollCounter:I

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 936
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mDampedScrollShift:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 937
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 938
    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mDampedScrollShift:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 940
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->draw(Landroid/graphics/Canvas;)V

    .line 941
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    .line 946
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method ensureBottomGlow()V
    .locals 4

    .line 424
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mEdgeEffectFactory:Lcom/google/android/material/edgeeffect/SpringScrollView2$SEdgeEffectFactory;

    if-nez v0, :cond_0

    const-string p0, "SpringScrollView2"

    const-string v0, "setEdgeEffectFactory first, please!"

    .line 426
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 430
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_2

    const/4 v1, 0x3

    .line 431
    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/edgeeffect/SpringScrollView2$SEdgeEffectFactory;->createEdgeEffect(Landroid/view/View;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 432
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 433
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mBottomGlow:Landroid/widget/EdgeEffect;

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

    .line 435
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mBottomGlow:Landroid/widget/EdgeEffect;

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

    .line 406
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mEdgeEffectFactory:Lcom/google/android/material/edgeeffect/SpringScrollView2$SEdgeEffectFactory;

    if-nez v0, :cond_0

    const-string p0, "SpringScrollView2"

    const-string v0, "setEdgeEffectFactory first, please!"

    .line 408
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 412
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mTopGlow:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 413
    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/edgeeffect/SpringScrollView2$SEdgeEffectFactory;->createEdgeEffect(Landroid/view/View;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 414
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mTopGlow:Landroid/widget/EdgeEffect;

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

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mTopGlow:Landroid/widget/EdgeEffect;

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

    .line 128
    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mBottomGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mTopGlow:Landroid/widget/EdgeEffect;

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 133
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 134
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 137
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 138
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 140
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    const/4 v3, 0x2

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_b

    if-eq v0, v6, :cond_9

    if-eq v0, v3, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    goto/16 :goto_2

    .line 261
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    .line 257
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mScrollPointerId:I

    .line 258
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mLastTouchY:I

    goto/16 :goto_2

    .line 251
    :cond_3
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->cancelTouch()V

    goto/16 :goto_2

    .line 198
    :cond_4
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mScrollPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_5

    .line 200
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error processing scroll; pointer index for id "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mScrollPointerId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SpringScrollView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 204
    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 205
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v4

    float-to-int v0, v0

    .line 206
    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mLastTouchY:I

    sub-int/2addr v1, v0

    .line 222
    iget v3, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mScrollState:I

    if-eq v3, v6, :cond_8

    .line 224
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mTouchSlop:I

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

    .line 235
    invoke-virtual {p0, v6}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->setScrollState(I)V

    .line 239
    :cond_8
    iget v3, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mScrollState:I

    if-ne v3, v6, :cond_d

    .line 240
    iget-object v3, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mScrollOffset:[I

    aget v3, v3, v6

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mLastTouchY:I

    .line 241
    invoke-virtual {p0, v5, v1, v2}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 242
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_2

    .line 163
    :cond_9
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 165
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mMaxFlingVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 166
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mScrollPointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    neg-float v0, v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_a

    .line 169
    invoke-virtual {p0, v5}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->setScrollState(I)V

    .line 174
    :cond_a
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->resetTouch()V

    goto :goto_2

    .line 145
    :cond_b
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mScrollPointerId:I

    .line 146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mLastTouchY:I

    .line 148
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mScrollState:I

    if-ne v0, v3, :cond_c

    .line 149
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 150
    invoke-virtual {p0, v6}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->setScrollState(I)V

    .line 153
    :cond_c
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mNestedOffsets:[I

    aput v5, v0, v6

    aput v5, v0, v5

    .line 265
    :cond_d
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mLastX:F

    .line 266
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mLastY:F

    .line 267
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method onRecyclerViewScrolled()V
    .locals 2

    .line 801
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mPullCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 805
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 808
    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mDistance:F

    const/4 v1, 0x0

    .line 809
    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mPullCount:I

    .line 810
    invoke-direct {p0, v0}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->finishScrollWithVelocity(F)V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 6

    .line 724
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 746
    iget-boolean v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mGlowingTop:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 747
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-le p2, p4, :cond_0

    .line 748
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->onRecyclerViewScrolled()V

    .line 754
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mGlowingBottom:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 755
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-ge p2, p4, :cond_1

    .line 756
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->onRecyclerViewScrolled()V

    .line 761
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mGlowingTop:Z

    const/high16 v3, 0x41a00000    # 20.0f

    const/4 v4, 0x0

    if-nez v0, :cond_3

    .line 762
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_3

    if-ge p2, p4, :cond_3

    .line 763
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mLastYVel:F

    cmpl-float v1, v0, v4

    if-ltz v1, :cond_2

    .line 768
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->computeVelocity()F

    move-result v0

    .line 771
    :cond_2
    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mLastX:F

    iget v5, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mLastY:F

    div-float/2addr v0, v3

    invoke-direct {p0, v1, v4, v5, v0}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->pullGlows(FFFF)V

    .line 773
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_3

    float-to-int v0, v0

    .line 774
    invoke-virtual {v1, v0}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 779
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mGlowingBottom:Z

    if-nez v0, :cond_5

    .line 780
    invoke-virtual {p0, v2}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_5

    if-le p2, p4, :cond_5

    .line 781
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mLastYVel:F

    cmpg-float v1, v0, v4

    if-gtz v1, :cond_4

    .line 786
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->computeVelocity()F

    move-result v0

    .line 788
    :cond_4
    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mLastX:F

    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mLastY:F

    div-float/2addr v0, v3

    invoke-direct {p0, v1, v4, v2, v0}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->pullGlows(FFFF)V

    .line 790
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_5

    float-to-int v0, v0

    .line 791
    invoke-virtual {v1, v0}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 797
    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    return-void
.end method

.method public onScrolled(II)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 275
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 276
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 280
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 281
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 282
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_1

    .line 284
    iget-object v5, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mNestedOffsets:[I

    aput v3, v5, v4

    aput v3, v5, v3

    .line 287
    :cond_1
    iget-object v5, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mNestedOffsets:[I

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

    .line 391
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    .line 387
    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mScrollPointerId:I

    .line 388
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mLastTouchY:I

    goto/16 :goto_3

    .line 381
    :cond_4
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->cancelTouch()V

    goto/16 :goto_3

    .line 328
    :cond_5
    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mScrollPointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-gez v1, :cond_6

    .line 330
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error processing scroll; pointer index for id "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mScrollPointerId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SpringScrollView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 334
    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 335
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v5

    float-to-int v1, v1

    .line 336
    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mLastTouchY:I

    sub-int/2addr v2, v1

    .line 352
    iget v5, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mScrollState:I

    if-eq v5, v4, :cond_9

    .line 354
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mTouchSlop:I

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

    .line 365
    invoke-virtual {p0, v4}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->setScrollState(I)V

    .line 369
    :cond_9
    iget v5, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mScrollState:I

    if-ne v5, v4, :cond_d

    .line 370
    iget-object v5, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mScrollOffset:[I

    aget v5, v5, v4

    sub-int/2addr v1, v5

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mLastTouchY:I

    .line 371
    invoke-virtual {p0, v3, v2, v0}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 372
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_3

    .line 309
    :cond_a
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 311
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    iget v5, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mMaxFlingVelocity:I

    int-to-float v5, v5

    invoke-virtual {v1, v2, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 312
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mScrollPointerId:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    neg-float v1, v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_b

    .line 316
    invoke-virtual {p0, v3}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->setScrollState(I)V

    goto :goto_2

    .line 322
    :cond_b
    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mLastYVel:F

    .line 325
    :goto_2
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->resetTouch()V

    move v3, v4

    goto :goto_3

    .line 293
    :cond_c
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mScrollPointerId:I

    .line 294
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    add-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mLastTouchY:I

    :cond_d
    :goto_3
    if-nez v3, :cond_e

    .line 395
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 397
    :cond_e
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 398
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mLastX:F

    .line 399
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mLastY:F

    .line 402
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

    .line 715
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

    .line 552
    :goto_0
    invoke-direct {p0, v2}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->isReadyToOverScroll(Z)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 575
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v2

    if-ltz v2, :cond_2

    .line 576
    iget-object v2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mScrollStepConsumed:[I

    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->scrollStep(II[I)V

    .line 577
    iget-object v2, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mScrollStepConsumed:[I

    aget v3, v2, v1

    .line 578
    aget v2, v2, v0

    sub-int v4, p1, v3

    sub-int v5, p2, v2

    goto :goto_1

    :cond_2
    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    .line 584
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    .line 603
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_4

    if-eqz p3, :cond_3

    const/16 v6, 0x2002

    .line 604
    invoke-virtual {p3, v6}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 606
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    int-to-float v4, v4

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    int-to-float v5, v5

    invoke-direct {p0, v6, v4, p3, v5}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->pullGlows(FFFF)V

    .line 609
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->considerReleasingGlowsOnScroll(II)V

    :cond_4
    if-nez v3, :cond_5

    if-eqz v2, :cond_6

    .line 614
    :cond_5
    invoke-virtual {p0, v3, v2}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->dispatchOnScrolled(II)V

    .line 617
    :cond_6
    invoke-virtual {p0}, Landroid/widget/ScrollView;->awakenScrollBars()Z

    move-result p1

    if-nez p1, :cond_7

    .line 618
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

    .line 645
    aput p1, p3, p0

    :cond_0
    return-void
.end method

.method protected setDampedScrollShift(F)V
    .locals 1

    .line 923
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mDampedScrollShift:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 924
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mDampedScrollShift:F

    .line 926
    invoke-virtual {p0}, Landroid/widget/ScrollView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setEdgeEffectDisable(I)V
    .locals 2

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 976
    iput-boolean v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mDisableEffectTop:Z

    :cond_0
    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    .line 980
    iput-boolean v1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mDisableEffectBottom:Z

    :cond_1
    return-void
.end method

.method public setEdgeEffectFactory(Lcom/google/android/material/edgeeffect/SpringScrollView2$SEdgeEffectFactory;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mEdgeEffectFactory:Lcom/google/android/material/edgeeffect/SpringScrollView2$SEdgeEffectFactory;

    .line 124
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringScrollView2;->invalidateGlows()V

    return-void
.end method

.method public setOverScrollNested(Z)V
    .locals 0

    .line 708
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mOverScrollNested:Z

    return-void
.end method

.method setScrollState(I)V
    .locals 1

    .line 476
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mScrollState:I

    if-eq p1, v0, :cond_0

    .line 477
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mScrollState:I

    :cond_0
    return-void
.end method

.method public setVelocityMultiplier(F)V
    .locals 0

    .line 958
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringScrollView2;->mVelocity_multiplier:F

    return-void
.end method
