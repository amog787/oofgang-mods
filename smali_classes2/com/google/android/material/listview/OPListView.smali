.class public Lcom/google/android/material/listview/OPListView;
.super Landroid/widget/ListView;
.source "OPListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/listview/OPListView$DeleteAnimationListener;
    }
.end annotation


# instance fields
.field private mAnimRunning:Z

.field private mAnimatorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field

.field mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field mDelAniSet:Landroid/animation/AnimatorSet;

.field private mDelAnimationFlag:Z

.field private mDelOriViewTopList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDelPosList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDelViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDeleteAnimationListener:Lcom/google/android/material/listview/OPListView$DeleteAnimationListener;

.field private mDisableTouchEvent:Z

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerController:Lcom/google/android/material/listview/IDividerController;

.field private mDividerHeight:I

.field private mFooterDividersEnabled:Z

.field private mHeaderDividersEnabled:Z

.field private mInDeleteAnimation:Z

.field private mIsClipToPadding:Z

.field private mIsDisableAnimation:Z

.field private mNowViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mOriBelowLeftCount:I

.field private mOriCurDeleteCount:I

.field private mOriCurLeftCount:I

.field private mOriFirstPosition:I

.field private mOriLastPage:Z

.field private mOriUpperDeleteCount:I

.field mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/listview/OPListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010074

    .line 60
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/listview/OPListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/listview/OPListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 68
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    .line 31
    iput v0, p0, Lcom/google/android/material/listview/OPListView;->mDividerHeight:I

    .line 35
    iput-boolean v0, p0, Lcom/google/android/material/listview/OPListView;->mIsDisableAnimation:Z

    const/4 v1, 0x0

    .line 41
    iput-object v1, p0, Lcom/google/android/material/listview/OPListView;->mDelViewList:Ljava/util/ArrayList;

    .line 42
    iput-object v1, p0, Lcom/google/android/material/listview/OPListView;->mDelPosList:Ljava/util/ArrayList;

    .line 43
    iput-object v1, p0, Lcom/google/android/material/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    .line 44
    iput-object v1, p0, Lcom/google/android/material/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    .line 45
    iput-object v1, p0, Lcom/google/android/material/listview/OPListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    .line 52
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const v3, 0x3f99999a    # 1.2f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v2, p0, Lcom/google/android/material/listview/OPListView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 53
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/material/listview/OPListView;->mAnimatorList:Ljava/util/ArrayList;

    .line 100
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/google/android/material/listview/OPListView;->mTempRect:Landroid/graphics/Rect;

    .line 101
    iput-boolean v0, p0, Lcom/google/android/material/listview/OPListView;->mHeaderDividersEnabled:Z

    .line 102
    iput-boolean v0, p0, Lcom/google/android/material/listview/OPListView;->mFooterDividersEnabled:Z

    .line 103
    iput-boolean v0, p0, Lcom/google/android/material/listview/OPListView;->mIsClipToPadding:Z

    .line 298
    iput-object v1, p0, Lcom/google/android/material/listview/OPListView;->mDividerController:Lcom/google/android/material/listview/IDividerController;

    .line 326
    new-instance v0, Lcom/google/android/material/listview/OPListView$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/listview/OPListView$1;-><init>(Lcom/google/android/material/listview/OPListView;)V

    iput-object v0, p0, Lcom/google/android/material/listview/OPListView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/listview/OPListView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/listview/OPListView;)Ljava/util/ArrayList;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/google/android/material/listview/OPListView;->mDelViewList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$102(Lcom/google/android/material/listview/OPListView;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/google/android/material/listview/OPListView;->mAnimRunning:Z

    return p1
.end method

.method static synthetic access$202(Lcom/google/android/material/listview/OPListView;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/google/android/material/listview/OPListView;->mInDeleteAnimation:Z

    return p1
.end method

.method static synthetic access$302(Lcom/google/android/material/listview/OPListView;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/google/android/material/listview/OPListView;->mDisableTouchEvent:Z

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/material/listview/OPListView;)Ljava/util/ArrayList;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/google/android/material/listview/OPListView;->mDelPosList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/material/listview/OPListView;)Ljava/util/ArrayList;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/google/android/material/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/android/material/listview/OPListView;)Lcom/google/android/material/listview/OPListView$DeleteAnimationListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/google/android/material/listview/OPListView;->mDeleteAnimationListener:Lcom/google/android/material/listview/OPListView$DeleteAnimationListener;

    return-object p0
.end method

