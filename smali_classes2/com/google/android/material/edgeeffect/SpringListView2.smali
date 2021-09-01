.class public Lcom/google/android/material/edgeeffect/SpringListView2;
.super Landroid/widget/ListView;
.source "SpringListView2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/edgeeffect/SpringListView2$OnScrollListenerWrapper;,
        Lcom/google/android/material/edgeeffect/SpringListView2$SpringEdgeEffect;,
        Lcom/google/android/material/edgeeffect/SpringListView2$ViewEdgeEffectFactory;,
        Lcom/google/android/material/edgeeffect/SpringListView2$SEdgeEffectFactory;
    }
.end annotation


# static fields
.field private static final DAMPED_SCROLL:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/google/android/material/edgeeffect/SpringListView2;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String;


# instance fields
.field private mActiveEdge:Lcom/google/android/material/edgeeffect/SpringListView2$SpringEdgeEffect;

.field private mAnimationEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

.field private mBottomGlow:Landroid/widget/EdgeEffect;

.field private mDampedScrollShift:F

.field private mDamping:F

.field private mDispatchScrollCounter:I

.field private mDistance:F

.field private mEdgeEffectFactory:Lcom/google/android/material/edgeeffect/SpringListView2$SEdgeEffectFactory;

.field mGivenOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mGlowing:Z

.field private mInitialTouchY:I

.field private mLastTouchY:I

.field private mLastX:F

.field private mLastY:F

.field private mLastYVel:F

.field private mMaxFlingVelocity:I

.field private mNestedOffsets:[I

.field mOnScrollListenerWrapper:Lcom/google/android/material/edgeeffect/SpringListView2$OnScrollListenerWrapper;

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

    .line 58
    const-class v0, Lcom/google/android/material/edgeeffect/SpringListView2;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/edgeeffect/SpringListView2;->TAG:Ljava/lang/String;

    .line 60
    new-instance v0, Lcom/google/android/material/edgeeffect/SpringListView2$1;

    const-string v1, "value"

    invoke-direct {v0, v1}, Lcom/google/android/material/edgeeffect/SpringListView2$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/edgeeffect/SpringListView2;->DAMPED_SCROLL:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 110
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const p1, 0x3e99999a    # 0.3f

    .line 37
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mVelocity_multiplier:F

    const p1, 0x44138000    # 590.0f

    .line 38
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mStif:F

    const/high16 p1, 0x3f000000    # 0.5f

    .line 39
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mDamping:F

    const/4 p1, 0x1

    .line 85
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mOverScrollNested:Z

    const p1, 0x3dcccccd    # 0.1f

    .line 86
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mPullGrowTop:F

    const p1, 0x3f666666    # 0.9f

    .line 87
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mPullGrowBottom:F

    const/4 p1, 0x0

    .line 90
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mGlowing:Z

    const/4 v0, 0x0

    .line 94
    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mDampedScrollShift:F

    .line 95
    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mDistance:F

    .line 96
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mPullCount:I

    .line 99
    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mLastYVel:F

    .line 105
    new-instance p1, Lcom/google/android/material/edgeeffect/SpringListView2$OnScrollListenerWrapper;

    invoke-direct {p1, p0}, Lcom/google/android/material/edgeeffect/SpringListView2$OnScrollListenerWrapper;-><init>(Lcom/google/android/material/edgeeffect/SpringListView2;)V

    iput-object p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mOnScrollListenerWrapper:Lcom/google/android/material/edgeeffect/SpringListView2$OnScrollListenerWrapper;

    .line 111
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringListView2;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 115
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x3e99999a    # 0.3f

    .line 37
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mVelocity_multiplier:F

    const p1, 0x44138000    # 590.0f

    .line 38
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mStif:F

    const/high16 p1, 0x3f000000    # 0.5f

    .line 39
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mDamping:F

    const/4 p1, 0x1

    .line 85
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mOverScrollNested:Z

    const p1, 0x3dcccccd    # 0.1f

    .line 86
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mPullGrowTop:F

    const p1, 0x3f666666    # 0.9f

    .line 87
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mPullGrowBottom:F

    const/4 p1, 0x0

    .line 90
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mGlowing:Z

    const/4 p2, 0x0

    .line 94
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mDampedScrollShift:F

    .line 95
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mDistance:F

    .line 96
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mPullCount:I

    .line 99
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mLastYVel:F

    .line 105
    new-instance p1, Lcom/google/android/material/edgeeffect/SpringListView2$OnScrollListenerWrapper;

    invoke-direct {p1, p0}, Lcom/google/android/material/edgeeffect/SpringListView2$OnScrollListenerWrapper;-><init>(Lcom/google/android/material/edgeeffect/SpringListView2;)V

    iput-object p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mOnScrollListenerWrapper:Lcom/google/android/material/edgeeffect/SpringListView2$OnScrollListenerWrapper;

    .line 116
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringListView2;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 120
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x3e99999a    # 0.3f

    .line 37
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mVelocity_multiplier:F

    const p1, 0x44138000    # 590.0f

    .line 38
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mStif:F

    const/high16 p1, 0x3f000000    # 0.5f

    .line 39
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mDamping:F

    const/4 p1, 0x1

    .line 85
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mOverScrollNested:Z

    const p1, 0x3dcccccd    # 0.1f

    .line 86
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mPullGrowTop:F

    const p1, 0x3f666666    # 0.9f

    .line 87
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mPullGrowBottom:F

    const/4 p1, 0x0

    .line 90
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mGlowing:Z

    const/4 p2, 0x0

    .line 94
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mDampedScrollShift:F

    .line 95
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mDistance:F

    .line 96
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mPullCount:I

    .line 99
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mLastYVel:F

    .line 105
    new-instance p1, Lcom/google/android/material/edgeeffect/SpringListView2$OnScrollListenerWrapper;

    invoke-direct {p1, p0}, Lcom/google/android/material/edgeeffect/SpringListView2$OnScrollListenerWrapper;-><init>(Lcom/google/android/material/edgeeffect/SpringListView2;)V

    iput-object p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mOnScrollListenerWrapper:Lcom/google/android/material/edgeeffect/SpringListView2$OnScrollListenerWrapper;

    .line 121
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringListView2;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/edgeeffect/SpringListView2;)F
    .locals 0

    .line 33
    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mDampedScrollShift:F

    return p0
