.class public Lcom/android/settings/widget/FloatingAppBarScrollingViewBehavior;
.super Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;
.source "FloatingAppBarScrollingViewBehavior.java"


# instance fields
.field private initialized:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 42
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;->onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    .line 43
    iget-boolean p2, p0, Lcom/android/settings/widget/FloatingAppBarScrollingViewBehavior;->initialized:Z

    if-nez p2, :cond_0

    instance-of p2, p3, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 44
    iput-boolean p2, p0, Lcom/android/settings/widget/FloatingAppBarScrollingViewBehavior;->initialized:Z

    .line 45
    check-cast p3, Lcom/google/android/material/appbar/AppBarLayout;

    .line 46
    invoke-virtual {p0, p3}, Lcom/android/settings/widget/FloatingAppBarScrollingViewBehavior;->setAppBarLayoutTransparent(Lcom/google/android/material/appbar/AppBarLayout;)V

    :cond_0
    return p1
.end method

.method setAppBarLayoutTransparent(Lcom/google/android/material/appbar/AppBarLayout;)V
    .locals 0

    const/4 p0, 0x0

    .line 53
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/4 p0, 0x0

    .line 54
    invoke-virtual {p1, p0}, Lcom/google/android/material/appbar/AppBarLayout;->setTargetElevation(F)V

    return-void
.end method

.method protected shouldHeaderOverlapScrollingChild()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
