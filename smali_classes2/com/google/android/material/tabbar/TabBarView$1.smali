.class Lcom/google/android/material/tabbar/TabBarView$1;
.super Ljava/lang/Object;
.source "TabBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/tabbar/TabBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/tabbar/TabBarView;


# direct methods
.method constructor <init>(Lcom/google/android/material/tabbar/TabBarView;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/google/android/material/tabbar/TabBarView$1;->this$0:Lcom/google/android/material/tabbar/TabBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 238
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView$1;->this$0:Lcom/google/android/material/tabbar/TabBarView;

    invoke-static {v0}, Lcom/google/android/material/tabbar/TabBarView;->access$000(Lcom/google/android/material/tabbar/TabBarView;)Lcom/google/android/material/tabbar/TabBarView$TabBarOnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView$1;->this$0:Lcom/google/android/material/tabbar/TabBarView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/material/tabbar/TabBarView;->access$102(Lcom/google/android/material/tabbar/TabBarView;Z)Z

    .line 240
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarView$1;->this$0:Lcom/google/android/material/tabbar/TabBarView;

    invoke-static {v0}, Lcom/google/android/material/tabbar/TabBarView;->access$200(Lcom/google/android/material/tabbar/TabBarView;)Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;

    move-result-object v2

    iget v2, v2, Lcom/google/android/material/tabbar/TabBarView$SlidingTabIndicator;->selectedPosition:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/material/tabbar/TabBarView;->setScrollPosition(IFZ)V

    .line 241
    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarView$1;->this$0:Lcom/google/android/material/tabbar/TabBarView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/tabbar/TabBarView;->setInitWithAnim(Z)V

    :cond_0
    return-void
.end method