.end method

.method static synthetic access$1000(Lcom/google/android/material/edgeeffect/SpringListView2;)F
    .locals 0

    .line 33
    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mLastX:F

    return p0
.end method

.method static synthetic access$1100(Lcom/google/android/material/edgeeffect/SpringListView2;)F
    .locals 0

    .line 33
    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mLastY:F

    return p0
.end method

.method static synthetic access$1200(Lcom/google/android/material/edgeeffect/SpringListView2;FFFF)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/edgeeffect/SpringListView2;->pullGlows(FFFF)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/material/edgeeffect/SpringListView2;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mTopGlow:Landroid/widget/EdgeEffect;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/google/android/material/edgeeffect/SpringListView2;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mBottomGlow:Landroid/widget/EdgeEffect;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/material/edgeeffect/SpringListView2;)F
    .locals 0

    .line 33
    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mVelocity_multiplier:F

    return p0
.end method

.method static synthetic access$300(Lcom/google/android/material/edgeeffect/SpringListView2;F)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/SpringListView2;->finishScrollWithVelocity(F)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/material/edgeeffect/SpringListView2;)F
    .locals 0

    .line 33
    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mDistance:F

    return p0
.end method

.method static synthetic access$402(Lcom/google/android/material/edgeeffect/SpringListView2;F)F
    .locals 0

    .line 33
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mDistance:F

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/material/edgeeffect/SpringListView2;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method static synthetic access$602(Lcom/google/android/material/edgeeffect/SpringListView2;I)I
    .locals 0

    .line 33
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mPullCount:I

    return p1
.end method

