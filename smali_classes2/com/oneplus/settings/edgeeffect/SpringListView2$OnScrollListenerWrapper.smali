.class Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;
.super Ljava/lang/Object;
.source "SpringListView2.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/edgeeffect/SpringListView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnScrollListenerWrapper"
.end annotation


# instance fields
.field state:I

.field final synthetic this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/edgeeffect/SpringListView2;)V
    .locals 0

    .line 793
    iput-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 794
    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;->state:I

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4

    .line 807
    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    iget-object v0, v0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mGivenOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 808
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 810
    :cond_0
    iget p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;->state:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 811
    iget-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-virtual {p1}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->onRecyclerViewScrolled()V

    .line 814
    :cond_1
    iget p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;->state:I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x0

    const/high16 v1, 0x41a00000    # 20.0f

    if-nez p2, :cond_5

    .line 819
    iget-object v2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 820
    iget-object p2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-virtual {p2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 822
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    iget-object p4, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-virtual {p4}, Landroid/widget/ListView;->getListPaddingTop()I

    move-result p4

    if-ne p3, p4, :cond_4

    .line 823
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    iget-object p3, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-static {p3}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$700(Lcom/oneplus/settings/edgeeffect/SpringListView2;)I

    move-result p3

    if-gt p2, p3, :cond_3

    iget-object p2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    .line 824
    invoke-virtual {p2}, Landroid/widget/ListView;->getListPaddingTop()I

    move-result p2

    iget-object p3, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-static {p3}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$700(Lcom/oneplus/settings/edgeeffect/SpringListView2;)I

    move-result p3

    if-ne p2, p3, :cond_8

    .line 826
    :cond_3
    iget-object p2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-static {p2}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$800(Lcom/oneplus/settings/edgeeffect/SpringListView2;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 827
    iget-object p2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-static {p2}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$900(Lcom/oneplus/settings/edgeeffect/SpringListView2;)F

    move-result p3

    iget-object p4, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-static {p4}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$1000(Lcom/oneplus/settings/edgeeffect/SpringListView2;)F

    move-result p4

    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-static {v0}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$1100(Lcom/oneplus/settings/edgeeffect/SpringListView2;)F

    move-result v0

    div-float/2addr v0, v1

    invoke-static {p2, p3, p1, p4, v0}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$1200(Lcom/oneplus/settings/edgeeffect/SpringListView2;FFFF)V

    .line 829
    iget-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-static {p1}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$1300(Lcom/oneplus/settings/edgeeffect/SpringListView2;)Landroid/widget/EdgeEffect;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 830
    iget-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-static {p1}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$1300(Lcom/oneplus/settings/edgeeffect/SpringListView2;)Landroid/widget/EdgeEffect;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-static {p0}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$1100(Lcom/oneplus/settings/edgeeffect/SpringListView2;)F

    move-result p0

    div-float/2addr p0, v1

    float-to-int p0, p0

    invoke-virtual {p1, p0}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto/16 :goto_0

    :cond_4
    if-eqz p2, :cond_8

    .line 835
    iget-object p0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-static {p0, p1}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$702(Lcom/oneplus/settings/edgeeffect/SpringListView2;I)I

    goto/16 :goto_0

    .line 837
    :cond_5
    iget-object v2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_8

    add-int/2addr p2, p3

    if-ne p2, p4, :cond_8

    .line 838
    iget-object p2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    sub-int/2addr p3, v0

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 839
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p3

    iget-object p4, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-virtual {p4}, Landroid/widget/ListView;->getHeight()I

    move-result p4

    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-virtual {v0}, Landroid/widget/ListView;->getListPaddingBottom()I

    move-result v0

    sub-int/2addr p4, v0

    if-ne p3, p4, :cond_7

    .line 841
    iget-object p3, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-static {p3}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$800(Lcom/oneplus/settings/edgeeffect/SpringListView2;)Z

    move-result p3

    if-nez p3, :cond_8

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    iget-object p3, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    iget p4, p3, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mLastChildBottom:I

    if-lt p2, p4, :cond_6

    .line 842
    invoke-virtual {p3}, Landroid/widget/ListView;->getHeight()I

    move-result p2

    iget-object p3, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-virtual {p3}, Landroid/widget/ListView;->getListPaddingBottom()I

    move-result p3

    sub-int/2addr p2, p3

    iget-object p3, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    iget p3, p3, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mLastChildBottom:I

    if-ne p2, p3, :cond_8

    .line 843
    :cond_6
    iget-object p2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-static {p2}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$900(Lcom/oneplus/settings/edgeeffect/SpringListView2;)F

    move-result p3

    iget-object p4, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-static {p4}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$1000(Lcom/oneplus/settings/edgeeffect/SpringListView2;)F

    move-result p4

    iget-object v0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-static {v0}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$1100(Lcom/oneplus/settings/edgeeffect/SpringListView2;)F

    move-result v0

    div-float/2addr v0, v1

    invoke-static {p2, p3, p1, p4, v0}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$1200(Lcom/oneplus/settings/edgeeffect/SpringListView2;FFFF)V

    .line 844
    iget-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-static {p1}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$1400(Lcom/oneplus/settings/edgeeffect/SpringListView2;)Landroid/widget/EdgeEffect;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 845
    iget-object p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-static {p1}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$1400(Lcom/oneplus/settings/edgeeffect/SpringListView2;)Landroid/widget/EdgeEffect;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-static {p0}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$1100(Lcom/oneplus/settings/edgeeffect/SpringListView2;)F

    move-result p0

    div-float/2addr p0, v1

    float-to-int p0, p0

    invoke-virtual {p1, p0}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_0

    :cond_7
    if-eqz p2, :cond_8

    .line 849
    iget-object p0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p1

    iput p1, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mLastChildBottom:I

    :cond_8
    :goto_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .line 798
    iput p2, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;->state:I

    .line 799
    iget-object p0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;->this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    iget-object p0, p0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mGivenOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz p0, :cond_0

    .line 800
    invoke-interface {p0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_0
    return-void
.end method
