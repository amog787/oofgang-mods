.class public Lcom/oneplus/settings/edgeeffect/SpringListView;
.super Landroid/widget/ListView;
.source "SpringListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;
    }
.end annotation


# instance fields
.field private mBottomGlow:Landroid/widget/EdgeEffect;

.field private mDispatchScrollCounter:I

.field private mEdgeEffectFactory:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;

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

.field mOnScrollListenerWrapper:Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;

.field mOverScrollNested:Z

.field mPullGrowBottom:F

.field mPullGrowTop:F

.field mScrollConsumed:[I

.field private mScrollOffset:[I

.field private mScrollPointerId:I

.field private mScrollState:I

.field mScrollStepConsumed:[I

.field private mSpringLayout:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

.field private mTopGlow:Landroid/widget/EdgeEffect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 70
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 41
    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mScrollState:I

    .line 56
    iput-boolean p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mOverScrollNested:Z

    const v0, 0x3dcccccd    # 0.1f

    .line 57
    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mPullGrowTop:F

    const v0, 0x3f666666    # 0.9f

    .line 58
    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mPullGrowBottom:F

    .line 61
    new-instance v0, Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;-><init>(Lcom/oneplus/settings/edgeeffect/SpringListView;)V

    iput-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mOnScrollListenerWrapper:Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mSpringLayout:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    .line 63
    iput-boolean p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mGlowing:Z

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mLastYVel:F

    .line 66
    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mFirstChildTop:I

    .line 71
    invoke-direct {p0}, Lcom/oneplus/settings/edgeeffect/SpringListView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 41
    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mScrollState:I

    .line 56
    iput-boolean p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mOverScrollNested:Z

    const p2, 0x3dcccccd    # 0.1f

    .line 57
    iput p2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mPullGrowTop:F

    const p2, 0x3f666666    # 0.9f

    .line 58
    iput p2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mPullGrowBottom:F

    .line 61
    new-instance p2, Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;

    invoke-direct {p2, p0}, Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;-><init>(Lcom/oneplus/settings/edgeeffect/SpringListView;)V

    iput-object p2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mOnScrollListenerWrapper:Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;

    const/4 p2, 0x0

    .line 62
    iput-object p2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mSpringLayout:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    .line 63
    iput-boolean p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mGlowing:Z

    const/4 p2, 0x0

    .line 65
    iput p2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mLastYVel:F

    .line 66
    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mFirstChildTop:I

    .line 76
    invoke-direct {p0}, Lcom/oneplus/settings/edgeeffect/SpringListView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 41
    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mScrollState:I

    .line 56
    iput-boolean p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mOverScrollNested:Z

    const p2, 0x3dcccccd    # 0.1f

    .line 57
    iput p2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mPullGrowTop:F

    const p2, 0x3f666666    # 0.9f

    .line 58
    iput p2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mPullGrowBottom:F

    .line 61
    new-instance p2, Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;

    invoke-direct {p2, p0}, Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;-><init>(Lcom/oneplus/settings/edgeeffect/SpringListView;)V

    iput-object p2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mOnScrollListenerWrapper:Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;

    const/4 p2, 0x0

    .line 62
    iput-object p2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mSpringLayout:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    .line 63
    iput-boolean p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mGlowing:Z

    const/4 p2, 0x0

    .line 65
    iput p2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mLastYVel:F

    .line 66
    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mFirstChildTop:I

    .line 81
    invoke-direct {p0}, Lcom/oneplus/settings/edgeeffect/SpringListView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 41
    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mScrollState:I

    .line 56
    iput-boolean p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mOverScrollNested:Z

    const p2, 0x3dcccccd    # 0.1f

    .line 57
    iput p2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mPullGrowTop:F

    const p2, 0x3f666666    # 0.9f

    .line 58
    iput p2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mPullGrowBottom:F

    .line 61
    new-instance p2, Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;

    invoke-direct {p2, p0}, Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;-><init>(Lcom/oneplus/settings/edgeeffect/SpringListView;)V

    iput-object p2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mOnScrollListenerWrapper:Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;

    const/4 p2, 0x0

    .line 62
    iput-object p2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mSpringLayout:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    .line 63
    iput-boolean p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mGlowing:Z

    const/4 p2, 0x0

    .line 65
    iput p2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mLastYVel:F

    .line 66
    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mFirstChildTop:I

    .line 86
    invoke-direct {p0}, Lcom/oneplus/settings/edgeeffect/SpringListView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/edgeeffect/SpringListView;)Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mSpringLayout:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    return-object p0
.end method

.method static synthetic access$002(Lcom/oneplus/settings/edgeeffect/SpringListView;Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;)Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mSpringLayout:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    return-object p1
.end method

.method static synthetic access$100(Lcom/oneplus/settings/edgeeffect/SpringListView;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mFirstChildTop:I

    return p0
.end method

.method static synthetic access$102(Lcom/oneplus/settings/edgeeffect/SpringListView;I)I
    .locals 0

    .line 20
    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mFirstChildTop:I

    return p1
.end method

.method static synthetic access$200(Lcom/oneplus/settings/edgeeffect/SpringListView;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mGlowing:Z

    return p0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/edgeeffect/SpringListView;)F
    .locals 0

    .line 20
    iget p0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mLastX:F

    return p0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/edgeeffect/SpringListView;)F
    .locals 0

    .line 20
    iget p0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mLastY:F

    return p0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/edgeeffect/SpringListView;)F
    .locals 0

    .line 20
    iget p0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mLastYVel:F

    return p0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/edgeeffect/SpringListView;FFFF)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/settings/edgeeffect/SpringListView;->pullGlows(FFFF)V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/settings/edgeeffect/SpringListView;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mTopGlow:Landroid/widget/EdgeEffect;

    return-object p0