.method static synthetic access$608(Lcom/google/android/material/edgeeffect/SpringListView2;)I
    .locals 2

    .line 33
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mPullCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mPullCount:I

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/material/edgeeffect/SpringListView2;Lcom/google/android/material/edgeeffect/SpringListView2$SpringEdgeEffect;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/SpringListView2;->setActiveEdge(Lcom/google/android/material/edgeeffect/SpringListView2$SpringEdgeEffect;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/material/edgeeffect/SpringListView2;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mGlowing:Z

    return p0
.end method

.method static synthetic access$900(Lcom/google/android/material/edgeeffect/SpringListView2;)F
    .locals 0

    .line 33
    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mLastYVel:F

    return p0
.end method

.method private cancelScroll()V
    .locals 1

    .line 620
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringListView2;->resetTouch()V

    const/4 v0, 0x0

    .line 621
    invoke-virtual {p0, v0}, Lcom/google/android/material/edgeeffect/SpringListView2;->setScrollState(I)V

    return-void
.end method

.method private finishScrollWithVelocity(F)V
    .locals 2

    .line 591
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mDampedScrollShift:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_2

    const v1, -0x800001

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    goto :goto_0

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mAnimationEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    if-eqz v0, :cond_1

    .line 596
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 597
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 598
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mDampedScrollShift:F

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 599
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void

    :cond_2
    :goto_0
    const-string p0, "SpringListView2"

    const-string p1, "animation parameter out of range!"

    .line 592
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private init()V
    .locals 3

    .line 125
    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mTouchSlop:I

    .line 127
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mMaxFlingVelocity:I

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 128
    iput-object v1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mScrollStepConsumed:[I

    new-array v1, v0, [I

    .line 129
    iput-object v1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mScrollOffset:[I

    new-array v0, v0, [I

    .line 130
    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mNestedOffsets:[I

    .line 133
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringListView2;->createViewEdgeEffectFactory()Lcom/google/android/material/edgeeffect/SpringListView2$ViewEdgeEffectFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mEdgeEffectFactory:Lcom/google/android/material/edgeeffect/SpringListView2$SEdgeEffectFactory;

    .line 134
    invoke-virtual {p0, v0}, Lcom/google/android/material/edgeeffect/SpringListView2;->setEdgeEffectFactory(Lcom/google/android/material/edgeeffect/SpringListView2$SEdgeEffectFactory;)V

    .line 135
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Lcom/google/android/material/edgeeffect/SpringListView2;->DAMPED_SCROLL:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 136
    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const v2, 0x44138000    # 590.0f

    .line 137
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v2, 0x3f000000    # 0.5f

    .line 138
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 136
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 140
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mOnScrollListenerWrapper:Lcom/google/android/material/edgeeffect/SpringListView2$OnScrollListenerWrapper;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method private isReadyToOverScroll(ZI)Z
    .locals 3

    .line 664
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 666
    invoke-interface {p2}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 671
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    if-nez v2, :cond_3

    .line 672
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 674
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingTop()I

    move-result p0

    if-lt p1, p0, :cond_2

    move v0, v1

    :cond_2
    return v0

    :cond_3
    if-nez p1, :cond_4

    if-eqz p2, :cond_4

    .line 676
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result p1

    invoke-interface {p2}, Landroid/widget/Adapter;->getCount()I

    move-result p2

    sub-int/2addr p2, v1

    if-ne p1, p2, :cond_4

    .line 677
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 679
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result p2

    .line 680
    invoke-virtual {p0}, Landroid/widget/ListView;->getListPaddingBottom()I

    move-result p0

    sub-int/2addr p2, p0

    if-gt p1, p2, :cond_4

    move v0, v1

    :cond_4
    return v0
.end method

.method private onPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 654
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 655
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mScrollPointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 657
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mScrollPointerId:I

    .line 658
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mLastTouchY:I

    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mInitialTouchY:I

    :cond_1
    return-void
.end method

.method private pullGlows(FFFF)V
    .locals 5

    .line 439
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p3, v0

    if-gtz v0, :cond_4

    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-gez v1, :cond_0

    goto :goto_1

    .line 443
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p3, v1

    cmpg-float v1, p4, v0

    const/4 v2, 0x1

    if-gez v1, :cond_1

    .line 444
    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mPullGrowBottom:F

    cmpg-float v1, p3, v1

    if-gez v1, :cond_1

    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mPullGrowTop:F

    cmpl-float v1, p3, v1

    if-lez v1, :cond_1

    .line 445
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringListView2;->ensureTopGlow()V

    .line 447
    iget-object p3, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz p3, :cond_2

    neg-float v1, p4

    .line 448
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/widget/ListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p1, v3

    invoke-virtual {p3, v1, p1}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 449
    iput-boolean v2, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mGlowing:Z

    goto :goto_0

    :cond_1
    cmpl-float v1, p4, v0

    if-lez v1, :cond_2

    .line 452
    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mPullGrowTop:F

    cmpl-float v1, p3, v1

    if-lez v1, :cond_2

    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mPullGrowBottom:F

    cmpg-float p3, p3, v1

    if-gez p3, :cond_2

    .line 453
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringListView2;->ensureBottomGlow()V

    .line 454
    iget-object p3, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz p3, :cond_2

    .line 455
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p4, v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Landroid/widget/ListView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr p1, v4

    sub-float/2addr v3, p1

    invoke-virtual {p3, v1, v3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 456
    iput-boolean v2, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mGlowing:Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_3

    cmpl-float p1, p2, v0

    if-nez p1, :cond_3

    cmpl-float p1, p4, v0

    if-eqz p1, :cond_4

    .line 462
    :cond_3
    invoke-virtual {p0}, Landroid/widget/ListView;->postInvalidateOnAnimation()V

    :cond_4
    :goto_1
    return-void
.end method

.method private releaseGlows()V
    .locals 3

    .line 636
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mTopGlow:Landroid/widget/EdgeEffect;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 637
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 638
    iput-boolean v1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mGlowing:Z

    .line 639
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 642
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_1

    .line 643
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 644
    iput-boolean v1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mGlowing:Z

    .line 645
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    if-eqz v0, :cond_2

    .line 649
    invoke-virtual {p0}, Landroid/widget/ListView;->postInvalidateOnAnimation()V

    :cond_2
    return-void
.end method

.method private resetScroll()V
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 611
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 613
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->stopNestedScroll()V

    .line 614
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringListView2;->releaseGlows()V

    return-void
.end method

.method private resetTouch()V
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 627
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 630
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringListView2;->releaseGlows()V

    return-void
.end method

.method private setActiveEdge(Lcom/google/android/material/edgeeffect/SpringListView2$SpringEdgeEffect;)V
    .locals 1

    .line 603
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mActiveEdge:Lcom/google/android/material/edgeeffect/SpringListView2$SpringEdgeEffect;

    .line 606
    iput-object p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mActiveEdge:Lcom/google/android/material/edgeeffect/SpringListView2$SpringEdgeEffect;

    return-void
.end method


# virtual methods
.method computeVelocity()F
    .locals 3

    .line 895
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 896
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 898
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mMaxFlingVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 899
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mScrollPointerId:I

    invoke-virtual {v0, p0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result p0

    neg-float p0, p0

    return p0
.end method

.method considerReleasingGlowsOnScroll(II)V
    .locals 1

    .line 557
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mTopGlow:Landroid/widget/EdgeEffect;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_0

    if-lez p2, :cond_0

    .line 558
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 559
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    .line 562
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_1

    if-gez p2, :cond_1

    .line 563
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 564
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_1
    if-eqz v0, :cond_2

    .line 568
    invoke-virtual {p0}, Landroid/widget/ListView;->postInvalidateOnAnimation()V

    :cond_2
    return-void
.end method

.method public createViewEdgeEffectFactory()Lcom/google/android/material/edgeeffect/SpringListView2$ViewEdgeEffectFactory;
    .locals 2

    .line 715
    new-instance v0, Lcom/google/android/material/edgeeffect/SpringListView2$ViewEdgeEffectFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/edgeeffect/SpringListView2$ViewEdgeEffectFactory;-><init>(Lcom/google/android/material/edgeeffect/SpringListView2;Lcom/google/android/material/edgeeffect/SpringListView2$1;)V

    return-object v0
.end method

.method dispatchOnScrolled(II)V
    .locals 2

    .line 535
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mDispatchScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mDispatchScrollCounter:I

    .line 536
    invoke-virtual {p0}, Landroid/widget/ListView;->getScrollX()I

    move-result v0

    .line 537
    invoke-virtual {p0}, Landroid/widget/ListView;->getScrollY()I

    move-result v1

    .line 538
    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/widget/ListView;->onScrollChanged(IIII)V

    .line 539
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/edgeeffect/SpringListView2;->onScrolled(II)V

    .line 552
    iget p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mDispatchScrollCounter:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mDispatchScrollCounter:I

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 881
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mDampedScrollShift:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 882
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 883
    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mDampedScrollShift:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 885
    invoke-super {p0, p1}, Landroid/widget/ListView;->draw(Landroid/graphics/Canvas;)V

    .line 886
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    .line 891
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method ensureBottomGlow()V
    .locals 4

    .line 517
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mEdgeEffectFactory:Lcom/google/android/material/edgeeffect/SpringListView2$SEdgeEffectFactory;

    if-nez v0, :cond_0

    .line 519
    sget-object p0, Lcom/google/android/material/edgeeffect/SpringListView2;->TAG:Ljava/lang/String;

    const-string v0, "setEdgeEffectFactory first, please!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 523
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_2

    const/4 v1, 0x3

    .line 524
    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/edgeeffect/SpringListView2$SEdgeEffectFactory;->createEdgeEffect(Landroid/view/View;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 525
    invoke-virtual {p0}, Landroid/widget/ListView;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 526
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ListView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    .line 528
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ListView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method ensureTopGlow()V
    .locals 4

    .line 499
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mEdgeEffectFactory:Lcom/google/android/material/edgeeffect/SpringListView2$SEdgeEffectFactory;

    if-nez v0, :cond_0

    .line 501
    sget-object p0, Lcom/google/android/material/edgeeffect/SpringListView2;->TAG:Ljava/lang/String;

    const-string v0, "setEdgeEffectFactory first, please!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 505
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mTopGlow:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 506
    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/edgeeffect/SpringListView2$SEdgeEffectFactory;->createEdgeEffect(Landroid/view/View;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 507
    invoke-virtual {p0}, Landroid/widget/ListView;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 508
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ListView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    .line 510
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ListView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getScrollState()I
    .locals 0

    .line 793
    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mScrollState:I

    return p0
.end method

.method invalidateGlows()V
    .locals 1

    const/4 v0, 0x0

    .line 587
    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mBottomGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mTopGlow:Landroid/widget/EdgeEffect;

    return-void
.end method

.method isUserOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)Z
    .locals 0

    .line 820
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mOnScrollListenerWrapper:Lcom/google/android/material/edgeeffect/SpringListView2$OnScrollListenerWrapper;

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 155
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 156
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 159
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 160
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_8

    if-eq v0, v5, :cond_7

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/4 v3, 0x5

    if-eq v0, v3, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    goto/16 :goto_1

    .line 225
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/SpringListView2;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 221
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mScrollPointerId:I

    .line 222
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mLastTouchY:I

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mInitialTouchY:I

    goto/16 :goto_1

    .line 215
    :cond_3
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringListView2;->cancelScroll()V

    goto/16 :goto_1

    .line 195
    :cond_4
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mScrollPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_5

    return v4

    .line 199
    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 200
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 201
    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mScrollState:I

    if-eq v1, v5, :cond_d

    .line 202
    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mInitialTouchY:I

    sub-int v1, v0, v1

    .line 204
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mTouchSlop:I

    if-le v1, v2, :cond_6

    .line 205
    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mLastTouchY:I

    move v4, v5

    :cond_6
    if-eqz v4, :cond_d

    .line 210
    invoke-virtual {p0, v5}, Lcom/google/android/material/edgeeffect/SpringListView2;->setScrollState(I)V

    goto :goto_1

    .line 191
    :cond_7
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 192
    invoke-virtual {p0}, Landroid/widget/ListView;->stopNestedScroll()V

    goto :goto_1

    .line 166
    :cond_8
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mScrollPointerId:I

    .line 167
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_9

    return v4

    .line 171
    :cond_9
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    sub-int/2addr v1, v5

    if-ne v0, v1, :cond_a

    move v0, v5

    goto :goto_0

    :cond_a
    move v0, v4

    :goto_0
    xor-int/2addr v0, v5

    .line 172
    invoke-direct {p0, v0, v4}, Lcom/google/android/material/edgeeffect/SpringListView2;->isReadyToOverScroll(ZI)Z

    move-result v0

    if-nez v0, :cond_b

    .line 176
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 179
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mLastTouchY:I

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mInitialTouchY:I

    .line 180
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mScrollState:I

    if-ne v0, v3, :cond_c

    .line 181
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 182
    invoke-virtual {p0, v5}, Lcom/google/android/material/edgeeffect/SpringListView2;->setScrollState(I)V

    .line 185
    :cond_c
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mNestedOffsets:[I

    aput v4, v0, v5

    aput v4, v0, v4

    .line 188
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->startNestedScroll(I)Z

    .line 229
    :cond_d
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mLastX:F

    .line 230
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mLastY:F

    .line 232
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onRecyclerViewScrolled()V
    .locals 2

    .line 797
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mPullCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 801
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 805
    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mDistance:F

    const/4 v1, 0x0

    .line 806
    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mPullCount:I

    .line 807
    invoke-direct {p0, v0}, Lcom/google/android/material/edgeeffect/SpringListView2;->finishScrollWithVelocity(F)V

    return-void
.end method

.method public onScrolled(II)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 238
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 239
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 243
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 244
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 245
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_1

    .line 247
    iget-object v5, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mNestedOffsets:[I

    aput v3, v5, v4

    aput v3, v5, v3

    .line 250
    :cond_1
    iget-object v5, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mNestedOffsets:[I

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

    .line 357
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/SpringListView2;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    .line 353
    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mScrollPointerId:I

    .line 354
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mLastTouchY:I

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mInitialTouchY:I

    goto/16 :goto_3

    .line 347
    :cond_4
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringListView2;->cancelScroll()V

    goto/16 :goto_3

    .line 293
    :cond_5
    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mScrollPointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-gez v1, :cond_6

    .line 295
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error processing scroll; pointer index for id "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mScrollPointerId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SpringListView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return v3

    .line 300
    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 301
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v6

    float-to-int v1, v1

    .line 302
    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mLastTouchY:I

    sub-int/2addr v2, v1

    .line 318
    iget v5, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mScrollState:I

    if-eq v5, v4, :cond_9

    .line 320
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mTouchSlop:I

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

    .line 331
    invoke-virtual {p0, v4}, Lcom/google/android/material/edgeeffect/SpringListView2;->setScrollState(I)V

    .line 335
    :cond_9
    iget v5, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mScrollState:I

    if-ne v5, v4, :cond_e

    .line 336
    iget-object v5, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mScrollOffset:[I

    aget v5, v5, v4

    sub-int/2addr v1, v5

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mLastTouchY:I

    .line 337
    invoke-virtual {p0, v3, v2, v0}, Lcom/google/android/material/edgeeffect/SpringListView2;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 338
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_3

    .line 272
    :cond_a
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 274
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    iget v5, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mMaxFlingVelocity:I

    int-to-float v5, v5

    invoke-virtual {v1, v2, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 275
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mScrollPointerId:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    neg-float v1, v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_b

    .line 279
    invoke-virtual {p0, v3}, Lcom/google/android/material/edgeeffect/SpringListView2;->setScrollState(I)V

    goto :goto_2

    .line 285
    :cond_b
    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mLastYVel:F

    .line 290
    :goto_2
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringListView2;->resetScroll()V

    move v3, v4

    goto :goto_3

    .line 256
    :cond_c
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mScrollPointerId:I

    .line 257
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    add-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mLastTouchY:I

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mInitialTouchY:I

    .line 258
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_d

    sub-int/2addr v1, v4

    .line 260
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 269
    :cond_d
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->startNestedScroll(I)Z

    :cond_e
    :goto_3
    if-nez v3, :cond_f

    .line 361
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 363
    :cond_f
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 364
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mLastX:F

    .line 365
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mLastY:F

    .line 368
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

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

    .line 147
    invoke-super/range {v0 .. v9}, Landroid/widget/ListView;->overScrollBy(IIIIIIIIZ)Z

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

    .line 374
    :goto_0
    invoke-direct {p0, v2, p2}, Lcom/google/android/material/edgeeffect/SpringListView2;->isReadyToOverScroll(ZI)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 386
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 387
    iget-object v2, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mScrollStepConsumed:[I

    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/material/edgeeffect/SpringListView2;->scrollStep(II[I)V

    .line 388
    iget-object v2, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mScrollStepConsumed:[I

    aget v3, v2, v1

    .line 389
    aget v2, v2, v0

    sub-int v4, p1, v3

    sub-int v5, p2, v2

    goto :goto_1

    :cond_2
    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    .line 395
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 414
    invoke-virtual {p0}, Landroid/widget/ListView;->getOverScrollMode()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_4

    if-eqz p3, :cond_3

    const/16 v6, 0x2002

    .line 415
    invoke-virtual {p3, v6}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 417
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    int-to-float v4, v4

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    int-to-float v5, v5

    invoke-direct {p0, v6, v4, p3, v5}, Lcom/google/android/material/edgeeffect/SpringListView2;->pullGlows(FFFF)V

    .line 420
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/edgeeffect/SpringListView2;->considerReleasingGlowsOnScroll(II)V

    :cond_4
    if-nez v3, :cond_5

    if-eqz v2, :cond_6

    .line 425
    :cond_5
    invoke-virtual {p0, v3, v2}, Lcom/google/android/material/edgeeffect/SpringListView2;->dispatchOnScrolled(II)V

    .line 428
    :cond_6
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result p1

    if-nez p1, :cond_7

    .line 429
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

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

    .line 490
    aput p1, p3, p0

    :cond_0
    return-void
.end method

.method public setBouncy(F)V
    .locals 0

    .line 912
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mDamping:F

    .line 913
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mDamping:F

    invoke-virtual {p1, p0}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    return-void
.end method

.method protected setDampedScrollShift(F)V
    .locals 1

    .line 574
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mDampedScrollShift:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 575
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mDampedScrollShift:F

    .line 577
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setEdgeEffectFactory(Lcom/google/android/material/edgeeffect/SpringListView2$SEdgeEffectFactory;)V
    .locals 0

    .line 582
    iput-object p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mEdgeEffectFactory:Lcom/google/android/material/edgeeffect/SpringListView2$SEdgeEffectFactory;

    .line 583
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringListView2;->invalidateGlows()V

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1

    .line 812
    invoke-virtual {p0, p1}, Lcom/google/android/material/edgeeffect/SpringListView2;->isUserOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 813
    iput-object p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mGivenOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    goto :goto_0

    .line 815
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :goto_0
    return-void
.end method

.method setScrollState(I)V
    .locals 1

    .line 687
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mScrollState:I

    if-eq p1, v0, :cond_0

    .line 688
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mScrollState:I

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

    .line 907
    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mStif:F

    .line 908
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mStif:F

    invoke-virtual {p1, p0}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    return-void
.end method

.method public setVelocityMultiplier(F)V
    .locals 0

    .line 903
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mVelocity_multiplier:F

    return-void
.end method
