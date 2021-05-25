.class Lcom/android/server/policy/OpQuickPay$sis$tsu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/OpQuickPay$sis;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/policy/OpQuickPay$sis;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OpQuickPay$sis;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/OpQuickPay$sis$tsu;->zta:Lcom/android/server/policy/OpQuickPay$sis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/OpQuickPay$sis$tsu;->zta:Lcom/android/server/policy/OpQuickPay$sis;

    iget-object v0, v0, Lcom/android/server/policy/OpQuickPay$sis;->ssp:Lcom/android/server/policy/OpQuickPay;

    iget-object v0, v0, Lcom/android/server/policy/OpQuickPay;->mQuickPayBtnView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/OpQuickPay$sis$tsu;->zta:Lcom/android/server/policy/OpQuickPay$sis;

    iget-object v0, v0, Lcom/android/server/policy/OpQuickPay$sis;->ssp:Lcom/android/server/policy/OpQuickPay;

    iget-object v0, v0, Lcom/android/server/policy/OpQuickPay;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object p1, p0, Lcom/android/server/policy/OpQuickPay$sis$tsu;->zta:Lcom/android/server/policy/OpQuickPay$sis;

    iget-object p1, p1, Lcom/android/server/policy/OpQuickPay$sis;->ssp:Lcom/android/server/policy/OpQuickPay;

    invoke-static {p1}, Lcom/android/server/policy/OpQuickPay;->access$400(Lcom/android/server/policy/OpQuickPay;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/policy/OpQuickPay$sis$tsu;->zta:Lcom/android/server/policy/OpQuickPay$sis;

    iget-object p0, p0, Lcom/android/server/policy/OpQuickPay$sis;->ssp:Lcom/android/server/policy/OpQuickPay;

    iget-object v0, p0, Lcom/android/server/policy/OpQuickPay;->mQuickPayBtnView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/server/policy/OpQuickPay;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
