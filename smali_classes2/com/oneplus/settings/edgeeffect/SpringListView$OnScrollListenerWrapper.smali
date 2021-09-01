.class Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;
.super Ljava/lang/Object;
.source "SpringListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/edgeeffect/SpringListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnScrollListenerWrapper"
.end annotation


# instance fields
.field state:I

.field final synthetic this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/edgeeffect/SpringListView;)V
    .locals 0

    .line 654
    iput-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 655
    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;->state:I

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4

    .line 667
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    iget-object v0, v0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mGivenOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 668
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 671
    :cond_0
    iget p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;->state:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 673
    iget-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    invoke-static {p1}, Lcom/oneplus/settings/edgeeffect/SpringListView;->access$000(Lcom/oneplus/settings/edgeeffect/SpringListView;)Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    move-result-object p1

    if-nez p1, :cond_1

    .line 674
    iget-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 675
    instance-of v1, p1, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    if-eqz v1, :cond_1

    .line 676
    iget-object v1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    check-cast p1, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    invoke-static {v1, p1}, Lcom/oneplus/settings/edgeeffect/SpringListView;->access$002(Lcom/oneplus/settings/edgeeffect/SpringListView;Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;)Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    .line 680
    :cond_1
    iget-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    invoke-static {p1}, Lcom/oneplus/settings/edgeeffect/SpringListView;->access$000(Lcom/oneplus/settings/edgeeffect/SpringListView;)Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 681
    iget-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    invoke-static {p1}, Lcom/oneplus/settings/edgeeffect/SpringListView;->access$000(Lcom/oneplus/settings/edgeeffect/SpringListView;)Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->onRecyclerViewScrolled()V

    :cond_2
    const/4 p1, 0x0

    const/high16 v1, 0x41a00000    # 20.0f

    if-nez p2, :cond_4

    .line 686
    iget-object v2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 687
    iget-object p2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    invoke-virtual {p2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 689
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    iget-object p4, p0, Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    invoke-virtual {p4}, Landroid/widget/ListView;->getListPaddingTop()I

    move-result p4

    if-ne p3, p4, :cond_3

    .line 690
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    iget-object p3, p0, Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    invoke-static {p3}, Lcom/oneplus/settings/edgeeffect/SpringListView;->access$100(Lcom/oneplus/settings/edgeeffect/SpringListView;)I

    move-result p3

    if-le p2, p3, :cond_6

    .line 692
    iget-object p2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    invoke-static {p2}, Lcom/oneplus/settings/edgeeffect/SpringListView;->access$200(Lcom/oneplus/settings/edgeeffect/SpringListView;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 693
    iget-object p2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    invoke-static {p2}, Lcom/oneplus/settings/edgeeffect/SpringListView;->access$300(Lcom/oneplus/settings/edgeeffect/SpringListView;)F

    move-result p3

    iget-object p4, p0, Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    invoke-static {p4}, Lcom/oneplus/settings/edgeeffect/SpringListView;->access$400(Lcom/oneplus/settings/edgeeffect/SpringListView;)F

    move-result p4

    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    invoke-static {v0}, Lcom/oneplus/settings/edgeeffect/SpringListView;->access$500(Lcom/oneplus/settings/edgeeffect/SpringListView;)F

    move-result v0

    div-float/2addr v0, v1

    invoke-static {p2, p3, p1, p4, v0}, Lcom/oneplus/settings/edgeeffect/SpringListView;->access$600(Lcom/oneplus/settings/edgeeffect/SpringListView;FFFF)V

    .line 695
    iget-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    invoke-static {p1}, Lcom/oneplus/settings/edgeeffect/SpringListView;->access$700(Lcom/oneplus/settings/edgeeffect/SpringListView;)Landroid/widget/EdgeEffect;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 696
    iget-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    invoke-static {p1}, Lcom/oneplus/settings/edgeeffect/SpringListView;->access$700(Lcom/oneplus/settings/edgeeffect/SpringListView;)Landroid/widget/EdgeEffect;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    invoke-static {p0}, Lcom/oneplus/settings/edgeeffect/SpringListView;->access$500(Lcom/oneplus/settings/edgeeffect/SpringListView;)F

    move-result p0

    div-float/2addr p0, v1

    float-to-int p0, p0

    invoke-virtual {p1, p0}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto/16 :goto_0

    :cond_3
    if-eqz p2, :cond_6

    .line 701
    iget-object p0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-static {p0, p1}, Lcom/oneplus/settings/edgeeffect/SpringListView;->access$102(Lcom/oneplus/settings/edgeeffect/SpringListView;I)I

    goto :goto_0

    .line 703
    :cond_4
    iget-object v2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_6

    add-int/2addr p2, p3

    if-ne p2, p4, :cond_6

    .line 704
    iget-object p2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    sub-int/2addr p3, v0

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 705
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p3

    iget-object p4, p0, Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    invoke-virtual {p4}, Landroid/widget/ListView;->getHeight()I

    move-result p4

    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getListPaddingBottom()I

    move-result v0

    sub-int/2addr p4, v0

    if-ne p3, p4, :cond_5

    .line 707
    iget-object p3, p0, Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    invoke-static {p3}, Lcom/oneplus/settings/edgeeffect/SpringListView;->access$200(Lcom/oneplus/settings/edgeeffect/SpringListView;)Z

    move-result p3

    if-nez p3, :cond_6

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    iget-object p3, p0, Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    iget p4, p3, Lcom/oneplus/settings/edgeeffect/SpringListView;->mLastChildBottom:I

    if-ge p2, p4, :cond_6

    .line 708
    invoke-static {p3}, Lcom/oneplus/settings/edgeeffect/SpringListView;->access$300(Lcom/oneplus/settings/edgeeffect/SpringListView;)F

    move-result p2

    iget-object p4, p0, Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    invoke-static {p4}, Lcom/oneplus/settings/edgeeffect/SpringListView;->access$400(Lcom/oneplus/settings/edgeeffect/SpringListView;)F

    move-result p4

    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    invoke-static {v0}, Lcom/oneplus/settings/edgeeffect/SpringListView;->access$500(Lcom/oneplus/settings/edgeeffect/SpringListView;)F

    move-result v0

    div-float/2addr v0, v1

    invoke-static {p3, p2, p1, p4, v0}, Lcom/oneplus/settings/edgeeffect/SpringListView;->access$600(Lcom/oneplus/settings/edgeeffect/SpringListView;FFFF)V

    .line 709
    iget-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    invoke-static {p1}, Lcom/oneplus/settings/edgeeffect/SpringListView;->access$800(Lcom/oneplus/settings/edgeeffect/SpringListView;)Landroid/widget/EdgeEffect;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 710
    iget-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    invoke-static {p1}, Lcom/oneplus/settings/edgeeffect/SpringListView;->access$800(Lcom/oneplus/settings/edgeeffect/SpringListView;)Landroid/widget/EdgeEffect;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    invoke-static {p0}, Lcom/oneplus/settings/edgeeffect/SpringListView;->access$500(Lcom/oneplus/settings/edgeeffect/SpringListView;)F

    move-result p0

    div-float/2addr p0, v1

    float-to-int p0, p0

    invoke-virtual {p1, p0}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_0

    :cond_5
    if-eqz p2, :cond_6

    .line 714
    iget-object p0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p1

    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mLastChildBottom:I

    :cond_6
    :goto_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .line 659
    iput p2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;->state:I

    .line 660
    iget-object p0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    iget-object p0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mGivenOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz p0, :cond_0

    .line 661
    invoke-interface {p0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_0
    return-void
.end method
