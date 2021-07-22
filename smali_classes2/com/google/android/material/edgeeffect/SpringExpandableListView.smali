.class public Lcom/google/android/material/edgeeffect/SpringExpandableListView;
.super Landroid/widget/ExpandableListView;
.source "SpringExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/edgeeffect/SpringExpandableListView$OnScrollListenerWrapper;
    }
.end annotation


# instance fields
.field private mBottomGlow:Landroid/widget/EdgeEffect;

.field private mDispatchScrollCounter:I

.field private mEdgeEffectFactory:Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;

.field mGivenOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mGlowing:Z

.field private mInitialTouchY:I

.field private mLastTouchY:I

.field private mLastX:F

.field private mLastY:F

.field private mLastYVel:F

.field private mMaxFlingVelocity:I

.field private mNestedOffsets:[I

.field mOnScrollListenerWrapper:Lcom/google/android/material/edgeeffect/SpringExpandableListView$OnScrollListenerWrapper;

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

    .line 75
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 47
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mScrollState:I

    .line 62
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mOverScrollNested:Z

    const v0, 0x3dcccccd    # 0.1f

    .line 63
    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mPullGrowTop:F

    const v0, 0x3f666666    # 0.9f

    .line 64
    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mPullGrowBottom:F

    .line 67
    new-instance v0, Lcom/google/android/material/edgeeffect/SpringExpandableListView$OnScrollListenerWrapper;

    invoke-direct {v0, p0}, Lcom/google/android/material/edgeeffect/SpringExpandableListView$OnScrollListenerWrapper;-><init>(Lcom/google/android/material/edgeeffect/SpringExpandableListView;)V

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mOnScrollListenerWrapper:Lcom/google/android/material/edgeeffect/SpringExpandableListView$OnScrollListenerWrapper;

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mSpringLayout:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    .line 69
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mGlowing:Z

    const/4 p1, 0x0

    .line 70
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mLastYVel:F

    .line 76
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 47
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mScrollState:I

    .line 62
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mOverScrollNested:Z

    const p2, 0x3dcccccd    # 0.1f

    .line 63
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mPullGrowTop:F

    const p2, 0x3f666666    # 0.9f

    .line 64
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mPullGrowBottom:F

    .line 67
    new-instance p2, Lcom/google/android/material/edgeeffect/SpringExpandableListView$OnScrollListenerWrapper;

    invoke-direct {p2, p0}, Lcom/google/android/material/edgeeffect/SpringExpandableListView$OnScrollListenerWrapper;-><init>(Lcom/google/android/material/edgeeffect/SpringExpandableListView;)V

    iput-object p2, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mOnScrollListenerWrapper:Lcom/google/android/material/edgeeffect/SpringExpandableListView$OnScrollListenerWrapper;

    const/4 p2, 0x0

    .line 68
    iput-object p2, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mSpringLayout:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    .line 69
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mGlowing:Z

    const/4 p1, 0x0

    .line 70
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mLastYVel:F

    .line 81
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 47
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mScrollState:I

    .line 62
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mOverScrollNested:Z

    const p2, 0x3dcccccd    # 0.1f

    .line 63
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mPullGrowTop:F

    const p2, 0x3f666666    # 0.9f

    .line 64
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mPullGrowBottom:F

    .line 67
    new-instance p2, Lcom/google/android/material/edgeeffect/SpringExpandableListView$OnScrollListenerWrapper;

    invoke-direct {p2, p0}, Lcom/google/android/material/edgeeffect/SpringExpandableListView$OnScrollListenerWrapper;-><init>(Lcom/google/android/material/edgeeffect/SpringExpandableListView;)V

    iput-object p2, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mOnScrollListenerWrapper:Lcom/google/android/material/edgeeffect/SpringExpandableListView$OnScrollListenerWrapper;

    const/4 p2, 0x0

    .line 68
    iput-object p2, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mSpringLayout:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    .line 69
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mGlowing:Z

    const/4 p1, 0x0

    .line 70
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mLastYVel:F

    .line 86
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/edgeeffect/SpringExpandableListView;)Lcom/google/android/material/edgeeffect/SpringRelativeLayout;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mSpringLayout:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    return-object p0
.end method

