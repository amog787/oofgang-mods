.class public Lcom/google/android/material/edgeeffect/SpringGridView;
.super Landroid/widget/GridView;
.source "SpringGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/edgeeffect/SpringGridView$OnScrollListenerWrapper;
    }
.end annotation


# instance fields
.field private mBottomGlow:Landroid/widget/EdgeEffect;

.field private mDispatchScrollCounter:I

.field private mEdgeEffectFactory:Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;

.field mGivenOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field mGlowing:Z

.field private mInitialTouchY:I

.field private mLastTouchY:I

.field private mLastX:F

.field private mLastY:F

.field private mLastYVel:F

.field private mMaxFlingVelocity:I

.field private mNestedOffsets:[I

.field mOnScrollListenerWrapper:Lcom/google/android/material/edgeeffect/SpringGridView$OnScrollListenerWrapper;

.field mOverScrollNested:Z

.field mPullGrowBottom:F

.field mPullGrowTop:F

.field private mScrollOffset:[I

.field private mScrollPointerId:I

.field private mScrollState:I

.field mScrollStepConsumed:[I

.field mSpringLayout:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

.field private mTopGlow:Landroid/widget/EdgeEffect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 55
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mOverScrollNested:Z

    const v0, 0x3dcccccd    # 0.1f

    .line 42
    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mPullGrowTop:F

    const v0, 0x3f666666    # 0.9f

    .line 43
    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mPullGrowBottom:F

    .line 46
    new-instance v0, Lcom/google/android/material/edgeeffect/SpringGridView$OnScrollListenerWrapper;

    invoke-direct {v0, p0}, Lcom/google/android/material/edgeeffect/SpringGridView$OnScrollListenerWrapper;-><init>(Lcom/google/android/material/edgeeffect/SpringGridView;)V

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mOnScrollListenerWrapper:Lcom/google/android/material/edgeeffect/SpringGridView$OnScrollListenerWrapper;

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mSpringLayout:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    .line 48
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mGlowing:Z

    const/4 p1, 0x0

    .line 50
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mLastYVel:F

    .line 56
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringGridView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mOverScrollNested:Z

    const p2, 0x3dcccccd    # 0.1f

    .line 42
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mPullGrowTop:F

    const p2, 0x3f666666    # 0.9f

    .line 43
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mPullGrowBottom:F

    .line 46
    new-instance p2, Lcom/google/android/material/edgeeffect/SpringGridView$OnScrollListenerWrapper;

    invoke-direct {p2, p0}, Lcom/google/android/material/edgeeffect/SpringGridView$OnScrollListenerWrapper;-><init>(Lcom/google/android/material/edgeeffect/SpringGridView;)V

    iput-object p2, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mOnScrollListenerWrapper:Lcom/google/android/material/edgeeffect/SpringGridView$OnScrollListenerWrapper;

    const/4 p2, 0x0

    .line 47
    iput-object p2, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mSpringLayout:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    .line 48
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mGlowing:Z

    const/4 p1, 0x0

    .line 50
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mLastYVel:F

    .line 61
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringGridView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mOverScrollNested:Z

    const p2, 0x3dcccccd    # 0.1f

    .line 42
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mPullGrowTop:F

    const p2, 0x3f666666    # 0.9f

    .line 43
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mPullGrowBottom:F

    .line 46
    new-instance p2, Lcom/google/android/material/edgeeffect/SpringGridView$OnScrollListenerWrapper;

    invoke-direct {p2, p0}, Lcom/google/android/material/edgeeffect/SpringGridView$OnScrollListenerWrapper;-><init>(Lcom/google/android/material/edgeeffect/SpringGridView;)V

    iput-object p2, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mOnScrollListenerWrapper:Lcom/google/android/material/edgeeffect/SpringGridView$OnScrollListenerWrapper;

    const/4 p2, 0x0

    .line 47
    iput-object p2, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mSpringLayout:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    .line 48
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mGlowing:Z

    const/4 p1, 0x0

    .line 50
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mLastYVel:F

    .line 66
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringGridView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mOverScrollNested:Z

    const p2, 0x3dcccccd    # 0.1f

    .line 42
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mPullGrowTop:F

    const p2, 0x3f666666    # 0.9f

    .line 43
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mPullGrowBottom:F

    .line 46
    new-instance p2, Lcom/google/android/material/edgeeffect/SpringGridView$OnScrollListenerWrapper;

    invoke-direct {p2, p0}, Lcom/google/android/material/edgeeffect/SpringGridView$OnScrollListenerWrapper;-><init>(Lcom/google/android/material/edgeeffect/SpringGridView;)V

    iput-object p2, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mOnScrollListenerWrapper:Lcom/google/android/material/edgeeffect/SpringGridView$OnScrollListenerWrapper;

    const/4 p2, 0x0

    .line 47
    iput-object p2, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mSpringLayout:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    .line 48
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mGlowing:Z

    const/4 p1, 0x0

    .line 50
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mLastYVel:F

    .line 71
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringGridView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/edgeeffect/SpringGridView;)F
    .locals 0

    .line 22
    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mLastYVel:F

    return p0
.end method

.method static synthetic access$100(Lcom/google/android/material/edgeeffect/SpringGridView;)F
    .locals 0

    .line 22
    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mLastX:F

    return p0
.end method

.method static synthetic access$200(Lcom/google/android/material/edgeeffect/SpringGridView;)F
    .locals 0

    .line 22
    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mLastY:F

    return p0
.end method

.method static synthetic access$300(Lcom/google/android/material/edgeeffect/SpringGridView;FFFF)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/edgeeffect/SpringGridView;->pullGlows(FFFF)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/material/edgeeffect/SpringGridView;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mTopGlow:Landroid/widget/EdgeEffect;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/material/edgeeffect/SpringGridView;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mBottomGlow:Landroid/widget/EdgeEffect;

    return-object p0
.end method

.method private cancelTouch()V
    .locals 1

    .line 461
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringGridView;->resetTouch()V

    const/4 v0, 0x0

    .line 462
    invoke-virtual {p0, v0}, Lcom/google/android/material/edgeeffect/SpringGridView;->setScrollState(I)V

    return-void
.end method

.method private init()V
    .locals 2

    .line 75
    invoke-virtual {p0}, Landroid/widget/GridView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mTouchSlop:I

    .line 77
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mMaxFlingVelocity:I

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 78
    iput-object v1, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mScrollStepConsumed:[I

    new-array v1, v0, [I

    .line 79
    iput-object v1, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mScrollOffset:[I

    new-array v0, v0, [I

    .line 80
    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mNestedOffsets:[I

    .line 82
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mOnScrollListenerWrapper:Lcom/google/android/material/edgeeffect/SpringGridView$OnScrollListenerWrapper;

    invoke-virtual {p0, v0}, Lcom/google/android/material/edgeeffect/SpringGridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method private isReadyToOverScroll(ZIII)Z
    .locals 1

    .line 588
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_3

    .line 590
    invoke-interface {p2}, Landroid/widget/Adapter;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p4, 0x1

    if-eqz p1, :cond_2

    .line 595
    invoke-virtual {p0}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_2

    .line 596
    invoke-virtual {p0, p3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 598
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/GridView;->getListPaddingTop()I

    move-result p0

    if-lt p1, p0, :cond_1

    move p3, p4

    :cond_1
    return p3

    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    .line 600
    invoke-virtual {p0}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result p1

    invoke-interface {p2}, Landroid/widget/Adapter;->getCount()I

    move-result p2

    sub-int/2addr p2, p4

    if-ne p1, p2, :cond_3

    .line 601
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result p1

    sub-int/2addr p1, p4

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 617
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result p2

    .line 618
    invoke-virtual {p0}, Landroid/widget/GridView;->getListPaddingBottom()I

    move-result p0

    sub-int/2addr p2, p0

    if-gt p1, p2, :cond_3

    move p3, p4

    :cond_3
    :goto_0
    return p3
.end method

.method private onPointerUp(Landroid/view/MotionEvent;)V
    .locals 3

    .line 466
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 467
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mScrollPointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 469
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mScrollPointerId:I

    .line 470
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mLastTouchY:I

    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mInitialTouchY:I

    :cond_1
    return-void
.end method

.method private pullGlows(FFFF)V
    .locals 5

    .line 395
    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p3, v0

    if-gtz v0, :cond_4

    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-gez v1, :cond_0

    goto :goto_1

    .line 399
    :cond_0
    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p3, v1

    cmpg-float v1, p4, v0

    const/4 v2, 0x1

    if-gez v1, :cond_1

    .line 400
    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mPullGrowBottom:F

    cmpg-float v1, p3, v1

    if-gez v1, :cond_1

    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mPullGrowTop:F

    cmpl-float v1, p3, v1

    if-lez v1, :cond_1

    .line 401
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringGridView;->ensureTopGlow()V

    .line 403
    iget-object p3, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz p3, :cond_2

    neg-float v1, p4

    .line 404
    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/widget/GridView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p1, v3

    invoke-virtual {p3, v1, p1}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 405
    iput-boolean v2, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mGlowing:Z

    goto :goto_0

    :cond_1
    cmpl-float v1, p4, v0

    if-lez v1, :cond_2

    .line 408
    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mPullGrowTop:F

    cmpl-float v1, p3, v1

    if-lez v1, :cond_2

    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mPullGrowBottom:F

    cmpg-float p3, p3, v1

    if-gez p3, :cond_2

    .line 409
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringGridView;->ensureBottomGlow()V

    .line 411
    iget-object p3, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz p3, :cond_2

    .line 412
    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p4, v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Landroid/widget/GridView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr p1, v4

    sub-float/2addr v3, p1

    invoke-virtual {p3, v1, v3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 413
    iput-boolean v2, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mGlowing:Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_3

    cmpl-float p1, p2, v0

    if-nez p1, :cond_3

    cmpl-float p1, p4, v0

    if-eqz p1, :cond_4

    .line 419
    :cond_3
    invoke-virtual {p0}, Landroid/widget/GridView;->postInvalidateOnAnimation()V

    :cond_4
    :goto_1
    return-void
.end method

.method private releaseGlows()V
    .locals 3

    .line 443
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mTopGlow:Landroid/widget/EdgeEffect;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 445
    iput-boolean v1, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mGlowing:Z

    .line 446
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 449
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_1

    .line 450
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 451
    iput-boolean v1, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mGlowing:Z

    .line 452
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    if-eqz v0, :cond_2

    .line 456
    invoke-virtual {p0}, Landroid/widget/GridView;->postInvalidateOnAnimation()V

    :cond_2
    return-void
.end method

.method private resetTouch()V
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 437
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringGridView;->releaseGlows()V

    return-void
.end method


# virtual methods
.method computeVelocity()F
    .locals 3

    .line 733
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 734
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mMaxFlingVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 737
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mScrollPointerId:I

    invoke-virtual {v0, p0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result p0

    neg-float p0, p0

    return p0
.end method

.method considerReleasingGlowsOnScroll(II)V
    .locals 1

    .line 627
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mTopGlow:Landroid/widget/EdgeEffect;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_0

    if-lez p2, :cond_0

    .line 628
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 629
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    .line 632
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    if-nez p1, :cond_1

    if-gez p2, :cond_1

    .line 633
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 634
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result p1

    or-int/2addr v0, p1

    :cond_1
    if-eqz v0, :cond_2

    .line 638
    invoke-virtual {p0}, Landroid/widget/GridView;->postInvalidateOnAnimation()V

    :cond_2
    return-void
.end method

.method dispatchOnScrolled(II)V
    .locals 2

    .line 476
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mDispatchScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mDispatchScrollCounter:I

    .line 477
    invoke-virtual {p0}, Landroid/widget/GridView;->getScrollX()I

    move-result v0

    .line 478
    invoke-virtual {p0}, Landroid/widget/GridView;->getScrollY()I

    move-result v1

    .line 479
    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/widget/GridView;->onScrollChanged(IIII)V

    .line 480
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/edgeeffect/SpringGridView;->onScrolled(II)V

    .line 493
    iget p1, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mDispatchScrollCounter:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mDispatchScrollCounter:I

    return-void
.end method

.method ensureBottomGlow()V
    .locals 4

    .line 374
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mEdgeEffectFactory:Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;

    if-nez v0, :cond_0

    const-string p0, "SpringGridView"

    const-string v0, "setEdgeEffectFactory first, please!"

    .line 376
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 380
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_2

    const/4 v1, 0x3

    .line 381
    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;->createEdgeEffect(Landroid/view/View;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 382
    invoke-virtual {p0}, Landroid/widget/GridView;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/GridView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/GridView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/GridView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/GridView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/GridView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/GridView;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    .line 385
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/GridView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/GridView;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method ensureTopGlow()V
    .locals 4

    .line 356
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mEdgeEffectFactory:Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;

    if-nez v0, :cond_0

    const-string p0, "SpringGridView"

    const-string v0, "setEdgeEffectFactory first, please!"

    .line 358
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 362
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 363
    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;->createEdgeEffect(Landroid/view/View;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 364
    invoke-virtual {p0}, Landroid/widget/GridView;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/GridView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/GridView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/GridView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/GridView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/GridView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/GridView;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/GridView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/GridView;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method invalidateGlows()V
    .locals 1

    const/4 v0, 0x0

    .line 352
    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mBottomGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mTopGlow:Landroid/widget/EdgeEffect;

    return-void
.end method

.method isUserOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)Z
    .locals 0

    .line 729
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mOnScrollListenerWrapper:Lcom/google/android/material/edgeeffect/SpringGridView$OnScrollListenerWrapper;

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 98
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 99
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 103
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    const/4 v2, 0x2

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_8

    if-eq v0, v5, :cond_7

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    goto/16 :goto_1

    .line 171
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/SpringGridView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 167
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mScrollPointerId:I

    .line 168
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mLastTouchY:I

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mInitialTouchY:I

    goto/16 :goto_1

    .line 161
    :cond_3
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringGridView;->cancelTouch()V

    goto/16 :goto_1

    .line 141
    :cond_4
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mScrollPointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_5

    return v4

    .line 145
    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 146
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 147
    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mScrollState:I

    if-eq v1, v5, :cond_d

    .line 148
    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mInitialTouchY:I

    sub-int v1, v0, v1

    .line 150
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mTouchSlop:I

    if-le v1, v2, :cond_6

    .line 151
    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mLastTouchY:I

    move v4, v5

    :cond_6
    if-eqz v4, :cond_d

    .line 156
    invoke-virtual {p0, v5}, Lcom/google/android/material/edgeeffect/SpringGridView;->setScrollState(I)V

    goto :goto_1

    .line 137
    :cond_7
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 138
    invoke-virtual {p0}, Landroid/widget/GridView;->stopNestedScroll()V

    goto :goto_1

    .line 108
    :cond_8
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mScrollPointerId:I

    .line 109
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_9

    return v4

    .line 114
    :cond_9
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 115
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 116
    invoke-virtual {p0}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    sub-int/2addr v7, v5

    if-ne v6, v7, :cond_a

    move v6, v5

    goto :goto_0

    :cond_a
    move v6, v4

    :goto_0
    xor-int/2addr v6, v5

    .line 117
    invoke-direct {p0, v6, v1, v0, v4}, Lcom/google/android/material/edgeeffect/SpringGridView;->isReadyToOverScroll(ZIII)Z

    move-result v0

    if-nez v0, :cond_b

    .line 121
    invoke-super {p0, p1}, Landroid/widget/GridView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 124
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mLastTouchY:I

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mInitialTouchY:I

    .line 126
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mScrollState:I

    if-ne v0, v2, :cond_c

    .line 127
    invoke-virtual {p0}, Landroid/widget/GridView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 128
    invoke-virtual {p0, v5}, Lcom/google/android/material/edgeeffect/SpringGridView;->setScrollState(I)V

    .line 131
    :cond_c
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mNestedOffsets:[I

    aput v4, v0, v5

    aput v4, v0, v4

    .line 134
    invoke-virtual {p0, v2}, Landroid/widget/GridView;->startNestedScroll(I)Z

    .line 174
    :cond_d
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mLastX:F

    .line 175
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mLastY:F

    .line 176
    invoke-super {p0, p1}, Landroid/widget/GridView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onScrolled(II)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 182
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 183
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 187
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 188
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 189
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_1

    .line 191
    iget-object v5, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mNestedOffsets:[I

    aput v3, v5, v4

    aput v3, v5, v3

    .line 194
    :cond_1
    iget-object v5, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mNestedOffsets:[I

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

    .line 299
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/material/edgeeffect/SpringGridView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    .line 295
    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mScrollPointerId:I

    .line 296
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mLastTouchY:I

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mInitialTouchY:I

    goto/16 :goto_3

    .line 289
    :cond_4
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringGridView;->cancelTouch()V

    goto/16 :goto_3

    .line 235
    :cond_5
    iget v1, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mScrollPointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    if-gez v1, :cond_6

    .line 237
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error processing scroll; pointer index for id "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mScrollPointerId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SpringListView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return v3

    .line 242
    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    add-float/2addr v2, v6

    float-to-int v2, v2

    .line 243
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v6

    float-to-int v1, v1

    .line 244
    iget v5, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mLastTouchY:I

    sub-int/2addr v5, v1

    .line 260
    iget v6, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mScrollState:I

    if-eq v6, v4, :cond_9

    .line 262
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mTouchSlop:I

    if-le v6, v7, :cond_8

    if-lez v5, :cond_7

    sub-int/2addr v5, v7

    goto :goto_0

    :cond_7
    add-int/2addr v5, v7

    :goto_0
    move v6, v4

    goto :goto_1

    :cond_8
    move v6, v3

    :goto_1
    if-eqz v6, :cond_9

    .line 273
    invoke-virtual {p0, v4}, Lcom/google/android/material/edgeeffect/SpringGridView;->setScrollState(I)V

    .line 277
    :cond_9
    iget v6, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mScrollState:I

    if-ne v6, v4, :cond_e

    .line 278
    iget-object v6, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mScrollOffset:[I

    aget v6, v6, v4

    sub-int v6, v1, v6

    iput v6, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mLastTouchY:I

    .line 279
    invoke-virtual {p0, v2, v1, v5, v0}, Lcom/google/android/material/edgeeffect/SpringGridView;->scrollByInternal(IIILandroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 280
    invoke-virtual {p0}, Landroid/widget/GridView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_3

    .line 216
    :cond_a
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 218
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    iget v5, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mMaxFlingVelocity:I

    int-to-float v5, v5

    invoke-virtual {v1, v2, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 219
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mScrollPointerId:I

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    neg-float v1, v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_b

    .line 223
    invoke-virtual {p0, v3}, Lcom/google/android/material/edgeeffect/SpringGridView;->setScrollState(I)V

    goto :goto_2

    .line 229
    :cond_b
    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mLastYVel:F

    .line 232
    :goto_2
    invoke-direct {p0}, Lcom/google/android/material/edgeeffect/SpringGridView;->resetTouch()V

    move v3, v4

    goto :goto_3

    .line 200
    :cond_c
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mScrollPointerId:I

    .line 201
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    add-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mLastTouchY:I

    iput v1, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mInitialTouchY:I

    .line 202
    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_d

    sub-int/2addr v1, v4

    .line 204
    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    .line 213
    :cond_d
    invoke-virtual {p0, v5}, Landroid/widget/GridView;->startNestedScroll(I)Z

    :cond_e
    :goto_3
    if-nez v3, :cond_f

    .line 303
    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 305
    :cond_f
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 306
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mLastX:F

    .line 307
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mLastY:F

    .line 309
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

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

    .line 90
    invoke-super/range {v0 .. v9}, Landroid/widget/GridView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method scrollByInternal(IIILandroid/view/MotionEvent;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gez p3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 501
    :goto_0
    invoke-direct {p0, v2, p1, p2, p3}, Lcom/google/android/material/edgeeffect/SpringGridView;->isReadyToOverScroll(ZIII)Z

    move-result p2

    if-nez p2, :cond_1

    return v1

    .line 511
    :cond_1
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 512
    iget-object p2, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mScrollStepConsumed:[I

    invoke-virtual {p0, p1, p3, p2}, Lcom/google/android/material/edgeeffect/SpringGridView;->scrollStep(II[I)V

    .line 513
    iget-object p2, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mScrollStepConsumed:[I

    aget v2, p2, v1

    .line 514
    aget p2, p2, v0

    sub-int v3, p1, v2

    sub-int v4, p3, p2

    goto :goto_1

    :cond_2
    move p2, v1

    move v2, p2

    move v3, v2

    move v4, v3

    .line 520
    :goto_1
    invoke-virtual {p0}, Landroid/widget/GridView;->invalidate()V

    .line 539
    invoke-virtual {p0}, Landroid/widget/GridView;->getOverScrollMode()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4

    if-eqz p4, :cond_3

    const/16 v5, 0x2002

    .line 540
    invoke-virtual {p4, v5}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 542
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    int-to-float v3, v3

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getY()F

    move-result p4

    int-to-float v4, v4

    invoke-direct {p0, v5, v3, p4, v4}, Lcom/google/android/material/edgeeffect/SpringGridView;->pullGlows(FFFF)V

    .line 545
    :cond_3
    invoke-virtual {p0, p1, p3}, Lcom/google/android/material/edgeeffect/SpringGridView;->considerReleasingGlowsOnScroll(II)V

    :cond_4
    if-nez v2, :cond_5

    if-eqz p2, :cond_6

    .line 550
    :cond_5
    invoke-virtual {p0, v2, p2}, Lcom/google/android/material/edgeeffect/SpringGridView;->dispatchOnScrolled(II)V

    .line 553
    :cond_6
    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    move-result p1

    if-nez p1, :cond_7

    .line 554
    invoke-virtual {p0}, Landroid/widget/GridView;->invalidate()V

    :cond_7
    if-nez v2, :cond_9

    if-eqz p2, :cond_8

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

    .line 582
    aput p1, p3, p0

    :cond_0
    return-void
.end method

.method public setEdgeEffectFactory(Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mEdgeEffectFactory:Lcom/google/android/material/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;

    .line 348
    invoke-virtual {p0}, Lcom/google/android/material/edgeeffect/SpringGridView;->invalidateGlows()V

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1

    .line 721
    invoke-virtual {p0, p1}, Lcom/google/android/material/edgeeffect/SpringGridView;->isUserOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    iput-object p1, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mGivenOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    goto :goto_0

    .line 724
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :goto_0
    return-void
.end method

.method public setOverScrollNested(Z)V
    .locals 0

    .line 649
    iput-boolean p1, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mOverScrollNested:Z

    return-void
.end method

.method setScrollState(I)V
    .locals 1

    .line 424
    iget v0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mScrollState:I

    if-eq p1, v0, :cond_0

    .line 425
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mScrollState:I

    :cond_0
    return-void
.end method
