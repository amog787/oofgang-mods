.class Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator$1;
.super Ljava/lang/Object;
.source "TabBarView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->updateOrRecreateIndicatorAnimation(ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;

.field final synthetic val$finalTargetLeft:I

.field final synthetic val$finalTargetRight:I


# direct methods
.method constructor <init>(Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;II)V
    .locals 0

    .line 1482
    iput-object p1, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator$1;->this$1:Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;

    iput p2, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator$1;->val$finalTargetRight:I

    iput p3, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator$1;->val$finalTargetLeft:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 10

    .line 1485
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    .line 1490
    iget v0, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator$1;->val$finalTargetRight:I

    int-to-float v0, v0

    const/high16 v1, 0x44480000    # 800.0f

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    .line 1492
    :cond_0
    iget v4, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator$1;->val$finalTargetRight:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x4069000000000000L    # 200.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    div-double/2addr v0, v2

    sub-double/2addr v8, v0

    mul-double/2addr v8, v6

    add-double/2addr v4, v8

    const-wide/high16 v0, 0x4064000000000000L    # 160.0

    sub-double/2addr v4, v0

    double-to-int v0, v4

    .line 1494
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator$1;->this$1:Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;

    .line 1495
    invoke-static {v1}, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->access$900(Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;)I

    move-result v2

    iget v3, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator$1;->val$finalTargetLeft:I

    invoke-static {v2, v3, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IIF)I

    move-result v2

    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator$1;->this$1:Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;

    .line 1496
    invoke-static {p0}, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->access$1000(Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;)I

    move-result p0

    invoke-static {p0, v0, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IIF)I

    move-result p0

    .line 1494
    invoke-virtual {v1, v2, p0}, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->setIndicatorPosition(II)V

    return-void
.end method