.method static synthetic access$702(Lcom/google/android/material/listview/OPListView;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/google/android/material/listview/OPListView;->mDelAnimationFlag:Z

    return p1
.end method

.method static synthetic access$800(Lcom/google/android/material/listview/OPListView;)Ljava/util/ArrayList;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/google/android/material/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    return-object p0
.end method

.method private getAnimator(ILandroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 4

    .line 336
    iget-object v0, p0, Lcom/google/android/material/listview/OPListView;->mAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt p1, v0, :cond_0

    new-array p1, v1, [F

    aput p3, p1, v3

    .line 337
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    int-to-float p3, p3

    aput p3, p1, v2

    const-string p3, "y"

    invoke-static {p3, p1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    new-array p3, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object p1, p3, v3

    .line 338
    invoke-static {p2, p3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 339
    iget-object p0, p0, Lcom/google/android/material/listview/OPListView;->mAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 341
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/listview/OPListView;->mAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Landroid/animation/ObjectAnimator;

    .line 342
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    .line 343
    aget-object p0, p0, v3

    new-array v0, v1, [F

    aput p3, v0, v3

    .line 344
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    int-to-float p3, p3

    aput p3, v0, v2

    invoke-virtual {p0, v0}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 345
    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    :goto_0
    return-object p1
.end method

.method private getDividerType(I)I
    .locals 0

    .line 311
    iget-object p0, p0, Lcom/google/android/material/listview/OPListView;->mDividerController:Lcom/google/android/material/listview/IDividerController;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 315
    :cond_0
    invoke-interface {p0, p1}, Lcom/google/android/material/listview/IDividerController;->getDividerType(I)I

    move-result p0

    return p0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 77
    sget-object p3, Lcom/google/android/material/R$styleable;->OPListView:[I

    sget p4, Lcom/google/android/material/R$attr;->OPListViewStyle:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 79
    sget p2, Lcom/google/android/material/R$styleable;->OPListView_android_divider:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 80
    sget p3, Lcom/google/android/material/R$styleable;->OPListView_android_background:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p2, :cond_0

    .line 84
    invoke-virtual {p0, p2}, Lcom/google/android/material/listview/OPListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 87
    invoke-virtual {p0, p3}, Landroid/widget/ListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 90
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/google/android/material/R$dimen;->listview_divider_height:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/listview/OPListView;->mDividerHeight:I

    .line 91
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setOverScrollMode(I)V

    const/4 p2, 0x0

    .line 93
    invoke-super {p0, p2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 94
    iget p2, p0, Lcom/google/android/material/listview/OPListView;->mDividerHeight:I

    invoke-virtual {p0, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 95
    invoke-virtual {p0, v0}, Lcom/google/android/material/listview/OPListView;->setFooterDividersEnabled(Z)V

    .line 96
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private isClipToPadding()Z
    .locals 0

    .line 267
    iget-boolean p0, p0, Lcom/google/android/material/listview/OPListView;->mIsClipToPadding:Z

    return p0
.end method

.method private setDelViewLocation()V
    .locals 11

    .line 602
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 604
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    .line 606
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    if-nez v0, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v5

    .line 613
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getTop()I

    .line 614
    invoke-virtual {p0}, Landroid/widget/ListView;->getBottom()I

    move-result v3

    .line 617
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v6

    .line 621
    iget-object v7, p0, Lcom/google/android/material/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    if-nez v7, :cond_2

    .line 622
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/google/android/material/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    goto :goto_2

    .line 624
    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    :goto_2
    move v7, v5

    move v8, v7

    :goto_3
    if-ge v7, v6, :cond_4

    .line 627
    invoke-virtual {p0, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 628
    iget-object v10, p0, Lcom/google/android/material/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v7, :cond_3

    if-eqz v9, :cond_3

    .line 630
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v8

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 634
    :cond_4
    iget-boolean v7, p0, Lcom/google/android/material/listview/OPListView;->mOriLastPage:Z

    const-string v9, "OPListView"

    if-nez v7, :cond_11

    if-nez v2, :cond_7

    .line 636
    iget v0, p0, Lcom/google/android/material/listview/OPListView;->mOriUpperDeleteCount:I

    if-nez v0, :cond_5

    const-string v0, "DeleteAnimation Case 1"

    .line 637
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 639
    :cond_5
    iget v1, p0, Lcom/google/android/material/listview/OPListView;->mOriCurLeftCount:I

    if-lt v0, v1, :cond_6

    const-string v0, "DeleteAnimation Case 3 "

    .line 640
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object v0, p0, Lcom/google/android/material/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_c

    :cond_6
    const-string v0, "DeleteAnimation Case 2 "

    .line 643
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    .line 644
    :goto_4
    iget v1, p0, Lcom/google/android/material/listview/OPListView;->mOriUpperDeleteCount:I

    if-ge v0, v1, :cond_19

    .line 645
    iget-object v1, p0, Lcom/google/android/material/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    if-nez v0, :cond_c

    .line 650
    iget v0, p0, Lcom/google/android/material/listview/OPListView;->mOriUpperDeleteCount:I

    if-nez v0, :cond_8

    const-string v0, "DeleteAnimation Case 4 "

    .line 651
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 653
    :cond_8
    iget v2, p0, Lcom/google/android/material/listview/OPListView;->mOriCurDeleteCount:I

    if-nez v2, :cond_a

    .line 654
    iget v2, p0, Lcom/google/android/material/listview/OPListView;->mOriCurLeftCount:I

    if-lt v0, v2, :cond_9

    const-string v0, "DeleteAnimation Case 9 "

    .line 655
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_9
    const-string v0, "DeleteAnimation Case 10 "

    .line 657
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 660
    :cond_a
    iget v2, p0, Lcom/google/android/material/listview/OPListView;->mOriCurLeftCount:I

    if-lt v0, v2, :cond_b

    const-string v0, "DeleteAnimation Case 5 "

    .line 661
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_b
    const-string v0, "DeleteAnimation Case 6 "

    .line 663
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 668
    :cond_c
    iget v0, p0, Lcom/google/android/material/listview/OPListView;->mOriCurDeleteCount:I

    if-nez v0, :cond_d

    const-string v0, "DeleteAnimation Case 11 "

    .line 669
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 671
    :cond_d
    iget v0, p0, Lcom/google/android/material/listview/OPListView;->mOriUpperDeleteCount:I

    iget v2, p0, Lcom/google/android/material/listview/OPListView;->mOriCurLeftCount:I

    if-lt v0, v2, :cond_e

    const-string v0, "DeleteAnimation Case 7 "

    .line 672
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_e
    const-string v0, "DeleteAnimation Case 8 "

    .line 674
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    move v0, v5

    .line 680
    :goto_6
    iget v2, p0, Lcom/google/android/material/listview/OPListView;->mOriBelowLeftCount:I

    if-ge v0, v2, :cond_f

    .line 681
    iget-object v2, p0, Lcom/google/android/material/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, 0x1

    mul-int v7, v0, v8

    add-int/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 686
    :cond_f
    iget-object v0, p0, Lcom/google/android/material/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    move v2, v5

    :goto_7
    if-ge v2, v0, :cond_10

    .line 688
    iget-object v7, p0, Lcom/google/android/material/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_10
    move v0, v4

    .line 693
    :goto_8
    iget-object v2, p0, Lcom/google/android/material/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v1, v2, :cond_19

    .line 694
    iget-object v2, p0, Lcom/google/android/material/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    neg-int v7, v8

    mul-int/2addr v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/2addr v0, v4

    goto :goto_8

    .line 699
    :cond_11
    iget v2, p0, Lcom/google/android/material/listview/OPListView;->mOriUpperDeleteCount:I

    if-nez v2, :cond_13

    .line 700
    iget v0, p0, Lcom/google/android/material/listview/OPListView;->mOriCurDeleteCount:I

    if-nez v0, :cond_12

    goto :goto_a

    :cond_12
    const-string v0, "DeleteAnimation Case 14 "

    .line 703
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 706
    :cond_13
    iget v7, p0, Lcom/google/android/material/listview/OPListView;->mOriCurDeleteCount:I

    if-nez v7, :cond_15

    .line 707
    iget v0, p0, Lcom/google/android/material/listview/OPListView;->mOriCurLeftCount:I

    if-lt v2, v0, :cond_14

    const-string v0, "DeleteAnimation Case 12 "

    .line 708
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget-object v0, p0, Lcom/google/android/material/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_a

    :cond_14
    const-string v0, "DeleteAnimation Case 13 "

    .line 711
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    .line 712
    :goto_9
    iget v2, p0, Lcom/google/android/material/listview/OPListView;->mOriUpperDeleteCount:I

    if-ge v0, v2, :cond_18

    .line 713
    iget-object v2, p0, Lcom/google/android/material/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_15
    if-nez v0, :cond_17

    .line 718
    iget v0, p0, Lcom/google/android/material/listview/OPListView;->mOriCurLeftCount:I

    if-lt v2, v0, :cond_16

    const-string v0, "DeleteAnimation Case 15 "

    .line 720
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_16
    const-string v0, "DeleteAnimation Case 16 "

    .line 722
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_17
    const-string v0, "DeleteAnimation Case 17 "

    .line 725
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    :goto_a
    move v0, v4

    .line 732
    :goto_b
    iget-object v2, p0, Lcom/google/android/material/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v1, v2, :cond_19

    .line 733
    iget-object v2, p0, Lcom/google/android/material/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    neg-int v7, v8

    mul-int/2addr v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/2addr v0, v4

    goto :goto_b

    .line 739
    :cond_19
    :goto_c
    iget-object v0, p0, Lcom/google/android/material/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    move v1, v5

    :goto_d
    if-ge v1, v0, :cond_1a

    .line 741
    iget-object v2, p0, Lcom/google/android/material/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x1

    mul-int v7, v8, v1

    add-int/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_1a
    sub-int/2addr v6, v4

    move v0, v5

    :goto_e
    if-ltz v6, :cond_1d

    .line 747
    iget-object v1, p0, Lcom/google/android/material/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_1b

    .line 748
    iget-object v1, p0, Lcom/google/android/material/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 749
    iget-object v1, p0, Lcom/google/android/material/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_f

    .line 750
    :cond_1b
    iget-object v1, p0, Lcom/google/android/material/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-ge v1, v2, :cond_1c

    add-int/lit8 v0, v0, 0x1

    :cond_1c
    :goto_f
    add-int/lit8 v6, v6, -0x1

    goto :goto_e

    :cond_1d
    if-le v0, v4, :cond_1f

    .line 757
    iget-object v1, p0, Lcom/google/android/material/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 758
    iget-object v2, p0, Lcom/google/android/material/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 759
    iget-object v3, p0, Lcom/google/android/material/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 760
    iget-object v3, p0, Lcom/google/android/material/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 762
    :goto_10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v5, v3, :cond_1f

    if-ge v5, v0, :cond_1e

    sub-int v3, v0, v5

    sub-int/2addr v3, v4

    goto :goto_11

    :cond_1e
    move v3, v5

    .line 768
    :goto_11
    iget-object v6, p0, Lcom/google/android/material/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 769
    iget-object v6, p0, Lcom/google/android/material/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_1f
    return-void
.end method

.method private shouldDrawDivider(I)Z
    .locals 1

    .line 319
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    add-int/2addr p1, v0

    .line 320
    invoke-direct {p0, p1}, Lcom/google/android/material/listview/OPListView;->getDividerType(I)I

    move-result p1

    .line 321
    iget-object p0, p0, Lcom/google/android/material/listview/OPListView;->mDividerController:Lcom/google/android/material/listview/IDividerController;

    if-eqz p0, :cond_1

    if-eqz p0, :cond_0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private startDelDropAnimation()V
    .locals 5

    .line 558
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/listview/OPListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    .line 559
    invoke-direct {p0}, Lcom/google/android/material/listview/OPListView;->setDelViewLocation()V

    const/4 v0, 0x0

    move v1, v0

    .line 565
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 566
    iget-object v2, p0, Lcom/google/android/material/listview/OPListView;->mNowViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/16 v3, 0xc8

    .line 572
    iget-object v4, p0, Lcom/google/android/material/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {p0, v1, v2, v4}, Lcom/google/android/material/listview/OPListView;->getAnimator(ILandroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    int-to-long v3, v3

    .line 573
    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 575
    iget-object v3, p0, Lcom/google/android/material/listview/OPListView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 576
    iget-object v3, p0, Lcom/google/android/material/listview/OPListView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 577
    iget-object v3, p0, Lcom/google/android/material/listview/OPListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v2, v4, v0

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/listview/OPListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/google/android/material/listview/OPListView$3;

    invoke-direct {v1, p0}, Lcom/google/android/material/listview/OPListView$3;-><init>(Lcom/google/android/material/listview/OPListView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 598
    iget-object p0, p0, Lcom/google/android/material/listview/OPListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private startDelGoneAnimation()V
    .locals 9

    const/4 v0, 0x1

    .line 492
    iput-boolean v0, p0, Lcom/google/android/material/listview/OPListView;->mAnimRunning:Z

    .line 494
    iget-object v1, p0, Lcom/google/android/material/listview/OPListView;->mDelViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 496
    iput-boolean v0, p0, Lcom/google/android/material/listview/OPListView;->mDelAnimationFlag:Z

    .line 497
    iget-object p0, p0, Lcom/google/android/material/listview/OPListView;->mDeleteAnimationListener:Lcom/google/android/material/listview/OPListView$DeleteAnimationListener;

    if-eqz p0, :cond_0

    .line 498
    invoke-interface {p0}, Lcom/google/android/material/listview/OPListView$DeleteAnimationListener;->onAnimationUpdate()V

    :cond_0
    return-void

    .line 506
    :cond_1
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/google/android/material/listview/OPListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    const/16 v2, 0xc8

    const/4 v3, 0x2

    new-array v3, v3, [F

    .line 511
    fill-array-data v3, :array_0

    const-string v4, "alpha"

    invoke-static {v4, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_2

    .line 514
    iget-object v6, p0, Lcom/google/android/material/listview/OPListView;->mDelViewList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    new-array v7, v0, [Landroid/animation/PropertyValuesHolder;

    aput-object v3, v7, v4

    .line 515
    invoke-static {v6, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    int-to-long v7, v2

    .line 516
    invoke-virtual {v6, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 517
    iget-object v7, p0, Lcom/google/android/material/listview/OPListView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 518
    iget-object v7, p0, Lcom/google/android/material/listview/OPListView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 519
    iget-object v7, p0, Lcom/google/android/material/listview/OPListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    new-array v8, v0, [Landroid/animation/Animator;

    aput-object v6, v8, v4

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 522
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/listview/OPListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/google/android/material/listview/OPListView$2;

    invoke-direct {v1, p0}, Lcom/google/android/material/listview/OPListView$2;-><init>(Lcom/google/android/material/listview/OPListView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 552
    iget-object p0, p0, Lcom/google/android/material/listview/OPListView;->mDelAniSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 117
    invoke-super/range {p0 .. p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 119
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getOverscrollHeader()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 120
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getOverscrollFooter()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v4

    .line 123
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/listview/OPListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    move v6, v4

    :goto_2
    if-nez v6, :cond_3

    if-nez v2, :cond_3

    if-eqz v3, :cond_1a

    .line 127
    :cond_3
    iget-object v7, v0, Lcom/google/android/material/listview/OPListView;->mTempRect:Landroid/graphics/Rect;

    .line 128
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->left:I

    .line 129
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getRight()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getLeft()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Rect;->right:I

    .line 131
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v8

    .line 132
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v9

    .line 133
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getCount()I

    move-result v10

    .line 134
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v11

    sub-int/2addr v10, v11

    .line 135
    iget-boolean v11, v0, Lcom/google/android/material/listview/OPListView;->mHeaderDividersEnabled:Z

    .line 136
    iget-boolean v12, v0, Lcom/google/android/material/listview/OPListView;->mFooterDividersEnabled:Z

    .line 137
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v13

    .line 138
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 146
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/listview/OPListView;->isClipToPadding()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 147
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getListPaddingTop()I

    move-result v14

    .line 148
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getListPaddingBottom()I

    move-result v15

    goto :goto_3

    :cond_4
    move v14, v4

    move v15, v14

    .line 151
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getBottom()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getTop()I

    move-result v17

    sub-int v16, v16, v17

    sub-int v16, v16, v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getScrollY()I

    move-result v15

    add-int v15, v16, v15

    .line 152
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->isStackFromBottom()Z

    move-result v16

    const/4 v5, -0x1

    if-nez v16, :cond_10

    .line 156
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getScrollY()I

    move-result v2

    if-lez v8, :cond_5

    if-gez v2, :cond_5

    if-eqz v6, :cond_5

    .line 159
    iput v4, v7, Landroid/graphics/Rect;->bottom:I

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/listview/OPListView;->getDividerHeight()I

    move-result v2

    neg-int v2, v2

    iput v2, v7, Landroid/graphics/Rect;->top:I

    .line 161
    invoke-virtual {v0, v1, v7, v5}, Lcom/google/android/material/listview/OPListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    :cond_5
    move v2, v4

    :goto_4
    if-ge v2, v8, :cond_1a

    add-int v5, v13, v2

    if-ge v5, v9, :cond_6

    const/4 v14, 0x1

    goto :goto_5

    :cond_6
    move v14, v4

    :goto_5
    if-lt v5, v10, :cond_7

    const/16 v16, 0x1

    goto :goto_6

    :cond_7
    move/from16 v16, v4

    :goto_6
    if-nez v11, :cond_9

    if-nez v14, :cond_8

    goto :goto_7

    :cond_8
    move/from16 v19, v13

    goto :goto_9

    :cond_9
    :goto_7
    if-nez v12, :cond_a

    if-nez v16, :cond_8

    .line 170
    :cond_a
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 171
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getBottom()I

    move-result v4

    move/from16 v19, v13

    add-int/lit8 v13, v8, -0x1

    if-ne v2, v13, :cond_b

    const/4 v13, 0x1

    goto :goto_8

    :cond_b
    const/4 v13, 0x0

    :goto_8
    if-eqz v6, :cond_f

    .line 174
    invoke-direct {v0, v2}, Lcom/google/android/material/listview/OPListView;->shouldDrawDivider(I)Z

    move-result v20

    if-eqz v20, :cond_f

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getHeight()I

    move-result v20

    if-lez v20, :cond_f

    if-ge v4, v15, :cond_f

    if-eqz v3, :cond_c

    if-nez v13, :cond_f

    :cond_c
    add-int/lit8 v5, v5, 0x1

    if-nez v11, :cond_d

    if-nez v14, :cond_f

    if-lt v5, v9, :cond_f

    :cond_d
    if-nez v13, :cond_e

    if-nez v12, :cond_e

    if-nez v16, :cond_f

    if-ge v5, v10, :cond_f

    .line 182
    :cond_e
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTranslationY()F

    move-result v5

    float-to-int v5, v5

    add-int v13, v4, v5

    .line 183
    iput v13, v7, Landroid/graphics/Rect;->top:I

    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/listview/OPListView;->getDividerHeight()I

    move-result v13

    add-int/2addr v4, v13

    add-int/2addr v4, v5

    iput v4, v7, Landroid/graphics/Rect;->bottom:I

    .line 185
    invoke-virtual {v0, v1, v7, v2}, Lcom/google/android/material/listview/OPListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    :cond_f
    :goto_9
    add-int/lit8 v2, v2, 0x1

    move/from16 v13, v19

    const/4 v4, 0x0

    goto :goto_4

    :cond_10
    move/from16 v19, v13

    .line 193
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getScrollY()I

    move-result v3

    move v4, v2

    :goto_a
    if-ge v4, v8, :cond_19

    add-int v13, v19, v4

    if-ge v13, v9, :cond_11

    const/16 v16, 0x1

    goto :goto_b

    :cond_11
    const/16 v16, 0x0

    :goto_b
    if-lt v13, v10, :cond_12

    const/16 v18, 0x1

    goto :goto_c

    :cond_12
    const/16 v18, 0x0

    :goto_c
    if-nez v11, :cond_13

    if-nez v16, :cond_18

    :cond_13
    if-nez v12, :cond_14

    if-nez v18, :cond_18

    .line 201
    :cond_14
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 202
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v5

    if-eqz v6, :cond_18

    .line 203
    invoke-direct {v0, v4}, Lcom/google/android/material/listview/OPListView;->shouldDrawDivider(I)Z

    move-result v20

    if-eqz v20, :cond_18

    if-le v5, v14, :cond_18

    if-ne v4, v2, :cond_15

    const/16 v20, 0x1

    goto :goto_d

    :cond_15
    const/16 v20, 0x0

    :goto_d
    add-int/lit8 v13, v13, -0x1

    if-nez v11, :cond_16

    if-nez v16, :cond_18

    if-lt v13, v9, :cond_18

    :cond_16
    if-nez v20, :cond_17

    if-nez v12, :cond_17

    if-nez v18, :cond_18

    if-ge v13, v10, :cond_18

    .line 211
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/listview/OPListView;->getDividerHeight()I

    move-result v13

    sub-int v13, v5, v13

    iput v13, v7, Landroid/graphics/Rect;->top:I

    .line 212
    iput v5, v7, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v5, v4, -0x1

    .line 217
    invoke-virtual {v0, v1, v7, v5}, Lcom/google/android/material/listview/OPListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    :cond_18
    add-int/lit8 v4, v4, 0x1

    const/4 v5, -0x1

    goto :goto_a

    :cond_19
    if-lez v8, :cond_1a

    if-lez v3, :cond_1a

    if-eqz v6, :cond_1a

    .line 225
    iput v15, v7, Landroid/graphics/Rect;->top:I

    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/listview/OPListView;->getDividerHeight()I

    move-result v2

    add-int/2addr v15, v2

    iput v15, v7, Landroid/graphics/Rect;->bottom:I

    const/4 v2, -0x1

    .line 227
    invoke-virtual {v0, v1, v7, v2}, Lcom/google/android/material/listview/OPListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 235
    :cond_1a
    iget-boolean v1, v0, Lcom/google/android/material/listview/OPListView;->mDelAnimationFlag:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    const/4 v1, 0x0

    .line 236
    iput-boolean v1, v0, Lcom/google/android/material/listview/OPListView;->mDelAnimationFlag:Z

    .line 237
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/listview/OPListView;->startDelDropAnimation()V

    :cond_1b
    return-void
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 2

    .line 279
    invoke-virtual {p0}, Lcom/google/android/material/listview/OPListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 281
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    add-int/2addr p3, v1

    .line 282
    invoke-direct {p0, p3}, Lcom/google/android/material/listview/OPListView;->getDividerType(I)I

    move-result p3

    .line 283
    iget-object v1, p0, Lcom/google/android/material/listview/OPListView;->mDividerController:Lcom/google/android/material/listview/IDividerController;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    const/4 p3, 0x0

    .line 286
    iput p3, p2, Landroid/graphics/Rect;->left:I

    .line 287
    invoke-virtual {p0}, Landroid/widget/ListView;->getWidth()I

    move-result p0

    iput p0, p2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p3, v1, :cond_1

    const/16 p3, 0x64

    .line 290
    iput p3, p2, Landroid/graphics/Rect;->left:I

    .line 291
    invoke-virtual {p0}, Landroid/widget/ListView;->getWidth()I

    move-result p0

    add-int/lit8 p0, p0, -0x20

    iput p0, p2, Landroid/graphics/Rect;->right:I

    .line 294
    :cond_1
    :goto_0
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 295
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/google/android/material/listview/OPListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getDividerHeight()I
    .locals 0

    .line 264
    iget p0, p0, Lcom/google/android/material/listview/OPListView;->mDividerHeight:I

    return p0
.end method

.method public isDeleteAnimationEnabled()Z
    .locals 0

    .line 778
    iget-boolean p0, p0, Lcom/google/android/material/listview/OPListView;->mIsDisableAnimation:Z

    return p0
.end method

.method public setClipToPadding(Z)V
    .locals 0

    .line 272
    invoke-super {p0, p1}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 273
    iput-boolean p1, p0, Lcom/google/android/material/listview/OPListView;->mIsClipToPadding:Z

    return-void
.end method

.method public setDelPositionsList(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_13

    .line 381
    iget-boolean v0, p0, Lcom/google/android/material/listview/OPListView;->mAnimRunning:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 385
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/listview/OPListView;->isDeleteAnimationEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 386
    iget-object p1, p0, Lcom/google/android/material/listview/OPListView;->mDeleteAnimationListener:Lcom/google/android/material/listview/OPListView$DeleteAnimationListener;

    if-eqz p1, :cond_1

    .line 387
    invoke-interface {p1}, Lcom/google/android/material/listview/OPListView$DeleteAnimationListener;->onAnimationUpdate()V

    .line 388
    iget-object p1, p0, Lcom/google/android/material/listview/OPListView;->mDeleteAnimationListener:Lcom/google/android/material/listview/OPListView$DeleteAnimationListener;

    invoke-interface {p1}, Lcom/google/android/material/listview/OPListView$DeleteAnimationListener;->onAnimationStart()V

    .line 389
    iget-object p0, p0, Lcom/google/android/material/listview/OPListView;->mDeleteAnimationListener:Lcom/google/android/material/listview/OPListView$DeleteAnimationListener;

    invoke-interface {p0}, Lcom/google/android/material/listview/OPListView$DeleteAnimationListener;->onAnimationEnd()V

    :cond_1
    return-void

    .line 395
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 401
    :cond_3
    iput-boolean v1, p0, Lcom/google/android/material/listview/OPListView;->mAnimRunning:Z

    .line 402
    iget-object v2, p0, Lcom/google/android/material/listview/OPListView;->mDeleteAnimationListener:Lcom/google/android/material/listview/OPListView$DeleteAnimationListener;

    if-eqz v2, :cond_4

    .line 403
    invoke-interface {v2}, Lcom/google/android/material/listview/OPListView$DeleteAnimationListener;->onAnimationStart()V

    .line 406
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    iput v2, p0, Lcom/google/android/material/listview/OPListView;->mOriFirstPosition:I

    .line 407
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    .line 409
    iget v3, p0, Lcom/google/android/material/listview/OPListView;->mOriFirstPosition:I

    add-int/2addr v3, v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    add-int/2addr v4, v0

    const/4 v5, 0x0

    if-ne v3, v4, :cond_5

    .line 410
    iput-boolean v1, p0, Lcom/google/android/material/listview/OPListView;->mOriLastPage:Z

    goto :goto_0

    .line 412
    :cond_5
    iput-boolean v5, p0, Lcom/google/android/material/listview/OPListView;->mOriLastPage:Z

    .line 415
    :goto_0
    iput v5, p0, Lcom/google/android/material/listview/OPListView;->mOriUpperDeleteCount:I

    .line 416
    iput v5, p0, Lcom/google/android/material/listview/OPListView;->mOriCurDeleteCount:I

    .line 418
    iput v5, p0, Lcom/google/android/material/listview/OPListView;->mOriCurLeftCount:I

    .line 419
    iput v5, p0, Lcom/google/android/material/listview/OPListView;->mOriBelowLeftCount:I

    .line 421
    iget-object v3, p0, Lcom/google/android/material/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    if-nez v3, :cond_6

    .line 422
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/android/material/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    goto :goto_1

    .line 424
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 426
    :goto_1
    iget-object v3, p0, Lcom/google/android/material/listview/OPListView;->mDelViewList:Ljava/util/ArrayList;

    if-nez v3, :cond_7

    .line 427
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/android/material/listview/OPListView;->mDelViewList:Ljava/util/ArrayList;

    goto :goto_2

    .line 429
    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 431
    :goto_2
    iget-object v3, p0, Lcom/google/android/material/listview/OPListView;->mDelPosList:Ljava/util/ArrayList;

    if-nez v3, :cond_8

    .line 432
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/android/material/listview/OPListView;->mDelPosList:Ljava/util/ArrayList;

    goto :goto_3

    .line 434
    :cond_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :goto_3
    move v3, v5

    move v4, v3

    :goto_4
    if-ge v3, v0, :cond_b

    .line 440
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 441
    iget v7, p0, Lcom/google/android/material/listview/OPListView;->mOriFirstPosition:I

    if-ge v6, v7, :cond_9

    .line 442
    iget v6, p0, Lcom/google/android/material/listview/OPListView;->mOriUpperDeleteCount:I

    add-int/2addr v6, v1

    iput v6, p0, Lcom/google/android/material/listview/OPListView;->mOriUpperDeleteCount:I

    goto :goto_5

    :cond_9
    add-int/2addr v7, v2

    if-ge v6, v7, :cond_a

    .line 444
    iget-object v7, p0, Lcom/google/android/material/listview/OPListView;->mDelPosList:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    iget-object v7, p0, Lcom/google/android/material/listview/OPListView;->mDelViewList:Ljava/util/ArrayList;

    iget v8, p0, Lcom/google/android/material/listview/OPListView;->mOriFirstPosition:I

    sub-int/2addr v6, v8

    invoke-virtual {p0, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    iget v6, p0, Lcom/google/android/material/listview/OPListView;->mOriCurDeleteCount:I

    add-int/2addr v6, v1

    iput v6, p0, Lcom/google/android/material/listview/OPListView;->mOriCurDeleteCount:I

    goto :goto_5

    :cond_a
    add-int/lit8 v4, v4, 0x1

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 454
    :cond_b
    iget p1, p0, Lcom/google/android/material/listview/OPListView;->mOriUpperDeleteCount:I

    if-gtz p1, :cond_d

    iget-object p1, p0, Lcom/google/android/material/listview/OPListView;->mDelPosList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_c

    goto :goto_6

    :cond_c
    move p1, v5

    goto :goto_7

    :cond_d
    :goto_6
    move p1, v1

    :goto_7
    if-nez p1, :cond_e

    .line 459
    iput-boolean v5, p0, Lcom/google/android/material/listview/OPListView;->mAnimRunning:Z

    .line 462
    iget-object p1, p0, Lcom/google/android/material/listview/OPListView;->mDeleteAnimationListener:Lcom/google/android/material/listview/OPListView$DeleteAnimationListener;

    if-eqz p1, :cond_12

    .line 463
    invoke-interface {p1}, Lcom/google/android/material/listview/OPListView$DeleteAnimationListener;->onAnimationUpdate()V

    .line 464
    iget-object p0, p0, Lcom/google/android/material/listview/OPListView;->mDeleteAnimationListener:Lcom/google/android/material/listview/OPListView$DeleteAnimationListener;

    invoke-interface {p0}, Lcom/google/android/material/listview/OPListView$DeleteAnimationListener;->onAnimationEnd()V

    goto :goto_a

    .line 468
    :cond_e
    iget-object p1, p0, Lcom/google/android/material/listview/OPListView;->mDelPosList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_8
    if-ge v5, v2, :cond_11

    if-lez p1, :cond_f

    .line 471
    iget v3, p0, Lcom/google/android/material/listview/OPListView;->mOriFirstPosition:I

    add-int/2addr v3, v5

    .line 472
    iget-object v6, p0, Lcom/google/android/material/listview/OPListView;->mDelPosList:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 473
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 475
    iget-object v6, p0, Lcom/google/android/material/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 478
    :cond_f
    invoke-virtual {p0, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 480
    iget-object v6, p0, Lcom/google/android/material/listview/OPListView;->mDelOriViewTopList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    :goto_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 484
    :cond_11
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result p1

    iget v2, p0, Lcom/google/android/material/listview/OPListView;->mOriCurDeleteCount:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/google/android/material/listview/OPListView;->mOriCurLeftCount:I

    .line 485
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    sub-int/2addr p1, v0

    sub-int/2addr p1, v1

    sub-int/2addr p1, v4

    iput p1, p0, Lcom/google/android/material/listview/OPListView;->mOriBelowLeftCount:I

    .line 487
    invoke-direct {p0}, Lcom/google/android/material/listview/OPListView;->startDelGoneAnimation()V

    :cond_12
    :goto_a
    return-void

    .line 379
    :cond_13
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "The input parameter d is null!"

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDeleteAnimationEnabled(Z)V
    .locals 0

    .line 775
    iput-boolean p1, p0, Lcom/google/android/material/listview/OPListView;->mIsDisableAnimation:Z

    return-void
.end method

.method public setDeleteAnimationListener(Lcom/google/android/material/listview/OPListView$DeleteAnimationListener;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/google/android/material/listview/OPListView;->mDeleteAnimationListener:Lcom/google/android/material/listview/OPListView$DeleteAnimationListener;

    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/google/android/material/listview/OPListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 255
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 256
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    return-void
.end method

.method public setDividerController(Lcom/google/android/material/listview/IDividerController;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/google/android/material/listview/OPListView;->mDividerController:Lcom/google/android/material/listview/IDividerController;

    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .locals 0

    .line 112
    iput-boolean p1, p0, Lcom/google/android/material/listview/OPListView;->mFooterDividersEnabled:Z

    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/google/android/material/listview/OPListView;->mHeaderDividersEnabled:Z

    return-void
.end method
