.class final Landroidx/leanback/widget/GridLayoutManager;
.super Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/GridLayoutManager$SavedState;,
        Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;,
        Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;,
        Landroidx/leanback/widget/GridLayoutManager$LayoutParams;
    }
.end annotation


# static fields
.field private static final sTempRect:Landroid/graphics/Rect;

.field static sTwoInts:[I


# instance fields
.field final mBaseGridView:Landroidx/leanback/widget/BaseGridView;

.field mChildLaidOutListener:Landroidx/leanback/widget/OnChildLaidOutListener;

.field private mChildSelectedListener:Landroidx/leanback/widget/OnChildSelectedListener;

.field private mChildViewHolderSelectedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/leanback/widget/OnChildViewHolderSelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field mChildVisibility:I

.field final mChildrenStates:Landroidx/leanback/widget/ViewsStateBundle;

.field mCurrentSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;

.field mDisappearingPositions:[I

.field private mExtraLayoutSpace:I

.field mExtraLayoutSpaceInPreLayout:I

.field private mFacetProviderAdapter:Landroidx/leanback/widget/FacetProviderAdapter;

.field private mFixedRowSizeSecondary:I

.field mFlag:I

.field mFocusPosition:I

.field private mFocusPositionOffset:I

.field private mFocusScrollStrategy:I

.field private mGravity:I

.field mGrid:Landroidx/leanback/widget/Grid;

.field private mGridProvider:Landroidx/leanback/widget/Grid$Provider;

.field private mHorizontalSpacing:I

.field private final mItemAlignment:Landroidx/leanback/widget/ItemAlignment;

.field mMaxPendingMoves:I

.field private mMaxSizeSecondary:I

.field private mMeasuredDimension:[I

.field mNumRows:I

.field private mNumRowsRequested:I

.field mOnLayoutCompletedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/leanback/widget/BaseGridView$OnLayoutCompletedListener;",
            ">;"
        }
    .end annotation
.end field

.field mOrientation:I

.field private mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

.field mPendingMoveSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

.field mPositionDeltaInPreLayout:I

.field final mPositionToRowInPostLayout:Landroid/util/SparseIntArray;

.field private mPrimaryScrollExtra:I

.field mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

.field private final mRequestLayoutRunnable:Ljava/lang/Runnable;

.field private mRowSizeSecondary:[I

.field private mRowSizeSecondaryRequested:I

.field private mSaveContextLevel:I

.field mScrollOffsetSecondary:I

.field private mSizePrimary:I

.field mSmoothScrollSpeedFactor:F

.field private mSpacingPrimary:I

.field private mSpacingSecondary:I

.field mState:Landroidx/recyclerview/widget/RecyclerView$State;

.field mSubFocusPosition:I

.field private mVerticalSpacing:I

.field final mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 457
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroidx/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 701
    sput-object v0, Landroidx/leanback/widget/GridLayoutManager;->sTwoInts:[I

    return-void
.end method

.method public constructor <init>(Landroidx/leanback/widget/BaseGridView;)V
    .locals 3

    .line 715
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 398
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mSmoothScrollSpeedFactor:F

    const/16 v0, 0xa

    .line 399
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mMaxPendingMoves:I

    const/4 v0, 0x0

    .line 437
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    .line 439
    invoke-static {p0}, Landroidx/recyclerview/widget/OrientationHelper;->createHorizontalHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v1

    iput-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 452
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mPositionToRowInPostLayout:Landroid/util/SparseIntArray;

    const v1, 0x36200

    .line 551
    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/4 v1, 0x0

    .line 555
    iput-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroidx/leanback/widget/OnChildSelectedListener;

    .line 557
    iput-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    .line 559
    iput-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mOnLayoutCompletedListeners:Ljava/util/ArrayList;

    .line 562
    iput-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildLaidOutListener:Landroidx/leanback/widget/OnChildLaidOutListener;

    const/4 v1, -0x1

    .line 569
    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 575
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    .line 595
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    const v2, 0x800033

    .line 658
    iput v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mGravity:I

    const/4 v2, 0x1

    .line 667
    iput v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    .line 677
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    .line 681
    new-instance v2, Landroidx/leanback/widget/WindowAlignment;

    invoke-direct {v2}, Landroidx/leanback/widget/WindowAlignment;-><init>()V

    iput-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    .line 686
    new-instance v2, Landroidx/leanback/widget/ItemAlignment;

    invoke-direct {v2}, Landroidx/leanback/widget/ItemAlignment;-><init>()V

    iput-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mItemAlignment:Landroidx/leanback/widget/ItemAlignment;

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 706
    iput-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mMeasuredDimension:[I

    .line 708
    new-instance v2, Landroidx/leanback/widget/ViewsStateBundle;

    invoke-direct {v2}, Landroidx/leanback/widget/ViewsStateBundle;-><init>()V

    iput-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildrenStates:Landroidx/leanback/widget/ViewsStateBundle;

    .line 1444
    new-instance v2, Landroidx/leanback/widget/GridLayoutManager$1;

    invoke-direct {v2, p0}, Landroidx/leanback/widget/GridLayoutManager$1;-><init>(Landroidx/leanback/widget/GridLayoutManager;)V

    iput-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mRequestLayoutRunnable:Ljava/lang/Runnable;

    .line 1612
    new-instance v2, Landroidx/leanback/widget/GridLayoutManager$2;

    invoke-direct {v2, p0}, Landroidx/leanback/widget/GridLayoutManager$2;-><init>(Landroidx/leanback/widget/GridLayoutManager;)V

    iput-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mGridProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 716
    iput-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    .line 717
    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildVisibility:I

    .line 719
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setItemPrefetchEnabled(Z)V

    return-void
.end method

.method private appendOneColumnVisibleItems()Z
    .locals 0

    .line 1852
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {p0}, Landroidx/leanback/widget/Grid;->appendOneColumnVisibleItems()Z

    move-result p0

    return p0
.end method

.method private appendVisibleItems()V
    .locals 3

    .line 1947
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 1948
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    neg-int v1, v1

    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mExtraLayoutSpaceInPreLayout:I

    sub-int/2addr v1, p0

    goto :goto_0

    .line 1949
    :cond_0
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mSizePrimary:I

    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    add-int/2addr v1, v2

    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mExtraLayoutSpaceInPreLayout:I

    add-int/2addr v1, p0

    .line 1947
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/Grid;->appendVisibleItems(I)V

    return-void
.end method

.method private discardLayoutInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 3580
    iput-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    .line 3581
    iput-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    .line 3582
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    return-void
.end method

.method private fastRelayout()V
    .locals 15

    .line 1965
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    .line 1966
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v1}, Landroidx/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v1

    .line 1968
    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v2, v2, -0x9

    iput v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v0, :cond_5

    .line 1970
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1976
    invoke-direct {p0, v5}, Landroidx/leanback/widget/GridLayoutManager;->getAdapterPositionByView(Landroid/view/View;)I

    move-result v6

    if-eq v1, v6, :cond_0

    :goto_1
    move v2, v4

    goto :goto_3

    .line 1980
    :cond_0
    iget-object v6, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v6, v1}, Landroidx/leanback/widget/Grid;->getLocation(I)Landroidx/leanback/widget/Grid$Location;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 1986
    :cond_1
    iget v7, v6, Landroidx/leanback/widget/Grid$Location;->row:I

    invoke-virtual {p0, v7}, Landroidx/leanback/widget/GridLayoutManager;->getRowStartSecondary(I)I

    move-result v7

    iget-object v8, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    .line 1987
    invoke-virtual {v8}, Landroidx/leanback/widget/WindowAlignment;->secondAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/leanback/widget/WindowAlignment$Axis;->getPaddingMin()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, p0, Landroidx/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    sub-int v14, v7, v8

    .line 1989
    invoke-virtual {p0, v5}, Landroidx/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v12

    .line 1990
    invoke-virtual {p0, v5}, Landroidx/leanback/widget/GridLayoutManager;->getViewPrimarySize(Landroid/view/View;)I

    move-result v7

    .line 1992
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    .line 1993
    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->viewNeedsUpdate()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1994
    iget v8, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 1995
    iget-object v8, p0, Landroidx/leanback/widget/GridLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {p0, v5, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachAndScrapView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 1996
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/GridLayoutManager;->getViewForPosition(I)Landroid/view/View;

    move-result-object v5

    .line 1997
    invoke-virtual {p0, v5, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    :cond_2
    move-object v11, v5

    .line 2000
    invoke-virtual {p0, v11}, Landroidx/leanback/widget/GridLayoutManager;->measureChild(Landroid/view/View;)V

    .line 2001
    iget v5, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v5, :cond_3

    .line 2002
    invoke-virtual {p0, v11}, Landroidx/leanback/widget/GridLayoutManager;->getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I

    move-result v5

    goto :goto_2

    .line 2005
    :cond_3
    invoke-virtual {p0, v11}, Landroidx/leanback/widget/GridLayoutManager;->getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I

    move-result v5

    :goto_2
    add-int v8, v12, v5

    move v13, v8

    .line 2008
    iget v10, v6, Landroidx/leanback/widget/Grid$Location;->row:I

    move-object v9, p0

    invoke-virtual/range {v9 .. v14}, Landroidx/leanback/widget/GridLayoutManager;->layoutChild(ILandroid/view/View;III)V

    if-eq v7, v5, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    if-eqz v2, :cond_8

    .line 2017
    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v2}, Landroidx/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v2

    sub-int/2addr v0, v4

    :goto_4
    if-lt v0, v3, :cond_6

    .line 2019
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2020
    iget-object v5, p0, Landroidx/leanback/widget/GridLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {p0, v4, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachAndScrapView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 2022
    :cond_6
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/Grid;->invalidateItemsAfter(I)V

    .line 2023
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    .line 2025
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->appendVisibleItems()V

    .line 2026
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ltz v0, :cond_8

    if-gt v0, v2, :cond_8

    .line 2029
    :goto_5
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v0}, Landroidx/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v0

    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ge v0, v1, :cond_8

    .line 2030
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v0}, Landroidx/leanback/widget/Grid;->appendOneColumnVisibleItems()Z

    goto :goto_5

    .line 2035
    :cond_7
    :goto_6
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v0}, Landroidx/leanback/widget/Grid;->appendOneColumnVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    .line 2036
    invoke-virtual {v0}, Landroidx/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v0

    if-ge v0, v2, :cond_8

    goto :goto_6

    .line 2039
    :cond_8
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->updateScrollLimits()V

    .line 2040
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->updateSecondaryScrollLimits()V

    return-void
.end method

.method private findImmediateChildIndex(Landroid/view/View;)I
    .locals 3

    .line 3146
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    if-eqz v0, :cond_1

    if-eq p1, v0, :cond_1

    .line 3147
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 3149
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 3150
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private focusToViewInLayout(ZZII)V
    .locals 4

    .line 2057
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 2059
    invoke-virtual {p0, v0, v1, p3, p4}, Landroidx/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;ZII)V

    :cond_0
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2061
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2062
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    :cond_1
    if-nez p1, :cond_5

    .line 2063
    iget-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_5

    if-eqz v0, :cond_2

    .line 2064
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2065
    iget-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    goto :goto_1

    .line 2067
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p1

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_4

    .line 2068
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2069
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2070
    iget-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    if-eqz p2, :cond_5

    if-eqz v0, :cond_5

    .line 2076
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2077
    invoke-virtual {p0, v0, v1, p3, p4}, Landroidx/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;ZII)V

    :cond_5
    :goto_2
    return-void
.end method

