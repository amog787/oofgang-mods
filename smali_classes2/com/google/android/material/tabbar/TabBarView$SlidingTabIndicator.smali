.class Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;
.super Landroid/widget/LinearLayout;
.source "TabBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/tabbar/TabBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SlidingTabIndicator"
.end annotation


# instance fields
.field private animationStartLeft:I

.field private animationStartRight:I

.field private final defaultSelectionIndicator:Landroid/graphics/drawable/GradientDrawable;

.field indicatorAnimator:Landroid/animation/ValueAnimator;

.field indicatorLeft:I

.field indicatorRight:I

.field private layoutDirection:I

.field private selectedIndicatorHeight:I

.field private final selectedIndicatorPaint:Landroid/graphics/Paint;

.field selectedPosition:I

.field selectionOffset:F

.field final synthetic this$0:Lcom/google/android/material/tabbar/TabBarView;


# direct methods
.method constructor <init>(Lcom/google/android/material/tabbar/TabBarView;Landroid/content/Context;)V
    .locals 0

    .line 1237
    iput-object p1, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabbar/TabBarView;

    .line 1238
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 1225
    iput p1, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->selectedPosition:I

    .line 1228
    iput p1, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->layoutDirection:I

    .line 1230
    iput p1, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->indicatorLeft:I

    .line 1231
    iput p1, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->indicatorRight:I

    .line 1234
    iput p1, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->animationStartLeft:I

    .line 1235
    iput p1, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->animationStartRight:I

    const/4 p1, 0x0

    .line 1239
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 1240
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    .line 1241
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->defaultSelectionIndicator:Landroid/graphics/drawable/GradientDrawable;

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;)I
    .locals 0

    .line 1220
    iget p0, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->animationStartRight:I

    return p0
.end method

.method static synthetic access$900(Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;)I
    .locals 0

    .line 1220
    iget p0, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->animationStartLeft:I

    return p0
.end method

.method private updateIndicatorPosition()V
    .locals 15

    .line 1372
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabbar/TabBarView;

    iget-object v1, v0, Lcom/google/android/material/tabbar/TabBarView;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    if-eqz v1, :cond_5

    invoke-static {v0}, Lcom/google/android/material/tabbar/TabBarView;->access$700(Lcom/google/android/material/tabbar/TabBarView;)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 1373
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabbar/TabBarView;

    iget-object v0, v0, Lcom/google/android/material/tabbar/TabBarView;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    iget v1, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->selectedPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1377
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-lez v2, :cond_2

    .line 1378
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 1379
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    .line 1381
    iget v3, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->selectionOffset:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    iget v3, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->selectedPosition:I

    iget-object v4, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabbar/TabBarView;

    iget-object v4, v4, Lcom/google/android/material/tabbar/TabBarView;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v1

    if-ge v3, v4, :cond_4

    .line 1384
    iget-object v3, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabbar/TabBarView;

    invoke-static {v3}, Lcom/google/android/material/tabbar/TabBarView;->access$700(Lcom/google/android/material/tabbar/TabBarView;)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->selectedPosition:I

    add-int/2addr v4, v1

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->isVisible()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1385
    iget v1, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->selectedPosition:I

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 1387
    :cond_0
    iget v3, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->selectedPosition:I

    add-int/2addr v1, v3

    .line 1389
    :goto_0
    iget-object v3, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabbar/TabBarView;

    iget-object v3, v3, Lcom/google/android/material/tabbar/TabBarView;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tabbar/TabBarItemView;

    .line 1390
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v3

    .line 1391
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getRight()I

    move-result v1

    .line 1392
    iget v4, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->selectionOffset:F

    int-to-float v3, v3

    mul-float v5, v4, v3

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v7, v6, v4

    int-to-float v2, v2

    mul-float/2addr v7, v2

    add-float/2addr v5, v7

    float-to-int v2, v5

    int-to-float v1, v1

    mul-float v5, v4, v1

    sub-float v7, v6, v4

    int-to-float v0, v0

    mul-float/2addr v7, v0

    add-float/2addr v5, v7

    float-to-int v0, v5

    float-to-double v7, v4

    const-wide v9, 0x3fc999999999999aL    # 0.2

    cmpg-double v5, v7, v9

    const/high16 v7, 0x43e10000    # 450.0f

    if-gez v5, :cond_1

    mul-float/2addr v1, v4

    sub-float v5, v6, v4

    int-to-float v0, v0

    mul-float/2addr v5, v0

    add-float/2addr v1, v5

    sub-float v0, v6, v4

    mul-float/2addr v0, v7

    mul-float/2addr v0, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v0, v5

    add-float/2addr v1, v0

    float-to-int v0, v1

    mul-float/2addr v3, v4

    sub-float v1, v6, v4

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v3, v1

    sub-float/2addr v6, v4

    mul-float/2addr v6, v7

    mul-float/2addr v6, v4

    div-float/2addr v6, v5

    sub-float/2addr v3, v6

    float-to-int v1, v3

    goto :goto_1

    :cond_1
    mul-float/2addr v1, v4

    sub-float v5, v6, v4

    int-to-float v0, v0

    mul-float/2addr v5, v0

    add-float/2addr v1, v5

    float-to-double v0, v1

    sub-float v5, v6, v4

    mul-float/2addr v5, v7

    const v8, 0x3f8ccccd    # 1.1f

    mul-float/2addr v5, v8

    float-to-double v11, v5

    float-to-double v4, v4

    sub-double v4, v9, v4

    .line 1399
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v13, 0x3fbd14e3bcd35a86L    # 0.1136

    mul-double/2addr v4, v13

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    sub-double v4, v13, v4

    mul-double/2addr v11, v4

    add-double/2addr v0, v11

    iget v4, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->selectionOffset:F

    sub-float v5, v6, v4

    mul-float/2addr v5, v7

    float-to-double v11, v5

    sub-double/2addr v0, v11

    double-to-int v0, v0

    mul-float/2addr v3, v4

    sub-float v1, v6, v4

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v3, v1

    float-to-double v1, v3

    sub-float v3, v6, v4

    mul-float/2addr v3, v7

    const v5, 0x3f666666    # 0.9f

    mul-float/2addr v3, v5

    float-to-double v11, v3

    float-to-double v3, v4

    sub-double/2addr v9, v3

    .line 1401
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v8, 0x3fc1c779a6b50b0fL    # 0.1389

    mul-double/2addr v3, v8

    add-double/2addr v3, v13

    mul-double/2addr v11, v3

    add-double/2addr v1, v11

    iget v3, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->selectionOffset:F

    sub-float/2addr v6, v3

    mul-float/2addr v6, v7

    float-to-double v3, v6

    sub-double/2addr v1, v3

    double-to-int v1, v1

    :goto_1
    move v2, v1

    goto :goto_2

    .line 1406
    :cond_2
    iget v0, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->selectedPosition:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabbar/TabBarView;

    invoke-static {v0}, Lcom/google/android/material/tabbar/TabBarView;->access$700(Lcom/google/android/material/tabbar/TabBarView;)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->selectedPosition:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1407
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabbar/TabBarView;

    invoke-static {v0}, Lcom/google/android/material/tabbar/TabBarView;->access$700(Lcom/google/android/material/tabbar/TabBarView;)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    iget p0, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->selectedPosition:I

    add-int/2addr p0, v1

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return-void

    :cond_3
    const/4 v2, -0x1

    move v0, v2

    .line 1414
    :cond_4
    :goto_2
    invoke-virtual {p0, v2, v0}, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->setIndicatorPosition(II)V

    :cond_5
    return-void
