.class Lcom/google/android/material/tabbar/TabBarView$4;
.super Ljava/lang/Object;
.source "TabBarView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/tabbar/TabBarView;->setupwithVPAnimate(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$collapsingAppbarLayout:Lcom/google/android/material/appbar/CollapsingAppbarLayout;


# direct methods
.method constructor <init>(Lcom/google/android/material/tabbar/TabBarView;Lcom/google/android/material/appbar/CollapsingAppbarLayout;)V
    .locals 0

    .line 836
    iput-object p2, p0, Lcom/google/android/material/tabbar/TabBarView$4;->val$collapsingAppbarLayout:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 839
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const v1, 0x3d4ccccd    # 0.05f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 840
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView$4;->val$collapsingAppbarLayout:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setPrepareDraw(Z)V

    .line 842
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarView$4;->val$collapsingAppbarLayout:Lcom/google/android/material/appbar/CollapsingAppbarLayout;

    const/high16 v0, 0x437f0000    # 255.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingAppbarLayout;->setExpandedTitleAlpha(I)V

    return-void
.end method
