.class Lcom/android/server/cgv/sis$sis$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/cgv/sis$sis;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic sis:Lcom/android/server/cgv/sis$sis;

.field final synthetic you:Landroid/view/WindowManager$LayoutParams;

.field final synthetic zta:I


# direct methods
.method constructor <init>(Lcom/android/server/cgv/sis$sis;ILandroid/view/WindowManager$LayoutParams;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cgv/sis$sis$zta;->sis:Lcom/android/server/cgv/sis$sis;

    iput p2, p0, Lcom/android/server/cgv/sis$sis$zta;->zta:I

    iput-object p3, p0, Lcom/android/server/cgv/sis$sis$zta;->you:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget v0, p0, Lcom/android/server/cgv/sis$sis$zta;->zta:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/cgv/sis$sis$zta;->you:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/cgv/sis$sis$zta;->you:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    :goto_0
    iget-object p1, p0, Lcom/android/server/cgv/sis$sis$zta;->sis:Lcom/android/server/cgv/sis$sis;

    iget-object p1, p1, Lcom/android/server/cgv/sis$sis;->ssp:Lcom/android/server/cgv/sis;

    invoke-static {p1}, Lcom/android/server/cgv/sis;->vdb(Lcom/android/server/cgv/sis;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/cgv/sis$sis$zta;->sis:Lcom/android/server/cgv/sis$sis;

    iget-object v0, v0, Lcom/android/server/cgv/sis$sis;->ssp:Lcom/android/server/cgv/sis;

    invoke-static {v0}, Lcom/android/server/cgv/sis;->bvj(Lcom/android/server/cgv/sis;)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/cgv/sis$sis$zta;->you:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