.end method

.method static synthetic access$800(Lcom/oneplus/settings/edgeeffect/SpringListView;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mBottomGlow:Landroid/widget/EdgeEffect;

    return-object p0
.end method

.method private cancelScroll()V
    .locals 1

    .line 649
    invoke-direct {p0}, Lcom/oneplus/settings/edgeeffect/SpringListView;->resetTouch()V

    const/4 v0, 0x0

    .line 650
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/edgeeffect/SpringListView;->setScrollState(I)V

    .line 651
    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mFirstChildTop:I

    return-void
.end method

.method private init()V
    .locals 2

    .line 90
    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mTouchSlop:I

    .line 92
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mMaxFlingVelocity:I

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 93
    iput-object v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mScrollStepConsumed:[I

    new-array v1, v0, [I

    .line 94
    iput-object v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mScrollOffset:[I

    new-array v1, v0, [I

    .line 95
    iput-object v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mNestedOffsets:[I

    new-array v0, v0, [I

    .line 96
    iput-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mScrollConsumed:[I

    .line 97
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mOnScrollListenerWrapper:Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/edgeeffect/SpringListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method private isReadyToOverScroll(ZI)Z
    .locals 3

    .line 577
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 579
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

    .line 584
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    if-nez v2, :cond_3

    .line 585
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 587
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

    .line 589
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result p1

    invoke-interface {p2}, Landroid/widget/Adapter;->getCount()I

    move-result p2

    sub-int/2addr p2, v1

    if-ne p1, p2, :cond_4

    .line 590
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 592
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result p2

    .line 593
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

    .line 459
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 460
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mScrollPointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 462
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mScrollPointerId:I

    .line 463
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mLastTouchY:I

    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mInitialTouchY:I

    :cond_1
    return-void
.end method

.method private pullGlows(FFFF)V
    .locals 5

    .line 400
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p3, v0

    if-gtz v0, :cond_4

    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-gez v1, :cond_0

    goto :goto_1

    .line 404
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p3, v1

    cmpg-float v1, p4, v0

    const/4 v2, 0x1

    if-gez v1, :cond_1

    .line 405
    iget v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mPullGrowBottom:F

    cmpg-float v1, p3, v1

    if-gez v1, :cond_1

    iget v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mPullGrowTop:F

    cmpl-float v1, p3, v1

    if-lez v1, :cond_1

    .line 406
    invoke-virtual {p0}, Lcom/oneplus/settings/edgeeffect/SpringListView;->ensureTopGlow()V

    .line 407
    iget-object p3, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mTopGlow:Landroid/widget/EdgeEffect;

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

    .line 408
    iput-boolean v2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mGlowing:Z

    goto :goto_0

    :cond_1
    cmpl-float v1, p4, v0

    if-lez v1, :cond_2

    .line 410
    iget v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mPullGrowTop:F

    cmpl-float v1, p3, v1

    if-lez v1, :cond_2

    iget v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mPullGrowBottom:F

    cmpg-float p3, p3, v1

    if-gez p3, :cond_2

    .line 411
    invoke-virtual {p0}, Lcom/oneplus/settings/edgeeffect/SpringListView;->ensureBottomGlow()V

    .line 412
    iget-object p3, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mBottomGlow:Landroid/widget/EdgeEffect;

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

    .line 413
    iput-boolean v2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mGlowing:Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_3

    cmpl-float p1, p2, v0

    if-nez p1, :cond_3

    cmpl-float p1, p4, v0

    if-eqz p1, :cond_4

    .line 418
    :cond_3
    invoke-virtual {p0}, Landroid/widget/ListView;->postInvalidateOnAnimation()V

    :cond_4
    :goto_1
    return-void
.end method

.method private releaseGlows()V
    .locals 3

    .line 441
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mTopGlow:Landroid/widget/EdgeEffect;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 442
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 443
    iput-boolean v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mGlowing:Z

    .line 444
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 447
    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_1

    .line 448
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 449
    iput-boolean v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mGlowing:Z

    .line 450
    iget-object v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    if-eqz v0, :cond_2

    .line 454
    invoke-virtual {p0}, Landroid/widget/ListView;->postInvalidateOnAnimation()V

    :cond_2
    return-void
.end method

.method private resetScroll()V
    .locals 1

    .line 639
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 640
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 642
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->stopNestedScroll()V

    .line 643
    invoke-direct {p0}, Lcom/oneplus/settings/edgeeffect/SpringListView;->releaseGlows()V

    const/4 v0, 0x0

    .line 645
    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mFirstChildTop:I

    return-void
.end method

.method private resetTouch()V
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 436
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/edgeeffect/SpringListView;->releaseGlows()V

    return-void
.end method


# virtual methods
.method considerReleasingGlowsOnScroll(II)V
    .locals 1

    .line 602
    iget-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mTopGlow:Landroid/widget/EdgeEffect;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_0

    if-lez p2, :cond_0

    .line 603
    iget-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 604
    iget-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    .line 607
    :cond_0
    iget-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_1

    if-gez p2, :cond_1

    .line 608
    iget-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 609
    iget-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_1
    if-eqz v0, :cond_2

    .line 613
    invoke-virtual {p0}, Landroid/widget/ListView;->postInvalidateOnAnimation()V

    :cond_2
    return-void
.end method

.method dispatchOnScrolled(II)V
    .locals 2

    .line 469
    iget v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mDispatchScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mDispatchScrollCounter:I

    .line 470
    invoke-virtual {p0}, Landroid/widget/ListView;->getScrollX()I

    move-result v0

    .line 471
    invoke-virtual {p0}, Landroid/widget/ListView;->getScrollY()I

    move-result v1

    .line 472
    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/widget/ListView;->onScrollChanged(IIII)V

    .line 473
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/settings/edgeeffect/SpringListView;->onScrolled(II)V

    .line 486
    iget p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mDispatchScrollCounter:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mDispatchScrollCounter:I

    return-void
.end method

.method ensureBottomGlow()V
    .locals 4

    .line 381
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mEdgeEffectFactory:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;

    if-eqz v0, :cond_2

    .line 385
    iget-object v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_1

    const/4 v1, 0x3

    .line 386
    invoke-virtual {v0, p0, v1}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;->createEdgeEffect(Landroid/view/View;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 387
    invoke-virtual {p0}, Landroid/widget/ListView;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mBottomGlow:Landroid/widget/EdgeEffect;

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

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ListView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_1
    :goto_0
    return-void

    .line 382
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setEdgeEffectFactory first, please!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method ensureTopGlow()V
    .locals 4

    .line 365
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mEdgeEffectFactory:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;

    if-eqz v0, :cond_2

    .line 369
    iget-object v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 370
    invoke-virtual {v0, p0, v1}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;->createEdgeEffect(Landroid/view/View;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 371
    invoke-virtual {p0}, Landroid/widget/ListView;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mTopGlow:Landroid/widget/EdgeEffect;

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

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ListView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_1
    :goto_0
    return-void

    .line 366
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setEdgeEffectFactory first, please!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getScrollState()I
    .locals 0

    .line 635
    iget p0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mScrollState:I

    return p0
.end method

.method invalidateGlows()V
    .locals 1

    const/4 v0, 0x0

    .line 361
    iput-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mBottomGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mTopGlow:Landroid/widget/EdgeEffect;

    return-void
.end method

.method isUserOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)Z
    .locals 0

    .line 731
    iget-object p0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mOnScrollListenerWrapper:Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;

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

    .line 113
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 114
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 117
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 118
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

    .line 183
    :cond_1
    invoke-direct {p0, p1}, Lcom/oneplus/settings/edgeeffect/SpringListView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 179
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mScrollPointerId:I

    .line 180
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mLastTouchY:I

    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mInitialTouchY:I

    goto/16 :goto_1

    .line 173
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/settings/edgeeffect/SpringListView;->cancelScroll()V

    goto/16 :goto_1

    .line 153
    :cond_4
    iget v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mScrollPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_5

    return v4

    .line 157
    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 158
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 159
    iget v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mScrollState:I

    if-eq v1, v5, :cond_d

    .line 160
    iget v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mInitialTouchY:I

    sub-int v1, v0, v1

    .line 162
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mTouchSlop:I

    if-le v1, v2, :cond_6

    .line 163
    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mLastTouchY:I

    move v4, v5

    :cond_6
    if-eqz v4, :cond_d

    .line 168
    invoke-virtual {p0, v5}, Lcom/oneplus/settings/edgeeffect/SpringListView;->setScrollState(I)V

    goto :goto_1

    .line 149
    :cond_7
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 150
    invoke-virtual {p0}, Landroid/widget/ListView;->stopNestedScroll()V

    goto :goto_1

    .line 124
    :cond_8
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mScrollPointerId:I

    .line 125
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_9

    return v4

    .line 129
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

    .line 130
    invoke-direct {p0, v0, v4}, Lcom/oneplus/settings/edgeeffect/SpringListView;->isReadyToOverScroll(ZI)Z

    move-result v0

    if-nez v0, :cond_b

    .line 134
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 137
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mLastTouchY:I

    iput v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mInitialTouchY:I

    .line 138
    iget v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mScrollState:I

    if-ne v0, v3, :cond_c

    .line 139
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 140
    invoke-virtual {p0, v5}, Lcom/oneplus/settings/edgeeffect/SpringListView;->setScrollState(I)V

    .line 143
    :cond_c
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mNestedOffsets:[I

    aput v4, v0, v5

    aput v4, v0, v4

    .line 146
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->startNestedScroll(I)Z

    .line 187
    :cond_d
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onScrolled(II)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 192
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 193
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 197
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 198
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 199
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_1

    .line 201
    iget-object v5, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mNestedOffsets:[I

    aput v4, v5, v3

    aput v4, v5, v4

    .line 204
    :cond_1
    iget-object v5, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mNestedOffsets:[I

    aget v6, v5, v4

    int-to-float v6, v6

    aget v5, v5, v3

    int-to-float v5, v5

    invoke-virtual {v0, v6, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/4 v5, 0x2

    const/high16 v6, 0x3f000000    # 0.5f

    if-eqz v1, :cond_d

    if-eq v1, v3, :cond_b

    if-eq v1, v5, :cond_5

    const/4 v3, 0x3

    if-eq v1, v3, :cond_4

    const/4 v3, 0x5

    if-eq v1, v3, :cond_3

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    goto/16 :goto_4

    .line 312
    :cond_2
    invoke-direct {p0, p1}, Lcom/oneplus/settings/edgeeffect/SpringListView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_4

    .line 308
    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mScrollPointerId:I

    .line 309
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mLastTouchY:I

    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mInitialTouchY:I

    goto/16 :goto_4

    .line 302
    :cond_4
    invoke-direct {p0}, Lcom/oneplus/settings/edgeeffect/SpringListView;->cancelScroll()V

    goto/16 :goto_4

    .line 250
    :cond_5
    iget v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mScrollPointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-gez v1, :cond_6

    .line 252
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error processing scroll; pointer index for id "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mScrollPointerId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SpringListView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 256
    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 257
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v6

    float-to-int v1, v1

    .line 258
    iget v2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mLastTouchY:I

    sub-int/2addr v2, v1

    .line 262
    iget-object v5, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mScrollConsumed:[I

    iget-object v6, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mScrollOffset:[I

    invoke-virtual {p0, v4, v2, v5, v6}, Landroid/widget/ListView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 264
    iget-object v5, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mScrollConsumed:[I

    aget v5, v5, v3

    sub-int/2addr v2, v5

    .line 265
    iget-object v5, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mScrollOffset:[I

    aget v6, v5, v4

    int-to-float v6, v6

    aget v5, v5, v3

    int-to-float v5, v5

    invoke-virtual {v0, v6, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 266
    iget-object v5, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mNestedOffsets:[I

    .line 267
    aget v6, v5, v4

    iget-object v7, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mScrollOffset:[I

    aget v8, v7, v4

    add-int/2addr v6, v8

    aput v6, v5, v4

    .line 269
    aget v6, v5, v3

    aget v7, v7, v3

    add-int/2addr v6, v7

    aput v6, v5, v3

    .line 272
    :cond_7
    iget v5, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mScrollState:I

    if-eq v5, v3, :cond_a

    .line 274
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mTouchSlop:I

    if-le v5, v6, :cond_9

    if-lez v2, :cond_8

    sub-int/2addr v2, v6

    goto :goto_0

    :cond_8
    add-int/2addr v2, v6

    :goto_0
    move v5, v3

    goto :goto_1

    :cond_9
    move v5, v4

    :goto_1
    if-eqz v5, :cond_a

    .line 285
    invoke-virtual {p0, v3}, Lcom/oneplus/settings/edgeeffect/SpringListView;->setScrollState(I)V

    .line 290
    :cond_a
    iget v5, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mScrollState:I

    if-ne v5, v3, :cond_10

    .line 291
    iget-object v5, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mScrollOffset:[I

    aget v5, v5, v3

    sub-int/2addr v1, v5

    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mLastTouchY:I

    .line 292
    invoke-virtual {p0, v4, v2, v0}, Lcom/oneplus/settings/edgeeffect/SpringListView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 293
    invoke-virtual {p0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_4

    .line 228
    :cond_b
    iget-object v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 230
    iget-object v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    iget v5, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mMaxFlingVelocity:I

    int-to-float v5, v5

    invoke-virtual {v1, v2, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 231
    iget-object v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mScrollPointerId:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    neg-float v1, v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_c

    .line 235
    invoke-virtual {p0, v4}, Lcom/oneplus/settings/edgeeffect/SpringListView;->setScrollState(I)V

    goto :goto_2

    .line 241
    :cond_c
    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mLastYVel:F

    .line 242
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mLastX:F

    .line 243
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mLastY:F

    .line 247
    :goto_2
    invoke-direct {p0}, Lcom/oneplus/settings/edgeeffect/SpringListView;->resetScroll()V

    goto :goto_5

    .line 210
    :cond_d
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mScrollPointerId:I

    .line 211
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    add-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mLastTouchY:I

    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mInitialTouchY:I

    .line 212
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_e

    sub-int/2addr v1, v3

    .line 214
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mLastChildBottom:I

    goto :goto_3

    .line 216
    :cond_e
    iput v4, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mLastChildBottom:I

    .line 218
    :goto_3
    iget v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mInitialTouchY:I

    iget v2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mLastChildBottom:I

    if-gt v1, v2, :cond_12

    if-ltz v1, :cond_12

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_f

    goto :goto_6

    .line 225
    :cond_f
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->startNestedScroll(I)Z

    :cond_10
    :goto_4
    move v3, v4

    :goto_5
    if-nez v3, :cond_11

    .line 316
    iget-object v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 318
    :cond_11
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 321
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_12
    :goto_6
    return v4
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

    .line 105
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

    .line 492
    :goto_0
    invoke-direct {p0, v2, p2}, Lcom/oneplus/settings/edgeeffect/SpringListView;->isReadyToOverScroll(ZI)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 503
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 504
    iget-object v2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mScrollStepConsumed:[I

    invoke-virtual {p0, p1, p2, v2}, Lcom/oneplus/settings/edgeeffect/SpringListView;->scrollStep(II[I)V

    .line 505
    iget-object v2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mScrollStepConsumed:[I

    aget v3, v2, v1

    .line 506
    aget v2, v2, v0

    sub-int v4, p1, v3

    sub-int v5, p2, v2

    goto :goto_1

    :cond_2
    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    .line 512
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    .line 515
    iget-object v11, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mScrollOffset:[I

    move-object v6, p0

    move v7, v3

    move v8, v2

    move v9, v4

    move v10, v5

    invoke-virtual/range {v6 .. v11}, Landroid/widget/ListView;->dispatchNestedScroll(IIII[I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 517
    iget v7, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mLastTouchY:I

    iget-object v8, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mScrollOffset:[I

    aget v9, v8, v0

    sub-int/2addr v7, v9

    iput v7, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mLastTouchY:I

    if-eqz p3, :cond_3

    .line 519
    aget v7, v8, v1

    int-to-float v7, v7

    aget v8, v8, v0

    int-to-float v8, v8

    invoke-virtual {p3, v7, v8}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 522
    :cond_3
    iget-object v7, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mNestedOffsets:[I

    .line 523
    aget v8, v7, v1

    iget-object v9, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mScrollOffset:[I

    aget v10, v9, v1

    add-int/2addr v8, v10

    aput v8, v7, v1

    .line 525
    aget v8, v7, v0

    aget v9, v9, v0

    add-int/2addr v8, v9

    aput v8, v7, v0

    :cond_4
    if-eqz v6, :cond_5

    .line 528
    iget-boolean v6, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mOverScrollNested:Z

    if-eqz v6, :cond_7

    .line 529
    :cond_5
    invoke-virtual {p0}, Landroid/widget/ListView;->getOverScrollMode()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_7

    if-eqz p3, :cond_6

    const/16 v6, 0x2002

    .line 530
    invoke-virtual {p3, v6}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v6

    if-nez v6, :cond_6

    .line 532
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    int-to-float v4, v4

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    int-to-float v5, v5

    invoke-direct {p0, v6, v4, p3, v5}, Lcom/oneplus/settings/edgeeffect/SpringListView;->pullGlows(FFFF)V

    .line 535
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/settings/edgeeffect/SpringListView;->considerReleasingGlowsOnScroll(II)V

    :cond_7
    if-nez v3, :cond_8

    if-eqz v2, :cond_9

    .line 540
    :cond_8
    invoke-virtual {p0, v3, v2}, Lcom/oneplus/settings/edgeeffect/SpringListView;->dispatchOnScrolled(II)V

    .line 543
    :cond_9
    invoke-virtual {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result p1

    if-nez p1, :cond_a

    .line 544
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

    .line 571
    aput p1, p3, p0

    :cond_0
    return-void
.end method

.method public setEdgeEffectFactory(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mEdgeEffectFactory:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;

    .line 357
    invoke-virtual {p0}, Lcom/oneplus/settings/edgeeffect/SpringListView;->invalidateGlows()V

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1

    .line 722
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/edgeeffect/SpringListView;->isUserOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 723
    iput-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mGivenOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    goto :goto_0

    .line 725
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :goto_0
    return-void
.end method

.method public setOverScrollNested(Z)V
    .locals 0

    .line 624
    iput-boolean p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mOverScrollNested:Z

    return-void
.end method

.method setScrollState(I)V
    .locals 1

    .line 423
    iget v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mScrollState:I

    if-eq p1, v0, :cond_0

    .line 424
    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mScrollState:I

    :cond_0
    return-void
.end method
