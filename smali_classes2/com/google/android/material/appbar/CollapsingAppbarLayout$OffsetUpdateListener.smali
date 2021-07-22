.class Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;
.super Ljava/lang/Object;
.source "CollapsingAppbarLayout.java"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/appbar/CollapsingAppbarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OffsetUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;


# direct methods
.method constructor <init>(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)V
    .locals 0

    .line 1832
    iput-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 9

    .line 1837
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->access$600(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)Z

    move-result p1

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->access$700(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_4

    .line 1840
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    iput p2, p1, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->currentOffset:I

    .line 1842
    iget-object p1, p1, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v0

    .line 1844
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    move v2, v0

    :goto_1
    const/4 v3, 0x2

    if-ge v2, v1, :cond_4

    .line 1845
    iget-object v4, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1846
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/appbar/CollapsingAppbarLayout$LayoutParams;

    .line 1847
    invoke-static {v4}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->getViewOffsetHelper(Landroid/view/View;)Lcom/google/android/material/appbar/ViewOffsetHelper;

    move-result-object v6

    .line 1849
    iget v7, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->collapseMode:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_3

    if-eq v7, v3, :cond_2

    goto :goto_2

    :cond_2
    neg-int v3, p2

    int-to-float v3, v3

    .line 1855
    iget v4, v5, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->parallaxMult:F

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v6, v3}, Lcom/google/android/material/appbar/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    goto :goto_2

    :cond_3
    neg-int v3, p2

    .line 1851
    iget-object v5, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    .line 1852
    invoke-virtual {v5, v4}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->getMaxOffsetForPinChild(Landroid/view/View;)I

    move-result v4

    invoke-static {v3, v0, v4}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result v3

    .line 1851
    invoke-virtual {v6, v3}, Lcom/google/android/material/appbar/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1863
    :cond_4
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->updateScrimVisibility()V

    .line 1865
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    iget-object v2, v1, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    if-lez p1, :cond_5

    .line 1866
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1870
    :cond_5
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    .line 1871
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, p1

    .line 1872
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    int-to-float v2, v1

    div-float/2addr p1, v2

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v4

    if-nez p1, :cond_6

    .line 1873
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {p1, v0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->access$802(Lcom/google/android/material/appbar/CollapsingAppbarLayout;I)I

    .line 1875
    :cond_6
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    .line 1876
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {p2}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->access$900(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)Lcom/google/android/material/emptyview/EmptyPageView;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 1877
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {p2}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->access$900(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)Lcom/google/android/material/emptyview/EmptyPageView;

    move-result-object p2

    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {v2}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->access$900(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)Lcom/google/android/material/emptyview/EmptyPageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    iget-object v5, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/google/android/material/R$dimen;->control_empty_image_margin_top:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    .line 1878
    invoke-static {v6}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->access$900(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)Lcom/google/android/material/emptyview/EmptyPageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v6

    iget-object v7, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {v7}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->access$900(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)Lcom/google/android/material/emptyview/EmptyPageView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/material/emptyview/EmptyPageView;->getEmptyPaddingBottom()I

    move-result v7

    iget-object v8, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    .line 1879
    invoke-static {v8}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->access$900(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)Lcom/google/android/material/emptyview/EmptyPageView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/material/emptyview/EmptyPageView;->getEmptyPaddingBottom()I

    move-result v8

    div-int/2addr v1, v3

    if-le v8, v1, :cond_7

    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    .line 1880
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/google/android/material/R$dimen;->control_empty_image_margin_top:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    goto :goto_3

    :cond_7
    move v1, v0

    :goto_3
    sub-int/2addr v7, v1

    .line 1877
    invoke-virtual {p2, v2, v5, v6, v7}, Lcom/google/android/material/emptyview/EmptyPageView;->setEmptyPadding(IIII)V

    .line 1882
    :cond_8
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {p2}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->access$1000(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 1883
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    iget-object p2, p2, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/MultiCollapsingHelper;

    invoke-virtual {p2, p1}, Lcom/google/android/material/internal/MultiCollapsingHelper;->setExpansionFraction(F)V

    :cond_9
    const p2, 0x3f4ccccd    # 0.8f

    cmpl-float p2, p1, p2

    if-lez p2, :cond_a

    cmpg-float p2, p1, v4

    if-gez p2, :cond_a

    .line 1885
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {p2}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->access$1100(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)Z

    move-result p2

    if-eqz p2, :cond_b

    :cond_a
    const p2, 0x3e4ccccd    # 0.2f

    cmpg-float p2, p1, p2

    if-gez p2, :cond_c

    .line 1886
    :cond_b
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {p2, v0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->access$1002(Lcom/google/android/material/appbar/CollapsingAppbarLayout;Z)Z

    .line 1888
    :cond_c
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {p2}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->access$1200(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnFractionChangeListener;

    move-result-object p2

    if-eqz p2, :cond_d

    .line 1889
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {p2}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->access$1200(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnFractionChangeListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnFractionChangeListener;->onFractionChanged(F)V

    .line 1891
    :cond_d
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {p2}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->access$1300(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnFractionChangeListener;

    move-result-object p2

    if-eqz p2, :cond_e

    .line 1892
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-static {p0}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->access$1300(Lcom/google/android/material/appbar/CollapsingAppbarLayout;)Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnFractionChangeListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout$OnFractionChangeListener;->onFractionChanged(F)V

    :cond_e
    :goto_4
    return-void
.end method
