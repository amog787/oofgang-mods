.class Lcom/google/android/material/edgeeffect/SpringGridView$OnScrollListenerWrapper;
.super Ljava/lang/Object;
.source "SpringGridView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/edgeeffect/SpringGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnScrollListenerWrapper"
.end annotation


# instance fields
.field state:I

.field final synthetic this$0:Lcom/google/android/material/edgeeffect/SpringGridView;


# direct methods
.method constructor <init>(Lcom/google/android/material/edgeeffect/SpringGridView;)V
    .locals 0

    .line 652
    iput-object p1, p0, Lcom/google/android/material/edgeeffect/SpringGridView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 653
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringGridView$OnScrollListenerWrapper;->state:I

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3

    .line 665
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringGridView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringGridView;

    iget-object v0, v0, Lcom/google/android/material/edgeeffect/SpringGridView;->mGivenOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 666
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 669
    :cond_0
    iget p1, p0, Lcom/google/android/material/edgeeffect/SpringGridView$OnScrollListenerWrapper;->state:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 670
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringGridView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringGridView;

    iget-object p3, p1, Lcom/google/android/material/edgeeffect/SpringGridView;->mSpringLayout:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    if-nez p3, :cond_1

    .line 671
    invoke-virtual {p1}, Landroid/widget/GridView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 672
    instance-of p3, p1, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    if-eqz p3, :cond_1

    .line 673
    iget-object p3, p0, Lcom/google/android/material/edgeeffect/SpringGridView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringGridView;

    check-cast p1, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    iput-object p1, p3, Lcom/google/android/material/edgeeffect/SpringGridView;->mSpringLayout:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    .line 677
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringGridView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringGridView;

    iget-object p1, p1, Lcom/google/android/material/edgeeffect/SpringGridView;->mSpringLayout:Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    if-eqz p1, :cond_2

    .line 678
    invoke-virtual {p1}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->onRecyclerViewScrolled()V

    .line 682
    :cond_2
    iget p1, p0, Lcom/google/android/material/edgeeffect/SpringGridView$OnScrollListenerWrapper;->state:I

    const/4 p3, 0x2

    const/4 p4, 0x0

    if-eq p1, p3, :cond_3

    move p1, p2

    goto :goto_0

    :cond_3
    move p1, p4

    :goto_0
    iget p3, p0, Lcom/google/android/material/edgeeffect/SpringGridView$OnScrollListenerWrapper;->state:I

    if-eq p3, p2, :cond_4

    move p4, p2

    :cond_4
    and-int/2addr p1, p4

    if-eqz p1, :cond_5

    return-void

    .line 687
    :cond_5
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringGridView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringGridView;

    const/4 p3, -0x1

    invoke-virtual {p1, p3}, Landroid/widget/GridView;->canScrollVertically(I)Z

    move-result p1

    const/high16 p3, 0x41a00000    # 20.0f

    const/4 p4, 0x0

    if-nez p1, :cond_7

    .line 688
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringGridView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringGridView;

    iget-boolean v0, p1, Lcom/google/android/material/edgeeffect/SpringGridView;->mGlowing:Z

    if-nez v0, :cond_7

    .line 689
    invoke-static {p1}, Lcom/google/android/material/edgeeffect/SpringGridView;->access$000(Lcom/google/android/material/edgeeffect/SpringGridView;)F

    move-result p1

    cmpl-float v0, p1, p4

    if-ltz v0, :cond_6

    .line 691
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringGridView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringGridView;

    invoke-virtual {p1}, Lcom/google/android/material/edgeeffect/SpringGridView;->computeVelocity()F

    move-result p1

    .line 694
    :cond_6
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringGridView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringGridView;

    invoke-static {v0}, Lcom/google/android/material/edgeeffect/SpringGridView;->access$100(Lcom/google/android/material/edgeeffect/SpringGridView;)F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/edgeeffect/SpringGridView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringGridView;

    invoke-static {v2}, Lcom/google/android/material/edgeeffect/SpringGridView;->access$200(Lcom/google/android/material/edgeeffect/SpringGridView;)F

    move-result v2

    div-float/2addr p1, p3

    invoke-static {v0, v1, p4, v2, p1}, Lcom/google/android/material/edgeeffect/SpringGridView;->access$300(Lcom/google/android/material/edgeeffect/SpringGridView;FFFF)V

    .line 696
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringGridView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringGridView;

    invoke-static {v0}, Lcom/google/android/material/edgeeffect/SpringGridView;->access$400(Lcom/google/android/material/edgeeffect/SpringGridView;)Landroid/widget/EdgeEffect;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 697
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringGridView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringGridView;

    invoke-static {v0}, Lcom/google/android/material/edgeeffect/SpringGridView;->access$400(Lcom/google/android/material/edgeeffect/SpringGridView;)Landroid/widget/EdgeEffect;

    move-result-object v0

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 702
    :cond_7
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringGridView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringGridView;

    invoke-virtual {p1, p2}, Landroid/widget/GridView;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_9

    .line 703
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringGridView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringGridView;

    iget-boolean p2, p1, Lcom/google/android/material/edgeeffect/SpringGridView;->mGlowing:Z

    if-nez p2, :cond_9

    .line 705
    invoke-static {p1}, Lcom/google/android/material/edgeeffect/SpringGridView;->access$000(Lcom/google/android/material/edgeeffect/SpringGridView;)F

    move-result p1

    cmpg-float p2, p1, p4

    if-gtz p2, :cond_8

    .line 707
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringGridView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringGridView;

    invoke-virtual {p1}, Lcom/google/android/material/edgeeffect/SpringGridView;->computeVelocity()F

    move-result p1

    .line 709
    :cond_8
    iget-object p2, p0, Lcom/google/android/material/edgeeffect/SpringGridView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringGridView;

    invoke-static {p2}, Lcom/google/android/material/edgeeffect/SpringGridView;->access$100(Lcom/google/android/material/edgeeffect/SpringGridView;)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringGridView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringGridView;

    invoke-static {v1}, Lcom/google/android/material/edgeeffect/SpringGridView;->access$200(Lcom/google/android/material/edgeeffect/SpringGridView;)F

    move-result v1

    div-float/2addr p1, p3

    invoke-static {p2, v0, p4, v1, p1}, Lcom/google/android/material/edgeeffect/SpringGridView;->access$300(Lcom/google/android/material/edgeeffect/SpringGridView;FFFF)V

    .line 710
    iget-object p2, p0, Lcom/google/android/material/edgeeffect/SpringGridView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringGridView;

    invoke-static {p2}, Lcom/google/android/material/edgeeffect/SpringGridView;->access$500(Lcom/google/android/material/edgeeffect/SpringGridView;)Landroid/widget/EdgeEffect;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 711
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringGridView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringGridView;

    invoke-static {p0}, Lcom/google/android/material/edgeeffect/SpringGridView;->access$500(Lcom/google/android/material/edgeeffect/SpringGridView;)Landroid/widget/EdgeEffect;

    move-result-object p0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_9
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .line 657
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringGridView$OnScrollListenerWrapper;->state:I

    .line 658
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringGridView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringGridView;

    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringGridView;->mGivenOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz p0, :cond_0

    .line 659
    invoke-interface {p0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_0
    return-void
.end method
