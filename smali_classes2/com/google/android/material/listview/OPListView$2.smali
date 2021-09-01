.class Lcom/google/android/material/listview/OPListView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OPListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/listview/OPListView;->startDelGoneAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/listview/OPListView;


# direct methods
.method constructor <init>(Lcom/google/android/material/listview/OPListView;)V
    .locals 0

    .line 522
    iput-object p1, p0, Lcom/google/android/material/listview/OPListView$2;->this$0:Lcom/google/android/material/listview/OPListView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 525
    iget-object p1, p0, Lcom/google/android/material/listview/OPListView$2;->this$0:Lcom/google/android/material/listview/OPListView;

    invoke-static {p1}, Lcom/google/android/material/listview/OPListView;->access$000(Lcom/google/android/material/listview/OPListView;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 528
    iget-object v2, p0, Lcom/google/android/material/listview/OPListView$2;->this$0:Lcom/google/android/material/listview/OPListView;

    invoke-static {v2}, Lcom/google/android/material/listview/OPListView;->access$000(Lcom/google/android/material/listview/OPListView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    .line 529
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 532
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/listview/OPListView$2;->this$0:Lcom/google/android/material/listview/OPListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/material/listview/OPListView$2;->this$0:Lcom/google/android/material/listview/OPListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/listview/OPListView$2;->this$0:Lcom/google/android/material/listview/OPListView;

    .line 533
    invoke-virtual {p1}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/material/listview/OPListView$2;->this$0:Lcom/google/android/material/listview/OPListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-interface {p1}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 534
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/listview/OPListView$2;->this$0:Lcom/google/android/material/listview/OPListView;

    invoke-static {p1, v0}, Lcom/google/android/material/listview/OPListView;->access$102(Lcom/google/android/material/listview/OPListView;Z)Z

    .line 535
    iget-object p1, p0, Lcom/google/android/material/listview/OPListView$2;->this$0:Lcom/google/android/material/listview/OPListView;

    invoke-static {p1, v0}, Lcom/google/android/material/listview/OPListView;->access$202(Lcom/google/android/material/listview/OPListView;Z)Z

    .line 536
    iget-object p1, p0, Lcom/google/android/material/listview/OPListView$2;->this$0:Lcom/google/android/material/listview/OPListView;

    invoke-static {p1, v0}, Lcom/google/android/material/listview/OPListView;->access$302(Lcom/google/android/material/listview/OPListView;Z)Z

    .line 537
    iget-object p1, p0, Lcom/google/android/material/listview/OPListView$2;->this$0:Lcom/google/android/material/listview/OPListView;

    invoke-static {p1}, Lcom/google/android/material/listview/OPListView;->access$400(Lcom/google/android/material/listview/OPListView;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 538
    iget-object p1, p0, Lcom/google/android/material/listview/OPListView$2;->this$0:Lcom/google/android/material/listview/OPListView;

    invoke-static {p1}, Lcom/google/android/material/listview/OPListView;->access$500(Lcom/google/android/material/listview/OPListView;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 539
    iget-object p1, p0, Lcom/google/android/material/listview/OPListView$2;->this$0:Lcom/google/android/material/listview/OPListView;

    invoke-static {p1}, Lcom/google/android/material/listview/OPListView;->access$000(Lcom/google/android/material/listview/OPListView;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 540
    iget-object p1, p0, Lcom/google/android/material/listview/OPListView$2;->this$0:Lcom/google/android/material/listview/OPListView;

    invoke-static {p1}, Lcom/google/android/material/listview/OPListView;->access$600(Lcom/google/android/material/listview/OPListView;)Lcom/google/android/material/listview/OPListView$DeleteAnimationListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 541
    iget-object p1, p0, Lcom/google/android/material/listview/OPListView$2;->this$0:Lcom/google/android/material/listview/OPListView;

    invoke-static {p1}, Lcom/google/android/material/listview/OPListView;->access$600(Lcom/google/android/material/listview/OPListView;)Lcom/google/android/material/listview/OPListView$DeleteAnimationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/material/listview/OPListView$DeleteAnimationListener;->onAnimationUpdate()V

    .line 542
    iget-object p0, p0, Lcom/google/android/material/listview/OPListView$2;->this$0:Lcom/google/android/material/listview/OPListView;

    invoke-static {p0}, Lcom/google/android/material/listview/OPListView;->access$600(Lcom/google/android/material/listview/OPListView;)Lcom/google/android/material/listview/OPListView$DeleteAnimationListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/material/listview/OPListView$DeleteAnimationListener;->onAnimationEnd()V

    goto :goto_1

    .line 545
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/listview/OPListView$2;->this$0:Lcom/google/android/material/listview/OPListView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/material/listview/OPListView;->access$702(Lcom/google/android/material/listview/OPListView;Z)Z

    .line 546
    iget-object p1, p0, Lcom/google/android/material/listview/OPListView$2;->this$0:Lcom/google/android/material/listview/OPListView;

    invoke-static {p1}, Lcom/google/android/material/listview/OPListView;->access$600(Lcom/google/android/material/listview/OPListView;)Lcom/google/android/material/listview/OPListView$DeleteAnimationListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 547
    iget-object p0, p0, Lcom/google/android/material/listview/OPListView$2;->this$0:Lcom/google/android/material/listview/OPListView;

    invoke-static {p0}, Lcom/google/android/material/listview/OPListView;->access$600(Lcom/google/android/material/listview/OPListView;)Lcom/google/android/material/listview/OPListView$DeleteAnimationListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/material/listview/OPListView$DeleteAnimationListener;->onAnimationUpdate()V

    :cond_3
    :goto_1
    return-void
.end method
