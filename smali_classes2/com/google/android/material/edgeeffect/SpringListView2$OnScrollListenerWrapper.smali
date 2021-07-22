.class Lcom/google/android/material/edgeeffect/SpringListView2$OnScrollListenerWrapper;
.super Ljava/lang/Object;
.source "SpringListView2.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/edgeeffect/SpringListView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnScrollListenerWrapper"
.end annotation


# instance fields
.field state:I

.field final synthetic this$0:Lcom/google/android/material/edgeeffect/SpringListView2;


# direct methods
.method constructor <init>(Lcom/google/android/material/edgeeffect/SpringListView2;)V
    .locals 0

    .line 823
    iput-object p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringListView2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 824
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2$OnScrollListenerWrapper;->state:I

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3

    .line 836
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringListView2;

    iget-object v0, v0, Lcom/google/android/material/edgeeffect/SpringListView2;->mGivenOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 837
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 839
    :cond_0
    iget p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2$OnScrollListenerWrapper;->state:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 840
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringListView2;

    invoke-virtual {p1}, Lcom/google/android/material/edgeeffect/SpringListView2;->onRecyclerViewScrolled()V

    .line 843
    :cond_1
    iget p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2$OnScrollListenerWrapper;->state:I

    const/4 p3, 0x2

    if-eq p1, p3, :cond_2

    if-eq p1, p2, :cond_2

    return-void

    .line 848
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringListView2;

    const/4 p3, -0x1

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->canScrollVertically(I)Z

    move-result p1

    const/high16 p3, 0x41a00000    # 20.0f

    const/4 p4, 0x0

    if-nez p1, :cond_4

    .line 849
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringListView2;

    invoke-static {p1}, Lcom/google/android/material/edgeeffect/SpringListView2;->access$800(Lcom/google/android/material/edgeeffect/SpringListView2;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 850
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringListView2;

    invoke-static {p1}, Lcom/google/android/material/edgeeffect/SpringListView2;->access$900(Lcom/google/android/material/edgeeffect/SpringListView2;)F

    move-result p1

    cmpl-float v0, p1, p4

    if-ltz v0, :cond_3

    .line 852
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringListView2;

    invoke-virtual {p1}, Lcom/google/android/material/edgeeffect/SpringListView2;->computeVelocity()F

    move-result p1

    .line 855
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringListView2;

    invoke-static {v0}, Lcom/google/android/material/edgeeffect/SpringListView2;->access$1000(Lcom/google/android/material/edgeeffect/SpringListView2;)F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/edgeeffect/SpringListView2$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringListView2;

    invoke-static {v2}, Lcom/google/android/material/edgeeffect/SpringListView2;->access$1100(Lcom/google/android/material/edgeeffect/SpringListView2;)F

    move-result v2

    div-float/2addr p1, p3

    invoke-static {v0, v1, p4, v2, p1}, Lcom/google/android/material/edgeeffect/SpringListView2;->access$1200(Lcom/google/android/material/edgeeffect/SpringListView2;FFFF)V

    .line 857
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringListView2;

    invoke-static {v0}, Lcom/google/android/material/edgeeffect/SpringListView2;->access$1300(Lcom/google/android/material/edgeeffect/SpringListView2;)Landroid/widget/EdgeEffect;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 858
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringListView2$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringListView2;

    invoke-static {v0}, Lcom/google/android/material/edgeeffect/SpringListView2;->access$1300(Lcom/google/android/material/edgeeffect/SpringListView2;)Landroid/widget/EdgeEffect;

    move-result-object v0

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 863
    :cond_4
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringListView2;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_6

    .line 864
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringListView2;

    invoke-static {p1}, Lcom/google/android/material/edgeeffect/SpringListView2;->access$800(Lcom/google/android/material/edgeeffect/SpringListView2;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 866
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringListView2;

    invoke-static {p1}, Lcom/google/android/material/edgeeffect/SpringListView2;->access$900(Lcom/google/android/material/edgeeffect/SpringListView2;)F

    move-result p1

    cmpg-float p2, p1, p4

    if-gtz p2, :cond_5

    .line 868
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringListView2$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringListView2;

    invoke-virtual {p1}, Lcom/google/android/material/edgeeffect/SpringListView2;->computeVelocity()F

    move-result p1

    .line 870
    :cond_5
    iget-object p2, p0, Lcom/google/android/material/edgeeffect/SpringListView2$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringListView2;

    invoke-static {p2}, Lcom/google/android/material/edgeeffect/SpringListView2;->access$1000(Lcom/google/android/material/edgeeffect/SpringListView2;)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringListView2$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringListView2;

    invoke-static {v1}, Lcom/google/android/material/edgeeffect/SpringListView2;->access$1100(Lcom/google/android/material/edgeeffect/SpringListView2;)F

    move-result v1

    div-float/2addr p1, p3

    invoke-static {p2, v0, p4, v1, p1}, Lcom/google/android/material/edgeeffect/SpringListView2;->access$1200(Lcom/google/android/material/edgeeffect/SpringListView2;FFFF)V

    .line 871
    iget-object p2, p0, Lcom/google/android/material/edgeeffect/SpringListView2$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringListView2;

    invoke-static {p2}, Lcom/google/android/material/edgeeffect/SpringListView2;->access$1400(Lcom/google/android/material/edgeeffect/SpringListView2;)Landroid/widget/EdgeEffect;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 872
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringListView2$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringListView2;

    invoke-static {p0}, Lcom/google/android/material/edgeeffect/SpringListView2;->access$1400(Lcom/google/android/material/edgeeffect/SpringListView2;)Landroid/widget/EdgeEffect;

    move-result-object p0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_6
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .line 827
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringListView2$OnScrollListenerWrapper;->state:I

    .line 828
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringListView2$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringListView2;

    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringListView2;->mGivenOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz p0, :cond_0

    .line 829
    invoke-interface {p0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_0
    return-void
.end method
