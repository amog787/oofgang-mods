.class public Lcom/oneplus/settings/edgeeffect/SpringListView2;
.super Landroid/widget/ListView;
.source "SpringListView2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;,
        Lcom/oneplus/settings/edgeeffect/SpringListView2$SpringEdgeEffect;,
        Lcom/oneplus/settings/edgeeffect/SpringListView2$ViewEdgeEffectFactory;,
        Lcom/oneplus/settings/edgeeffect/SpringListView2$SEdgeEffectFactory;
    }
.end annotation


# static fields
.field private static final DAMPED_SCROLL:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/oneplus/settings/edgeeffect/SpringListView2;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActiveEdge:Lcom/oneplus/settings/edgeeffect/SpringListView2$SpringEdgeEffect;

.field private mAnimationEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

.field private mBottomGlow:Landroid/widget/EdgeEffect;

.field private mDampedScrollShift:F

.field private mDispatchScrollCounter:I

.field private mDistance:F

.field private mEdgeEffectFactory:Lcom/oneplus/settings/edgeeffect/SpringListView2$SEdgeEffectFactory;

.field private mFirstChildTop:I

.field mGivenOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mGlowing:Z

.field private mInitialTouchY:I

.field mLastChildBottom:I

.field private mLastTouchY:I

.field private mLastX:F

.field private mLastY:F

.field private mLastYVel:F

.field private mMaxFlingVelocity:I

.field private mNestedOffsets:[I

.field mOnScrollListenerWrapper:Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;

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

    .line 55
    const-class v0, Lcom/oneplus/settings/edgeeffect/SpringListView2;

    .line 57
    new-instance v0, Lcom/oneplus/settings/edgeeffect/SpringListView2$1;

    const-string v1, "value"

    invoke-direct {v0, v1}, Lcom/oneplus/settings/edgeeffect/SpringListView2$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->DAMPED_SCROLL:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 107
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 82
    iput-boolean p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mOverScrollNested:Z

    const p1, 0x3dcccccd    # 0.1f

    .line 83
    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mPullGrowTop:F

    const p1, 0x3f666666    # 0.9f

    .line 84
    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mPullGrowBottom:F

    const/4 p1, 0x0

    .line 87
    iput-boolean p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mGlowing:Z

    const/4 v0, 0x0

    .line 91
    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mDampedScrollShift:F

    .line 92
    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mDistance:F

    .line 93
    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mPullCount:I

    .line 96
    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mLastYVel:F

    .line 97
    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mFirstChildTop:I

    .line 102
    new-instance p1, Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;-><init>(Lcom/oneplus/settings/edgeeffect/SpringListView2;)V

    iput-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mOnScrollListenerWrapper:Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;

    .line 108
    invoke-direct {p0}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 82
    iput-boolean p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mOverScrollNested:Z

    const p1, 0x3dcccccd    # 0.1f

    .line 83
    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mPullGrowTop:F

    const p1, 0x3f666666    # 0.9f

    .line 84
    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mPullGrowBottom:F

    const/4 p1, 0x0

    .line 87
    iput-boolean p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mGlowing:Z

    const/4 p2, 0x0

    .line 91
    iput p2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mDampedScrollShift:F

    .line 92
    iput p2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mDistance:F

    .line 93
    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mPullCount:I

    .line 96
    iput p2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mLastYVel:F

    .line 97
    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mFirstChildTop:I

    .line 102
    new-instance p1, Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;-><init>(Lcom/oneplus/settings/edgeeffect/SpringListView2;)V

    iput-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mOnScrollListenerWrapper:Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;

    .line 113
    invoke-direct {p0}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 117
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 82
    iput-boolean p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mOverScrollNested:Z

    const p1, 0x3dcccccd    # 0.1f

    .line 83
    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mPullGrowTop:F

    const p1, 0x3f666666    # 0.9f

    .line 84
    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mPullGrowBottom:F

    const/4 p1, 0x0

    .line 87
    iput-boolean p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mGlowing:Z

    const/4 p2, 0x0

    .line 91
    iput p2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mDampedScrollShift:F

    .line 92
    iput p2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mDistance:F

    .line 93
    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mPullCount:I

    .line 96
    iput p2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mLastYVel:F

    .line 97
    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mFirstChildTop:I

    .line 102
    new-instance p1, Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;

    invoke-direct {p1, p0}, Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;-><init>(Lcom/oneplus/settings/edgeeffect/SpringListView2;)V

    iput-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mOnScrollListenerWrapper:Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;

    .line 118
    invoke-direct {p0}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/edgeeffect/SpringListView2;)F
    .locals 0

    .line 30
    iget p0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mDampedScrollShift:F

    return p0
