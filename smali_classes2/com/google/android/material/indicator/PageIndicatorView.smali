.class public Lcom/google/android/material/indicator/PageIndicatorView;
.super Landroid/view/View;
.source "PageIndicatorView.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
.implements Lcom/google/android/material/indicator/IndicatorManager$Listener;
.implements Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final HANDLER:Landroid/os/Handler;


# instance fields
.field private idleRunnable:Ljava/lang/Runnable;

.field private isInteractionEnabled:Z

.field private manager:Lcom/google/android/material/indicator/IndicatorManager;

.field private setObserver:Landroid/database/DataSetObserver;

.field private viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/material/indicator/PageIndicatorView;->HANDLER:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 49
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 804
    new-instance v0, Lcom/google/android/material/indicator/PageIndicatorView$2;

    invoke-direct {v0, p0}, Lcom/google/android/material/indicator/PageIndicatorView$2;-><init>(Lcom/google/android/material/indicator/PageIndicatorView;)V

    iput-object v0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->idleRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/indicator/PageIndicatorView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 804
    new-instance v0, Lcom/google/android/material/indicator/PageIndicatorView$2;

    invoke-direct {v0, p0}, Lcom/google/android/material/indicator/PageIndicatorView$2;-><init>(Lcom/google/android/material/indicator/PageIndicatorView;)V

    iput-object v0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->idleRunnable:Ljava/lang/Runnable;

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/indicator/PageIndicatorView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 804
    new-instance p3, Lcom/google/android/material/indicator/PageIndicatorView$2;

    invoke-direct {p3, p0}, Lcom/google/android/material/indicator/PageIndicatorView$2;-><init>(Lcom/google/android/material/indicator/PageIndicatorView;)V

    iput-object p3, p0, Lcom/google/android/material/indicator/PageIndicatorView;->idleRunnable:Ljava/lang/Runnable;

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/indicator/PageIndicatorView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 804
    new-instance p3, Lcom/google/android/material/indicator/PageIndicatorView$2;

    invoke-direct {p3, p0}, Lcom/google/android/material/indicator/PageIndicatorView$2;-><init>(Lcom/google/android/material/indicator/PageIndicatorView;)V

    iput-object p3, p0, Lcom/google/android/material/indicator/PageIndicatorView;->idleRunnable:Ljava/lang/Runnable;

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/indicator/PageIndicatorView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/indicator/PageIndicatorView;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/google/android/material/indicator/PageIndicatorView;->updateState()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/material/indicator/PageIndicatorView;)Lcom/google/android/material/indicator/IndicatorManager;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/material/indicator/PageIndicatorView;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/google/android/material/indicator/PageIndicatorView;->hideWithAnimation()V

    return-void
.end method

.method private adjustPosition(I)I
    .locals 0

    .line 770
    iget-object p0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {p0}, Lcom/google/android/material/indicator/IndicatorManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object p0

    .line 771
    invoke-virtual {p0}, Lcom/google/android/material/indicator/draw/data/Indicator;->getCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-le p1, p0, :cond_1

    move p1, p0

    :cond_1
    :goto_0
    return p1
.end method

