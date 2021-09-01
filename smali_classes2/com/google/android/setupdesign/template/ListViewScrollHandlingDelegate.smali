.class public Lcom/google/android/setupdesign/template/ListViewScrollHandlingDelegate;
.super Ljava/lang/Object;
.source "ListViewScrollHandlingDelegate.java"

# interfaces
.implements Lcom/google/android/setupdesign/template/RequireScrollMixin$ScrollHandlingDelegate;
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private final listView:Landroid/widget/ListView;

.field private final requireScrollMixin:Lcom/google/android/setupdesign/template/RequireScrollMixin;


# direct methods
.method public constructor <init>(Lcom/google/android/setupdesign/template/RequireScrollMixin;Landroid/widget/ListView;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/android/setupdesign/template/ListViewScrollHandlingDelegate;->requireScrollMixin:Lcom/google/android/setupdesign/template/RequireScrollMixin;

    .line 45
    iput-object p2, p0, Lcom/google/android/setupdesign/template/ListViewScrollHandlingDelegate;->listView:Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    add-int/2addr p2, p3

    if-lt p2, p4, :cond_0

    .line 77
    iget-object p0, p0, Lcom/google/android/setupdesign/template/ListViewScrollHandlingDelegate;->requireScrollMixin:Lcom/google/android/setupdesign/template/RequireScrollMixin;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->notifyScrollabilityChange(Z)V

    goto :goto_0

    .line 79
    :cond_0
    iget-object p0, p0, Lcom/google/android/setupdesign/template/ListViewScrollHandlingDelegate;->requireScrollMixin:Lcom/google/android/setupdesign/template/RequireScrollMixin;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->notifyScrollabilityChange(Z)V

    :goto_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method public pageScrollDown()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/google/android/setupdesign/template/ListViewScrollHandlingDelegate;->listView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    .line 66
    iget-object p0, p0, Lcom/google/android/setupdesign/template/ListViewScrollHandlingDelegate;->listView:Landroid/widget/ListView;

    const/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1}, Landroid/widget/ListView;->smoothScrollBy(II)V

    :cond_0
    return-void
.end method

.method public startListening()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/google/android/setupdesign/template/ListViewScrollHandlingDelegate;->listView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 53
    iget-object v0, p0, Lcom/google/android/setupdesign/template/ListViewScrollHandlingDelegate;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/google/android/setupdesign/template/ListViewScrollHandlingDelegate;->listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 55
    iget-object p0, p0, Lcom/google/android/setupdesign/template/ListViewScrollHandlingDelegate;->requireScrollMixin:Lcom/google/android/setupdesign/template/RequireScrollMixin;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->notifyScrollabilityChange(Z)V

    goto :goto_0

    :cond_0
    const-string p0, "ListViewDelegate"

    const-string v0, "Cannot require scroll. List view is null"

    .line 58
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
