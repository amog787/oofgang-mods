.class Lcom/google/android/material/listview/OPListView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OPListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/listview/OPListView;->startDelDropAnimation()V
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

    .line 580
    iput-object p1, p0, Lcom/google/android/material/listview/OPListView$3;->this$0:Lcom/google/android/material/listview/OPListView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 583
    iget-object p1, p0, Lcom/google/android/material/listview/OPListView$3;->this$0:Lcom/google/android/material/listview/OPListView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/material/listview/OPListView;->access$102(Lcom/google/android/material/listview/OPListView;Z)Z

    .line 584
    iget-object p1, p0, Lcom/google/android/material/listview/OPListView$3;->this$0:Lcom/google/android/material/listview/OPListView;

    invoke-static {p1, v0}, Lcom/google/android/material/listview/OPListView;->access$202(Lcom/google/android/material/listview/OPListView;Z)Z

    .line 585
    iget-object p1, p0, Lcom/google/android/material/listview/OPListView$3;->this$0:Lcom/google/android/material/listview/OPListView;

    invoke-static {p1, v0}, Lcom/google/android/material/listview/OPListView;->access$302(Lcom/google/android/material/listview/OPListView;Z)Z

    .line 587
    iget-object p1, p0, Lcom/google/android/material/listview/OPListView$3;->this$0:Lcom/google/android/material/listview/OPListView;

    invoke-static {p1}, Lcom/google/android/material/listview/OPListView;->access$400(Lcom/google/android/material/listview/OPListView;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 588
    iget-object p1, p0, Lcom/google/android/material/listview/OPListView$3;->this$0:Lcom/google/android/material/listview/OPListView;

    invoke-static {p1}, Lcom/google/android/material/listview/OPListView;->access$500(Lcom/google/android/material/listview/OPListView;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 589
    iget-object p1, p0, Lcom/google/android/material/listview/OPListView$3;->this$0:Lcom/google/android/material/listview/OPListView;

    invoke-static {p1}, Lcom/google/android/material/listview/OPListView;->access$000(Lcom/google/android/material/listview/OPListView;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 590
    iget-object p1, p0, Lcom/google/android/material/listview/OPListView$3;->this$0:Lcom/google/android/material/listview/OPListView;

    invoke-static {p1}, Lcom/google/android/material/listview/OPListView;->access$800(Lcom/google/android/material/listview/OPListView;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 591
    iget-object p1, p0, Lcom/google/android/material/listview/OPListView$3;->this$0:Lcom/google/android/material/listview/OPListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->invalidate()V

    .line 593
    iget-object p1, p0, Lcom/google/android/material/listview/OPListView$3;->this$0:Lcom/google/android/material/listview/OPListView;

    invoke-static {p1}, Lcom/google/android/material/listview/OPListView;->access$600(Lcom/google/android/material/listview/OPListView;)Lcom/google/android/material/listview/OPListView$DeleteAnimationListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 594
    iget-object p0, p0, Lcom/google/android/material/listview/OPListView$3;->this$0:Lcom/google/android/material/listview/OPListView;

    invoke-static {p0}, Lcom/google/android/material/listview/OPListView;->access$600(Lcom/google/android/material/listview/OPListView;)Lcom/google/android/material/listview/OPListView$DeleteAnimationListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/material/listview/OPListView$DeleteAnimationListener;->onAnimationEnd()V

    :cond_0
    return-void
.end method
