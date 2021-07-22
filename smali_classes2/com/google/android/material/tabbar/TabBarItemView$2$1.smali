.class Lcom/google/android/material/tabbar/TabBarItemView$2$1;
.super Ljava/lang/Object;
.source "TabBarItemView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/tabbar/TabBarItemView$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/material/tabbar/TabBarItemView$2;


# direct methods
.method constructor <init>(Lcom/google/android/material/tabbar/TabBarItemView$2;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/google/android/material/tabbar/TabBarItemView$2$1;->this$1:Lcom/google/android/material/tabbar/TabBarItemView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 306
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarItemView$2$1;->this$1:Lcom/google/android/material/tabbar/TabBarItemView$2;

    iget-object v0, v0, Lcom/google/android/material/tabbar/TabBarItemView$2;->this$0:Lcom/google/android/material/tabbar/TabBarItemView;

    invoke-static {v0}, Lcom/google/android/material/tabbar/TabBarItemView;->access$000(Lcom/google/android/material/tabbar/TabBarItemView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 307
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xa

    .line 308
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/tabbar/TabBarItemView$2$1$1;

    invoke-direct {v1, p0}, Lcom/google/android/material/tabbar/TabBarItemView$2$1$1;-><init>(Lcom/google/android/material/tabbar/TabBarItemView$2$1;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 318
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
