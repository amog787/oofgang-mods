.class Lcom/google/android/material/tabbar/TabBarItemView$2;
.super Ljava/lang/Object;
.source "TabBarItemView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/tabbar/TabBarItemView;->setIconToLine()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/tabbar/TabBarItemView;


# direct methods
.method constructor <init>(Lcom/google/android/material/tabbar/TabBarItemView;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/google/android/material/tabbar/TabBarItemView$2;->this$0:Lcom/google/android/material/tabbar/TabBarItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 298
    iget-object v0, p0, Lcom/google/android/material/tabbar/TabBarItemView$2;->this$0:Lcom/google/android/material/tabbar/TabBarItemView;

    invoke-static {v0}, Lcom/google/android/material/tabbar/TabBarItemView;->access$000(Lcom/google/android/material/tabbar/TabBarItemView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3dcccccd    # 0.1f

    .line 299
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 300
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xe1

    .line 301
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Landroidx/animation/AnimatorUtils;->op__control_interpolator_fast_out_linear_in:Landroid/view/animation/Interpolator;

    .line 302
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/google/android/material/tabbar/TabBarItemView$2$1;

    invoke-direct {v1, p0}, Lcom/google/android/material/tabbar/TabBarItemView$2$1;-><init>(Lcom/google/android/material/tabbar/TabBarItemView$2;)V

    .line 303
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 322
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
