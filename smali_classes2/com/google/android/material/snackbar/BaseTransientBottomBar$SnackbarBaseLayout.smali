.class Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;
.super Landroid/widget/FrameLayout;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SnackbarBaseLayout"
.end annotation


# instance fields
.field private mOnAttachStateChangeListener:Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnAttachStateChangeListener;

.field private mOnLayoutChangeListener:Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnLayoutChangeListener;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 630
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 634
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 635
    sget-object v0, Lcom/google/android/material/R$styleable;->SnackbarLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 636
    sget p2, Lcom/google/android/material/R$styleable;->SnackbarLayout_elevation:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 637
    sget p2, Lcom/google/android/material/R$styleable;->SnackbarLayout_elevation:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 640
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p1, 0x1

    .line 642
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClickable(Z)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 655
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 656
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->mOnAttachStateChangeListener:Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnAttachStateChangeListener;

    if-eqz v0, :cond_0

    .line 657
    invoke-interface {v0, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnAttachStateChangeListener;->onViewAttachedToWindow(Landroid/view/View;)V

    .line 660
    :cond_0
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 665
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 666
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->mOnAttachStateChangeListener:Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnAttachStateChangeListener;

    if-eqz v0, :cond_0

    .line 667
    invoke-interface {v0, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnAttachStateChangeListener;->onViewDetachedFromWindow(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 647
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 648
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->mOnLayoutChangeListener:Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnLayoutChangeListener;

    if-eqz v0, :cond_0

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 649
    invoke-interface/range {v0 .. v5}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnLayoutChangeListener;->onLayoutChange(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method

.method setOnAttachStateChangeListener(Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnAttachStateChangeListener;)V
    .locals 0

    .line 678
    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->mOnAttachStateChangeListener:Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnAttachStateChangeListener;

    return-void
.end method

.method setOnLayoutChangeListener(Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnLayoutChangeListener;)V
    .locals 0

    .line 673
    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->mOnLayoutChangeListener:Lcom/google/android/material/snackbar/BaseTransientBottomBar$OnLayoutChangeListener;

    return-void
.end method