.end method

.method static synthetic access$1000(Lcom/oneplus/settings/edgeeffect/SpringListView2;)F
    .locals 0

    .line 30
    iget p0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mLastY:F

    return p0
.end method

.method static synthetic access$1100(Lcom/oneplus/settings/edgeeffect/SpringListView2;)F
    .locals 0

    .line 30
    iget p0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mLastYVel:F

    return p0
.end method

.method static synthetic access$1200(Lcom/oneplus/settings/edgeeffect/SpringListView2;FFFF)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->pullGlows(FFFF)V

    return-void
.end method

.method static synthetic access$1300(Lcom/oneplus/settings/edgeeffect/SpringListView2;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mTopGlow:Landroid/widget/EdgeEffect;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/oneplus/settings/edgeeffect/SpringListView2;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mBottomGlow:Landroid/widget/EdgeEffect;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/edgeeffect/SpringListView2;F)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->finishScrollWithVelocity(F)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/settings/edgeeffect/SpringListView2;)F
    .locals 0

    .line 30
    iget p0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mDistance:F

    return p0
.end method

.method static synthetic access$302(Lcom/oneplus/settings/edgeeffect/SpringListView2;F)F
    .locals 0

    .line 30
    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mDistance:F

    return p1
.end method

.method static synthetic access$316(Lcom/oneplus/settings/edgeeffect/SpringListView2;F)F
    .locals 1

    .line 30
    iget v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mDistance:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mDistance:F

    return v0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/edgeeffect/SpringListView2;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object p0
.end method

