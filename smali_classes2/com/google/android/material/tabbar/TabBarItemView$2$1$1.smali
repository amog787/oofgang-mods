.class Lcom/google/android/material/tabbar/TabBarItemView$2$1$1;
.super Ljava/lang/Object;
.source "TabBarItemView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/tabbar/TabBarItemView$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/android/material/tabbar/TabBarItemView$2$1;


# direct methods
.method constructor <init>(Lcom/google/android/material/tabbar/TabBarItemView$2$1;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/google/android/material/tabbar/TabBarItemView$2$1$1;->this$2:Lcom/google/android/material/tabbar/TabBarItemView$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 311
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarItemView$2$1$1;->this$2:Lcom/google/android/material/tabbar/TabBarItemView$2$1;

    iget-object v0, v0, Lcom/google/android/material/tabbar/TabBarItemView$2$1;->this$1:Lcom/google/android/material/tabbar/TabBarItemView$2;

    iget-object v0, v0, Lcom/google/android/material/tabbar/TabBarItemView$2;->this$0:Lcom/google/android/material/tabbar/TabBarItemView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(Landroid/content/Context;I)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/google/android/material/tabbar/TabBarItemView;->access$200(Lcom/google/android/material/tabbar/TabBarItemView;I)V

    .line 312
    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarItemView$2$1$1;->this$2:Lcom/google/android/material/tabbar/TabBarItemView$2$1;

    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarItemView$2$1;->this$1:Lcom/google/android/material/tabbar/TabBarItemView$2;

    iget-object p0, p0, Lcom/google/android/material/tabbar/TabBarItemView$2;->this$0:Lcom/google/android/material/tabbar/TabBarItemView;

    invoke-static {p0}, Lcom/google/android/material/tabbar/TabBarItemView;->access$000(Lcom/google/android/material/tabbar/TabBarItemView;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 313
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xe1

    .line 314
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Landroidx/animation/AnimatorUtils;->op_control_interpolator_linear_out_slow_in:Landroid/view/animation/Interpolator;

    .line 315
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 316
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
