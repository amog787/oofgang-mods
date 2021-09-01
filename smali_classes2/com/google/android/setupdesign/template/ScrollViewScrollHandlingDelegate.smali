.class public Lcom/google/android/setupdesign/template/ScrollViewScrollHandlingDelegate;
.super Ljava/lang/Object;
.source "ScrollViewScrollHandlingDelegate.java"

# interfaces
.implements Lcom/google/android/setupdesign/template/RequireScrollMixin$ScrollHandlingDelegate;
.implements Lcom/google/android/setupdesign/view/BottomScrollView$BottomScrollListener;


# instance fields
.field private final requireScrollMixin:Lcom/google/android/setupdesign/template/RequireScrollMixin;

.field private final scrollView:Lcom/google/android/setupdesign/view/BottomScrollView;


# direct methods
.method public constructor <init>(Lcom/google/android/setupdesign/template/RequireScrollMixin;Landroid/widget/ScrollView;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/android/setupdesign/template/ScrollViewScrollHandlingDelegate;->requireScrollMixin:Lcom/google/android/setupdesign/template/RequireScrollMixin;

    .line 43
    instance-of p1, p2, Lcom/google/android/setupdesign/view/BottomScrollView;

    if-eqz p1, :cond_0

    .line 44
    check-cast p2, Lcom/google/android/setupdesign/view/BottomScrollView;

    iput-object p2, p0, Lcom/google/android/setupdesign/template/ScrollViewScrollHandlingDelegate;->scrollView:Lcom/google/android/setupdesign/view/BottomScrollView;

    goto :goto_0

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot set non-BottomScrollView. Found="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ScrollViewDelegate"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lcom/google/android/setupdesign/template/ScrollViewScrollHandlingDelegate;->scrollView:Lcom/google/android/setupdesign/view/BottomScrollView;

    :goto_0
    return-void
.end method


# virtual methods
.method public onRequiresScroll()V
    .locals 1

    .line 58
    iget-object p0, p0, Lcom/google/android/setupdesign/template/ScrollViewScrollHandlingDelegate;->requireScrollMixin:Lcom/google/android/setupdesign/template/RequireScrollMixin;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->notifyScrollabilityChange(Z)V

    return-void
.end method

.method public onScrolledToBottom()V
    .locals 1

    .line 53
    iget-object p0, p0, Lcom/google/android/setupdesign/template/ScrollViewScrollHandlingDelegate;->requireScrollMixin:Lcom/google/android/setupdesign/template/RequireScrollMixin;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->notifyScrollabilityChange(Z)V

    return-void
.end method

.method public pageScrollDown()V
    .locals 1

    .line 72
    iget-object p0, p0, Lcom/google/android/setupdesign/template/ScrollViewScrollHandlingDelegate;->scrollView:Lcom/google/android/setupdesign/view/BottomScrollView;

    if-eqz p0, :cond_0

    const/16 v0, 0x82

    .line 73
    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->pageScroll(I)Z

    :cond_0
    return-void
.end method

.method public startListening()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/google/android/setupdesign/template/ScrollViewScrollHandlingDelegate;->scrollView:Lcom/google/android/setupdesign/view/BottomScrollView;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0, p0}, Lcom/google/android/setupdesign/view/BottomScrollView;->setBottomScrollListener(Lcom/google/android/setupdesign/view/BottomScrollView$BottomScrollListener;)V

    goto :goto_0

    :cond_0
    const-string p0, "ScrollViewDelegate"

    const-string v0, "Cannot require scroll. Scroll view is null."

    .line 66
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
