.class Lcom/google/android/material/edgeeffect/SpringExpandableListView$OnScrollListenerWrapper;
.super Ljava/lang/Object;
.source "SpringExpandableListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/edgeeffect/SpringExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnScrollListenerWrapper"
.end annotation


# instance fields
.field state:I

.field final synthetic this$0:Lcom/google/android/material/edgeeffect/SpringExpandableListView;


# direct methods
.method constructor <init>(Lcom/google/android/material/edgeeffect/SpringExpandableListView;)V
    .locals 0

    .line 669
    iput-object p1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringExpandableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 670
    iput p1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView$OnScrollListenerWrapper;->state:I

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3

    .line 682
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringExpandableListView;

    iget-object v0, v0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mGivenOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 683
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 686
    :cond_0
    iget p1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView$OnScrollListenerWrapper;->state:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 688
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringExpandableListView;

    invoke-static {p1}, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->access$000(Lcom/google/android/material/edgeeffect/SpringExpandableListView;)Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    move-result-object p1

    if-nez p1, :cond_1

    .line 689
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringExpandableListView;

    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 690
    instance-of p3, p1, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    if-eqz p3, :cond_1

    .line 691
    iget-object p3, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringExpandableListView;

    check-cast p1, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    invoke-static {p3, p1}, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->access$002(Lcom/google/android/material/edgeeffect/SpringExpandableListView;Lcom/google/android/material/edgeeffect/SpringRelativeLayout;)Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    .line 695
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringExpandableListView;

    invoke-static {p1}, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->access$000(Lcom/google/android/material/edgeeffect/SpringExpandableListView;)Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 696
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringExpandableListView;

    invoke-static {p1}, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->access$000(Lcom/google/android/material/edgeeffect/SpringExpandableListView;)Lcom/google/android/material/edgeeffect/SpringRelativeLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/edgeeffect/SpringRelativeLayout;->onRecyclerViewScrolled()V

    .line 700
    :cond_2
    iget p1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView$OnScrollListenerWrapper;->state:I

    const/4 p3, 0x2

    if-eq p1, p3, :cond_3

    if-eq p1, p2, :cond_3

    return-void

    .line 705
    :cond_3
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringExpandableListView;

    const/4 p3, -0x1

    invoke-virtual {p1, p3}, Landroid/widget/ExpandableListView;->canScrollVertically(I)Z

    move-result p1

    const/high16 p3, 0x41a00000    # 20.0f

    const/4 p4, 0x0

    if-nez p1, :cond_5

    .line 706
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringExpandableListView;

    invoke-static {p1}, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->access$100(Lcom/google/android/material/edgeeffect/SpringExpandableListView;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 707
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringExpandableListView;

    invoke-static {p1}, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->access$200(Lcom/google/android/material/edgeeffect/SpringExpandableListView;)F

    move-result p1

    cmpl-float v0, p1, p4

    if-ltz v0, :cond_4

    .line 709
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringExpandableListView;

    invoke-virtual {p1}, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->computeVelocity()F

    move-result p1

    .line 712
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringExpandableListView;

    invoke-static {v0}, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->access$300(Lcom/google/android/material/edgeeffect/SpringExpandableListView;)F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringExpandableListView;

    invoke-static {v2}, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->access$400(Lcom/google/android/material/edgeeffect/SpringExpandableListView;)F

    move-result v2

    div-float/2addr p1, p3

    invoke-static {v0, v1, p4, v2, p1}, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->access$500(Lcom/google/android/material/edgeeffect/SpringExpandableListView;FFFF)V

    .line 714
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringExpandableListView;

    invoke-static {v0}, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->access$600(Lcom/google/android/material/edgeeffect/SpringExpandableListView;)Landroid/widget/EdgeEffect;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 715
    iget-object v0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringExpandableListView;

    invoke-static {v0}, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->access$600(Lcom/google/android/material/edgeeffect/SpringExpandableListView;)Landroid/widget/EdgeEffect;

    move-result-object v0

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 720
    :cond_5
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringExpandableListView;

    invoke-virtual {p1, p2}, Landroid/widget/ExpandableListView;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_7

    .line 721
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringExpandableListView;

    invoke-static {p1}, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->access$100(Lcom/google/android/material/edgeeffect/SpringExpandableListView;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 723
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringExpandableListView;

    invoke-static {p1}, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->access$200(Lcom/google/android/material/edgeeffect/SpringExpandableListView;)F

    move-result p1

    cmpg-float p2, p1, p4

    if-gtz p2, :cond_6

    .line 725
    iget-object p1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringExpandableListView;

    invoke-virtual {p1}, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->computeVelocity()F

    move-result p1

    .line 727
    :cond_6
    iget-object p2, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringExpandableListView;

    invoke-static {p2}, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->access$300(Lcom/google/android/material/edgeeffect/SpringExpandableListView;)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringExpandableListView;

    invoke-static {v1}, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->access$400(Lcom/google/android/material/edgeeffect/SpringExpandableListView;)F

    move-result v1

    div-float/2addr p1, p3

    invoke-static {p2, v0, p4, v1, p1}, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->access$500(Lcom/google/android/material/edgeeffect/SpringExpandableListView;FFFF)V

    .line 728
    iget-object p2, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringExpandableListView;

    invoke-static {p2}, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->access$700(Lcom/google/android/material/edgeeffect/SpringExpandableListView;)Landroid/widget/EdgeEffect;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 729
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringExpandableListView;

    invoke-static {p0}, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->access$700(Lcom/google/android/material/edgeeffect/SpringExpandableListView;)Landroid/widget/EdgeEffect;

    move-result-object p0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_7
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .line 674
    iput p2, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView$OnScrollListenerWrapper;->state:I

    .line 675
    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView$OnScrollListenerWrapper;->this$0:Lcom/google/android/material/edgeeffect/SpringExpandableListView;

    iget-object p0, p0, Lcom/google/android/material/edgeeffect/SpringExpandableListView;->mGivenOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz p0, :cond_0

    .line 676
    invoke-interface {p0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_0
    return-void
.end method