.method static synthetic access$002(Lcom/google/android/material/edgeeffect/SpringExpandableListView;Lcom/google/android/material/edgeeffect/SpringRelativeLayout;)Lcom/google/android/material/edgeeffect/SpringRelativeLayout;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mSpringLayout:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/material/edgeeffect/SpringExpandableListView;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mGlowing:Z

    return p0
.end method

.method static synthetic access$200(Lcom/google/android/material/edgeeffect/SpringExpandableListView;)F
    .locals 0

    .line 26
    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mLastYVel:F

    return p0
.end method

.method static synthetic access$300(Lcom/google/android/material/edgeeffect/SpringExpandableListView;)F
    .locals 0

    .line 26
    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mLastX:F

    return p0
.end method

.method static synthetic access$400(Lcom/google/android/material/edgeeffect/SpringExpandableListView;)F
    .locals 0

    .line 26
    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mLastY:F

    return p0
.end method

.method static synthetic access$500(Lcom/google/android/material/edgeeffect/SpringExpandableListView;FFFF)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->pullGlows(FFFF)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/material/edgeeffect/SpringExpandableListView;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mTopGlow:Landroid/widget/EdgeEffect;

    return-object p0
.end method

.method static synthetic access$700(Lcom/google/android/material/edgeeffect/SpringExpandableListView;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mBottomGlow:Landroid/widget/EdgeEffect;

    return-object p0
.end method

.method private cancelScroll()V
    .locals 1

    .line 665
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->resetTouch()V

    const/4 v0, 0x0

    .line 666
    invoke-virtual {p0, v0}, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->setScrollState(I)V

    return-void
.end method

.method private init()V
    .locals 2

    .line 90
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mTouchSlop:I

    .line 92
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mMaxFlingVelocity:I

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 93
    iput-object v1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mScrollStepConsumed:[I

    new-array v1, v0, [I

    .line 94
    iput-object v1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mScrollOffset:[I

    new-array v0, v0, [I

    .line 95
    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mNestedOffsets:[I

    .line 97
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mOnScrollListenerWrapper:Lcom/google/android/material/edgeeffect/SpringExpandableListView$OnScrollListenerWrapper;

    invoke-virtual {p0, v0}, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method private isReadyToOverScroll(ZI)Z
    .locals 3

    .line 595
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 597
    invoke-interface {p2}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getFooterViewsCount()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 602
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getFirstVisiblePosition()I

    move-result v2

    if-nez v2, :cond_3

    .line 603
    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 605
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getListPaddingTop()I

    move-result p0

    if-lt p1, p0, :cond_2

    move v0, v1

    :cond_2
    return v0

    :cond_3
    if-nez p1, :cond_4

    if-eqz p2, :cond_4

    .line 607
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getLastVisiblePosition()I

    move-result p1

    invoke-interface {p2}, Landroid/widget/Adapter;->getCount()I

    move-result p2

    sub-int/2addr p2, v1

    if-ne p1, p2, :cond_4

    .line 608
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getChildCount()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 610
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeight()I

    move-result p2

    .line 611
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getListPaddingBottom()I

    move-result p0

    sub-int/2addr p2, p0

    if-gt p1, p2, :cond_4

    move v0, v1

    :cond_4
    return v0
.end method

.method private onPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 474
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 475
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mScrollPointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 477
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mScrollPointerId:I

    .line 478
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mLastTouchY:I

    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mInitialTouchY:I

    :cond_1
    return-void
.end method

.method private pullGlows(FFFF)V
    .locals 5

    .line 411
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p3, v0

    if-gtz v0, :cond_4

    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-gez v1, :cond_0

    goto :goto_1

    .line 415
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p3, v1

    cmpg-float v1, p4, v0

    const/4 v2, 0x1

    if-gez v1, :cond_1

    .line 416
    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mPullGrowBottom:F

    cmpg-float v1, p3, v1

    if-gez v1, :cond_1

    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mPullGrowTop:F

    cmpl-float v1, p3, v1

    if-lez v1, :cond_1

    .line 417
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->ensureTopGlow()V

    .line 418
    iget-object p3, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz p3, :cond_2

    neg-float v1, p4

    .line 419
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p1, v3

    invoke-virtual {p3, v1, p1}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 420
    iput-boolean v2, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mGlowing:Z

    goto :goto_0

    :cond_1
    cmpl-float v1, p4, v0

    if-lez v1, :cond_2

    .line 423
    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mPullGrowTop:F

    cmpl-float v1, p3, v1

    if-lez v1, :cond_2

    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mPullGrowBottom:F

    cmpg-float p3, p3, v1

    if-gez p3, :cond_2

    .line 424
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->ensureBottomGlow()V

    .line 425
    iget-object p3, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz p3, :cond_2

    .line 426
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p4, v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr p1, v4

    sub-float/2addr v3, p1

    invoke-virtual {p3, v1, v3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 427
    iput-boolean v2, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mGlowing:Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_3

    cmpl-float p1, p2, v0

    if-nez p1, :cond_3

    cmpl-float p1, p4, v0

    if-eqz p1, :cond_4

    .line 433
    :cond_3
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->postInvalidateOnAnimation()V

    :cond_4
    :goto_1
    return-void
.end method

.method private releaseGlows()V
    .locals 3

    .line 456
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mTopGlow:Landroid/widget/EdgeEffect;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 458
    iput-boolean v1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mGlowing:Z

    .line 459
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 462
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_1

    .line 463
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 464
    iput-boolean v1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mGlowing:Z

    .line 465
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    if-eqz v0, :cond_2

    .line 469
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->postInvalidateOnAnimation()V

    :cond_2
    return-void
.end method

.method private resetScroll()V
    .locals 1

    .line 657
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 658
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 660
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->stopNestedScroll()V

    .line 661
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->releaseGlows()V

    return-void
.end method

.method private resetTouch()V
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 451
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->releaseGlows()V

    return-void
.end method


# virtual methods
.method computeVelocity()F
    .locals 3

    .line 779
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 780
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 782
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mMaxFlingVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 783
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mScrollPointerId:I

    invoke-virtual {v0, p0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result p0

    neg-float p0, p0

    return p0
.end method

.method considerReleasingGlowsOnScroll(II)V
    .locals 1

    .line 620
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mTopGlow:Landroid/widget/EdgeEffect;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_0

    if-lez p2, :cond_0

    .line 621
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 622
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    .line 625
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_1

    if-gez p2, :cond_1

    .line 626
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 627
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_1
    if-eqz v0, :cond_2

    .line 631
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->postInvalidateOnAnimation()V

    :cond_2
    return-void
.end method

.method dispatchOnScrolled(II)V
    .locals 2

    .line 484
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mDispatchScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mDispatchScrollCounter:I

    .line 485
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getScrollX()I

    move-result v0

    .line 486
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getScrollY()I

    move-result v1

    .line 487
    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/widget/ExpandableListView;->onScrollChanged(IIII)V

    .line 488
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->onScrolled(II)V

    .line 501
    iget p1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mDispatchScrollCounter:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mDispatchScrollCounter:I

    return-void
.end method

.method ensureBottomGlow()V
    .locals 4

    .line 390
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mEdgeEffectFactory:Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;

    if-nez v0, :cond_0

    const-string p0, "SpringExpandableListView"

    const-string v0, "setEdgeEffectFactory first, please!"

    .line 392
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 396
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_2

    const/4 v1, 0x3

    .line 397
    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;->createEdgeEffect(Landroid/view/View;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 398
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method ensureTopGlow()V
    .locals 4

    .line 372
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mEdgeEffectFactory:Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;

    if-nez v0, :cond_0

    const-string p0, "SpringExpandableListView"

    const-string v0, "setEdgeEffectFactory first, please!"

    .line 374
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 378
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 379
    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;->createEdgeEffect(Landroid/view/View;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 380
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 381
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    .line 383
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getScrollState()I
    .locals 0

    .line 653
    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mScrollState:I

    return p0
.end method

.method invalidateGlows()V
    .locals 1

    const/4 v0, 0x0

    .line 368
    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mBottomGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mTopGlow:Landroid/widget/EdgeEffect;

    return-void
.end method

.method isUserOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)Z
    .locals 0

    .line 746
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mOnScrollListenerWrapper:Lcom/google/android/material/edgeeffect/SpringExpandableListView$OnScrollListenerWrapper;

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
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 114
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

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
    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 179
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mScrollPointerId:I

    .line 180
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mLastTouchY:I

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mInitialTouchY:I

    goto/16 :goto_1

    .line 173
    :cond_3
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->cancelScroll()V

    goto/16 :goto_1

    .line 153
    :cond_4
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mScrollPointerId:I

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
    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mScrollState:I

    if-eq v1, v5, :cond_d

    .line 160
    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mInitialTouchY:I

    sub-int v1, v0, v1

    .line 162
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mTouchSlop:I

    if-le v1, v2, :cond_6

    .line 163
    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mLastTouchY:I

    move v4, v5

    :cond_6
    if-eqz v4, :cond_d

    .line 168
    invoke-virtual {p0, v5}, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->setScrollState(I)V

    goto :goto_1

    .line 149
    :cond_7
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 150
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->stopNestedScroll()V

    goto :goto_1

    .line 124
    :cond_8
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mScrollPointerId:I

    .line 125
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_9

    return v4

    .line 129
    :cond_9
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getAdapter()Landroid/widget/ListAdapter;

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
    invoke-direct {p0, v0, v4}, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->isReadyToOverScroll(ZI)Z

    move-result v0

    if-nez v0, :cond_b

    .line 134
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 137
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mLastTouchY:I

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mInitialTouchY:I

    .line 138
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mScrollState:I

    if-ne v0, v3, :cond_c

    .line 139
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 140
    invoke-virtual {p0, v5}, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->setScrollState(I)V

    .line 143
    :cond_c
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mNestedOffsets:[I

    aput v4, v0, v5

    aput v4, v0, v4

    .line 146
    invoke-virtual {p0, v3}, Landroid/widget/ExpandableListView;->startNestedScroll(I)Z

    .line 186
    :cond_d
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mLastX:F

    .line 187
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mLastY:F

    .line 189
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onScrolled(II)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 196
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 197
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 201
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 202
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 203
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_1

    .line 205
    iget-object v5, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mNestedOffsets:[I

    aput v3, v5, v4

    aput v3, v5, v3

    .line 208
    :cond_1
    iget-object v5, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mNestedOffsets:[I

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

    .line 317
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    .line 313
    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mScrollPointerId:I

    .line 314
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mLastTouchY:I

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mInitialTouchY:I

    goto/16 :goto_3

    .line 307
    :cond_4
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->cancelScroll()V

    goto/16 :goto_3

    .line 253
    :cond_5
    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mScrollPointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-gez v1, :cond_6

    .line 255
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error processing scroll; pointer index for id "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mScrollPointerId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SpringListView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return v3

    .line 260
    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 261
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v6

    float-to-int v1, v1

    .line 262
    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mLastTouchY:I

    sub-int/2addr v2, v1

    .line 278
    iget v5, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mScrollState:I

    if-eq v5, v4, :cond_9

    .line 280
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mTouchSlop:I

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

    .line 291
    invoke-virtual {p0, v4}, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->setScrollState(I)V

    .line 295
    :cond_9
    iget v5, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mScrollState:I

    if-ne v5, v4, :cond_e

    .line 296
    iget-object v5, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mScrollOffset:[I

    aget v5, v5, v4

    sub-int/2addr v1, v5

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mLastTouchY:I

    .line 297
    invoke-virtual {p0, v3, v2, v0}, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 298
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_3

    .line 232
    :cond_a
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 234
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    iget v5, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mMaxFlingVelocity:I

    int-to-float v5, v5

    invoke-virtual {v1, v2, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 235
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mScrollPointerId:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    neg-float v1, v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_b

    .line 239
    invoke-virtual {p0, v3}, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->setScrollState(I)V

    goto :goto_2

    .line 246
    :cond_b
    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mLastYVel:F

    .line 250
    :goto_2
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->resetScroll()V

    move v3, v4

    goto :goto_3

    .line 214
    :cond_c
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mScrollPointerId:I

    .line 215
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    add-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mLastTouchY:I

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mInitialTouchY:I

    .line 216
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_d

    sub-int/2addr v1, v4

    .line 218
    invoke-virtual {p0, v1}, Landroid/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 229
    :cond_d
    invoke-virtual {p0, v5}, Landroid/widget/ExpandableListView;->startNestedScroll(I)Z

    :cond_e
    :goto_3
    if-nez v3, :cond_f

    .line 321
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 323
    :cond_f
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 324
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mLastX:F

    .line 325
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mLastY:F

    .line 328
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

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

    .line 105
    invoke-super/range {v0 .. v9}, Landroid/widget/ExpandableListView;->overScrollBy(IIIIIIIIZ)Z

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

    .line 508
    :goto_0
    invoke-direct {p0, v2, p2}, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->isReadyToOverScroll(ZI)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 519
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 520
    iget-object v2, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mScrollStepConsumed:[I

    invoke-virtual {p0, p1, p2, v2}, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->scrollStep(II[I)V

    .line 521
    iget-object v2, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mScrollStepConsumed:[I

    aget v3, v2, v1

    .line 522
    aget v2, v2, v0

    sub-int v4, p1, v3

    sub-int v5, p2, v2

    goto :goto_1

    :cond_2
    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    .line 528
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->invalidate()V

    .line 547
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getOverScrollMode()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_4

    if-eqz p3, :cond_3

    const/16 v6, 0x2002

    .line 548
    invoke-virtual {p3, v6}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 550
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    int-to-float v4, v4

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    int-to-float v5, v5

    invoke-direct {p0, v6, v4, p3, v5}, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->pullGlows(FFFF)V

    .line 553
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->considerReleasingGlowsOnScroll(II)V

    :cond_4
    if-nez v3, :cond_5

    if-eqz v2, :cond_6

    .line 558
    :cond_5
    invoke-virtual {p0, v3, v2}, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->dispatchOnScrolled(II)V

    .line 561
    :cond_6
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->awakenScrollBars()Z

    move-result p1

    if-nez p1, :cond_7

    .line 562
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->invalidate()V

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

    .line 589
    aput p1, p3, p0

    :cond_0
    return-void
.end method

.method public setEdgeEffectFactory(Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;)V
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mEdgeEffectFactory:Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;

    .line 364
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->invalidateGlows()V

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1

    .line 738
    invoke-virtual {p0, p1}, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->isUserOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 739
    iput-object p1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mGivenOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    goto :goto_0

    .line 741
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :goto_0
    return-void
.end method

.method public setOverScrollNested(Z)V
    .locals 0

    .line 642
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mOverScrollNested:Z

    return-void
.end method

.method setScrollState(I)V
    .locals 1

    .line 438
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mScrollState:I

    if-eq p1, v0, :cond_0

    .line 439
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mScrollState:I

    :cond_0
    return-void
.end method
