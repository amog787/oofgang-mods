.class public Lcom/google/android/material/edgeeffect/SpringRefreshLayout;
.super Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
.source "SpringRefreshLayout.java"


# instance fields
.field private mChildwithOverScrolling:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/edgeeffect/SpringRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/google/android/material/edgeeffect/SpringRefreshLayout;->mChildwithOverScrolling:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringRefreshLayout;->mChildwithOverScrolling:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 30
    :cond_0
    invoke-super {p0, p1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setOverScrollChild(Landroid/view/View;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/google/android/material/edgeeffect/SpringRefreshLayout;->mChildwithOverScrolling:Landroid/view/View;

    return-void
.end method