.method private displayWithAnimation()V
    .locals 2

    .line 785
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 786
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xfa

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private hideWithAnimation()V
    .locals 2

    .line 790
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 791
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xfa

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 588
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/indicator/PageIndicatorView;->initIndicatorManager(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 590
    iget-object p1, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {p1}, Lcom/google/android/material/indicator/IndicatorManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/indicator/draw/data/Indicator;->isFadeOnIdle()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 591
    invoke-direct {p0}, Lcom/google/android/material/indicator/PageIndicatorView;->startIdleRunnable()V

    :cond_0
    return-void
.end method

.method private initIndicatorManager(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 597
    new-instance p2, Lcom/google/android/material/indicator/IndicatorManager;

    invoke-direct {p2, p0}, Lcom/google/android/material/indicator/IndicatorManager;-><init>(Lcom/google/android/material/indicator/IndicatorManager$Listener;)V

    iput-object p2, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    .line 598
    invoke-virtual {p2}, Lcom/google/android/material/indicator/IndicatorManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object p2

    .line 599
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/material/indicator/draw/data/Indicator;->setPaddingLeft(I)V

    .line 600
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/material/indicator/draw/data/Indicator;->setPaddingTop(I)V

    .line 601
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/material/indicator/draw/data/Indicator;->setPaddingRight(I)V

    .line 602
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/material/indicator/draw/data/Indicator;->setPaddingBottom(I)V

    const/4 v0, 0x0

    .line 603
    invoke-virtual {p2, v0}, Lcom/google/android/material/indicator/draw/data/Indicator;->setInteractiveAnimation(Z)V

    const/4 v1, 0x1

    .line 604
    invoke-virtual {p2, v1}, Lcom/google/android/material/indicator/draw/data/Indicator;->setAutoVisibility(Z)V

    .line 605
    invoke-virtual {p2, v0}, Lcom/google/android/material/indicator/draw/data/Indicator;->setDynamicCount(Z)V

    .line 606
    sget-object v1, Lcom/google/android/material/indicator/animation/type/AnimationType;->WORM:Lcom/google/android/material/indicator/animation/type/AnimationType;

    invoke-virtual {p2, v1}, Lcom/google/android/material/indicator/draw/data/Indicator;->setAnimationType(Lcom/google/android/material/indicator/animation/type/AnimationType;)V

    .line 607
    sget-object v1, Lcom/google/android/material/indicator/draw/data/RtlMode;->Auto:Lcom/google/android/material/indicator/draw/data/RtlMode;

    invoke-virtual {p2, v1}, Lcom/google/android/material/indicator/draw/data/Indicator;->setRtlMode(Lcom/google/android/material/indicator/draw/data/RtlMode;)V

    .line 608
    invoke-virtual {p2, v0}, Lcom/google/android/material/indicator/draw/data/Indicator;->setFadeOnIdle(Z)V

    const-wide/16 v0, 0xbb8

    .line 609
    invoke-virtual {p2, v0, v1}, Lcom/google/android/material/indicator/draw/data/Indicator;->setIdleDuration(J)V

    .line 610
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$dimen;->qs_page_indicator_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p2, v0}, Lcom/google/android/material/indicator/draw/data/Indicator;->setRadius(I)V

    .line 611
    sget-object v0, Lcom/google/android/material/indicator/draw/data/Orientation;->HORIZONTAL:Lcom/google/android/material/indicator/draw/data/Orientation;

    invoke-virtual {p2, v0}, Lcom/google/android/material/indicator/draw/data/Indicator;->setOrientation(Lcom/google/android/material/indicator/draw/data/Orientation;)V

    .line 612
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$dimen;->op_control_margin_space2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/material/indicator/draw/data/Indicator;->setPadding(I)V

    const-wide/16 v0, 0x7d

    .line 613
    invoke-virtual {p2, v0, v1}, Lcom/google/android/material/indicator/draw/data/Indicator;->setAnimationDuration(J)V

    .line 614
    sget v0, Lcom/google/android/material/R$color;->op_control_icon_color_active_default:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/material/indicator/draw/data/Indicator;->setSelectedColor(I)V

    .line 615
    sget v0, Lcom/google/android/material/R$color;->op_control_icon_color_disable_default:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/google/android/material/indicator/draw/data/Indicator;->setUnselectedColor(I)V

    .line 616
    invoke-virtual {p2}, Lcom/google/android/material/indicator/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/material/indicator/PageIndicatorView;->isInteractionEnabled:Z

    return-void
.end method

.method private isRtl()Z
    .locals 4

    .line 716
    sget-object v0, Lcom/google/android/material/indicator/PageIndicatorView$3;->$SwitchMap$com$google$android$material$indicator$draw$data$RtlMode:[I

    iget-object v1, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {v1}, Lcom/google/android/material/indicator/IndicatorManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/indicator/draw/data/Indicator;->getRtlMode()Lcom/google/android/material/indicator/draw/data/RtlMode;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    return v3

    .line 724
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {p0}, Landroidx/core/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p0

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :cond_2
    :goto_0
    return v1
.end method

.method private isViewMeasured()Z
    .locals 1

    .line 731
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    if-eqz p0, :cond_0

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

.method private onPageScroll(IF)V
    .locals 4

    .line 700
    iget-object v0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {v0}, Lcom/google/android/material/indicator/IndicatorManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object v0

    .line 701
    invoke-virtual {v0}, Lcom/google/android/material/indicator/draw/data/Indicator;->getAnimationType()Lcom/google/android/material/indicator/animation/type/AnimationType;

    move-result-object v1

    .line 702
    invoke-virtual {v0}, Lcom/google/android/material/indicator/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result v2

    .line 703
    invoke-direct {p0}, Lcom/google/android/material/indicator/PageIndicatorView;->isViewMeasured()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    sget-object v2, Lcom/google/android/material/indicator/animation/type/AnimationType;->NONE:Lcom/google/android/material/indicator/animation/type/AnimationType;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    return-void

    .line 709
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/indicator/PageIndicatorView;->isRtl()Z

    move-result v1

    invoke-static {v0, p1, p2, v1}, Lcom/google/android/material/indicator/utils/CoordinatesUtils;->getProgress(Lcom/google/android/material/indicator/draw/data/Indicator;IFZ)Landroid/util/Pair;

    move-result-object p1

    .line 710
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 711
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 712
    invoke-virtual {p0, p2, p1}, Lcom/google/android/material/indicator/PageIndicatorView;->setProgress(IF)V

    return-void
.end method

.method private onPageSelect(I)V
    .locals 2

    .line 686
    iget-object v0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {v0}, Lcom/google/android/material/indicator/IndicatorManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object v0

    .line 687
    invoke-direct {p0}, Lcom/google/android/material/indicator/PageIndicatorView;->isViewMeasured()Z

    move-result v1

    .line 688
    invoke-virtual {v0}, Lcom/google/android/material/indicator/draw/data/Indicator;->getCount()I

    move-result v0

    if-eqz v1, :cond_1

    .line 691
    invoke-direct {p0}, Lcom/google/android/material/indicator/PageIndicatorView;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    sub-int p1, v0, p1

    .line 695
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/indicator/PageIndicatorView;->setSelection(I)V

    :cond_1
    return-void
.end method

.method private registerSetObserver()V
    .locals 1

    .line 620
    iget-object v0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->setObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 624
    :cond_0
    new-instance v0, Lcom/google/android/material/indicator/PageIndicatorView$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/indicator/PageIndicatorView$1;-><init>(Lcom/google/android/material/indicator/PageIndicatorView;)V

    iput-object v0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->setObserver:Landroid/database/DataSetObserver;

    .line 632
    :try_start_0
    iget-object v0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->setObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 634
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private startIdleRunnable()V
    .locals 4

    .line 795
    sget-object v0, Lcom/google/android/material/indicator/PageIndicatorView;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/material/indicator/PageIndicatorView;->idleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 796
    sget-object v0, Lcom/google/android/material/indicator/PageIndicatorView;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/material/indicator/PageIndicatorView;->idleRunnable:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {p0}, Lcom/google/android/material/indicator/IndicatorManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/indicator/draw/data/Indicator;->getIdleDuration()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private stopIdleRunnable()V
    .locals 2

    .line 800
    sget-object v0, Lcom/google/android/material/indicator/PageIndicatorView;->HANDLER:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/material/indicator/PageIndicatorView;->idleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 801
    invoke-direct {p0}, Lcom/google/android/material/indicator/PageIndicatorView;->displayWithAnimation()V

    return-void
.end method

.method private unRegisterSetObserver()V
    .locals 2

    .line 639
    iget-object v0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->setObserver:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 644
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/indicator/PageIndicatorView;->setObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    const/4 v0, 0x0

    .line 645
    iput-object v0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->setObserver:Landroid/database/DataSetObserver;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 647
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateState()V
    .locals 3

    .line 652
    iget-object v0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 656
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    .line 657
    invoke-direct {p0}, Lcom/google/android/material/indicator/PageIndicatorView;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v1, v0, -0x1

    iget-object v2, p0, Lcom/google/android/material/indicator/PageIndicatorView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/material/indicator/PageIndicatorView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    .line 659
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {v2}, Lcom/google/android/material/indicator/IndicatorManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/material/indicator/draw/data/Indicator;->setSelectedPosition(I)V

    .line 660
    iget-object v2, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {v2}, Lcom/google/android/material/indicator/IndicatorManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/material/indicator/draw/data/Indicator;->setSelectingPosition(I)V

    .line 661
    iget-object v2, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {v2}, Lcom/google/android/material/indicator/IndicatorManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/material/indicator/draw/data/Indicator;->setLastSelectedPosition(I)V

    .line 662
    iget-object v1, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {v1}, Lcom/google/android/material/indicator/IndicatorManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/material/indicator/draw/data/Indicator;->setCount(I)V

    .line 663
    iget-object v0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {v0}, Lcom/google/android/material/indicator/IndicatorManager;->animate()Lcom/google/android/material/indicator/animation/AnimationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/indicator/animation/AnimationManager;->end()V

    .line 665
    invoke-direct {p0}, Lcom/google/android/material/indicator/PageIndicatorView;->updateVisibility()V

    .line 666
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_2
    :goto_1
    return-void
.end method

.method private updateVisibility()V
    .locals 4

    .line 670
    iget-object v0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {v0}, Lcom/google/android/material/indicator/IndicatorManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/indicator/draw/data/Indicator;->isAutoVisibility()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {v0}, Lcom/google/android/material/indicator/IndicatorManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/indicator/draw/data/Indicator;->getCount()I

    move-result v0

    .line 675
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-le v0, v2, :cond_1

    const/4 v0, 0x0

    .line 678
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    if-eq v1, v3, :cond_2

    if-gt v0, v2, :cond_2

    .line 681
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getAnimationDuration()J
    .locals 2

    .line 402
    iget-object p0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {p0}, Lcom/google/android/material/indicator/IndicatorManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/indicator/draw/data/Indicator;->getAnimationDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCount()I
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {p0}, Lcom/google/android/material/indicator/IndicatorManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/indicator/draw/data/Indicator;->getCount()I

    move-result p0

    return p0
.end method

.method public getPadding()I
    .locals 0

    .line 303
    iget-object p0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {p0}, Lcom/google/android/material/indicator/IndicatorManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/indicator/draw/data/Indicator;->getPadding()I

    move-result p0

    return p0
.end method

.method public getRadius()I
    .locals 0

    .line 266
    iget-object p0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {p0}, Lcom/google/android/material/indicator/IndicatorManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/indicator/draw/data/Indicator;->getRadius()I

    move-result p0

    return p0
.end method

.method public getSelectedColor()I
    .locals 0

    .line 348
    iget-object p0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {p0}, Lcom/google/android/material/indicator/IndicatorManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/indicator/draw/data/Indicator;->getSelectedColor()I

    move-result p0

    return p0
.end method

.method public getSelection()I
    .locals 0

    .line 495
    iget-object p0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {p0}, Lcom/google/android/material/indicator/IndicatorManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/indicator/draw/data/Indicator;->getSelectedPosition()I

    move-result p0

    return p0
.end method

.method public getStrokeWidth()I
    .locals 0

    .line 338
    iget-object p0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {p0}, Lcom/google/android/material/indicator/IndicatorManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/indicator/draw/data/Indicator;->getStroke()I

    move-result p0

    return p0
.end method

.method public getUnselectedColor()I
    .locals 0

    .line 357
    iget-object p0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {p0}, Lcom/google/android/material/indicator/IndicatorManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/indicator/draw/data/Indicator;->getUnselectedColor()I

    move-result p0

    return p0
.end method

.method public onAdapterChanged(Landroidx/viewpager/widget/ViewPager;Landroidx/viewpager/widget/PagerAdapter;Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 0

    .line 165
    iget-object p1, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {p1}, Lcom/google/android/material/indicator/IndicatorManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/indicator/draw/data/Indicator;->isDynamicCount()Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 166
    iget-object p1, p0, Lcom/google/android/material/indicator/PageIndicatorView;->setObserver:Landroid/database/DataSetObserver;

    if-eqz p1, :cond_0

    .line 167
    invoke-virtual {p2, p1}, Landroidx/viewpager/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    const/4 p1, 0x0

    .line 168
    iput-object p1, p0, Lcom/google/android/material/indicator/PageIndicatorView;->setObserver:Landroid/database/DataSetObserver;

    .line 170
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/indicator/PageIndicatorView;->registerSetObserver()V

    .line 172
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/indicator/PageIndicatorView;->updateState()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 71
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/google/android/material/indicator/PageIndicatorView;->unRegisterSetObserver()V

    .line 78
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {p0}, Lcom/google/android/material/indicator/IndicatorManager;->drawer()Lcom/google/android/material/indicator/draw/DrawManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/material/indicator/draw/DrawManager;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onIndicatorUpdated()V
    .locals 0

    .line 143
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {v0}, Lcom/google/android/material/indicator/IndicatorManager;->drawer()Lcom/google/android/material/indicator/draw/DrawManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/indicator/draw/DrawManager;->measureViewSize(II)Landroid/util/Pair;

    move-result-object p1

    .line 110
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 159
    iget-object p1, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {p1}, Lcom/google/android/material/indicator/IndicatorManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object p1

    iget-boolean p0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->isInteractionEnabled:Z

    invoke-virtual {p1, p0}, Lcom/google/android/material/indicator/draw/data/Indicator;->setInteractiveAnimation(Z)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/indicator/PageIndicatorView;->onPageScroll(IF)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lcom/google/android/material/indicator/PageIndicatorView;->onPageSelect(I)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 94
    instance-of v0, p1, Lcom/google/android/material/indicator/draw/data/PositionSavedState;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {v0}, Lcom/google/android/material/indicator/IndicatorManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object v0

    .line 96
    check-cast p1, Lcom/google/android/material/indicator/draw/data/PositionSavedState;

    .line 97
    invoke-virtual {p1}, Lcom/google/android/material/indicator/draw/data/PositionSavedState;->getSelectedPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/indicator/draw/data/Indicator;->setSelectedPosition(I)V

    .line 98
    invoke-virtual {p1}, Lcom/google/android/material/indicator/draw/data/PositionSavedState;->getSelectingPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/indicator/draw/data/Indicator;->setSelectingPosition(I)V

    .line 99
    invoke-virtual {p1}, Lcom/google/android/material/indicator/draw/data/PositionSavedState;->getLastSelectedPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/indicator/draw/data/Indicator;->setLastSelectedPosition(I)V

    .line 100
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0

    .line 103
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {v0}, Lcom/google/android/material/indicator/IndicatorManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object v0

    .line 84
    new-instance v1, Lcom/google/android/material/indicator/draw/data/PositionSavedState;

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/google/android/material/indicator/draw/data/PositionSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 85
    invoke-virtual {v0}, Lcom/google/android/material/indicator/draw/data/Indicator;->getSelectedPosition()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/google/android/material/indicator/draw/data/PositionSavedState;->setSelectedPosition(I)V

    .line 86
    invoke-virtual {v0}, Lcom/google/android/material/indicator/draw/data/Indicator;->getSelectingPosition()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/google/android/material/indicator/draw/data/PositionSavedState;->setSelectingPosition(I)V

    .line 87
    invoke-virtual {v0}, Lcom/google/android/material/indicator/draw/data/Indicator;->getLastSelectedPosition()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/google/android/material/indicator/draw/data/PositionSavedState;->setLastSelectedPosition(I)V

    return-object v1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 127
    iget-object p1, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {p1}, Lcom/google/android/material/indicator/IndicatorManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/indicator/draw/data/Indicator;->isFadeOnIdle()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 129
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 135
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/indicator/PageIndicatorView;->startIdleRunnable()V

    goto :goto_0

    .line 131
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/indicator/PageIndicatorView;->stopIdleRunnable()V

    :goto_0
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 121
    iget-object p0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {p0}, Lcom/google/android/material/indicator/IndicatorManager;->drawer()Lcom/google/android/material/indicator/draw/DrawManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/material/indicator/draw/DrawManager;->touch(Landroid/view/MotionEvent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public releaseViewPager()V
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 456
    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 457
    iget-object v0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->removeOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V

    const/4 v0, 0x0

    .line 458
    iput-object v0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    :cond_0
    return-void
.end method

.method public setAnimationDuration(J)V
    .locals 0

    .line 389
    iget-object p0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {p0}, Lcom/google/android/material/indicator/IndicatorManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/indicator/draw/data/Indicator;->setAnimationDuration(J)V

    return-void
.end method

.method public setAnimationType(Lcom/google/android/material/indicator/animation/type/AnimationType;)V
    .locals 2

    .line 406
    iget-object v0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/indicator/IndicatorManager;->onValueUpdated(Lcom/google/android/material/indicator/animation/data/Value;)V

    if-eqz p1, :cond_0

    .line 409
    iget-object v0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {v0}, Lcom/google/android/material/indicator/IndicatorManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/indicator/draw/data/Indicator;->setAnimationType(Lcom/google/android/material/indicator/animation/type/AnimationType;)V

    goto :goto_0

    .line 411
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {p1}, Lcom/google/android/material/indicator/IndicatorManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object p1

    sget-object v0, Lcom/google/android/material/indicator/animation/type/AnimationType;->NONE:Lcom/google/android/material/indicator/animation/type/AnimationType;

    invoke-virtual {p1, v0}, Lcom/google/android/material/indicator/draw/data/Indicator;->setAnimationType(Lcom/google/android/material/indicator/animation/type/AnimationType;)V

    .line 413
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setAutoVisibility(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 368
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {v0}, Lcom/google/android/material/indicator/IndicatorManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/indicator/draw/data/Indicator;->setAutoVisibility(Z)V

    .line 372
    invoke-direct {p0}, Lcom/google/android/material/indicator/PageIndicatorView;->updateVisibility()V

    return-void
.end method

.method public setClickListener(Lcom/google/android/material/indicator/draw/controller/DrawController$ClickListener;)V
    .locals 0

    .line 584
    iget-object p0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {p0}, Lcom/google/android/material/indicator/IndicatorManager;->drawer()Lcom/google/android/material/indicator/draw/DrawManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/material/indicator/draw/DrawManager;->setClickListener(Lcom/google/android/material/indicator/draw/controller/DrawController$ClickListener;)V

    return-void
.end method

.method public setDynamicCount(Z)V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {v0}, Lcom/google/android/material/indicator/IndicatorManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/indicator/draw/data/Indicator;->setDynamicCount(Z)V

    if-eqz p1, :cond_0

    .line 207
    invoke-direct {p0}, Lcom/google/android/material/indicator/PageIndicatorView;->registerSetObserver()V

    goto :goto_0

    .line 209
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/indicator/PageIndicatorView;->unRegisterSetObserver()V

    :goto_0
    return-void
.end method

.method public setFadeOnIdle(Z)V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {v0}, Lcom/google/android/material/indicator/IndicatorManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/indicator/draw/data/Indicator;->setFadeOnIdle(Z)V

    if-eqz p1, :cond_0

    .line 224
    invoke-direct {p0}, Lcom/google/android/material/indicator/PageIndicatorView;->startIdleRunnable()V

    goto :goto_0

    .line 226
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/indicator/PageIndicatorView;->stopIdleRunnable()V

    :goto_0
    return-void
.end method

.method public setIdleDuration(J)V
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {v0}, Lcom/google/android/material/indicator/IndicatorManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/material/indicator/draw/data/Indicator;->setIdleDuration(J)V

    .line 394
    iget-object p1, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {p1}, Lcom/google/android/material/indicator/IndicatorManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/indicator/draw/data/Indicator;->isFadeOnIdle()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 395
    invoke-direct {p0}, Lcom/google/android/material/indicator/PageIndicatorView;->startIdleRunnable()V

    goto :goto_0

    .line 397
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/indicator/PageIndicatorView;->stopIdleRunnable()V

    :goto_0
    return-void
.end method

.method public setInteractiveAnimation(Z)V
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {v0}, Lcom/google/android/material/indicator/IndicatorManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/indicator/draw/data/Indicator;->setInteractiveAnimation(Z)V

    .line 425
    iput-boolean p1, p0, Lcom/google/android/material/indicator/PageIndicatorView;->isInteractionEnabled:Z

    return-void
.end method

.method public setNumPages(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 181
    iget-object v0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {v0}, Lcom/google/android/material/indicator/IndicatorManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/indicator/draw/data/Indicator;->getCount()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 182
    iget-object v0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {v0}, Lcom/google/android/material/indicator/IndicatorManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/indicator/draw/data/Indicator;->setCount(I)V

    .line 183
    invoke-direct {p0}, Lcom/google/android/material/indicator/PageIndicatorView;->updateVisibility()V

    .line 184
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setOrientation(Lcom/google/android/material/indicator/draw/data/Orientation;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 383
    iget-object v0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {v0}, Lcom/google/android/material/indicator/IndicatorManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/indicator/draw/data/Indicator;->setOrientation(Lcom/google/android/material/indicator/draw/data/Orientation;)V

    .line 384
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setPadding(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {v0}, Lcom/google/android/material/indicator/IndicatorManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object v0

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/indicator/draw/data/Indicator;->setPadding(I)V

    .line 295
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPadding(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 279
    :cond_0
    invoke-static {p1}, Lcom/google/android/material/indicator/utils/DensityUtils;->dpToPx(I)I

    move-result p1

    .line 280
    iget-object v0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {v0}, Lcom/google/android/material/indicator/IndicatorManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/indicator/draw/data/Indicator;->setPadding(I)V

    .line 281
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPosition(I)V
    .locals 3

    .line 526
    iget-object v0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {v0}, Lcom/google/android/material/indicator/IndicatorManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object v0

    .line 527
    invoke-virtual {v0}, Lcom/google/android/material/indicator/draw/data/Indicator;->getAnimationType()Lcom/google/android/material/indicator/animation/type/AnimationType;

    move-result-object v1

    .line 528
    sget-object v2, Lcom/google/android/material/indicator/animation/type/AnimationType;->NONE:Lcom/google/android/material/indicator/animation/type/AnimationType;

    invoke-virtual {v0, v2}, Lcom/google/android/material/indicator/draw/data/Indicator;->setAnimationType(Lcom/google/android/material/indicator/animation/type/AnimationType;)V

    .line 530
    invoke-virtual {p0, p1}, Lcom/google/android/material/indicator/PageIndicatorView;->setSelection(I)V

    .line 531
    invoke-virtual {v0, v1}, Lcom/google/android/material/indicator/draw/data/Indicator;->setAnimationType(Lcom/google/android/material/indicator/animation/type/AnimationType;)V

    return-void
.end method

.method public setProgress(IF)V
    .locals 4

    .line 554
    iget-object v0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {v0}, Lcom/google/android/material/indicator/IndicatorManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object v0

    .line 555
    invoke-virtual {v0}, Lcom/google/android/material/indicator/draw/data/Indicator;->isInteractiveAnimation()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 559
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/indicator/draw/data/Indicator;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_3

    move p1, v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :cond_3
    :goto_1
    const/4 v1, 0x0

    cmpg-float v2, p2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-gez v2, :cond_4

    move p2, v1

    goto :goto_2

    :cond_4
    cmpl-float v1, p2, v3

    if-lez v1, :cond_5

    move p2, v3

    :cond_5
    :goto_2
    cmpl-float v1, p2, v3

    if-nez v1, :cond_6

    .line 575
    invoke-virtual {v0}, Lcom/google/android/material/indicator/draw/data/Indicator;->getSelectedPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/indicator/draw/data/Indicator;->setLastSelectedPosition(I)V

    .line 576
    invoke-virtual {v0, p1}, Lcom/google/android/material/indicator/draw/data/Indicator;->setSelectedPosition(I)V

    .line 579
    :cond_6
    invoke-virtual {v0, p1}, Lcom/google/android/material/indicator/draw/data/Indicator;->setSelectingPosition(I)V

    .line 580
    iget-object p0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {p0}, Lcom/google/android/material/indicator/IndicatorManager;->animate()Lcom/google/android/material/indicator/animation/AnimationManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/material/indicator/animation/AnimationManager;->interactive(F)V

    return-void
.end method

.method public setRadius(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {v0}, Lcom/google/android/material/indicator/IndicatorManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object v0

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/indicator/draw/data/Indicator;->setRadius(I)V

    .line 258
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setRadius(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 241
    :cond_0
    invoke-static {p1}, Lcom/google/android/material/indicator/utils/DensityUtils;->dpToPx(I)I

    move-result p1

    .line 242
    iget-object v0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {v0}, Lcom/google/android/material/indicator/IndicatorManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/indicator/draw/data/Indicator;->setRadius(I)V

    .line 243
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setRtlMode(Lcom/google/android/material/indicator/draw/data/RtlMode;)V
    .locals 2

    .line 464
    iget-object v0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {v0}, Lcom/google/android/material/indicator/IndicatorManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object v0

    if-nez p1, :cond_0

    .line 466
    sget-object p1, Lcom/google/android/material/indicator/draw/data/RtlMode;->Off:Lcom/google/android/material/indicator/draw/data/RtlMode;

    invoke-virtual {v0, p1}, Lcom/google/android/material/indicator/draw/data/Indicator;->setRtlMode(Lcom/google/android/material/indicator/draw/data/RtlMode;)V

    goto :goto_0

    .line 468
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/material/indicator/draw/data/Indicator;->setRtlMode(Lcom/google/android/material/indicator/draw/data/RtlMode;)V

    .line 471
    :goto_0
    iget-object p1, p0, Lcom/google/android/material/indicator/PageIndicatorView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-nez p1, :cond_1

    return-void

    .line 475
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/material/indicator/draw/data/Indicator;->getSelectedPosition()I

    move-result p1

    .line 478
    invoke-direct {p0}, Lcom/google/android/material/indicator/PageIndicatorView;->isRtl()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 479
    invoke-virtual {v0}, Lcom/google/android/material/indicator/draw/data/Indicator;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int p1, v1, p1

    goto :goto_1

    .line 481
    :cond_2
    iget-object v1, p0, Lcom/google/android/material/indicator/PageIndicatorView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_3

    .line 482
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    .line 485
    :cond_3
    :goto_1
    invoke-virtual {v0, p1}, Lcom/google/android/material/indicator/draw/data/Indicator;->setLastSelectedPosition(I)V

    .line 486
    invoke-virtual {v0, p1}, Lcom/google/android/material/indicator/draw/data/Indicator;->setSelectingPosition(I)V

    .line 487
    invoke-virtual {v0, p1}, Lcom/google/android/material/indicator/draw/data/Indicator;->setSelectedPosition(I)V

    .line 488
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSelectedColor(I)V
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {v0}, Lcom/google/android/material/indicator/IndicatorManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/indicator/draw/data/Indicator;->setSelectedColor(I)V

    .line 344
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSelection(I)V
    .locals 2

    .line 505
    iget-object v0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {v0}, Lcom/google/android/material/indicator/IndicatorManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object v0

    .line 506
    invoke-direct {p0, p1}, Lcom/google/android/material/indicator/PageIndicatorView;->adjustPosition(I)I

    move-result p1

    .line 508
    invoke-virtual {v0}, Lcom/google/android/material/indicator/draw/data/Indicator;->getSelectedPosition()I

    move-result v1

    if-eq p1, v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/material/indicator/draw/data/Indicator;->getSelectingPosition()I

    move-result v1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 512
    invoke-virtual {v0, v1}, Lcom/google/android/material/indicator/draw/data/Indicator;->setInteractiveAnimation(Z)V

    .line 513
    invoke-virtual {v0}, Lcom/google/android/material/indicator/draw/data/Indicator;->getSelectedPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/indicator/draw/data/Indicator;->setLastSelectedPosition(I)V

    .line 514
    invoke-virtual {v0, p1}, Lcom/google/android/material/indicator/draw/data/Indicator;->setSelectingPosition(I)V

    .line 515
    invoke-virtual {v0, p1}, Lcom/google/android/material/indicator/draw/data/Indicator;->setSelectedPosition(I)V

    .line 516
    iget-object p0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {p0}, Lcom/google/android/material/indicator/IndicatorManager;->animate()Lcom/google/android/material/indicator/animation/AnimationManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/indicator/animation/AnimationManager;->basic()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 3

    .line 308
    iget-object v0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {v0}, Lcom/google/android/material/indicator/IndicatorManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/indicator/draw/data/Indicator;->getRadius()I

    move-result v0

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    move p1, v0

    .line 317
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {v0}, Lcom/google/android/material/indicator/IndicatorManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object v0

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/indicator/draw/data/Indicator;->setStroke(I)V

    .line 318
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 1

    .line 322
    invoke-static {p1}, Lcom/google/android/material/indicator/utils/DensityUtils;->dpToPx(I)I

    move-result p1

    .line 323
    iget-object v0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {v0}, Lcom/google/android/material/indicator/IndicatorManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/indicator/draw/data/Indicator;->getRadius()I

    move-result v0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    move p1, v0

    .line 332
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {v0}, Lcom/google/android/material/indicator/IndicatorManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/indicator/draw/data/Indicator;->setStroke(I)V

    .line 333
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setUnselectedColor(I)V
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {v0}, Lcom/google/android/material/indicator/IndicatorManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/indicator/draw/data/Indicator;->setUnselectedColor(I)V

    .line 353
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 436
    invoke-virtual {p0}, Lcom/google/android/material/indicator/PageIndicatorView;->releaseViewPager()V

    if-nez p1, :cond_0

    return-void

    .line 441
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/indicator/PageIndicatorView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 442
    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 443
    iget-object p1, p0, Lcom/google/android/material/indicator/PageIndicatorView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->addOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V

    .line 444
    iget-object p1, p0, Lcom/google/android/material/indicator/PageIndicatorView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 445
    iget-object p1, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {p1}, Lcom/google/android/material/indicator/IndicatorManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/indicator/PageIndicatorView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/indicator/draw/data/Indicator;->setViewPagerId(I)V

    .line 447
    iget-object p1, p0, Lcom/google/android/material/indicator/PageIndicatorView;->manager:Lcom/google/android/material/indicator/IndicatorManager;

    invoke-virtual {p1}, Lcom/google/android/material/indicator/IndicatorManager;->indicator()Lcom/google/android/material/indicator/draw/data/Indicator;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/indicator/draw/data/Indicator;->isDynamicCount()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/indicator/PageIndicatorView;->setDynamicCount(Z)V

    .line 448
    invoke-direct {p0}, Lcom/google/android/material/indicator/PageIndicatorView;->updateState()V

    return-void
.end method