.method private forceRequestLayout()V
    .locals 1

    .line 1441
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mRequestLayoutRunnable:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method private getAdapterPositionByIndex(I)I
    .locals 0

    .line 996
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->getAdapterPositionByView(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method private getAdapterPositionByView(Landroid/view/View;)I
    .locals 1

    const/4 p0, -0x1

    if-nez p1, :cond_0

    return p0

    .line 962
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    if-eqz p1, :cond_2

    .line 963
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 967
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewAdapterPosition()I

    move-result p0

    :cond_2
    :goto_0
    return p0
.end method

.method private getAdjustedPrimaryAlignedScrollDistance(ILandroid/view/View;Landroid/view/View;)I
    .locals 0

    .line 2920
    invoke-virtual {p0, p2, p3}, Landroidx/leanback/widget/GridLayoutManager;->getSubPositionByView(Landroid/view/View;Landroid/view/View;)I

    move-result p0

    if-eqz p0, :cond_0

    .line 2922
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    .line 2923
    invoke-virtual {p2}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->getAlignMultiple()[I

    move-result-object p3

    aget p0, p3, p0

    invoke-virtual {p2}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->getAlignMultiple()[I

    move-result-object p2

    const/4 p3, 0x0

    aget p2, p2, p3

    sub-int/2addr p0, p2

    add-int/2addr p1, p0

    :cond_0
    return p1
.end method

.method private getAlignedPosition(Landroid/view/View;Landroid/view/View;[I)Z
    .locals 1

    .line 3072
    invoke-direct {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->getPrimaryAlignedScrollDistance(Landroid/view/View;)I

    move-result v0

    if-eqz p2, :cond_0

    .line 3074
    invoke-direct {p0, v0, p1, p2}, Landroidx/leanback/widget/GridLayoutManager;->getAdjustedPrimaryAlignedScrollDistance(ILandroid/view/View;Landroid/view/View;)I

    move-result v0

    .line 3076
    :cond_0
    invoke-direct {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->getSecondaryScrollDistance(Landroid/view/View;)I

    move-result p1

    .line 3081
    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mPrimaryScrollExtra:I

    add-int/2addr v0, p0

    const/4 p0, 0x1

    const/4 p2, 0x0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    .line 3087
    :cond_1
    aput p2, p3, p2

    .line 3088
    aput p2, p3, p0

    return p2

    .line 3083
    :cond_2
    :goto_0
    aput v0, p3, p2

    .line 3084
    aput p1, p3, p0

    return p0
.end method

.method private getMovement(I)I
    .locals 9

    .line 3509
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    const/16 v1, 0x82

    const/16 v2, 0x42

    const/16 v3, 0x21

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/16 v7, 0x11

    const/4 v8, 0x1

    if-nez v0, :cond_4

    const/high16 v0, 0x40000

    if-eq p1, v7, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_3

    :cond_0
    :goto_0
    move v4, v5

    goto :goto_4

    .line 3515
    :cond_1
    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/2addr p0, v0

    if-nez p0, :cond_9

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v6

    goto :goto_4

    .line 3512
    :cond_3
    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/2addr p0, v0

    if-nez p0, :cond_5

    goto :goto_4

    :cond_4
    if-ne v0, v8, :cond_8

    const/high16 v0, 0x80000

    if-eq p1, v7, :cond_7

    if-eq p1, v3, :cond_9

    if-eq p1, v2, :cond_6

    if-eq p1, v1, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    move v4, v8

    goto :goto_4

    .line 3530
    :cond_6
    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/2addr p0, v0

    if-nez p0, :cond_2

    goto :goto_0

    .line 3527
    :cond_7
    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_8
    :goto_3
    move v4, v7

    :cond_9
    :goto_4
    return v4
.end method

.method private getNoneAlignedPosition(Landroid/view/View;[I)Z
    .locals 12

    .line 2998
    invoke-direct {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->getAdapterPositionByView(Landroid/view/View;)I

    move-result v0

    .line 2999
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v1

    .line 3000
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v2

    .line 3005
    iget-object v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {v3}, Landroidx/leanback/widget/WindowAlignment;->mainAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/leanback/widget/WindowAlignment$Axis;->getPaddingMin()I

    move-result v3

    .line 3006
    iget-object v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {v4}, Landroidx/leanback/widget/WindowAlignment;->mainAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/leanback/widget/WindowAlignment$Axis;->getClientSize()I

    move-result v4

    .line 3007
    iget-object v5, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v5, v0}, Landroidx/leanback/widget/Grid;->getRowIndex(I)I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-ge v1, v3, :cond_5

    .line 3011
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    if-ne v1, v8, :cond_3

    move-object v1, p1

    .line 3014
    :goto_0
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->prependOneColumnVisibleItems()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 3015
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    .line 3016
    invoke-virtual {v1}, Landroidx/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v10

    invoke-virtual {v1, v10, v0}, Landroidx/leanback/widget/Grid;->getItemPositionsInRows(II)[Landroidx/collection/CircularIntArray;

    move-result-object v1

    aget-object v1, v1, v5

    .line 3017
    invoke-virtual {v1, v7}, Landroidx/collection/CircularIntArray;->get(I)I

    move-result v10

    invoke-virtual {p0, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v10

    .line 3018
    invoke-virtual {p0, v10}, Landroidx/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v11

    sub-int v11, v2, v11

    if-le v11, v4, :cond_1

    .line 3019
    invoke-virtual {v1}, Landroidx/collection/CircularIntArray;->size()I

    move-result v0

    if-le v0, v8, :cond_0

    .line 3020
    invoke-virtual {v1, v8}, Landroidx/collection/CircularIntArray;->get(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v9

    move-object v9, v0

    goto :goto_2

    :cond_0
    move-object v2, v9

    move-object v9, v10

    goto :goto_2

    :cond_1
    move-object v1, v10

    goto :goto_0

    :cond_2
    move-object v2, v9

    move-object v9, v1

    goto :goto_2

    :cond_3
    move-object v2, v9

    :cond_4
    move-object v9, p1

    goto :goto_2

    :cond_5
    add-int v10, v4, v3

    if-le v2, v10, :cond_9

    .line 3028
    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    if-ne v2, v8, :cond_8

    .line 3032
    :cond_6
    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    .line 3033
    invoke-virtual {v2}, Landroidx/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v8

    invoke-virtual {v2, v0, v8}, Landroidx/leanback/widget/Grid;->getItemPositionsInRows(II)[Landroidx/collection/CircularIntArray;

    move-result-object v2

    aget-object v2, v2, v5

    .line 3034
    invoke-virtual {v2}, Landroidx/collection/CircularIntArray;->size()I

    move-result v8

    sub-int/2addr v8, v6

    invoke-virtual {v2, v8}, Landroidx/collection/CircularIntArray;->get(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    .line 3035
    invoke-virtual {p0, v2}, Landroidx/leanback/widget/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v8, v1

    if-le v8, v4, :cond_7

    move-object v2, v9

    goto :goto_1

    .line 3039
    :cond_7
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->appendOneColumnVisibleItems()Z

    move-result v8

    if-nez v8, :cond_6

    :goto_1
    if-eqz v2, :cond_4

    goto :goto_2

    :cond_8
    move-object v2, p1

    goto :goto_2

    :cond_9
    move-object v2, v9

    :goto_2
    if-eqz v9, :cond_a

    .line 3050
    invoke-virtual {p0, v9}, Landroidx/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v0

    :goto_3
    sub-int/2addr v0, v3

    goto :goto_4

    :cond_a
    if-eqz v2, :cond_b

    .line 3052
    invoke-virtual {p0, v2}, Landroidx/leanback/widget/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v0

    add-int/2addr v3, v4

    goto :goto_3

    :cond_b
    move v0, v7

    :goto_4
    if-eqz v9, :cond_c

    move-object p1, v9

    goto :goto_5

    :cond_c
    if-eqz v2, :cond_d

    move-object p1, v2

    .line 3062
    :cond_d
    :goto_5
    invoke-direct {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->getSecondaryScrollDistance(Landroid/view/View;)I

    move-result p0

    if-nez v0, :cond_f

    if-eqz p0, :cond_e

    goto :goto_6

    :cond_e
    return v7

    .line 3064
    :cond_f
    :goto_6
    aput v0, p2, v7

    .line 3065
    aput p0, p2, v6

    return v6
.end method

.method private getPrimaryAlignedScrollDistance(Landroid/view/View;)I
    .locals 1

    .line 2911
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroidx/leanback/widget/WindowAlignment;->mainAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-direct {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->getViewCenter(Landroid/view/View;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/leanback/widget/WindowAlignment$Axis;->getScroll(I)I

    move-result p0

    return p0
.end method

.method private getRowSizeSecondary(I)I
    .locals 1

    .line 1260
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    if-eqz v0, :cond_0

    return v0

    .line 1263
    :cond_0
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 1266
    :cond_1
    aget p0, p0, p1

    return p0
.end method

.method private getSecondaryScrollDistance(Landroid/view/View;)I
    .locals 0

    .line 2929
    invoke-direct {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->getViewCenterSecondary(Landroid/view/View;)I

    move-result p1

    .line 2930
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {p0}, Landroidx/leanback/widget/WindowAlignment;->secondAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/WindowAlignment$Axis;->getScroll(I)I

    move-result p0

    return p0
.end method

.method private getSizeSecondary()I
    .locals 2

    .line 1286
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    add-int/lit8 v0, v0, -0x1

    .line 1287
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/GridLayoutManager;->getRowStartSecondary(I)I

    move-result v1

    invoke-direct {p0, v0}, Landroidx/leanback/widget/GridLayoutManager;->getRowSizeSecondary(I)I

    move-result p0

    add-int/2addr v1, p0

    return v1
.end method

.method private getViewCenter(Landroid/view/View;)I
    .locals 1

    .line 1171
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->getViewCenterX(Landroid/view/View;)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->getViewCenterY(Landroid/view/View;)I

    move-result p0

    :goto_0
    return p0
.end method

.method private getViewCenterSecondary(Landroid/view/View;)I
    .locals 1

    .line 1175
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->getViewCenterY(Landroid/view/View;)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->getViewCenterX(Landroid/view/View;)I

    move-result p0

    :goto_0
    return p0
.end method

.method private getViewCenterX(Landroid/view/View;)I
    .locals 0

    .line 1179
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    .line 1180
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalLeft(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->getAlignX()I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method private getViewCenterY(Landroid/view/View;)I
    .locals 0

    .line 1184
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    .line 1185
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalTop(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->getAlignY()I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method private gridOnRequestFocusInDescendantsAligned(ILandroid/graphics/Rect;)Z
    .locals 1

    .line 3459
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3461
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private gridOnRequestFocusInDescendantsUnaligned(ILandroid/graphics/Rect;)Z
    .locals 9

    .line 3476
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    move v3, v0

    move v0, v2

    move v1, v4

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    move v1, v3

    .line 3486
    :goto_0
    iget-object v5, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {v5}, Landroidx/leanback/widget/WindowAlignment;->mainAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/leanback/widget/WindowAlignment$Axis;->getPaddingMin()I

    move-result v5

    .line 3487
    iget-object v6, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {v6}, Landroidx/leanback/widget/WindowAlignment;->mainAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/leanback/widget/WindowAlignment$Axis;->getClientSize()I

    move-result v6

    add-int/2addr v6, v5

    :goto_1
    if-eq v0, v3, :cond_2

    .line 3489
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3490
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_1

    .line 3491
    invoke-virtual {p0, v7}, Landroidx/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v8

    if-lt v8, v5, :cond_1

    invoke-virtual {p0, v7}, Landroidx/leanback/widget/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v8

    if-gt v8, v6, :cond_1

    .line 3492
    invoke-virtual {v7, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    return v4

    :cond_1
    add-int/2addr v0, v1

    goto :goto_1

    :cond_2
    return v2
.end method

.method private initScrollController()V
    .locals 3

    .line 2596
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroidx/leanback/widget/WindowAlignment;->reset()V

    .line 2597
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    iget-object v0, v0, Landroidx/leanback/widget/WindowAlignment;->horizontal:Landroidx/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/WindowAlignment$Axis;->setSize(I)V

    .line 2598
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    iget-object v0, v0, Landroidx/leanback/widget/WindowAlignment;->vertical:Landroidx/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/WindowAlignment$Axis;->setSize(I)V

    .line 2599
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    iget-object v0, v0, Landroidx/leanback/widget/WindowAlignment;->horizontal:Landroidx/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/leanback/widget/WindowAlignment$Axis;->setPadding(II)V

    .line 2600
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    iget-object v0, v0, Landroidx/leanback/widget/WindowAlignment;->vertical:Landroidx/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/leanback/widget/WindowAlignment$Axis;->setPadding(II)V

    .line 2601
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroidx/leanback/widget/WindowAlignment;->mainAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/WindowAlignment$Axis;->getSize()I

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mSizePrimary:I

    const/4 v0, 0x0

    .line 2602
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    return-void
.end method

.method private layoutInit()Z
    .locals 5

    .line 1221
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 1223
    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 1224
    iput v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    goto :goto_0

    .line 1225
    :cond_0
    iget v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-lt v4, v0, :cond_1

    sub-int/2addr v0, v2

    .line 1226
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 1227
    iput v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    goto :goto_0

    :cond_1
    if-ne v4, v1, :cond_2

    if-lez v0, :cond_2

    .line 1230
    iput v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 1231
    iput v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    .line 1233
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$State;->didStructureChange()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v0

    if-ltz v0, :cond_3

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    .line 1234
    invoke-virtual {v0}, Landroidx/leanback/widget/Grid;->getNumRows()I

    move-result v0

    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    if-ne v0, v1, :cond_3

    .line 1235
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->updateScrollController()V

    .line 1236
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->updateSecondaryScrollLimits()V

    .line 1237
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mSpacingPrimary:I

    invoke-virtual {v0, p0}, Landroidx/leanback/widget/Grid;->setSpacing(I)V

    return v2

    .line 1240
    :cond_3
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 1242
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    const/high16 v1, 0x40000

    if-eqz v0, :cond_5

    iget v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    invoke-virtual {v0}, Landroidx/leanback/widget/Grid;->getNumRows()I

    move-result v0

    if-ne v4, v0, :cond_5

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v3

    :goto_1
    iget-object v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    .line 1243
    invoke-virtual {v4}, Landroidx/leanback/widget/Grid;->isReversedFlow()Z

    move-result v4

    if-eq v0, v4, :cond_7

    .line 1244
    :cond_5
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    invoke-static {v0}, Landroidx/leanback/widget/Grid;->createGrid(I)Landroidx/leanback/widget/Grid;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    .line 1245
    iget-object v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mGridProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-virtual {v0, v4}, Landroidx/leanback/widget/Grid;->setProvider(Landroidx/leanback/widget/Grid$Provider;)V

    .line 1246
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    iget v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    move v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Landroidx/leanback/widget/Grid;->setReversedFlow(Z)V

    .line 1248
    :cond_7
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->initScrollController()V

    .line 1249
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->updateSecondaryScrollLimits()V

    .line 1250
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mSpacingPrimary:I

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/Grid;->setSpacing(I)V

    .line 1251
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->detachAndScrapAttachedViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 1252
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v0}, Landroidx/leanback/widget/Grid;->resetVisibleIndex()V

    .line 1253
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroidx/leanback/widget/WindowAlignment;->mainAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/WindowAlignment$Axis;->invalidateScrollMin()V

    .line 1254
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {p0}, Landroidx/leanback/widget/WindowAlignment;->mainAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/leanback/widget/WindowAlignment$Axis;->invalidateScrollMax()V

    return v3
.end method

.method private leaveContext()V
    .locals 1

    .line 1205
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mSaveContextLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mSaveContextLevel:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1207
    iput-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 1208
    iput-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 v0, 0x0

    .line 1209
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    .line 1210
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mExtraLayoutSpaceInPreLayout:I

    :cond_0
    return-void
.end method

.method private measureScrapChild(III[I)V
    .locals 5

    .line 1302
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1304
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    .line 1305
    sget-object v1, Landroidx/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1306
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    sget-object v2, Landroidx/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    iget v3, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v3

    .line 1307
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v2

    .line 1310
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v2, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1309
    invoke-static {p2, v2, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    .line 1312
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, v3

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1311
    invoke-static {p3, v1, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p3

    .line 1313
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    const/4 p2, 0x0

    .line 1315
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I

    move-result p3

    aput p3, p4, p2

    const/4 p2, 0x1

    .line 1316
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I

    move-result p3

    aput p3, p4, p2

    .line 1317
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private offsetChildrenPrimary(I)V
    .locals 4

    .line 2371
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    .line 2372
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2374
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v2, v0, :cond_1

    .line 2378
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private offsetChildrenSecondary(I)V
    .locals 3

    .line 2358
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    .line 2359
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2361
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v2, v0, :cond_1

    .line 2365
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private prependOneColumnVisibleItems()Z
    .locals 0

    .line 1943
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {p0}, Landroidx/leanback/widget/Grid;->prependOneColumnVisibleItems()Z

    move-result p0

    return p0
.end method

.method private prependVisibleItems()V
    .locals 3

    .line 1953
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 1954
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mSizePrimary:I

    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    add-int/2addr v1, v2

    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mExtraLayoutSpaceInPreLayout:I

    add-int/2addr v1, p0

    goto :goto_0

    .line 1955
    :cond_0
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    neg-int v1, v1

    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mExtraLayoutSpaceInPreLayout:I

    sub-int/2addr v1, p0

    .line 1953
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/Grid;->prependVisibleItems(I)V

    return-void
.end method

.method private processRowSizeSecondary(Z)Z
    .locals 16

    move-object/from16 v0, p0

    .line 1322
    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    const/4 v2, 0x0

    if-nez v1, :cond_15

    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    if-nez v1, :cond_0

    goto/16 :goto_c

    .line 1327
    :cond_0
    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    const/4 v3, 0x0

    if-nez v1, :cond_1

    move-object v1, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroidx/leanback/widget/Grid;->getItemPositionsInRows()[Landroidx/collection/CircularIntArray;

    move-result-object v1

    :goto_0
    const/4 v4, -0x1

    move v5, v2

    move v6, v5

    move v7, v4

    .line 1331
    :goto_1
    iget v8, v0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    if-ge v5, v8, :cond_14

    if-nez v1, :cond_2

    move-object v8, v3

    goto :goto_2

    .line 1332
    :cond_2
    aget-object v8, v1, v5

    :goto_2
    if-nez v8, :cond_3

    move v9, v2

    goto :goto_3

    .line 1333
    :cond_3
    invoke-virtual {v8}, Landroidx/collection/CircularIntArray;->size()I

    move-result v9

    :goto_3
    move v10, v2

    move v11, v4

    :goto_4
    if-ge v10, v9, :cond_9

    .line 1337
    invoke-virtual {v8, v10}, Landroidx/collection/CircularIntArray;->get(I)I

    move-result v12

    add-int/lit8 v13, v10, 0x1

    .line 1338
    invoke-virtual {v8, v13}, Landroidx/collection/CircularIntArray;->get(I)I

    move-result v13

    :goto_5
    if-gt v12, v13, :cond_8

    .line 1340
    iget v14, v0, Landroidx/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    sub-int v14, v12, v14

    invoke-virtual {v0, v14}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v14

    if-nez v14, :cond_4

    goto :goto_7

    :cond_4
    if-eqz p1, :cond_5

    .line 1345
    invoke-virtual {v0, v14}, Landroidx/leanback/widget/GridLayoutManager;->measureChild(Landroid/view/View;)V

    .line 1347
    :cond_5
    iget v15, v0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v15, :cond_6

    .line 1348
    invoke-virtual {v0, v14}, Landroidx/leanback/widget/GridLayoutManager;->getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I

    move-result v14

    goto :goto_6

    .line 1349
    :cond_6
    invoke-virtual {v0, v14}, Landroidx/leanback/widget/GridLayoutManager;->getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I

    move-result v14

    :goto_6
    if-le v14, v11, :cond_7

    move v11, v14

    :cond_7
    :goto_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v10, v10, 0x2

    goto :goto_4

    .line 1356
    :cond_9
    iget-object v8, v0, Landroidx/leanback/widget/GridLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v8

    .line 1357
    iget-object v9, v0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->hasFixedSize()Z

    move-result v9

    const/4 v10, 0x1

    if-nez v9, :cond_11

    if-eqz p1, :cond_11

    if-gez v11, :cond_11

    if-lez v8, :cond_11

    if-gez v7, :cond_10

    .line 1360
    iget v9, v0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-gez v9, :cond_a

    move v9, v2

    goto :goto_8

    :cond_a
    if-lt v9, v8, :cond_b

    add-int/lit8 v9, v8, -0x1

    .line 1366
    :cond_b
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v12

    if-lez v12, :cond_e

    .line 1367
    iget-object v12, v0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    .line 1368
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1367
    invoke-virtual {v12, v13}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v12

    .line 1368
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v12

    .line 1369
    iget-object v13, v0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    .line 1370
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v14

    sub-int/2addr v14, v10

    invoke-virtual {v0, v14}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1369
    invoke-virtual {v13, v14}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v13

    .line 1370
    invoke-virtual {v13}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v13

    if-lt v9, v12, :cond_e

    if-gt v9, v13, :cond_e

    sub-int v14, v9, v12

    sub-int v9, v13, v9

    if-gt v14, v9, :cond_c

    add-int/lit8 v9, v12, -0x1

    goto :goto_9

    :cond_c
    add-int/lit8 v9, v13, 0x1

    :goto_9
    if-gez v9, :cond_d

    add-int/lit8 v14, v8, -0x1

    if-ge v13, v14, :cond_d

    add-int/lit8 v9, v13, 0x1

    goto :goto_a

    :cond_d
    if-lt v9, v8, :cond_e

    if-lez v12, :cond_e

    add-int/lit8 v9, v12, -0x1

    :cond_e
    :goto_a
    if-ltz v9, :cond_10

    if-ge v9, v8, :cond_10

    .line 1387
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 1388
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    iget-object v12, v0, Landroidx/leanback/widget/GridLayoutManager;->mMeasuredDimension:[I

    .line 1386
    invoke-direct {v0, v9, v7, v8, v12}, Landroidx/leanback/widget/GridLayoutManager;->measureScrapChild(III[I)V

    .line 1390
    iget v7, v0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v7, :cond_f

    iget-object v7, v0, Landroidx/leanback/widget/GridLayoutManager;->mMeasuredDimension:[I

    aget v7, v7, v10

    goto :goto_b

    .line 1391
    :cond_f
    iget-object v7, v0, Landroidx/leanback/widget/GridLayoutManager;->mMeasuredDimension:[I

    aget v7, v7, v2

    :cond_10
    :goto_b
    if-ltz v7, :cond_11

    move v11, v7

    :cond_11
    if-gez v11, :cond_12

    move v11, v2

    .line 1405
    :cond_12
    iget-object v8, v0, Landroidx/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    aget v9, v8, v5

    if-eq v9, v11, :cond_13

    .line 1410
    aput v11, v8, v5

    move v6, v10

    :cond_13
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_14
    return v6

    :cond_15
    :goto_c
    return v2
.end method

.method private removeInvisibleViewsAtEnd()V
    .locals 4

    .line 1838
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const v1, 0x10040

    and-int/2addr v1, v0

    const/high16 v2, 0x10000

    if-ne v1, v2, :cond_1

    .line 1839
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/high16 v3, 0x40000

    and-int/2addr v0, v3

    if-eqz v0, :cond_0

    .line 1840
    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    neg-int p0, p0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mSizePrimary:I

    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    add-int/2addr p0, v0

    .line 1839
    :goto_0
    invoke-virtual {v1, v2, p0}, Landroidx/leanback/widget/Grid;->removeInvisibleItemsAtEnd(II)V

    :cond_1
    return-void
.end method

.method private removeInvisibleViewsAtFront()V
    .locals 4

    .line 1845
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const v1, 0x10040

    and-int/2addr v1, v0

    const/high16 v2, 0x10000

    if-ne v1, v2, :cond_1

    .line 1846
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/high16 v3, 0x40000

    and-int/2addr v0, v3

    if-eqz v0, :cond_0

    .line 1847
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mSizePrimary:I

    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    add-int/2addr v0, p0

    goto :goto_0

    :cond_0
    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    neg-int v0, p0

    .line 1846
    :goto_0
    invoke-virtual {v1, v2, v0}, Landroidx/leanback/widget/Grid;->removeInvisibleItemsAtFront(II)V

    :cond_1
    return-void
.end method

.method private saveContext(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 1192
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mSaveContextLevel:I

    if-nez v0, :cond_0

    .line 1193
    iput-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 1194
    iput-object p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    const/4 p1, 0x0

    .line 1195
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    .line 1196
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mExtraLayoutSpaceInPreLayout:I

    .line 1198
    :cond_0
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mSaveContextLevel:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mSaveContextLevel:I

    return-void
.end method

.method private scrollDirectionPrimary(I)I
    .locals 6

    .line 2429
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x1

    if-nez v1, :cond_1

    and-int/lit8 v0, v0, 0x3

    if-eq v0, v2, :cond_1

    if-lez p1, :cond_0

    .line 2431
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroidx/leanback/widget/WindowAlignment;->mainAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/WindowAlignment$Axis;->isMaxUnknown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2432
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroidx/leanback/widget/WindowAlignment;->mainAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/WindowAlignment$Axis;->getMaxScroll()I

    move-result v0

    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    .line 2438
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroidx/leanback/widget/WindowAlignment;->mainAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/WindowAlignment$Axis;->isMinUnknown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2439
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroidx/leanback/widget/WindowAlignment;->mainAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/WindowAlignment$Axis;->getMinScroll()I

    move-result v0

    if-ge p1, v0, :cond_1

    :goto_0
    move p1, v0

    :cond_1
    const/4 v0, 0x0

    if-nez p1, :cond_2

    return v0

    :cond_2
    neg-int v1, p1

    .line 2450
    invoke-direct {p0, v1}, Landroidx/leanback/widget/GridLayoutManager;->offsetChildrenPrimary(I)V

    .line 2451
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v1, v1, 0x3

    if-ne v1, v2, :cond_3

    .line 2452
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->updateScrollLimits()V

    return p1

    .line 2457
    :cond_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    .line 2460
    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v4, 0x40000

    and-int/2addr v3, v4

    if-eqz v3, :cond_4

    if-lez p1, :cond_5

    goto :goto_1

    :cond_4
    if-gez p1, :cond_5

    .line 2461
    :goto_1
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->prependVisibleItems()V

    goto :goto_2

    .line 2463
    :cond_5
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->appendVisibleItems()V

    .line 2465
    :goto_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v3

    if-le v3, v1, :cond_6

    move v1, v2

    goto :goto_3

    :cond_6
    move v1, v0

    .line 2466
    :goto_3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v3

    .line 2469
    iget v5, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_7

    if-lez p1, :cond_8

    goto :goto_4

    :cond_7
    if-gez p1, :cond_8

    .line 2470
    :goto_4
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->removeInvisibleViewsAtEnd()V

    goto :goto_5

    .line 2472
    :cond_8
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->removeInvisibleViewsAtFront()V

    .line 2475
    :goto_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v4

    if-ge v4, v3, :cond_9

    goto :goto_6

    :cond_9
    move v2, v0

    :goto_6
    or-int v0, v1, v2

    if-eqz v0, :cond_a

    .line 2477
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->updateRowSecondarySizeRefresh()V

    .line 2480
    :cond_a
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 2481
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->updateScrollLimits()V

    return p1
.end method

.method private scrollDirectionSecondary(I)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    neg-int v0, p1

    .line 2491
    invoke-direct {p0, v0}, Landroidx/leanback/widget/GridLayoutManager;->offsetChildrenSecondary(I)V

    .line 2492
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    .line 2493
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->updateSecondaryScrollLimits()V

    .line 2494
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return p1
.end method

.method private scrollGrid(IIZ)V
    .locals 3

    .line 3094
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3095
    invoke-direct {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->scrollDirectionPrimary(I)I

    .line 3096
    invoke-direct {p0, p2}, Landroidx/leanback/widget/GridLayoutManager;->scrollDirectionSecondary(I)I

    goto :goto_1

    .line 3100
    :cond_0
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, p2

    move p2, p1

    move p1, v2

    :goto_0
    if-eqz p3, :cond_2

    .line 3108
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/BaseGridView;->smoothScrollBy(II)V

    goto :goto_1

    .line 3110
    :cond_2
    iget-object p3, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {p3, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 3111
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->dispatchChildSelectedAndPositioned()V

    :goto_1
    return-void
.end method

.method private scrollToView(Landroid/view/View;Landroid/view/View;Z)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 2946
    invoke-direct/range {v0 .. v5}, Landroidx/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Landroid/view/View;ZII)V

    return-void
.end method

.method private scrollToView(Landroid/view/View;Landroid/view/View;ZII)V
    .locals 5

    .line 2953
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    return-void

    .line 2956
    :cond_0
    invoke-direct {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->getAdapterPositionByView(Landroid/view/View;)I

    move-result v0

    .line 2957
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/GridLayoutManager;->getSubPositionByView(Landroid/view/View;Landroid/view/View;)I

    move-result v1

    .line 2958
    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v2, :cond_1

    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    if-eq v1, v2, :cond_3

    .line 2959
    :cond_1
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 2960
    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    .line 2961
    iput v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 2962
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v0, v0, 0x3

    if-eq v0, v3, :cond_2

    .line 2963
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->dispatchChildSelected()V

    .line 2965
    :cond_2
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v0}, Landroidx/leanback/widget/BaseGridView;->isChildrenDrawingOrderEnabledInternal()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2966
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_3
    if-nez p1, :cond_4

    return-void

    .line 2972
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2975
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 2977
    :cond_5
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-nez v0, :cond_6

    if-eqz p3, :cond_6

    return-void

    .line 2980
    :cond_6
    sget-object v0, Landroidx/leanback/widget/GridLayoutManager;->sTwoInts:[I

    invoke-virtual {p0, p1, p2, v0}, Landroidx/leanback/widget/GridLayoutManager;->getScrollPosition(Landroid/view/View;Landroid/view/View;[I)Z

    move-result p1

    if-nez p1, :cond_7

    if-nez p4, :cond_7

    if-eqz p5, :cond_8

    .line 2982
    :cond_7
    sget-object p1, Landroidx/leanback/widget/GridLayoutManager;->sTwoInts:[I

    aget p2, p1, v4

    add-int/2addr p2, p4

    aget p1, p1, v3

    add-int/2addr p1, p5

    invoke-direct {p0, p2, p1, p3}, Landroidx/leanback/widget/GridLayoutManager;->scrollGrid(IIZ)V

    :cond_8
    return-void
.end method

.method private updateChildAlignments()V
    .locals 3

    .line 1818
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1819
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Landroidx/leanback/widget/GridLayoutManager;->updateChildAlignments(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateChildAlignments(Landroid/view/View;)V
    .locals 2

    .line 1801
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    .line 1802
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->getItemAlignmentFacet()Landroidx/leanback/widget/ItemAlignmentFacet;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1804
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mItemAlignment:Landroidx/leanback/widget/ItemAlignment;

    iget-object v1, v1, Landroidx/leanback/widget/ItemAlignment;->horizontal:Landroidx/leanback/widget/ItemAlignment$Axis;

    invoke-virtual {v1, p1}, Landroidx/leanback/widget/ItemAlignment$Axis;->getAlignmentPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->setAlignX(I)V

    .line 1805
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mItemAlignment:Landroidx/leanback/widget/ItemAlignment;

    iget-object p0, p0, Landroidx/leanback/widget/ItemAlignment;->vertical:Landroidx/leanback/widget/ItemAlignment$Axis;

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/ItemAlignment$Axis;->getAlignmentPosition(Landroid/view/View;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->setAlignY(I)V

    goto :goto_0

    .line 1808
    :cond_0
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    invoke-virtual {v0, v1, p1}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->calculateItemAlignments(ILandroid/view/View;)V

    .line 1809
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v1, :cond_1

    .line 1810
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mItemAlignment:Landroidx/leanback/widget/ItemAlignment;

    iget-object p0, p0, Landroidx/leanback/widget/ItemAlignment;->vertical:Landroidx/leanback/widget/ItemAlignment$Axis;

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/ItemAlignment$Axis;->getAlignmentPosition(Landroid/view/View;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->setAlignY(I)V

    goto :goto_0

    .line 1812
    :cond_1
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mItemAlignment:Landroidx/leanback/widget/ItemAlignment;

    iget-object p0, p0, Landroidx/leanback/widget/ItemAlignment;->horizontal:Landroidx/leanback/widget/ItemAlignment$Axis;

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/ItemAlignment$Axis;->getAlignmentPosition(Landroid/view/View;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->setAlignX(I)V

    :goto_0
    return-void
.end method

.method private updateRowSecondarySizeRefresh()V
    .locals 4

    .line 1423
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v0, v0, -0x401

    const/4 v1, 0x0

    .line 1424
    invoke-direct {p0, v1}, Landroidx/leanback/widget/GridLayoutManager;->processRowSizeSecondary(Z)Z

    move-result v2

    const/16 v3, 0x400

    if-eqz v2, :cond_0

    move v1, v3

    :cond_0
    or-int/2addr v0, v1

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_1

    .line 1427
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->forceRequestLayout()V

    :cond_1
    return-void
.end method

.method private updateScrollController()V
    .locals 3

    .line 2611
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    iget-object v0, v0, Landroidx/leanback/widget/WindowAlignment;->horizontal:Landroidx/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/WindowAlignment$Axis;->setSize(I)V

    .line 2612
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    iget-object v0, v0, Landroidx/leanback/widget/WindowAlignment;->vertical:Landroidx/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/leanback/widget/WindowAlignment$Axis;->setSize(I)V

    .line 2613
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    iget-object v0, v0, Landroidx/leanback/widget/WindowAlignment;->horizontal:Landroidx/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/leanback/widget/WindowAlignment$Axis;->setPadding(II)V

    .line 2614
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    iget-object v0, v0, Landroidx/leanback/widget/WindowAlignment;->vertical:Landroidx/leanback/widget/WindowAlignment$Axis;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/leanback/widget/WindowAlignment$Axis;->setPadding(II)V

    .line 2615
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroidx/leanback/widget/WindowAlignment;->mainAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/leanback/widget/WindowAlignment$Axis;->getSize()I

    move-result v0

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mSizePrimary:I

    return-void
.end method

.method private updateSecondaryScrollLimits()V
    .locals 3

    .line 2589
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroidx/leanback/widget/WindowAlignment;->secondAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    .line 2590
    invoke-virtual {v0}, Landroidx/leanback/widget/WindowAlignment$Axis;->getPaddingMin()I

    move-result v1

    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    sub-int/2addr v1, v2

    .line 2591
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->getSizeSecondary()I

    move-result p0

    add-int/2addr p0, v1

    .line 2592
    invoke-virtual {v0, v1, p0, v1, p0}, Landroidx/leanback/widget/WindowAlignment$Axis;->updateMinMax(IIII)V

    return-void
.end method


# virtual methods
.method public addOnChildViewHolderSelectedListener(Landroidx/leanback/widget/OnChildViewHolderSelectedListener;)V
    .locals 1

    .line 901
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 902
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    .line 904
    :cond_0
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public canScrollHorizontally()Z
    .locals 2

    .line 1067
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    if-le p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method canScrollTo(Landroid/view/View;)Z
    .locals 1

    .line 3440
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->hasFocus()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canScrollVertically()Z
    .locals 2

    .line 1074
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    if-le p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 1

    const/4 v0, 0x0

    .line 2502
    :try_start_0
    invoke-direct {p0, v0, p3}, Landroidx/leanback/widget/GridLayoutManager;->saveContext(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2503
    iget p3, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    .line 2504
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p2

    if-eqz p2, :cond_3

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    if-gez p1, :cond_2

    .line 2510
    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    neg-int p2, p2

    goto :goto_1

    .line 2511
    :cond_2
    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mSizePrimary:I

    iget p3, p0, Landroidx/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    add-int/2addr p2, p3

    .line 2512
    :goto_1
    iget-object p3, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {p3, p2, p1, p4}, Landroidx/leanback/widget/Grid;->collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2514
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->leaveContext()V

    return-void

    :cond_3
    :goto_2
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->leaveContext()V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->leaveContext()V

    .line 2515
    throw p1
.end method

.method public collectInitialPrefetchPositions(ILandroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 4

    .line 2521
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    iget v0, v0, Landroidx/leanback/widget/BaseGridView;->mInitialPrefetchItemCount:I

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 2524
    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    add-int/lit8 v1, v0, -0x1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p0, v1

    sub-int v1, p1, v0

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v1, 0x0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    move v2, p0

    :goto_0
    if-ge v2, p1, :cond_0

    add-int v3, p0, v0

    if-ge v2, v3, :cond_0

    .line 2527
    invoke-interface {p2, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method dispatchChildSelected()V
    .locals 11

    .line 1000
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroidx/leanback/widget/OnChildSelectedListener;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->hasOnChildViewHolderSelectedListener()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1005
    :cond_0
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    move-object v5, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    :goto_0
    const/4 v0, 0x0

    if-eqz v5, :cond_4

    .line 1007
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 1008
    iget-object v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroidx/leanback/widget/OnChildSelectedListener;

    if-eqz v3, :cond_3

    .line 1009
    iget-object v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    iget v6, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-nez v1, :cond_2

    const-wide/16 v7, -0x1

    goto :goto_1

    .line 1010
    :cond_2
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v7

    .line 1009
    :goto_1
    invoke-interface/range {v3 .. v8}, Landroidx/leanback/widget/OnChildSelectedListener;->onChildSelected(Landroid/view/ViewGroup;Landroid/view/View;IJ)V

    .line 1012
    :cond_3
    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    invoke-virtual {p0, v2, v1, v3, v4}, Landroidx/leanback/widget/GridLayoutManager;->fireOnChildViewHolderSelected(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V

    goto :goto_2

    .line 1014
    :cond_4
    iget-object v5, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroidx/leanback/widget/OnChildSelectedListener;

    if-eqz v5, :cond_5

    .line 1015
    iget-object v6, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    const/4 v7, 0x0

    const/4 v8, -0x1

    const-wide/16 v9, -0x1

    invoke-interface/range {v5 .. v10}, Landroidx/leanback/widget/OnChildSelectedListener;->onChildSelected(Landroid/view/ViewGroup;Landroid/view/View;IJ)V

    .line 1017
    :cond_5
    iget-object v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {p0, v3, v1, v2, v0}, Landroidx/leanback/widget/GridLayoutManager;->fireOnChildViewHolderSelected(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V

    .line 1030
    :goto_2
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v1, v1, 0x3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isLayoutRequested()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1031
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    :goto_3
    if-ge v0, v1, :cond_7

    .line 1033
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1034
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->forceRequestLayout()V

    goto :goto_4

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    return-void
.end method

.method dispatchChildSelectedAndPositioned()V
    .locals 10

    .line 1043
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->hasOnChildViewHolderSelectedListener()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1048
    :cond_0
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 1050
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 1051
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    invoke-virtual {p0, v1, v0, v2, v3}, Landroidx/leanback/widget/GridLayoutManager;->fireOnChildViewHolderSelectedAndPositioned(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V

    goto :goto_1

    .line 1054
    :cond_2
    iget-object v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroidx/leanback/widget/OnChildSelectedListener;

    if-eqz v4, :cond_3

    .line 1055
    iget-object v5, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    const/4 v6, 0x0

    const/4 v7, -0x1

    const-wide/16 v8, -0x1

    invoke-interface/range {v4 .. v9}, Landroidx/leanback/widget/OnChildSelectedListener;->onChildSelected(Landroid/view/ViewGroup;Landroid/view/View;IJ)V

    .line 1057
    :cond_3
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/leanback/widget/GridLayoutManager;->fireOnChildViewHolderSelectedAndPositioned(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V

    :goto_1
    return-void
.end method

.method fillScrapViewsInPostLayout()V
    .locals 8

    .line 2112
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getScrapList()Ljava/util/List;

    move-result-object v0

    .line 2113
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2118
    :cond_0
    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mDisappearingPositions:[I

    if-eqz v2, :cond_1

    array-length v2, v2

    if-le v1, v2, :cond_4

    .line 2119
    :cond_1
    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mDisappearingPositions:[I

    if-nez v2, :cond_2

    const/16 v2, 0x10

    goto :goto_0

    :cond_2
    array-length v2, v2

    :goto_0
    if-ge v2, v1, :cond_3

    shl-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2123
    :cond_3
    new-array v2, v2, [I

    iput-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mDisappearingPositions:[I

    :cond_4
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_1
    if-ge v3, v1, :cond_6

    .line 2127
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result v5

    if-ltz v5, :cond_5

    .line 2129
    iget-object v6, p0, Landroidx/leanback/widget/GridLayoutManager;->mDisappearingPositions:[I

    add-int/lit8 v7, v4, 0x1

    aput v5, v6, v4

    move v4, v7

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    if-lez v4, :cond_7

    .line 2134
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mDisappearingPositions:[I

    invoke-static {v0, v2, v4}, Ljava/util/Arrays;->sort([III)V

    .line 2135
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mDisappearingPositions:[I

    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mPositionToRowInPostLayout:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1, v4, v2}, Landroidx/leanback/widget/Grid;->fillDisappearingItems([IILandroid/util/SparseIntArray;)V

    .line 2138
    :cond_7
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mPositionToRowInPostLayout:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method fireOnChildViewHolderSelected(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V
    .locals 2

    .line 921
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 924
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 925
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/OnChildViewHolderSelectedListener;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroidx/leanback/widget/OnChildViewHolderSelectedListener;->onChildViewHolderSelected(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method fireOnChildViewHolderSelectedAndPositioned(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V
    .locals 2

    .line 932
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 935
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 936
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/OnChildViewHolderSelectedListener;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroidx/leanback/widget/OnChildViewHolderSelectedListener;->onChildViewHolderSelectedAndPositioned(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public generateDefaultLayoutParams()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    .line 1079
    new-instance p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 0

    .line 1085
    new-instance p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-direct {p0, p1, p2}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 0

    .line 1090
    instance-of p0, p1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    if-eqz p0, :cond_0

    .line 1091
    new-instance p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    check-cast p1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-direct {p0, p1}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;-><init>(Landroidx/leanback/widget/GridLayoutManager$LayoutParams;)V

    return-object p0

    .line 1092
    :cond_0
    instance-of p0, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz p0, :cond_1

    .line 1093
    new-instance p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {p0, p1}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    return-object p0

    .line 1094
    :cond_1
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_2

    .line 1095
    new-instance p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object p0

    .line 1097
    :cond_2
    new-instance p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-direct {p0, p1}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method getChildDrawingOrder(Landroidx/recyclerview/widget/RecyclerView;II)I
    .locals 1

    .line 3545
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    return p3

    .line 3549
    :cond_0
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    if-ge p3, p0, :cond_1

    return p3

    :cond_1
    add-int/lit8 p1, p2, -0x1

    if-ge p3, p1, :cond_2

    add-int/2addr p0, p2

    add-int/lit8 p0, p0, -0x1

    sub-int/2addr p0, p3

    :cond_2
    return p0
.end method

.method public getColumnCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2

    .line 3695
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    if-eqz v0, :cond_0

    .line 3696
    invoke-virtual {v0}, Landroidx/leanback/widget/Grid;->getNumRows()I

    move-result p0

    return p0

    .line 3698
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getColumnCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public getDecoratedBottom(Landroid/view/View;)I
    .locals 0

    .line 1143
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result p0

    .line 1144
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    iget p1, p1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mBottomInset:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    .line 1149
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1150
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    .line 1151
    iget p1, p2, Landroid/graphics/Rect;->left:I

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    add-int/2addr p1, v0

    iput p1, p2, Landroid/graphics/Rect;->left:I

    .line 1152
    iget p1, p2, Landroid/graphics/Rect;->top:I

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mTopInset:I

    add-int/2addr p1, v0

    iput p1, p2, Landroid/graphics/Rect;->top:I

    .line 1153
    iget p1, p2, Landroid/graphics/Rect;->right:I

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mRightInset:I

    sub-int/2addr p1, v0

    iput p1, p2, Landroid/graphics/Rect;->right:I

    .line 1154
    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mBottomInset:I

    sub-int/2addr p1, p0

    iput p1, p2, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public getDecoratedLeft(Landroid/view/View;)I
    .locals 0

    .line 1127
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    iget p1, p1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mLeftInset:I

    add-int/2addr p0, p1

    return p0
.end method

.method getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I
    .locals 1

    .line 1296
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    .line 1297
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result p0

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p0, p1

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p0, p1

    return p0
.end method

.method getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I
    .locals 1

    .line 1291
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    .line 1292
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result p0

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p0, p1

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p0, p1

    return p0
.end method

.method public getDecoratedRight(Landroid/view/View;)I
    .locals 0

    .line 1137
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result p0

    .line 1138
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    iget p1, p1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mRightInset:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public getDecoratedTop(Landroid/view/View;)I
    .locals 0

    .line 1132
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    iget p1, p1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->mTopInset:I

    add-int/2addr p0, p1

    return p0
.end method

.method getExtraLayoutSpace()I
    .locals 0

    .line 1834
    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    return p0
.end method

.method getFacet(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "Ljava/lang/Class<",
            "+TE;>;)TE;"
        }
    .end annotation

    .line 1600
    instance-of v0, p1, Landroidx/leanback/widget/FacetProvider;

    if-eqz v0, :cond_0

    .line 1601
    move-object v0, p1

    check-cast v0, Landroidx/leanback/widget/FacetProvider;

    invoke-interface {v0, p2}, Landroidx/leanback/widget/FacetProvider;->getFacet(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 1603
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFacetProviderAdapter:Landroidx/leanback/widget/FacetProviderAdapter;

    if-eqz p0, :cond_1

    .line 1604
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    invoke-interface {p0, p1}, Landroidx/leanback/widget/FacetProviderAdapter;->getFacetProvider(I)Landroidx/leanback/widget/FacetProvider;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1606
    invoke-interface {p0, p2}, Landroidx/leanback/widget/FacetProvider;->getFacet(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getFocusScrollStrategy()I
    .locals 0

    .line 751
    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    return p0
.end method

.method public getHorizontalSpacing()I
    .locals 0

    .line 872
    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mHorizontalSpacing:I

    return p0
.end method

.method public getItemAlignmentOffset()I
    .locals 0

    .line 788
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mItemAlignment:Landroidx/leanback/widget/ItemAlignment;

    invoke-virtual {p0}, Landroidx/leanback/widget/ItemAlignment;->mainAxis()Landroidx/leanback/widget/ItemAlignment$Axis;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->getItemAlignmentOffset()I

    move-result p0

    return p0
.end method

.method public getItemAlignmentOffsetPercent()F
    .locals 0

    .line 806
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mItemAlignment:Landroidx/leanback/widget/ItemAlignment;

    invoke-virtual {p0}, Landroidx/leanback/widget/ItemAlignment;->mainAxis()Landroidx/leanback/widget/ItemAlignment$Axis;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->getItemAlignmentOffsetPercent()F

    move-result p0

    return p0
.end method

.method public getItemAlignmentViewId()I
    .locals 0

    .line 815
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mItemAlignment:Landroidx/leanback/widget/ItemAlignment;

    invoke-virtual {p0}, Landroidx/leanback/widget/ItemAlignment;->mainAxis()Landroidx/leanback/widget/ItemAlignment$Axis;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->getItemAlignmentViewId()I

    move-result p0

    return p0
.end method

.method final getOpticalLeft(Landroid/view/View;)I
    .locals 0

    .line 1110
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalLeft(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method final getOpticalRight(Landroid/view/View;)I
    .locals 0

    .line 1114
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalRight(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public getRowCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    .line 3686
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    if-eqz v0, :cond_0

    .line 3687
    invoke-virtual {v0}, Landroidx/leanback/widget/Grid;->getNumRows()I

    move-result p0

    return p0

    .line 3689
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getRowCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method getRowStartSecondary(I)I
    .locals 4

    .line 1273
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1274
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-le v0, p1, :cond_2

    .line 1275
    invoke-direct {p0, v0}, Landroidx/leanback/widget/GridLayoutManager;->getRowSizeSecondary(I)I

    move-result v2

    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_1
    if-ge v1, p1, :cond_1

    .line 1279
    invoke-direct {p0, v1}, Landroidx/leanback/widget/GridLayoutManager;->getRowSizeSecondary(I)I

    move-result v2

    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    :cond_2
    return v1
.end method

.method getScrollPosition(Landroid/view/View;Landroid/view/View;[I)Z
    .locals 2

    .line 2987
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 2990
    invoke-direct {p0, p1, p2, p3}, Landroidx/leanback/widget/GridLayoutManager;->getAlignedPosition(Landroid/view/View;Landroid/view/View;[I)Z

    move-result p0

    return p0

    .line 2993
    :cond_0
    invoke-direct {p0, p1, p3}, Landroidx/leanback/widget/GridLayoutManager;->getNoneAlignedPosition(Landroid/view/View;[I)Z

    move-result p0

    return p0
.end method

.method public getSelection()I
    .locals 0

    .line 2653
    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    return p0
.end method

.method getSlideOutDistance()I
    .locals 3

    .line 1885
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1886
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    neg-int v0, v0

    .line 1887
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 1888
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p0

    if-gez p0, :cond_2

    goto :goto_0

    .line 1895
    :cond_0
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v2, 0x40000

    and-int/2addr v0, v2

    if-eqz v0, :cond_1

    .line 1896
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    .line 1897
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 1898
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result p0

    if-le p0, v0, :cond_2

    move v0, p0

    goto :goto_1

    .line 1905
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    neg-int v0, v0

    .line 1906
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 1907
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p0

    if-gez p0, :cond_2

    :goto_0
    add-int/2addr v0, p0

    :cond_2
    :goto_1
    return v0
.end method

.method getSubPositionByView(Landroid/view/View;Landroid/view/View;)I
    .locals 5

    const/4 p0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_2

    .line 974
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    .line 975
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->getItemAlignmentFacet()Landroidx/leanback/widget/ItemAlignmentFacet;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 977
    invoke-virtual {v0}, Landroidx/leanback/widget/ItemAlignmentFacet;->getAlignmentDefs()[Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;

    move-result-object v0

    .line 978
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    :goto_0
    if-eq p2, p1, :cond_3

    .line 980
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    move v3, v2

    .line 982
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_2

    .line 983
    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->getItemAlignmentFocusViewId()I

    move-result v4

    if-ne v4, v1, :cond_1

    return v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 988
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    goto :goto_0

    :cond_3
    :goto_2
    return p0
.end method

.method public getSubSelection()I
    .locals 0

    .line 2657
    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    return p0
.end method

.method getTag()Ljava/lang/String;
    .locals 2

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GridLayoutManager:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVerticalSpacing()I
    .locals 0

    .line 868
    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mVerticalSpacing:I

    return p0
.end method

.method protected getViewForPosition(I)Landroid/view/View;
    .locals 3

    .line 1102
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object p1

    .line 1103
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    .line 1104
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 1105
    const-class v2, Landroidx/leanback/widget/ItemAlignmentFacet;

    invoke-virtual {p0, v1, v2}, Landroidx/leanback/widget/GridLayoutManager;->getFacet(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/leanback/widget/ItemAlignmentFacet;

    invoke-virtual {v0, p0}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->setItemAlignmentFacet(Landroidx/leanback/widget/ItemAlignmentFacet;)V

    return-object p1
.end method

.method getViewMax(Landroid/view/View;)I
    .locals 0

    .line 1162
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method getViewMin(Landroid/view/View;)I
    .locals 0

    .line 1158
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method getViewPrimarySize(Landroid/view/View;)I
    .locals 1

    .line 1166
    sget-object v0, Landroidx/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroidx/leanback/widget/GridLayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1167
    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez p0, :cond_0

    sget-object p0, Landroidx/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getWindowAlignment()I
    .locals 0

    .line 763
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {p0}, Landroidx/leanback/widget/WindowAlignment;->mainAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/leanback/widget/WindowAlignment$Axis;->getWindowAlignment()I

    move-result p0

    return p0
.end method

.method public getWindowAlignmentOffset()I
    .locals 0

    .line 771
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {p0}, Landroidx/leanback/widget/WindowAlignment;->mainAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/leanback/widget/WindowAlignment$Axis;->getWindowAlignmentOffset()I

    move-result p0

    return p0
.end method

.method public getWindowAlignmentOffsetPercent()F
    .locals 0

    .line 779
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {p0}, Landroidx/leanback/widget/WindowAlignment;->mainAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/leanback/widget/WindowAlignment$Axis;->getWindowAlignmentOffsetPercent()F

    move-result p0

    return p0
.end method

.method gridOnRequestFocusInDescendants(Landroidx/recyclerview/widget/RecyclerView;ILandroid/graphics/Rect;)Z
    .locals 1

    .line 3445
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 3448
    invoke-direct {p0, p2, p3}, Landroidx/leanback/widget/GridLayoutManager;->gridOnRequestFocusInDescendantsAligned(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0

    .line 3452
    :cond_0
    invoke-direct {p0, p2, p3}, Landroidx/leanback/widget/GridLayoutManager;->gridOnRequestFocusInDescendantsUnaligned(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method hasCreatedFirstItem()Z
    .locals 2

    .line 3425
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3426
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method hasCreatedLastItem()Z
    .locals 2

    .line 3420
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3421
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method protected hasDoneFirstLayout()Z
    .locals 0

    .line 880
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method hasOnChildViewHolderSelectedListener()Z
    .locals 0

    .line 915
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    .line 916
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method hasPreviousViewInSameRow(I)Z
    .locals 6

    .line 3257
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, -0x1

    if-eq p1, v2, :cond_3

    invoke-virtual {v0}, Landroidx/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_1

    .line 3260
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v0}, Landroidx/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_1

    return v2

    .line 3263
    :cond_1
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/Grid;->getLocation(I)Landroidx/leanback/widget/Grid$Location;

    move-result-object v0

    iget v0, v0, Landroidx/leanback/widget/Grid$Location;->row:I

    .line 3264
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_0
    if-ltz v3, :cond_3

    .line 3265
    invoke-direct {p0, v3}, Landroidx/leanback/widget/GridLayoutManager;->getAdapterPositionByIndex(I)I

    move-result v4

    .line 3266
    iget-object v5, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v5, v4}, Landroidx/leanback/widget/Grid;->getLocation(I)Landroidx/leanback/widget/Grid$Location;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 3267
    iget v5, v5, Landroidx/leanback/widget/Grid$Location;->row:I

    if-ne v5, v0, :cond_2

    if-ge v4, p1, :cond_2

    return v2

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method isItemFullyVisible(I)Z
    .locals 3

    .line 3430
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3434
    :cond_0
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    if-gt v1, v2, :cond_1

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 3435
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-ltz v1, :cond_1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    .line 3436
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    if-gt p1, p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isScrollEnabled()Z
    .locals 1

    .line 3142
    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v0, 0x20000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isSlidingChildViews()Z
    .locals 0

    .line 1919
    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method layoutChild(ILandroid/view/View;III)V
    .locals 9

    .line 1756
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Landroidx/leanback/widget/GridLayoutManager;->getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I

    move-result v0

    goto :goto_0

    .line 1757
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/leanback/widget/GridLayoutManager;->getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I

    move-result v0

    .line 1758
    :goto_0
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    if-lez v1, :cond_1

    .line 1759
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1761
    :cond_1
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mGravity:I

    and-int/lit8 v2, v1, 0x70

    .line 1762
    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v4, 0xc0000

    and-int/2addr v3, v4

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    const v3, 0x800007

    and-int/2addr v1, v3

    .line 1763
    invoke-static {v1, v4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    goto :goto_1

    :cond_2
    and-int/lit8 v1, v1, 0x7

    .line 1766
    :goto_1
    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v3, :cond_3

    const/16 v3, 0x30

    if-eq v2, v3, :cond_a

    :cond_3
    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-ne v3, v4, :cond_4

    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    goto :goto_3

    .line 1769
    :cond_4
    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v3, :cond_5

    const/16 v3, 0x50

    if-eq v2, v3, :cond_6

    :cond_5
    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-ne v3, v4, :cond_7

    const/4 v3, 0x5

    if-ne v1, v3, :cond_7

    .line 1771
    :cond_6
    invoke-direct {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->getRowSizeSecondary(I)I

    move-result p1

    sub-int/2addr p1, v0

    :goto_2
    add-int/2addr p5, p1

    goto :goto_3

    .line 1772
    :cond_7
    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v3, :cond_8

    const/16 v3, 0x10

    if-eq v2, v3, :cond_9

    :cond_8
    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-ne v2, v4, :cond_a

    if-ne v1, v4, :cond_a

    .line 1774
    :cond_9
    invoke-direct {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->getRowSizeSecondary(I)I

    move-result p1

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    goto :goto_2

    .line 1777
    :cond_a
    :goto_3
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez p1, :cond_b

    add-int/2addr v0, p5

    goto :goto_4

    :cond_b
    add-int/2addr v0, p5

    move v7, p5

    move p5, p3

    move p3, v7

    move v8, v0

    move v0, p4

    move p4, v8

    .line 1788
    :goto_4
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move v4, p5

    move v5, p4

    move v6, v0

    .line 1789
    invoke-virtual/range {v1 .. v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 1793
    sget-object v1, Landroidx/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    invoke-super {p0, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1794
    sget-object v1, Landroidx/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p3, v2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p5, v2

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, p4

    iget p4, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p4, v0

    invoke-virtual {p1, p3, p5, v2, p4}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->setOpticalInsets(IIII)V

    .line 1796
    invoke-direct {p0, p2}, Landroidx/leanback/widget/GridLayoutManager;->updateChildAlignments(Landroid/view/View;)V

    return-void
.end method

.method measureChild(Landroid/view/View;)V
    .locals 7

    .line 1562
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    .line 1563
    sget-object v1, Landroidx/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1564
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    sget-object v2, Landroidx/leanback/widget/GridLayoutManager;->sTempRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    iget v3, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v3

    .line 1565
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v2

    .line 1568
    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    const/4 v4, 0x0

    const/4 v5, -0x2

    if-ne v2, v5, :cond_0

    .line 1569
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_0

    .line 1570
    :cond_0
    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1573
    :goto_0
    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez p0, :cond_1

    .line 1575
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1574
    invoke-static {p0, v1, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p0

    .line 1576
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v2, v3, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    goto :goto_1

    .line 1579
    :cond_1
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1578
    invoke-static {p0, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p0

    .line 1580
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v2, v1, v0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    move v6, v0

    move v0, p0

    move p0, v6

    .line 1582
    :goto_1
    invoke-virtual {p1, p0, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3566
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->discardLayoutInfo()V

    const/4 v0, -0x1

    .line 3567
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v0, 0x0

    .line 3568
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 3569
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildrenStates:Landroidx/leanback/widget/ViewsStateBundle;

    invoke-virtual {v0}, Landroidx/leanback/widget/ViewsStateBundle;->clear()V

    .line 3571
    :cond_0
    instance-of v0, p2, Landroidx/leanback/widget/FacetProviderAdapter;

    if-eqz v0, :cond_1

    .line 3572
    move-object v0, p2

    check-cast v0, Landroidx/leanback/widget/FacetProviderAdapter;

    iput-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFacetProviderAdapter:Landroidx/leanback/widget/FacetProviderAdapter;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3574
    iput-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFacetProviderAdapter:Landroidx/leanback/widget/FacetProviderAdapter;

    .line 3576
    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->onAdapterChanged(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public onAddFocusables(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;II)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    .line 3279
    iget v4, v0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const v5, 0x8000

    and-int/2addr v4, v5

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    return v5

    .line 3289
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 3290
    iget-object v4, v0, Landroidx/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    if-eqz v4, :cond_1

    return v5

    .line 3294
    :cond_1
    invoke-direct {v0, v2}, Landroidx/leanback/widget/GridLayoutManager;->getMovement(I)I

    move-result v4

    .line 3295
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v7

    .line 3296
    invoke-direct {v0, v7}, Landroidx/leanback/widget/GridLayoutManager;->findImmediateChildIndex(Landroid/view/View;)I

    move-result v7

    .line 3297
    invoke-direct {v0, v7}, Landroidx/leanback/widget/GridLayoutManager;->getAdapterPositionByIndex(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    const/4 v10, 0x0

    goto :goto_0

    .line 3301
    :cond_2
    invoke-virtual {v0, v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v10

    :goto_0
    if-eqz v10, :cond_3

    .line 3304
    invoke-virtual {v10, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 3306
    :cond_3
    iget-object v11, v0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    if-eqz v11, :cond_1a

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v11

    if-nez v11, :cond_4

    goto/16 :goto_a

    :cond_4
    const/4 v11, 0x2

    const/4 v12, 0x3

    if-eq v4, v12, :cond_5

    if-ne v4, v11, :cond_6

    .line 3310
    :cond_5
    iget-object v13, v0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v13}, Landroidx/leanback/widget/Grid;->getNumRows()I

    move-result v13

    if-gt v13, v5, :cond_6

    return v5

    .line 3315
    :cond_6
    iget-object v13, v0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    if-eqz v13, :cond_7

    if-eqz v10, :cond_7

    .line 3316
    invoke-virtual {v13, v8}, Landroidx/leanback/widget/Grid;->getLocation(I)Landroidx/leanback/widget/Grid$Location;

    move-result-object v13

    iget v13, v13, Landroidx/leanback/widget/Grid$Location;->row:I

    goto :goto_1

    :cond_7
    move v13, v9

    .line 3317
    :goto_1
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-eq v4, v5, :cond_9

    if-ne v4, v12, :cond_8

    goto :goto_2

    :cond_8
    move v15, v9

    goto :goto_3

    :cond_9
    :goto_2
    move v15, v5

    :goto_3
    if-lez v15, :cond_a

    .line 3319
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v6, v16

    goto :goto_4

    :cond_a
    const/4 v6, 0x0

    :goto_4
    if-ne v7, v9, :cond_c

    if-lez v15, :cond_b

    const/16 v16, 0x0

    goto :goto_5

    .line 3322
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v7

    sub-int/2addr v7, v5

    move/from16 v16, v7

    goto :goto_5

    :cond_c
    add-int v16, v7, v15

    :goto_5
    move/from16 v7, v16

    :goto_6
    if-lez v15, :cond_d

    if-gt v7, v6, :cond_22

    goto :goto_7

    :cond_d
    if-lt v7, v6, :cond_22

    .line 3327
    :goto_7
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 3328
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v16

    if-nez v16, :cond_19

    invoke-virtual {v9}, Landroid/view/View;->hasFocusable()Z

    move-result v16

    if-nez v16, :cond_e

    goto/16 :goto_9

    :cond_e
    if-nez v10, :cond_f

    .line 3334
    invoke-virtual {v9, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 3335
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v14, :cond_19

    goto/16 :goto_d

    .line 3340
    :cond_f
    invoke-direct {v0, v7}, Landroidx/leanback/widget/GridLayoutManager;->getAdapterPositionByIndex(I)I

    move-result v11

    .line 3341
    iget-object v12, v0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v12, v11}, Landroidx/leanback/widget/Grid;->getLocation(I)Landroidx/leanback/widget/Grid$Location;

    move-result-object v12

    if-nez v12, :cond_11

    :cond_10
    :goto_8
    const/4 v11, 0x2

    goto :goto_9

    :cond_11
    if-ne v4, v5, :cond_12

    .line 3347
    iget v12, v12, Landroidx/leanback/widget/Grid$Location;->row:I

    if-ne v12, v13, :cond_10

    if-le v11, v8, :cond_10

    .line 3348
    invoke-virtual {v9, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 3349
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v14, :cond_10

    goto/16 :goto_d

    :cond_12
    if-nez v4, :cond_13

    .line 3355
    iget v12, v12, Landroidx/leanback/widget/Grid$Location;->row:I

    if-ne v12, v13, :cond_10

    if-ge v11, v8, :cond_10

    .line 3356
    invoke-virtual {v9, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 3357
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v14, :cond_10

    goto/16 :goto_d

    :cond_13
    const/4 v11, 0x3

    if-ne v4, v11, :cond_16

    .line 3363
    iget v12, v12, Landroidx/leanback/widget/Grid$Location;->row:I

    if-ne v12, v13, :cond_14

    goto :goto_8

    :cond_14
    if-ge v12, v13, :cond_15

    goto/16 :goto_d

    .line 3368
    :cond_15
    invoke-virtual {v9, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_8

    :cond_16
    const/4 v11, 0x2

    if-ne v4, v11, :cond_19

    .line 3371
    iget v12, v12, Landroidx/leanback/widget/Grid$Location;->row:I

    if-ne v12, v13, :cond_17

    goto :goto_9

    :cond_17
    if-le v12, v13, :cond_18

    goto/16 :goto_d

    .line 3376
    :cond_18
    invoke-virtual {v9, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_19
    :goto_9
    add-int/2addr v7, v15

    const/4 v12, 0x3

    goto :goto_6

    :cond_1a
    :goto_a
    return v5

    .line 3380
    :cond_1b
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3381
    iget v6, v0, Landroidx/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    if-eqz v6, :cond_1f

    .line 3383
    iget-object v6, v0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {v6}, Landroidx/leanback/widget/WindowAlignment;->mainAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/leanback/widget/WindowAlignment$Axis;->getPaddingMin()I

    move-result v6

    .line 3384
    iget-object v7, v0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {v7}, Landroidx/leanback/widget/WindowAlignment;->mainAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/leanback/widget/WindowAlignment$Axis;->getClientSize()I

    move-result v7

    add-int/2addr v7, v6

    .line 3385
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v8

    const/4 v9, 0x0

    :goto_b
    if-ge v9, v8, :cond_1d

    .line 3386
    invoke-virtual {v0, v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 3387
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_1c

    .line 3388
    invoke-virtual {v0, v10}, Landroidx/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v11

    if-lt v11, v6, :cond_1c

    invoke-virtual {v0, v10}, Landroidx/leanback/widget/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v11

    if-gt v11, v7, :cond_1c

    .line 3389
    invoke-virtual {v10, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_1c
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 3394
    :cond_1d
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v4, :cond_20

    .line 3395
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v6

    const/4 v7, 0x0

    :goto_c
    if-ge v7, v6, :cond_20

    .line 3396
    invoke-virtual {v0, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3397
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_1e

    .line 3398
    invoke-virtual {v8, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_1e
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    .line 3403
    :cond_1f
    iget v6, v0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 3405
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 3409
    :cond_20
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v4, :cond_21

    return v5

    .line 3412
    :cond_21
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_22

    move-object/from16 v0, p1

    .line 3413
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_22
    :goto_d
    return v5
.end method

.method onChildRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 3663
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3665
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildrenStates:Landroidx/leanback/widget/ViewsStateBundle;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Landroidx/leanback/widget/ViewsStateBundle;->saveOffscreenView(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    if-eqz p1, :cond_2

    .line 3162
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 3163
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 3167
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-nez p3, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->hasFocusable()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 3168
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 6

    .line 3832
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-direct {p0, p1, p2}, Landroidx/leanback/widget/GridLayoutManager;->saveContext(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 3833
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    .line 3834
    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v3, 0x40000

    and-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const/16 v5, 0x17

    if-le v1, v4, :cond_4

    .line 3835
    invoke-virtual {p0, v3}, Landroidx/leanback/widget/GridLayoutManager;->isItemFullyVisible(I)Z

    move-result v3

    if-nez v3, :cond_4

    if-lt v0, v5, :cond_3

    .line 3837
    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v3, :cond_2

    if-eqz v2, :cond_1

    .line 3840
    sget-object v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_RIGHT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    goto :goto_1

    .line 3842
    :cond_1
    sget-object v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_LEFT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 3838
    :goto_1
    invoke-virtual {p3, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    goto :goto_2

    .line 3844
    :cond_2
    sget-object v3, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_UP:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p3, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    goto :goto_2

    :cond_3
    const/16 v3, 0x2000

    .line 3848
    invoke-virtual {p3, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 3850
    :goto_2
    invoke-virtual {p3, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    :cond_4
    if-le v1, v4, :cond_8

    sub-int/2addr v1, v4

    .line 3852
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/GridLayoutManager;->isItemFullyVisible(I)Z

    move-result v1

    if-nez v1, :cond_8

    if-lt v0, v5, :cond_7

    .line 3854
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_6

    if-eqz v2, :cond_5

    .line 3857
    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_LEFT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    goto :goto_3

    .line 3859
    :cond_5
    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_RIGHT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 3855
    :goto_3
    invoke-virtual {p3, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    goto :goto_4

    .line 3861
    :cond_6
    sget-object v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_DOWN:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p3, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    goto :goto_4

    :cond_7
    const/16 v0, 0x1000

    .line 3865
    invoke-virtual {p3, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 3867
    :goto_4
    invoke-virtual {p3, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 3871
    :cond_8
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/GridLayoutManager;->getRowCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    .line 3872
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/GridLayoutManager;->getColumnCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v1

    .line 3873
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isLayoutHierarchical(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Z

    move-result v2

    .line 3874
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getSelectionModeForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    .line 3871
    invoke-static {v0, v1, v2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object p1

    .line 3875
    invoke-virtual {p3, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    .line 3876
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->leaveContext()V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 6

    .line 3704
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 3705
    iget-object p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    if-eqz p2, :cond_4

    instance-of p2, p1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    if-nez p2, :cond_0

    goto :goto_1

    .line 3708
    :cond_0
    check-cast p1, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    .line 3709
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewAdapterPosition()I

    move-result p1

    if-ltz p1, :cond_1

    .line 3710
    iget-object p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {p2, p1}, Landroidx/leanback/widget/Grid;->getRowIndex(I)I

    move-result p2

    goto :goto_0

    :cond_1
    const/4 p2, -0x1

    :goto_0
    move v2, p2

    if-gez v2, :cond_2

    return-void

    .line 3714
    :cond_2
    iget-object p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {p2}, Landroidx/leanback/widget/Grid;->getNumRows()I

    move-result p2

    div-int/2addr p1, p2

    .line 3715
    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez p0, :cond_3

    const/4 v1, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v0, v2

    move v2, p1

    .line 3716
    invoke-static/range {v0 .. v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object p0

    invoke-virtual {p4, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v0, p1

    .line 3719
    invoke-static/range {v0 .. v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object p0

    invoke-virtual {p4, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 7

    .line 3185
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return-object p1

    .line 3189
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p2, v3, :cond_2

    if-ne p2, v4, :cond_1

    goto :goto_0

    .line 3206
    :cond_1
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_5

    .line 3194
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->canScrollVertically()Z

    move-result v5

    if-eqz v5, :cond_4

    if-ne p2, v3, :cond_3

    const/16 v1, 0x82

    goto :goto_1

    :cond_3
    const/16 v1, 0x21

    .line 3197
    :goto_1
    iget-object v5, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v0, v5, p1, v1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 3199
    :cond_4
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->canScrollHorizontally()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 3200
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v1

    if-ne v1, v4, :cond_5

    move v1, v4

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    if-ne p2, v3, :cond_6

    move v5, v4

    goto :goto_3

    :cond_6
    move v5, v2

    :goto_3
    xor-int/2addr v1, v5

    if-eqz v1, :cond_7

    const/16 v1, 0x42

    goto :goto_4

    :cond_7
    const/16 v1, 0x11

    .line 3203
    :goto_4
    iget-object v5, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v0, v5, p1, v1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_5

    :cond_8
    move-object v0, v1

    :goto_5
    if-eqz v0, :cond_9

    return-object v0

    .line 3212
    :cond_9
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v5, 0x60000

    if-ne v1, v5, :cond_a

    .line 3213
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 3217
    :cond_a
    invoke-direct {p0, p2}, Landroidx/leanback/widget/GridLayoutManager;->getMovement(I)I

    move-result v1

    .line 3218
    iget-object v5, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v5

    if-eqz v5, :cond_b

    move v5, v4

    goto :goto_6

    :cond_b
    move v5, v2

    :goto_6
    const/high16 v6, 0x20000

    if-ne v1, v4, :cond_e

    if-nez v5, :cond_c

    .line 3220
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v1, v1, 0x1000

    if-nez v1, :cond_d

    :cond_c
    move-object v0, p1

    .line 3223
    :cond_d
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/2addr v1, v6

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->hasCreatedLastItem()Z

    move-result v1

    if-nez v1, :cond_14

    .line 3224
    invoke-virtual {p0, v4}, Landroidx/leanback/widget/GridLayoutManager;->processPendingMovement(Z)V

    goto :goto_7

    :cond_e
    if-nez v1, :cond_11

    if-nez v5, :cond_f

    .line 3228
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v1, v1, 0x800

    if-nez v1, :cond_10

    :cond_f
    move-object v0, p1

    .line 3231
    :cond_10
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/2addr v1, v6

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->hasCreatedFirstItem()Z

    move-result v1

    if-nez v1, :cond_14

    .line 3232
    invoke-virtual {p0, v2}, Landroidx/leanback/widget/GridLayoutManager;->processPendingMovement(Z)V

    goto :goto_7

    :cond_11
    const/4 v2, 0x3

    if-ne v1, v2, :cond_12

    if-nez v5, :cond_13

    .line 3236
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v1, v1, 0x4000

    if-nez v1, :cond_14

    goto :goto_7

    :cond_12
    if-ne v1, v3, :cond_14

    if-nez v5, :cond_13

    .line 3240
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v1, v1, 0x2000

    if-nez v1, :cond_14

    :cond_13
    :goto_7
    move-object v0, p1

    :cond_14
    if-eqz v0, :cond_15

    return-object v0

    .line 3249
    :cond_15
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_16

    return-object p2

    :cond_16
    if-eqz p1, :cond_17

    goto :goto_8

    .line 3253
    :cond_17
    iget-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    :goto_8
    return-object p1
.end method

.method public onItemsAdded(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .line 2806
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result p1

    if-ltz p1, :cond_0

    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    .line 2808
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    add-int/2addr v0, p1

    if-gt p2, v0, :cond_0

    add-int/2addr p1, p3

    .line 2810
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 2813
    :cond_0
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildrenStates:Landroidx/leanback/widget/ViewsStateBundle;

    invoke-virtual {p0}, Landroidx/leanback/widget/ViewsStateBundle;->clear()V

    return-void
.end method

.method public onItemsChanged(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    const/4 p1, 0x0

    .line 2819
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 2820
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildrenStates:Landroidx/leanback/widget/ViewsStateBundle;

    invoke-virtual {p0}, Landroidx/leanback/widget/ViewsStateBundle;->clear()V

    return-void
.end method

.method public onItemsMoved(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 2

    .line 2849
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    add-int/2addr p1, v0

    if-gt p2, p1, :cond_0

    add-int v1, p2, p4

    if-ge p1, v1, :cond_0

    sub-int/2addr p3, p2

    add-int/2addr v0, p3

    .line 2853
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    goto :goto_0

    :cond_0
    if-ge p2, p1, :cond_1

    sub-int v0, p1, p4

    if-le p3, v0, :cond_1

    .line 2856
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    sub-int/2addr p1, p4

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    goto :goto_0

    :cond_1
    if-le p2, p1, :cond_2

    if-ge p3, p1, :cond_2

    .line 2859
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    add-int/2addr p1, p4

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 2862
    :cond_2
    :goto_0
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildrenStates:Landroidx/leanback/widget/ViewsStateBundle;

    invoke-virtual {p0}, Landroidx/leanback/widget/ViewsStateBundle;->clear()V

    return-void
.end method

.method public onItemsRemoved(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 4

    .line 2827
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result p1

    if-ltz p1, :cond_1

    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1

    .line 2829
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    add-int v2, v1, p1

    if-gt p2, v2, :cond_1

    add-int v3, p2, p3

    if-le v3, v2, :cond_0

    sub-int/2addr p2, v2

    add-int/2addr p1, p2

    .line 2833
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    add-int/2addr v1, p1

    .line 2834
    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 2835
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    goto :goto_0

    :cond_0
    sub-int/2addr p1, p3

    .line 2837
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 2841
    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildrenStates:Landroidx/leanback/widget/ViewsStateBundle;

    invoke-virtual {p0}, Landroidx/leanback/widget/ViewsStateBundle;->clear()V

    return-void
.end method

.method public onItemsUpdated(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_0

    .line 2870
    iget-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildrenStates:Landroidx/leanback/widget/ViewsStateBundle;

    invoke-virtual {p1, p2}, Landroidx/leanback/widget/ViewsStateBundle;->remove(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 12

    .line 2168
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    if-nez v0, :cond_0

    return-void

    .line 2172
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-gez v0, :cond_1

    return-void

    .line 2177
    :cond_1
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_2

    .line 2180
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 2181
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    return-void

    .line 2185
    :cond_2
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v1, v0, 0x200

    if-nez v1, :cond_3

    .line 2186
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->discardLayoutInfo()V

    .line 2187
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V

    return-void

    :cond_3
    and-int/lit8 v0, v0, -0x4

    const/4 v1, 0x1

    or-int/2addr v0, v1

    .line 2190
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 2192
    invoke-direct {p0, p1, p2}, Landroidx/leanback/widget/GridLayoutManager;->saveContext(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2193
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result p1

    const/high16 v0, -0x80000000

    const/4 v2, 0x0

    if-eqz p1, :cond_b

    .line 2194
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->updatePositionDeltaInPreLayout()V

    .line 2195
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p1

    .line 2196
    iget-object p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    if-eqz p2, :cond_a

    if-lez p1, :cond_a

    const p2, 0x7fffffff

    .line 2199
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    .line 2200
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2199
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 2200
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getOldPosition()I

    move-result v1

    .line 2201
    iget-object v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    add-int/lit8 v4, p1, -0x1

    .line 2202
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2201
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 2202
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getOldPosition()I

    move-result v3

    :goto_0
    if-ge v2, p1, :cond_8

    .line 2204
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2205
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    .line 2206
    iget-object v6, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v6, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v6

    .line 2212
    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemChanged()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->isLayoutRequested()Z

    move-result v7

    if-nez v7, :cond_6

    .line 2213
    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v7

    if-nez v7, :cond_4

    iget v7, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewAdapterPosition()I

    move-result v8

    if-eq v7, v8, :cond_6

    .line 2214
    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v7

    if-eqz v7, :cond_5

    iget v7, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewAdapterPosition()I

    move-result v5

    if-ne v7, v5, :cond_6

    :cond_5
    if-lt v6, v1, :cond_6

    if-le v6, v3, :cond_7

    .line 2217
    :cond_6
    invoke-virtual {p0, v4}, Landroidx/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v5

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 2218
    invoke-virtual {p0, v4}, Landroidx/leanback/widget/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    if-le v0, p2, :cond_9

    sub-int/2addr v0, p2

    .line 2222
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mExtraLayoutSpaceInPreLayout:I

    .line 2225
    :cond_9
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->appendVisibleItems()V

    .line 2226
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->prependVisibleItems()V

    .line 2228
    :cond_a
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 p1, p1, -0x4

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 2229
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->leaveContext()V

    return-void

    .line 2235
    :cond_b
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->willRunPredictiveAnimations()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 2236
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->updatePositionToRowMapInPostLayout()V

    .line 2239
    :cond_c
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isSmoothScrolling()Z

    move-result p1

    if-nez p1, :cond_d

    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    if-nez p1, :cond_d

    goto :goto_1

    :cond_d
    move v1, v2

    .line 2241
    :goto_1
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v3, -0x1

    if-eq p1, v3, :cond_e

    iget v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    if-eq v4, v0, :cond_e

    add-int/2addr p1, v4

    .line 2242
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 2243
    iput v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    .line 2245
    :cond_e
    iput v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 2247
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    .line 2248
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 2249
    iget v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    .line 2250
    iget-object v5, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v5

    .line 2251
    iget-object v6, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    if-eqz v6, :cond_f

    invoke-virtual {v6}, Landroidx/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v6

    goto :goto_2

    :cond_f
    move v6, v3

    .line 2252
    :goto_2
    iget-object v7, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    if-eqz v7, :cond_10

    invoke-virtual {v7}, Landroidx/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v7

    goto :goto_3

    :cond_10
    move v7, v3

    .line 2255
    :goto_3
    iget v8, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v8, :cond_11

    .line 2256
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getRemainingScrollHorizontal()I

    move-result v8

    .line 2257
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getRemainingScrollVertical()I

    move-result v9

    goto :goto_4

    .line 2259
    :cond_11
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getRemainingScrollHorizontal()I

    move-result v9

    .line 2260
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getRemainingScrollVertical()I

    move-result v8

    .line 2262
    :goto_4
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->layoutInit()Z

    move-result v10

    const/16 v11, 0x10

    if-eqz v10, :cond_12

    .line 2263
    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 2265
    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {v2, v3}, Landroidx/leanback/widget/Grid;->setStart(I)V

    .line 2266
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->fastRelayout()V

    goto :goto_6

    .line 2268
    :cond_12
    iget v10, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v10, v10, -0x5

    iput v10, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v10, v10, -0x11

    if-eqz v1, :cond_13

    move v2, v11

    :cond_13
    or-int/2addr v2, v10

    .line 2271
    iput v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    if-eqz v1, :cond_15

    if-ltz v6, :cond_14

    .line 2273
    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-gt v2, v7, :cond_14

    if-ge v2, v6, :cond_15

    .line 2275
    :cond_14
    iget v6, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    move v7, v6

    .line 2280
    :cond_15
    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v2, v6}, Landroidx/leanback/widget/Grid;->setStart(I)V

    if-eq v7, v3, :cond_16

    .line 2282
    :goto_5
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->appendOneColumnVisibleItems()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {p0, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_16

    goto :goto_5

    .line 2293
    :cond_16
    :goto_6
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->updateScrollLimits()V

    .line 2294
    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v2}, Landroidx/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v2

    .line 2295
    iget-object v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v3}, Landroidx/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v3

    neg-int v6, v8

    neg-int v7, v9

    .line 2296
    invoke-direct {p0, v5, v1, v6, v7}, Landroidx/leanback/widget/GridLayoutManager;->focusToViewInLayout(ZZII)V

    .line 2297
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->appendVisibleItems()V

    .line 2298
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->prependVisibleItems()V

    .line 2313
    iget-object v6, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v6}, Landroidx/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v6

    if-ne v6, v2, :cond_16

    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    .line 2314
    invoke-virtual {v2}, Landroidx/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v2

    if-ne v2, v3, :cond_16

    .line 2315
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->removeInvisibleViewsAtFront()V

    .line 2316
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->removeInvisibleViewsAtEnd()V

    .line 2318
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->willRunPredictiveAnimations()Z

    move-result p2

    if-eqz p2, :cond_17

    .line 2319
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->fillScrapViewsInPostLayout()V

    .line 2329
    :cond_17
    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v1, p2, 0x400

    if-eqz v1, :cond_18

    and-int/lit16 p2, p2, -0x401

    .line 2330
    iput p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    goto :goto_7

    .line 2332
    :cond_18
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->updateRowSecondarySizeRefresh()V

    .line 2337
    :goto_7
    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_1a

    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ne p2, v0, :cond_19

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    if-ne v0, v4, :cond_19

    .line 2338
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p2

    if-ne p2, p1, :cond_19

    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_1a

    .line 2340
    :cond_19
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->dispatchChildSelected()V

    goto :goto_8

    .line 2341
    :cond_1a
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 p1, p1, 0x14

    if-ne p1, v11, :cond_1b

    .line 2345
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->dispatchChildSelected()V

    .line 2347
    :cond_1b
    :goto_8
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->dispatchChildSelectedAndPositioned()V

    .line 2348
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_1c

    .line 2349
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getSlideOutDistance()I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->scrollDirectionPrimary(I)I

    .line 2352
    :cond_1c
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 p1, p1, -0x4

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 2353
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->leaveContext()V

    return-void
.end method

.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 2084
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOnLayoutCompletedListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2085
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2086
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mOnLayoutCompletedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/leanback/widget/BaseGridView$OnLayoutCompletedListener;

    invoke-interface {v1, p1}, Landroidx/leanback/widget/BaseGridView$OnLayoutCompletedListener;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMeasure(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V
    .locals 6

    .line 1454
    invoke-direct {p0, p1, p2}, Landroidx/leanback/widget/GridLayoutManager;->saveContext(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 1458
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez p1, :cond_0

    .line 1459
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 1460
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 1461
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p3

    .line 1462
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result p4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v0

    goto :goto_0

    .line 1464
    :cond_0
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 1465
    invoke-static {p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 1466
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p3

    .line 1467
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result p4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v0

    :goto_0
    add-int/2addr p4, v0

    .line 1476
    iput p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mMaxSizeSecondary:I

    .line 1478
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    const/4 v1, -0x2

    const-string/jumbo v2, "wrong spec"

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, -0x80000000

    const/4 v5, 0x1

    if-ne v0, v1, :cond_8

    .line 1479
    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    if-nez p2, :cond_1

    move p2, v5

    :cond_1
    iput p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    const/4 v0, 0x0

    .line 1480
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    .line 1482
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    if-eqz v0, :cond_2

    array-length v0, v0

    if-eq v0, p2, :cond_3

    .line 1483
    :cond_2
    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    new-array p2, p2, [I

    iput-object p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mRowSizeSecondary:[I

    .line 1486
    :cond_3
    iget-object p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1487
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->updatePositionDeltaInPreLayout()V

    .line 1490
    :cond_4
    invoke-direct {p0, v5}, Landroidx/leanback/widget/GridLayoutManager;->processRowSizeSecondary(Z)Z

    if-eq p3, v4, :cond_7

    if-eqz p3, :cond_6

    if-ne p3, v3, :cond_5

    .line 1501
    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mMaxSizeSecondary:I

    goto/16 :goto_3

    .line 1504
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1494
    :cond_6
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->getSizeSecondary()I

    move-result p2

    add-int/2addr p2, p4

    goto/16 :goto_3

    .line 1497
    :cond_7
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->getSizeSecondary()I

    move-result p2

    add-int/2addr p2, p4

    iget p3, p0, Landroidx/leanback/widget/GridLayoutManager;->mMaxSizeSecondary:I

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto/16 :goto_3

    :cond_8
    if-eq p3, v4, :cond_d

    if-eqz p3, :cond_a

    if-ne p3, v3, :cond_9

    goto :goto_1

    .line 1543
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    if-nez v0, :cond_b

    sub-int v0, p2, p4

    .line 1511
    :cond_b
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    .line 1512
    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    if-nez p2, :cond_c

    move p2, v5

    :cond_c
    iput p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    .line 1513
    iget p3, p0, Landroidx/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    mul-int/2addr p3, p2

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    sub-int/2addr p2, v5

    mul-int/2addr v0, p2

    add-int/2addr p3, v0

    add-int p2, p3, p4

    goto :goto_3

    .line 1518
    :cond_d
    :goto_1
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    if-nez v0, :cond_e

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    if-nez v0, :cond_e

    .line 1519
    iput v5, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    sub-int v0, p2, p4

    .line 1520
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    goto :goto_2

    .line 1521
    :cond_e
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    if-nez v0, :cond_f

    .line 1522
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    .line 1523
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    add-int v2, p2, v1

    add-int/2addr v0, v1

    div-int/2addr v2, v0

    iput v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    goto :goto_2

    .line 1525
    :cond_f
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    if-nez v1, :cond_10

    .line 1526
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    sub-int v1, p2, p4

    .line 1527
    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    add-int/lit8 v3, v0, -0x1

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    div-int/2addr v1, v0

    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    goto :goto_2

    .line 1530
    :cond_10
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    .line 1531
    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    :goto_2
    if-ne p3, v4, :cond_11

    .line 1535
    iget p3, p0, Landroidx/leanback/widget/GridLayoutManager;->mFixedRowSizeSecondary:I

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    mul-int/2addr p3, v0

    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    sub-int/2addr v0, v5

    mul-int/2addr v1, v0

    add-int/2addr p3, v1

    add-int/2addr p3, p4

    if-ge p3, p2, :cond_11

    move p2, p3

    .line 1546
    :cond_11
    :goto_3
    iget p3, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez p3, :cond_12

    .line 1547
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasuredDimension(II)V

    goto :goto_4

    .line 1549
    :cond_12
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasuredDimension(II)V

    .line 1557
    :goto_4
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->leaveContext()V

    return-void
.end method

.method public onRequestChildFocus(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 2876
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const v0, 0x8000

    and-int/2addr p1, v0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 2879
    :cond_0
    invoke-direct {p0, p2}, Landroidx/leanback/widget/GridLayoutManager;->getAdapterPositionByView(Landroid/view/View;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    return v0

    .line 2883
    :cond_1
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 p1, p1, 0x23

    if-nez p1, :cond_2

    .line 2884
    invoke-direct {p0, p2, p3, v0}, Landroidx/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Landroid/view/View;Z)V

    :cond_2
    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 3671
    instance-of v0, p1, Landroidx/leanback/widget/GridLayoutManager$SavedState;

    if-nez v0, :cond_0

    return-void

    .line 3674
    :cond_0
    check-cast p1, Landroidx/leanback/widget/GridLayoutManager$SavedState;

    .line 3675
    iget v0, p1, Landroidx/leanback/widget/GridLayoutManager$SavedState;->index:I

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v0, 0x0

    .line 3676
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 3677
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildrenStates:Landroidx/leanback/widget/ViewsStateBundle;

    iget-object p1, p1, Landroidx/leanback/widget/GridLayoutManager$SavedState;->childStates:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/ViewsStateBundle;->loadFromBundle(Landroid/os/Bundle;)V

    .line 3678
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 3679
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 5

    .line 737
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    if-ne p1, v2, :cond_0

    const/high16 v0, 0x40000

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    if-ne p1, v2, :cond_0

    const/high16 v0, 0x80000

    .line 742
    :goto_0
    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v4, 0xc0000

    and-int/2addr v4, v3

    if-ne v4, v0, :cond_2

    return-void

    :cond_2
    const v4, -0xc0001

    and-int/2addr v3, v4

    or-int/2addr v0, v3

    .line 745
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    or-int/lit16 v0, v0, 0x100

    .line 746
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 747
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    iget-object p0, p0, Landroidx/leanback/widget/WindowAlignment;->horizontal:Landroidx/leanback/widget/WindowAlignment$Axis;

    if-ne p1, v2, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {p0, v1}, Landroidx/leanback/widget/WindowAlignment$Axis;->setReversedFlow(Z)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .line 3645
    new-instance v0, Landroidx/leanback/widget/GridLayoutManager$SavedState;

    invoke-direct {v0}, Landroidx/leanback/widget/GridLayoutManager$SavedState;-><init>()V

    .line 3647
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getSelection()I

    move-result v1

    iput v1, v0, Landroidx/leanback/widget/GridLayoutManager$SavedState;->index:I

    .line 3649
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildrenStates:Landroidx/leanback/widget/ViewsStateBundle;

    invoke-virtual {v1}, Landroidx/leanback/widget/ViewsStateBundle;->saveAsBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 3651
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 3652
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3653
    invoke-direct {p0, v4}, Landroidx/leanback/widget/GridLayoutManager;->getAdapterPositionByView(Landroid/view/View;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 3655
    iget-object v6, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildrenStates:Landroidx/leanback/widget/ViewsStateBundle;

    invoke-virtual {v6, v1, v4, v5}, Landroidx/leanback/widget/ViewsStateBundle;->saveOnScreenView(Landroid/os/Bundle;Landroid/view/View;I)Landroid/os/Bundle;

    move-result-object v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3658
    :cond_1
    iput-object v1, v0, Landroidx/leanback/widget/GridLayoutManager$SavedState;->childStates:Landroid/os/Bundle;

    return-object v0
.end method

.method public performAccessibilityAction(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;ILandroid/os/Bundle;)Z
    .locals 4

    .line 3731
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->isScrollEnabled()Z

    move-result p4

    const/4 v0, 0x1

    if-nez p4, :cond_0

    return v0

    .line 3735
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/leanback/widget/GridLayoutManager;->saveContext(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 3737
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 p2, 0x40000

    and-int/2addr p1, p2

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, p2

    .line 3738
    :goto_0
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/16 v2, 0x2000

    const/16 v3, 0x1000

    if-lt p4, v1, :cond_7

    .line 3739
    iget p4, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez p4, :cond_5

    .line 3740
    sget-object p4, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_LEFT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 3741
    invoke-virtual {p4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result p4

    if-ne p3, p4, :cond_4

    if-eqz p1, :cond_3

    :cond_2
    :goto_1
    move p3, v3

    goto :goto_3

    :cond_3
    :goto_2
    move p3, v2

    goto :goto_3

    .line 3745
    :cond_4
    sget-object p4, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_RIGHT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 3746
    invoke-virtual {p4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result p4

    if-ne p3, p4, :cond_7

    if-eqz p1, :cond_2

    goto :goto_2

    .line 3752
    :cond_5
    sget-object p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_UP:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 3753
    invoke-virtual {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result p1

    if-ne p3, p1, :cond_6

    goto :goto_2

    .line 3755
    :cond_6
    sget-object p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_DOWN:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 3756
    invoke-virtual {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result p1

    if-ne p3, p1, :cond_7

    goto :goto_1

    :cond_7
    :goto_3
    if-eq p3, v3, :cond_9

    if-eq p3, v2, :cond_8

    goto :goto_4

    .line 3763
    :cond_8
    invoke-virtual {p0, p2}, Landroidx/leanback/widget/GridLayoutManager;->processPendingMovement(Z)V

    const/4 p1, -0x1

    .line 3764
    invoke-virtual {p0, p2, p1}, Landroidx/leanback/widget/GridLayoutManager;->processSelectionMoves(ZI)I

    goto :goto_4

    .line 3767
    :cond_9
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/GridLayoutManager;->processPendingMovement(Z)V

    .line 3768
    invoke-virtual {p0, p2, v0}, Landroidx/leanback/widget/GridLayoutManager;->processSelectionMoves(ZI)I

    .line 3771
    :goto_4
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->leaveContext()V

    return v0
.end method

.method processPendingMovement(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 2785
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->hasCreatedLastItem()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->hasCreatedFirstItem()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    .line 2788
    :cond_1
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    if-nez v0, :cond_4

    .line 2789
    new-instance v0, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    move p1, v1

    goto :goto_1

    :cond_2
    const/4 p1, -0x1

    .line 2790
    :goto_1
    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRows:I

    const/4 v3, 0x0

    if-le v2, v1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    invoke-direct {v0, p0, p1, v1}, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;-><init>(Landroidx/leanback/widget/GridLayoutManager;IZ)V

    .line 2791
    iput v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 2792
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/GridLayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    goto :goto_3

    :cond_4
    if-eqz p1, :cond_5

    .line 2795
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->increasePendingMoves()V

    goto :goto_3

    .line 2797
    :cond_5
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->decreasePendingMoves()V

    :goto_3
    return-void
.end method

.method processSelectionMoves(ZI)I
    .locals 10

    .line 3781
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    if-nez v0, :cond_0

    return p2

    .line 3784
    :cond_0
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 3786
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/Grid;->getRowIndex(I)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    const/4 v3, 0x0

    .line 3788
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_9

    if-eqz p2, :cond_9

    if-lez p2, :cond_2

    move v7, v6

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v4, -0x1

    sub-int/2addr v7, v6

    .line 3790
    :goto_2
    invoke-virtual {p0, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3791
    invoke-virtual {p0, v8}, Landroidx/leanback/widget/GridLayoutManager;->canScrollTo(Landroid/view/View;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_4

    .line 3794
    :cond_3
    invoke-direct {p0, v7}, Landroidx/leanback/widget/GridLayoutManager;->getAdapterPositionByIndex(I)I

    move-result v7

    .line 3795
    iget-object v9, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v9, v7}, Landroidx/leanback/widget/Grid;->getRowIndex(I)I

    move-result v9

    if-ne v0, v2, :cond_4

    move v1, v7

    move-object v3, v8

    move v0, v9

    goto :goto_4

    :cond_4
    if-ne v9, v0, :cond_8

    if-lez p2, :cond_5

    if-gt v7, v1, :cond_6

    :cond_5
    if-gez p2, :cond_8

    if-ge v7, v1, :cond_8

    :cond_6
    if-lez p2, :cond_7

    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    :cond_7
    add-int/lit8 p2, p2, 0x1

    :goto_3
    move v1, v7

    move-object v3, v8

    :cond_8
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_9
    if-eqz v3, :cond_c

    if-eqz p1, :cond_b

    .line 3815
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 3816
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 3817
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 3818
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 p1, p1, -0x21

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 3820
    :cond_a
    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 3821
    iput v5, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    goto :goto_5

    :cond_b
    const/4 p1, 0x1

    .line 3823
    invoke-virtual {p0, v3, p1}, Landroidx/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Z)V

    :cond_c
    :goto_5
    return p2
.end method

.method public removeAndRecycleAllViews(Landroidx/recyclerview/widget/RecyclerView$Recycler;)V
    .locals 1

    .line 2047
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2048
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleViewAt(ILandroidx/recyclerview/widget/RecyclerView$Recycler;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeOnChildViewHolderSelectedListener(Landroidx/leanback/widget/OnChildViewHolderSelectedListener;)V
    .locals 0

    .line 909
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    .line 910
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    .line 2386
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->hasDoneFirstLayout()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2389
    :cond_0
    invoke-direct {p0, p2, p3}, Landroidx/leanback/widget/GridLayoutManager;->saveContext(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2390
    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 p2, p2, -0x4

    or-int/lit8 p2, p2, 0x2

    iput p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 2392
    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez p2, :cond_1

    .line 2393
    invoke-direct {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->scrollDirectionPrimary(I)I

    move-result p1

    goto :goto_0

    .line 2395
    :cond_1
    invoke-direct {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->scrollDirectionSecondary(I)I

    move-result p1

    .line 2397
    :goto_0
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->leaveContext()V

    .line 2398
    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 p2, p2, -0x4

    iput p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    return p1

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public scrollToPosition(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2625
    invoke-virtual {p0, p1, v0, v0, v0}, Landroidx/leanback/widget/GridLayoutManager;->setSelection(IIZI)V

    return-void
.end method

.method scrollToSelection(IIZI)V
    .locals 4

    .line 2671
    iput p4, p0, Landroidx/leanback/widget/GridLayoutManager;->mPrimaryScrollExtra:I

    .line 2673
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p4

    .line 2678
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isSmoothScrolling()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2679
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isLayoutRequested()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p4, :cond_0

    .line 2680
    invoke-direct {p0, p4}, Landroidx/leanback/widget/GridLayoutManager;->getAdapterPositionByView(Landroid/view/View;)I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 2681
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 2682
    invoke-virtual {p0, p4, p3}, Landroidx/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Z)V

    .line 2683
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 p1, p1, -0x21

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    goto/16 :goto_0

    .line 2685
    :cond_0
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v2, v1, 0x200

    const/high16 v3, -0x80000000

    if-eqz v2, :cond_7

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_3

    .line 2691
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isLayoutRequested()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2692
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 2693
    iput p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    .line 2694
    iput v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 2695
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->hasDoneFirstLayout()Z

    move-result p2

    if-nez p2, :cond_2

    .line 2696
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "setSelectionSmooth should not be called before first layout pass"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2700
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->startPositionSmoothScroller(I)I

    move-result p1

    .line 2701
    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-eq p1, p2, :cond_6

    .line 2703
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 p1, 0x0

    .line 2704
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    .line 2710
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->skipSmoothScrollerOnStopInternal()V

    .line 2711
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 2713
    :cond_4
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p4, :cond_5

    .line 2714
    invoke-direct {p0, p4}, Landroidx/leanback/widget/GridLayoutManager;->getAdapterPositionByView(Landroid/view/View;)I

    move-result v0

    if-ne v0, p1, :cond_5

    .line 2715
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 2716
    invoke-virtual {p0, p4, p3}, Landroidx/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Z)V

    .line 2717
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 p1, p1, -0x21

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    goto :goto_0

    .line 2719
    :cond_5
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 2720
    iput p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    .line 2721
    iput v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    .line 2722
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 2723
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    :cond_6
    :goto_0
    return-void

    .line 2686
    :cond_7
    :goto_1
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 2687
    iput p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    .line 2688
    iput v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPositionOffset:I

    return-void
.end method

.method scrollToView(Landroid/view/View;Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2937
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p1, v0, p2}, Landroidx/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Landroid/view/View;Z)V

    return-void
.end method

.method scrollToView(Landroid/view/View;ZII)V
    .locals 7

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2941
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    :goto_0
    move-object v3, v0

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroidx/leanback/widget/GridLayoutManager;->scrollToView(Landroid/view/View;Landroid/view/View;ZII)V

    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1

    .line 2405
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->hasDoneFirstLayout()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2408
    :cond_0
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v0, v0, -0x4

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 2409
    invoke-direct {p0, p2, p3}, Landroidx/leanback/widget/GridLayoutManager;->saveContext(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2411
    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    .line 2412
    invoke-direct {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->scrollDirectionPrimary(I)I

    move-result p1

    goto :goto_0

    .line 2414
    :cond_1
    invoke-direct {p0, p1}, Landroidx/leanback/widget/GridLayoutManager;->scrollDirectionSecondary(I)I

    move-result p1

    .line 2416
    :goto_0
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->leaveContext()V

    .line 2417
    iget p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 p2, p2, -0x4

    iput p2, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    return p1

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method setChildrenVisibility(I)V
    .locals 3

    .line 3593
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildVisibility:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 3595
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 3597
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildVisibility:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method setExtraLayoutSpace(I)V
    .locals 1

    .line 1824
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz v0, :cond_1

    .line 1829
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mExtraLayoutSpace:I

    .line 1830
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    return-void

    .line 1827
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ExtraLayoutSpace must >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFocusOutAllowed(ZZ)V
    .locals 2

    .line 819
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v0, v0, -0x1801

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/16 p1, 0x800

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    or-int/2addr p1, v0

    if-eqz p2, :cond_1

    const/16 v1, 0x1000

    :cond_1
    or-int/2addr p1, v1

    .line 821
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    return-void
.end method

.method public setFocusOutSideAllowed(ZZ)V
    .locals 2

    .line 825
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v0, v0, -0x6001

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/16 p1, 0x2000

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    or-int/2addr p1, v0

    if-eqz p2, :cond_1

    const/16 v1, 0x4000

    :cond_1
    or-int/2addr p1, v1

    .line 827
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    return-void
.end method

.method public setFocusScrollStrategy(I)V
    .locals 0

    .line 755
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    return-void
.end method

.method setFocusSearchDisabled(Z)V
    .locals 2

    .line 3176
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const v1, -0x8001

    and-int/2addr v0, v1

    if-eqz p1, :cond_0

    const p1, 0x8000

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, v0

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    return-void
.end method

.method public setGravity(I)V
    .locals 0

    .line 876
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mGravity:I

    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 1

    .line 860
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    .line 861
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mHorizontalSpacing:I

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mSpacingPrimary:I

    goto :goto_0

    .line 863
    :cond_0
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mHorizontalSpacing:I

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    :goto_0
    return-void
.end method

.method public setItemAlignmentOffset(I)V
    .locals 1

    .line 783
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mItemAlignment:Landroidx/leanback/widget/ItemAlignment;

    invoke-virtual {v0}, Landroidx/leanback/widget/ItemAlignment;->mainAxis()Landroidx/leanback/widget/ItemAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentOffset(I)V

    .line 784
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->updateChildAlignments()V

    return-void
.end method

.method public setItemAlignmentOffsetPercent(F)V
    .locals 1

    .line 801
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mItemAlignment:Landroidx/leanback/widget/ItemAlignment;

    invoke-virtual {v0}, Landroidx/leanback/widget/ItemAlignment;->mainAxis()Landroidx/leanback/widget/ItemAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentOffsetPercent(F)V

    .line 802
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->updateChildAlignments()V

    return-void
.end method

.method public setItemAlignmentOffsetWithPadding(Z)V
    .locals 1

    .line 792
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mItemAlignment:Landroidx/leanback/widget/ItemAlignment;

    invoke-virtual {v0}, Landroidx/leanback/widget/ItemAlignment;->mainAxis()Landroidx/leanback/widget/ItemAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentOffsetWithPadding(Z)V

    .line 793
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->updateChildAlignments()V

    return-void
.end method

.method public setItemAlignmentViewId(I)V
    .locals 1

    .line 810
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mItemAlignment:Landroidx/leanback/widget/ItemAlignment;

    invoke-virtual {v0}, Landroidx/leanback/widget/ItemAlignment;->mainAxis()Landroidx/leanback/widget/ItemAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentViewId(I)V

    .line 811
    invoke-direct {p0}, Landroidx/leanback/widget/GridLayoutManager;->updateChildAlignments()V

    return-void
.end method

.method public setItemSpacing(I)V
    .locals 0

    .line 847
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mHorizontalSpacing:I

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mVerticalSpacing:I

    .line 848
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mSpacingPrimary:I

    return-void
.end method

.method public setLayoutEnabled(Z)V
    .locals 3

    .line 3586
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eq v0, p1, :cond_2

    .line 3587
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v0, v0, -0x201

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    or-int p1, v0, v1

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 3588
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    :cond_2
    return-void
.end method

.method public setNumRows(I)V
    .locals 0

    if-ltz p1, :cond_0

    .line 832
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mNumRowsRequested:I

    return-void

    .line 831
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method setOnChildLaidOutListener(Landroidx/leanback/widget/OnChildLaidOutListener;)V
    .locals 0

    .line 955
    iput-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildLaidOutListener:Landroidx/leanback/widget/OnChildLaidOutListener;

    return-void
.end method

.method public setOnChildSelectedListener(Landroidx/leanback/widget/OnChildSelectedListener;)V
    .locals 0

    .line 884
    iput-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildSelectedListener:Landroidx/leanback/widget/OnChildSelectedListener;

    return-void
.end method

.method public setOnChildViewHolderSelectedListener(Landroidx/leanback/widget/OnChildViewHolderSelectedListener;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 889
    iput-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    return-void

    .line 892
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 893
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    goto :goto_0

    .line 895
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 897
    :goto_0
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mChildViewHolderSelectedListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 728
    :cond_0
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    .line 729
    invoke-static {p0, p1}, Landroidx/recyclerview/widget/OrientationHelper;->createOrientationHelper(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;I)Landroidx/recyclerview/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientationHelper:Landroidx/recyclerview/widget/OrientationHelper;

    .line 730
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/WindowAlignment;->setOrientation(I)V

    .line 731
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mItemAlignment:Landroidx/leanback/widget/ItemAlignment;

    invoke-virtual {v0, p1}, Landroidx/leanback/widget/ItemAlignment;->setOrientation(I)V

    .line 732
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    return-void
.end method

.method public setPruneChild(Z)V
    .locals 4

    .line 3117
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eq v0, p1, :cond_2

    .line 3118
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const v3, -0x10001

    and-int/2addr v0, v3

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    or-int/2addr v0, v1

    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    if-eqz p1, :cond_2

    .line 3120
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    :cond_2
    return-void
.end method

.method public setRowHeight(I)V
    .locals 2

    if-gez p1, :cond_1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 842
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid row height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 840
    :cond_1
    :goto_0
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mRowSizeSecondaryRequested:I

    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 5

    .line 3130
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eq v0, p1, :cond_2

    .line 3131
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const v4, -0x20001

    and-int/2addr v0, v4

    if-eqz p1, :cond_1

    move v3, v1

    :cond_1
    or-int p1, v0, v3

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_2

    .line 3132
    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusScrollStrategy:I

    if-nez p1, :cond_2

    iget p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 3135
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mPrimaryScrollExtra:I

    invoke-virtual {p0, p1, v0, v2, v1}, Landroidx/leanback/widget/GridLayoutManager;->scrollToSelection(IIZI)V

    :cond_2
    return-void
.end method

.method public setSelection(II)V
    .locals 1

    const/4 v0, 0x0

    .line 2636
    invoke-virtual {p0, p1, v0, v0, p2}, Landroidx/leanback/widget/GridLayoutManager;->setSelection(IIZI)V

    return-void
.end method

.method public setSelection(IIZI)V
    .locals 1

    .line 2662
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-eq v0, p1, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    :cond_0
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    if-ne p2, v0, :cond_1

    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mPrimaryScrollExtra:I

    if-eq p4, v0, :cond_2

    .line 2664
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/leanback/widget/GridLayoutManager;->scrollToSelection(IIZI)V

    :cond_2
    return-void
.end method

.method public setSelectionSmooth(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2640
    invoke-virtual {p0, p1, v0, v1, v0}, Landroidx/leanback/widget/GridLayoutManager;->setSelection(IIZI)V

    return-void
.end method

.method public setSelectionWithSub(III)V
    .locals 1

    const/4 v0, 0x0

    .line 2645
    invoke-virtual {p0, p1, p2, v0, p3}, Landroidx/leanback/widget/GridLayoutManager;->setSelection(IIZI)V

    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 2

    .line 852
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 853
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mVerticalSpacing:I

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mSpacingPrimary:I

    goto :goto_0

    .line 855
    :cond_0
    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mVerticalSpacing:I

    iput p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mSpacingSecondary:I

    :goto_0
    return-void
.end method

.method public setWindowAlignment(I)V
    .locals 0

    .line 759
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {p0}, Landroidx/leanback/widget/WindowAlignment;->mainAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/WindowAlignment$Axis;->setWindowAlignment(I)V

    return-void
.end method

.method public setWindowAlignmentOffset(I)V
    .locals 0

    .line 767
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {p0}, Landroidx/leanback/widget/WindowAlignment;->mainAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/WindowAlignment$Axis;->setWindowAlignmentOffset(I)V

    return-void
.end method

.method public setWindowAlignmentOffsetPercent(F)V
    .locals 0

    .line 775
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {p0}, Landroidx/leanback/widget/WindowAlignment;->mainAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/WindowAlignment$Axis;->setWindowAlignmentOffsetPercent(F)V

    return-void
.end method

.method skipSmoothScrollerOnStopInternal()V
    .locals 1

    .line 2762
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mCurrentSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 2763
    iput-boolean v0, p0, Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->mSkipOnStopInternal:Z

    :cond_0
    return-void
.end method

.method slideIn()V
    .locals 4

    .line 1856
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_3

    and-int/lit8 v0, v0, -0x41

    .line 1857
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 1858
    iget v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ltz v1, :cond_0

    .line 1859
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    const/4 v2, 0x1

    iget v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mPrimaryScrollExtra:I

    invoke-virtual {p0, v1, v0, v2, v3}, Landroidx/leanback/widget/GridLayoutManager;->scrollToSelection(IIZI)V

    goto :goto_0

    :cond_0
    and-int/lit16 v0, v0, -0x81

    .line 1861
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 1862
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 1864
    :goto_0
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_3

    and-int/lit16 v0, v0, -0x81

    .line 1865
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 1866
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isSmoothScrolling()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1877
    :cond_1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    goto :goto_2

    .line 1867
    :cond_2
    :goto_1
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    new-instance v1, Landroidx/leanback/widget/GridLayoutManager$3;

    invoke-direct {v1, p0}, Landroidx/leanback/widget/GridLayoutManager$3;-><init>(Landroidx/leanback/widget/GridLayoutManager;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_3
    :goto_2
    return-void
.end method

.method slideOut()V
    .locals 3

    .line 1926
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_0

    return-void

    :cond_0
    or-int/lit8 v0, v0, 0x40

    .line 1929
    iput v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 1930
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1933
    :cond_1
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 1934
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getSlideOutDistance()I

    move-result p0

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2, p0, v1}, Landroidx/leanback/widget/BaseGridView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 1937
    :cond_2
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->getSlideOutDistance()I

    move-result p0

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p0, v2, v1}, Landroidx/leanback/widget/BaseGridView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    :goto_0
    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 0

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 2631
    invoke-virtual {p0, p3, p1, p2, p1}, Landroidx/leanback/widget/GridLayoutManager;->setSelection(IIZI)V

    return-void
.end method

.method startPositionSmoothScroller(I)I
    .locals 1

    .line 2731
    new-instance v0, Landroidx/leanback/widget/GridLayoutManager$4;

    invoke-direct {v0, p0}, Landroidx/leanback/widget/GridLayoutManager$4;-><init>(Landroidx/leanback/widget/GridLayoutManager;)V

    .line 2752
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 2753
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/GridLayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    .line 2754
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result p0

    return p0
.end method

.method public startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V
    .locals 2

    .line 2769
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->skipSmoothScrollerOnStopInternal()V

    .line 2770
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    .line 2771
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    instance-of v0, p1, Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;

    if-eqz v0, :cond_1

    .line 2772
    check-cast p1, Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;

    iput-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mCurrentSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;

    .line 2773
    instance-of v0, p1, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    if-eqz v0, :cond_0

    .line 2774
    check-cast p1, Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    iput-object p1, p0, Landroidx/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    goto :goto_0

    .line 2776
    :cond_0
    iput-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    goto :goto_0

    .line 2779
    :cond_1
    iput-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mCurrentSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;

    .line 2780
    iput-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    :goto_0
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method updatePositionDeltaInPreLayout()V
    .locals 2

    .line 2147
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 2148
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2149
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    .line 2150
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v1}, Landroidx/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v1

    .line 2151
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    goto :goto_0

    .line 2153
    :cond_0
    iput v1, p0, Landroidx/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    :goto_0
    return-void
.end method

.method updatePositionToRowMapInPostLayout()V
    .locals 5

    .line 2097
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mPositionToRowInPostLayout:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 2098
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2101
    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getOldPosition()I

    move-result v2

    if-ltz v2, :cond_0

    .line 2103
    iget-object v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v3, v2}, Landroidx/leanback/widget/Grid;->getLocation(I)Landroidx/leanback/widget/Grid$Location;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2105
    iget-object v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mPositionToRowInPostLayout:Landroid/util/SparseIntArray;

    iget v3, v3, Landroidx/leanback/widget/Grid$Location;->row:I

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method updateScrollLimits()V
    .locals 7

    .line 2533
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2538
    :cond_0
    iget v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 2539
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v0}, Landroidx/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v0

    .line 2540
    iget-object v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v2

    .line 2541
    iget-object v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v4}, Landroidx/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v4

    move v5, v4

    move v4, v1

    goto :goto_0

    .line 2544
    :cond_1
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v0}, Landroidx/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v0

    .line 2546
    iget-object v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    invoke-virtual {v3}, Landroidx/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v4

    .line 2547
    iget-object v3, p0, Landroidx/leanback/widget/GridLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v2

    move v5, v4

    move v4, v3

    move v3, v1

    :goto_0
    if-ltz v0, :cond_9

    if-gez v5, :cond_2

    goto/16 :goto_5

    :cond_2
    if-ne v0, v3, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    if-ne v5, v4, :cond_4

    move v3, v2

    goto :goto_2

    :cond_4
    move v3, v1

    :goto_2
    if-nez v0, :cond_5

    .line 2554
    iget-object v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {v4}, Landroidx/leanback/widget/WindowAlignment;->mainAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/leanback/widget/WindowAlignment$Axis;->isMaxUnknown()Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez v3, :cond_5

    iget-object v4, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    .line 2555
    invoke-virtual {v4}, Landroidx/leanback/widget/WindowAlignment;->mainAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/leanback/widget/WindowAlignment$Axis;->isMinUnknown()Z

    move-result v4

    if-eqz v4, :cond_5

    return-void

    :cond_5
    const v4, 0x7fffffff

    if-eqz v0, :cond_6

    .line 2560
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    sget-object v4, Landroidx/leanback/widget/GridLayoutManager;->sTwoInts:[I

    invoke-virtual {v0, v2, v4}, Landroidx/leanback/widget/Grid;->findRowMax(Z[I)I

    move-result v4

    .line 2561
    sget-object v0, Landroidx/leanback/widget/GridLayoutManager;->sTwoInts:[I

    aget v0, v0, v2

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 2562
    invoke-direct {p0, v0}, Landroidx/leanback/widget/GridLayoutManager;->getViewCenter(Landroid/view/View;)I

    move-result v5

    .line 2563
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    .line 2564
    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->getAlignMultiple()[I

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2565
    array-length v6, v0

    if-lez v6, :cond_7

    .line 2566
    array-length v6, v0

    sub-int/2addr v6, v2

    aget v6, v0, v6

    aget v0, v0, v1

    sub-int/2addr v6, v0

    add-int/2addr v5, v6

    goto :goto_3

    :cond_6
    move v5, v4

    :cond_7
    :goto_3
    const/high16 v0, -0x80000000

    if-eqz v3, :cond_8

    .line 2574
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager;->mGrid:Landroidx/leanback/widget/Grid;

    sget-object v3, Landroidx/leanback/widget/GridLayoutManager;->sTwoInts:[I

    invoke-virtual {v0, v1, v3}, Landroidx/leanback/widget/Grid;->findRowMin(Z[I)I

    move-result v0

    .line 2575
    sget-object v1, Landroidx/leanback/widget/GridLayoutManager;->sTwoInts:[I

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 2576
    invoke-direct {p0, v1}, Landroidx/leanback/widget/GridLayoutManager;->getViewCenter(Landroid/view/View;)I

    move-result v1

    goto :goto_4

    :cond_8
    move v1, v0

    .line 2581
    :goto_4
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {p0}, Landroidx/leanback/widget/WindowAlignment;->mainAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object p0

    invoke-virtual {p0, v0, v4, v1, v5}, Landroidx/leanback/widget/WindowAlignment$Axis;->updateMinMax(IIII)V

    :cond_9
    :goto_5
    return-void
.end method