.end method

.method private updateOrRecreateIndicatorAnimation(ZII)V
    .locals 4

    .line 1437
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabbar/TabBarView;

    iget-object v1, v0, Lcom/google/android/material/tabbar/TabBarView;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    if-eqz v1, :cond_5

    invoke-static {v0}, Lcom/google/android/material/tabbar/TabBarView;->access$700(Lcom/google/android/material/tabbar/TabBarView;)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 1439
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabbar/TabBarView;

    invoke-static {v0}, Lcom/google/android/material/tabbar/TabBarView;->access$700(Lcom/google/android/material/tabbar/TabBarView;)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1440
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabbar/TabBarView;

    iget-object v0, v0, Lcom/google/android/material/tabbar/TabBarView;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 1442
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabbar/TabBarView;

    iget-object v0, v0, Lcom/google/android/material/tabbar/TabBarView;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    .line 1446
    invoke-direct {p0}, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->updateIndicatorPosition()V

    return-void

    .line 1450
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 1451
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    .line 1464
    iget v2, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->indicatorLeft:I

    .line 1465
    iget v3, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->indicatorRight:I

    if-ne v2, v1, :cond_2

    if-ne v3, v0, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_3

    .line 1475
    iput v2, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->animationStartLeft:I

    .line 1476
    iput v3, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->animationStartRight:I

    .line 1481
    :cond_3
    new-instance v2, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator$1;-><init>(Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;II)V

    if-eqz p1, :cond_4

    .line 1502
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    .line 1503
    sget-object v0, Landroidx/animation/AnimatorUtils;->op_control_interpolator_fast_out_slow_in_auxiliary:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v0, p3

    .line 1504
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 p3, 0x2

    new-array p3, p3, [F

    .line 1505
    fill-array-data p3, :array_0

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 1506
    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1507
    new-instance p3, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator$2;

    invoke-direct {p3, p0, p2}, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator$2;-><init>(Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;I)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1520
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 1523
    :cond_4
    iget-object p1, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 1524
    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_5
    :goto_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method animateIndicatorToPosition(II)V
    .locals 1

    .line 1428
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1429
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x1

    .line 1432
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->updateOrRecreateIndicatorAnimation(ZII)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1532
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabbar/TabBarView;

    iget-object v0, v0, Lcom/google/android/material/tabbar/TabBarView;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1533
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1535
    :goto_0
    iget v1, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->selectedIndicatorHeight:I

    if-ltz v1, :cond_1

    move v0, v1

    .line 1542
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    .line 1543
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    add-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    .line 1544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "indicatorTop = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", indicatorBottom = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "chenhb"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    iget v0, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->indicatorLeft:I

    if-ltz v0, :cond_5

    iget v3, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->indicatorRight:I

    if-le v3, v0, :cond_5

    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabbar/TabBarView;

    invoke-static {v0}, Lcom/google/android/material/tabbar/TabBarView;->access$100(Lcom/google/android/material/tabbar/TabBarView;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1548
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabbar/TabBarView;

    iget-object v0, v0, Lcom/google/android/material/tabbar/TabBarView;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->defaultSelectionIndicator:Landroid/graphics/drawable/GradientDrawable;

    .line 1549
    :goto_1
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1551
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1552
    iget v3, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->indicatorLeft:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x14

    invoke-static {v4, v5}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/android/material/R$dimen;->design_tab_bar_indicator_margin:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    sub-int/2addr v1, v4

    iget v4, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->indicatorRight:I

    .line 1553
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const/16 v6, 0xc

    invoke-static {v5, v6}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/google/android/material/R$dimen;->design_tab_bar_indicator_margin:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    sub-int/2addr v2, v5

    .line 1552
    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1554
    iget-object v1, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_4

    .line 1555
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ne v2, v3, :cond_3

    .line 1558
    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 1557
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_2

    .line 1560
    :cond_3
    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 1563
    :cond_4
    :goto_2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1567
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1356
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 1358
    iget-object p1, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1363
    iget p2, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->selectedPosition:I

    const/4 p3, -0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->updateOrRecreateIndicatorAnimation(ZII)V

    goto :goto_0

    .line 1367
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->updateIndicatorPosition()V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 1298
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1300
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    return-void

    .line 1309
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabbar/TabBarView;

    iget-object v0, v0, Lcom/google/android/material/tabbar/TabBarView;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    .line 1314
    iget-object v4, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabbar/TabBarView;

    iget-object v4, v4, Lcom/google/android/material/tabbar/TabBarView;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1315
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 1316
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-gtz v3, :cond_3

    return-void

    .line 1325
    :cond_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v4, 0x10

    invoke-static {v2, v4}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v2

    float-to-int v2, v2

    mul-int v4, v3, v0

    .line 1328
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v5

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v5, v2

    const/4 v2, 0x1

    if-gt v4, v5, :cond_7

    move v4, v1

    :goto_1
    if-ge v1, v0, :cond_6

    .line 1332
    iget-object v5, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabbar/TabBarView;

    iget-object v5, v5, Lcom/google/android/material/tabbar/TabBarView;->menuView:Lcom/google/android/material/tabbar/TabBarMenuView;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 1333
    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v7, 0x0

    if-ne v6, v3, :cond_4

    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_5

    .line 1334
    :cond_4
    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1335
    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v4, v2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    move v2, v4

    goto :goto_2

    .line 1343
    :cond_7
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabbar/TabBarView;

    invoke-static {v0}, Lcom/google/android/material/tabbar/TabBarView;->access$800(Lcom/google/android/material/tabbar/TabBarView;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1344
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->this$0:Lcom/google/android/material/tabbar/TabBarView;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabbar/TabBarView;->updateTabViews(Z)V

    :goto_2
    if-eqz v2, :cond_8

    .line 1350
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_8
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2

    .line 1284
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 1288
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 1289
    iget v0, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->layoutDirection:I

    if-eq v0, p1, :cond_0

    .line 1290
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1291
    iput p1, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->layoutDirection:I

    :cond_0
    return-void
.end method

.method setIndicatorPosition(II)V
    .locals 1

    .line 1419
    iget v0, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->indicatorLeft:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->indicatorRight:I

    if-eq p2, v0, :cond_1

    .line 1421
    :cond_0
    iput p1, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->indicatorLeft:I

    .line 1422
    iput p2, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->indicatorRight:I

    .line 1423
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method setIndicatorPositionFromTabPosition(IF)V
    .locals 1

    .line 1269
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1270
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1273
    :cond_0
    iput p1, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->selectedPosition:I

    .line 1274
    iput p2, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->selectionOffset:F

    .line 1275
    invoke-direct {p0}, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->updateIndicatorPosition()V

    return-void
.end method

.method setSelectedIndicatorColor(I)V
    .locals 1

    .line 1245
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1246
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1247
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method setSelectedIndicatorHeight(I)V
    .locals 1

    .line 1252
    iget v0, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->selectedIndicatorHeight:I

    if-eq v0, p1, :cond_0

    .line 1253
    iput p1, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->selectedIndicatorHeight:I

    .line 1254
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method