.method static synthetic access$502(Lcom/oneplus/settings/edgeeffect/SpringListView2;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mPullCount:I

    return p1
.end method

.method static synthetic access$508(Lcom/oneplus/settings/edgeeffect/SpringListView2;)I
    .locals 2

    .line 30
    iget v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mPullCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mPullCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/edgeeffect/SpringListView2;Lcom/oneplus/settings/edgeeffect/SpringListView2$SpringEdgeEffect;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->setActiveEdge(Lcom/oneplus/settings/edgeeffect/SpringListView2$SpringEdgeEffect;)V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/settings/edgeeffect/SpringListView2;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mFirstChildTop:I

    return p0
.end method

.method static synthetic access$702(Lcom/oneplus/settings/edgeeffect/SpringListView2;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mFirstChildTop:I

    return p1
.end method

.method static synthetic access$800(Lcom/oneplus/settings/edgeeffect/SpringListView2;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mGlowing:Z

    return p0
.end method

.method static synthetic access$900(Lcom/oneplus/settings/edgeeffect/SpringListView2;)F
    .locals 0

    .line 30
    iget p0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mLastX:F

    return p0
.end method

.method private cancelScroll()V
    .locals 1

    .line 598
    invoke-direct {p0}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->resetTouch()V

    const/4 v0, 0x0

    .line 599
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->setScrollState(I)V

    return-void
.end method

.method private finishScrollWithVelocity(F)V
    .locals 2

    .line 572
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mAnimationEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    if-eqz v0, :cond_0

    .line 573
    iget-object v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 576
    iget-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mDampedScrollShift:F

    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 577
    iget-object p0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 122
    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 123
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mTouchSlop:I

    .line 124
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mMaxFlingVelocity:I

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 125
    iput-object v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollStepConsumed:[I

    new-array v1, v0, [I

    .line 126
    iput-object v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollOffset:[I

    new-array v1, v0, [I

    .line 127
    iput-object v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mNestedOffsets:[I

    new-array v0, v0, [I

    .line 128
    iput-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollConsumed:[I

    .line 130
    invoke-virtual {p0}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->createViewEdgeEffectFactory()Lcom/oneplus/settings/edgeeffect/SpringListView2$ViewEdgeEffectFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mEdgeEffectFactory:Lcom/oneplus/settings/edgeeffect/SpringListView2$SEdgeEffectFactory;

    .line 131
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->setEdgeEffectFactory(Lcom/oneplus/settings/edgeeffect/SpringListView2$SEdgeEffectFactory;)V

    .line 132
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Lcom/oneplus/settings/edgeeffect/SpringListView2;->DAMPED_SCROLL:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 133
    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const v2, 0x44138000    # 590.0f

    .line 134
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    const/high16 v2, 0x3f000000    # 0.5f

    .line 135
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 133
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 137
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mOnScrollListenerWrapper:Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method private isReadyToOverScroll(ZI)Z
    .locals 3

    .line 642
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 644
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

    .line 649
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    if-nez v2, :cond_3

    .line 650
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 652
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

    .line 654
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result p1

    invoke-interface {p2}, Landroid/widget/Adapter;->getCount()I

    move-result p2

    sub-int/2addr p2, v1

    if-ne p1, p2, :cond_4

    .line 655
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 657
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result p2

    .line 658
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

    .line 632
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 633
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollPointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 635
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollPointerId:I

    .line 636
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mLastTouchY:I

    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mInitialTouchY:I

    :cond_1
    return-void
.end method

.method private pullGlows(FFFF)V
    .locals 5

    .line 428
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p3, v0

    if-gtz v0, :cond_4

    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-gez v1, :cond_0

    goto :goto_1

    .line 432
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p3, v1

    cmpg-float v1, p4, v0

    const/4 v2, 0x1

    if-gez v1, :cond_1

    .line 433
    iget v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mPullGrowBottom:F

    cmpg-float v1, p3, v1

    if-gez v1, :cond_1

    iget v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mPullGrowTop:F

    cmpl-float v1, p3, v1

    if-lez v1, :cond_1

    .line 434
    invoke-virtual {p0}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->ensureTopGlow()V

    .line 436
    iget-object p3, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mTopGlow:Landroid/widget/EdgeEffect;

    neg-float v1, p4

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/widget/ListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p1, v3

    invoke-virtual {p3, v1, p1}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 437
    iput-boolean v2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mGlowing:Z

    goto :goto_0

    :cond_1
    cmpl-float v1, p4, v0

    if-lez v1, :cond_2

    .line 439
    iget v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mPullGrowTop:F

    cmpl-float v1, p3, v1

    if-lez v1, :cond_2

    iget v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mPullGrowBottom:F

    cmpg-float p3, p3, v1

    if-gez p3, :cond_2

    .line 440
    invoke-virtual {p0}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->ensureBottomGlow()V

    .line 441
    iget-object p3, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mBottomGlow:Landroid/widget/EdgeEffect;

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

    .line 442
    iput-boolean v2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mGlowing:Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_3

    cmpl-float p1, p2, v0

    if-nez p1, :cond_3

    cmpl-float p1, p4, v0

    if-eqz p1, :cond_4

    .line 447
    :cond_3
    invoke-virtual {p0}, Landroid/widget/ListView;->postInvalidateOnAnimation()V

    :cond_4
    :goto_1
    return-void
.end method

.method private releaseGlows()V
    .locals 3

    .line 614
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mTopGlow:Landroid/widget/EdgeEffect;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 615
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 616
    iput-boolean v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mGlowing:Z

    .line 617
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 620
    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_1

    .line 621
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 622
    iput-boolean v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mGlowing:Z

    .line 623
    iget-object v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    if-eqz v0, :cond_2

    .line 627
    invoke-virtual {p0}, Landroid/widget/ListView;->postInvalidateOnAnimation()V

    :cond_2
    return-void
.end method

.method private resetScroll()V
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 589
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 591
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->stopNestedScroll()V

    .line 592
    invoke-direct {p0}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->releaseGlows()V

    return-void
.end method

.method private resetTouch()V
    .locals 1

    .line 604
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 605
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 608
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->releaseGlows()V

    return-void
.end method

.method private setActiveEdge(Lcom/oneplus/settings/edgeeffect/SpringListView2$SpringEdgeEffect;)V
    .locals 1

    .line 581
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mActiveEdge:Lcom/oneplus/settings/edgeeffect/SpringListView2$SpringEdgeEffect;

    .line 584
    iput-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mActiveEdge:Lcom/oneplus/settings/edgeeffect/SpringListView2$SpringEdgeEffect;

    return-void
.end method


# virtual methods
.method considerReleasingGlowsOnScroll(II)V
    .locals 1

    .line 538
    iget-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mTopGlow:Landroid/widget/EdgeEffect;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_0

    if-lez p2, :cond_0

    .line 539
    iget-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 540
    iget-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    .line 543
    :cond_0
    iget-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_1

    if-gez p2, :cond_1

    .line 544
    iget-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 545
    iget-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_1
    if-eqz v0, :cond_2

    .line 549
    invoke-virtual {p0}, Landroid/widget/ListView;->postInvalidateOnAnimation()V

    :cond_2
    return-void
.end method

.method public createViewEdgeEffectFactory()Lcom/oneplus/settings/edgeeffect/SpringListView2$ViewEdgeEffectFactory;
    .locals 2

    .line 694
    new-instance v0, Lcom/oneplus/settings/edgeeffect/SpringListView2$ViewEdgeEffectFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/edgeeffect/SpringListView2$ViewEdgeEffectFactory;-><init>(Lcom/oneplus/settings/edgeeffect/SpringListView2;Lcom/oneplus/settings/edgeeffect/SpringListView2$1;)V

    return-object v0
.end method

.method dispatchOnScrolled(II)V
    .locals 2

    .line 516
    iget v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mDispatchScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mDispatchScrollCounter:I

    .line 517
    invoke-virtual {p0}, Landroid/widget/ListView;->getScrollX()I

    move-result v0

    .line 518
    invoke-virtual {p0}, Landroid/widget/ListView;->getScrollY()I

    move-result v1

    .line 519
    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/widget/ListView;->onScrollChanged(IIII)V

    .line 520
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->onScrolled(II)V

    .line 533
    iget p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mDispatchScrollCounter:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mDispatchScrollCounter:I

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 856
    iget v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mDampedScrollShift:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 857
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 858
    iget v2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mDampedScrollShift:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 860
    invoke-super {p0, p1}, Landroid/widget/ListView;->draw(Landroid/graphics/Canvas;)V

    .line 861
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    .line 866
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method ensureBottomGlow()V
    .locals 4

    .line 500
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mEdgeEffectFactory:Lcom/oneplus/settings/edgeeffect/SpringListView2$SEdgeEffectFactory;

    if-eqz v0, :cond_2

    .line 504
    iget-object v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_1

    const/4 v1, 0x3

    .line 505
    invoke-virtual {v0, p0, v1}, Lcom/oneplus/settings/edgeeffect/SpringListView2$SEdgeEffectFactory;->createEdgeEffect(Landroid/view/View;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 506
    invoke-virtual {p0}, Landroid/widget/ListView;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mBottomGlow:Landroid/widget/EdgeEffect;

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

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ListView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_1
    :goto_0
    return-void

    .line 501
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setEdgeEffectFactory first, please!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method ensureTopGlow()V
    .locals 4

    .line 484
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mEdgeEffectFactory:Lcom/oneplus/settings/edgeeffect/SpringListView2$SEdgeEffectFactory;

    if-eqz v0, :cond_2

    .line 488
    iget-object v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mTopGlow:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 489
    invoke-virtual {v0, p0, v1}, Lcom/oneplus/settings/edgeeffect/SpringListView2$SEdgeEffectFactory;->createEdgeEffect(Landroid/view/View;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 490
    invoke-virtual {p0}, Landroid/widget/ListView;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mTopGlow:Landroid/widget/EdgeEffect;

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

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ListView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_1
    :goto_0
    return-void

    .line 485
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setEdgeEffectFactory first, please!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getScrollState()I
    .locals 0

    .line 768
    iget p0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollState:I

    return p0
.end method

.method invalidateGlows()V
    .locals 1

    const/4 v0, 0x0

    .line 568
    iput-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mBottomGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mTopGlow:Landroid/widget/EdgeEffect;

    return-void
.end method

.method isUserOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)Z
    .locals 0

    .line 790
    iget-object p0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mOnScrollListenerWrapper:Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;

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

    .line 152
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 153
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 156
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 157
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

    .line 222
    :cond_1
    invoke-direct {p0, p1}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 218
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollPointerId:I

    .line 219
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mLastTouchY:I

    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mInitialTouchY:I

    goto/16 :goto_1

    .line 212
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->cancelScroll()V

    goto/16 :goto_1

    .line 192
    :cond_4
    iget v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_5

    return v4

    .line 196
    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 197
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 198
    iget v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollState:I

    if-eq v1, v5, :cond_d

    .line 199
    iget v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mInitialTouchY:I

    sub-int v1, v0, v1

    .line 201
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mTouchSlop:I

    if-le v1, v2, :cond_6

    .line 202
    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mLastTouchY:I

    move v4, v5

    :cond_6
    if-eqz v4, :cond_d

    .line 207
    invoke-virtual {p0, v5}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->setScrollState(I)V

    goto :goto_1

    .line 188
    :cond_7
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 189
    invoke-virtual {p0}, Landroid/widget/ListView;->stopNestedScroll()V

    goto :goto_1

    .line 163
    :cond_8
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollPointerId:I

    .line 164
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_9

    return v4

    .line 168
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

    .line 169
    invoke-direct {p0, v0, v4}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->isReadyToOverScroll(ZI)Z

    move-result v0

    if-nez v0, :cond_b

    .line 173
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 176
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mLastTouchY:I

    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mInitialTouchY:I

    .line 177
    iget v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollState:I

    if-ne v0, v3, :cond_c

    .line 178
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 179
    invoke-virtual {p0, v5}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->setScrollState(I)V

    .line 182
    :cond_c
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mNestedOffsets:[I

    aput v4, v0, v5

    aput v4, v0, v4

    .line 185
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->startNestedScroll(I)Z

    .line 226
    :cond_d
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onRecyclerViewScrolled()V
    .locals 2

    .line 772
    iget v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mPullCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 776
    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mDistance:F

    const/4 v1, 0x0

    .line 777
    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mPullCount:I

    .line 778
    invoke-direct {p0, v0}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->finishScrollWithVelocity(F)V

    return-void
.end method

.method public onScrolled(II)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 231
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 232
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 236
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 237
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 238
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_1

    .line 240
    iget-object v5, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mNestedOffsets:[I

    aput v3, v5, v4

    aput v3, v5, v3

    .line 243
    :cond_1
    iget-object v5, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mNestedOffsets:[I

    aget v6, v5, v3

    int-to-float v6, v6

    aget v5, v5, v4

    int-to-float v5, v5

    invoke-virtual {v0, v6, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/4 v5, 0x2

    const/high16 v6, 0x3f000000    # 0.5f

    if-eqz v1, :cond_d

    if-eq v1, v4, :cond_b

    if-eq v1, v5, :cond_5

    const/4 v4, 0x3

    if-eq v1, v4, :cond_4

    const/4 v4, 0x5

    if-eq v1, v4, :cond_3

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    goto/16 :goto_4

    .line 350
    :cond_2
    invoke-direct {p0, p1}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_4

    .line 346
    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollPointerId:I

    .line 347
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mLastTouchY:I

    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mInitialTouchY:I

    goto/16 :goto_4

    .line 340
    :cond_4
    invoke-direct {p0}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->cancelScroll()V

    goto/16 :goto_4

    .line 289
    :cond_5
    iget v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollPointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-gez v1, :cond_6

    .line 291
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error processing scroll; pointer index for id "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollPointerId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SpringListView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 295
    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 296
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v6

    float-to-int v1, v1

    .line 297
    iget v2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mLastTouchY:I

    sub-int/2addr v2, v1

    .line 301
    iget-object v5, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollConsumed:[I

    iget-object v6, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollOffset:[I

    invoke-virtual {p0, v3, v2, v5, v6}, Landroid/widget/ListView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 303
    iget-object v5, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollConsumed:[I

    aget v5, v5, v4

    sub-int/2addr v2, v5

    .line 304
    iget-object v5, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollOffset:[I

    aget v6, v5, v3

    int-to-float v6, v6

    aget v5, v5, v4

    int-to-float v5, v5

    invoke-virtual {v0, v6, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 305
    iget-object v5, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mNestedOffsets:[I

    .line 306
    aget v6, v5, v3

    iget-object v7, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollOffset:[I

    aget v8, v7, v3

    add-int/2addr v6, v8

    aput v6, v5, v3

    .line 308
    aget v6, v5, v4

    aget v7, v7, v4

    add-int/2addr v6, v7

    aput v6, v5, v4

    .line 311
    :cond_7
    iget v5, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollState:I

    if-eq v5, v4, :cond_a

    .line 313
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mTouchSlop:I

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

    .line 324
    invoke-virtual {p0, v4}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->setScrollState(I)V

    .line 328
    :cond_a
    iget v5, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollState:I

    if-ne v5, v4, :cond_f

    .line 329
    iget-object v5, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollOffset:[I

    aget v5, v5, v4

    sub-int/2addr v1, v5

    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mLastTouchY:I

    .line 330
    invoke-virtual {p0, v3, v2, v0}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 331
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_4

    .line 267
    :cond_b
    iget-object v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 269
    iget-object v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    iget v5, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mMaxFlingVelocity:I

    int-to-float v5, v5

    invoke-virtual {v1, v2, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 270
    iget-object v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollPointerId:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    neg-float v1, v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_c

    .line 274
    invoke-virtual {p0, v3}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->setScrollState(I)V

    goto :goto_2

    .line 280
    :cond_c
    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mLastYVel:F

    .line 281
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mLastX:F

    .line 282
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mLastY:F

    .line 286
    :goto_2
    invoke-direct {p0}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->resetScroll()V

    move v3, v4

    goto :goto_4

    .line 249
    :cond_d
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollPointerId:I

    .line 250
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    add-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mLastTouchY:I

    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mInitialTouchY:I

    .line 251
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_e

    sub-int/2addr v1, v4

    .line 253
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mLastChildBottom:I

    goto :goto_3

    .line 255
    :cond_e
    iput v3, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mLastChildBottom:I

    .line 264
    :goto_3
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->startNestedScroll(I)Z

    :cond_f
    :goto_4
    if-nez v3, :cond_10

    .line 354
    iget-object v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 356
    :cond_10
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 359
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

    .line 144
    invoke-super/range {v0 .. v9}, Landroid/widget/ListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
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

    .line 365
    :goto_0
    invoke-direct {p0, v2, p2}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->isReadyToOverScroll(ZI)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 377
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 378
    iget-object v2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollStepConsumed:[I

    invoke-virtual {p0, p1, p2, v2}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->scrollStep(II[I)V

    .line 379
    iget-object v2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollStepConsumed:[I

    aget v3, v2, v1

    .line 380
    aget v2, v2, v0

    sub-int v4, p1, v3

    sub-int v5, p2, v2

    goto :goto_1

    :cond_2
    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    .line 386
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 389
    iget-object v11, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollOffset:[I

    move-object v6, p0

    move v7, v3

    move v8, v2

    move v9, v4

    move v10, v5

    invoke-virtual/range {v6 .. v11}, Landroid/widget/ListView;->dispatchNestedScroll(IIII[I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 391
    iget v7, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mLastTouchY:I

    iget-object v8, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollOffset:[I

    aget v9, v8, v0

    sub-int/2addr v7, v9

    iput v7, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mLastTouchY:I

    if-eqz p3, :cond_3

    .line 393
    aget v7, v8, v1

    int-to-float v7, v7

    aget v8, v8, v0

    int-to-float v8, v8

    invoke-virtual {p3, v7, v8}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 396
    :cond_3
    iget-object v7, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mNestedOffsets:[I

    .line 397
    aget v8, v7, v1

    iget-object v9, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollOffset:[I

    aget v10, v9, v1

    add-int/2addr v8, v10

    aput v8, v7, v1

    .line 399
    aget v8, v7, v0

    aget v9, v9, v0

    add-int/2addr v8, v9

    aput v8, v7, v0

    :cond_4
    if-eqz v6, :cond_5

    .line 402
    iget-boolean v6, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mOverScrollNested:Z

    if-eqz v6, :cond_7

    .line 403
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->getOverScrollMode()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_7

    if-eqz p3, :cond_6

    const/16 v6, 0x2002

    .line 404
    invoke-virtual {p3, v6}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v6

    if-nez v6, :cond_6

    .line 406
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    int-to-float v4, v4

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    int-to-float v5, v5

    invoke-direct {p0, v6, v4, p3, v5}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->pullGlows(FFFF)V

    .line 409
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->considerReleasingGlowsOnScroll(II)V

    :cond_7
    if-nez v3, :cond_8

    if-eqz v2, :cond_9

    .line 414
    :cond_8
    invoke-virtual {p0, v3, v2}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->dispatchOnScrolled(II)V

    .line 417
    :cond_9
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result p1

    if-nez p1, :cond_a

    .line 418
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

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

    .line 475
    aput p1, p3, p0

    :cond_0
    return-void
.end method

.method protected setDampedScrollShift(F)V
    .locals 1

    .line 555
    iget v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mDampedScrollShift:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 556
    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mDampedScrollShift:F

    .line 558
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setEdgeEffectFactory(Lcom/oneplus/settings/edgeeffect/SpringListView2$SEdgeEffectFactory;)V
    .locals 0

    .line 563
    iput-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mEdgeEffectFactory:Lcom/oneplus/settings/edgeeffect/SpringListView2$SEdgeEffectFactory;

    .line 564
    invoke-virtual {p0}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->invalidateGlows()V

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1

    .line 782
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->isUserOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 783
    iput-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mGivenOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    goto :goto_0

    .line 785
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :goto_0
    return-void
.end method

.method setScrollState(I)V
    .locals 1

    .line 666
    iget v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollState:I

    if-eq p1, v0, :cond_0

    .line 667
    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mScrollState:I

    :cond_0
    return-void
.end method
