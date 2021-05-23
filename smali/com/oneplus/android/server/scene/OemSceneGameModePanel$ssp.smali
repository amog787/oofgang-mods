.class Lcom/oneplus/android/server/scene/OemSceneGameModePanel$ssp;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->vju(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/android/server/scene/OemSceneGameModePanel;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/scene/OemSceneGameModePanel;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel$ssp;->zta:Lcom/oneplus/android/server/scene/OemSceneGameModePanel;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel$ssp;->zta:Lcom/oneplus/android/server/scene/OemSceneGameModePanel;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->you(Lcom/oneplus/android/server/scene/OemSceneGameModePanel;)Lcom/oneplus/android/server/scene/cno;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel$ssp;->zta:Lcom/oneplus/android/server/scene/OemSceneGameModePanel;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->you(Lcom/oneplus/android/server/scene/OemSceneGameModePanel;)Lcom/oneplus/android/server/scene/cno;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel$ssp;->zta:Lcom/oneplus/android/server/scene/OemSceneGameModePanel;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->rtg(Lcom/oneplus/android/server/scene/OemSceneGameModePanel;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel$ssp;->zta:Lcom/oneplus/android/server/scene/OemSceneGameModePanel;

    invoke-static {v0}, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->you(Lcom/oneplus/android/server/scene/OemSceneGameModePanel;)Lcom/oneplus/android/server/scene/cno;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel$ssp;->zta:Lcom/oneplus/android/server/scene/OemSceneGameModePanel;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->sis(Lcom/oneplus/android/server/scene/OemSceneGameModePanel;Lcom/oneplus/android/server/scene/cno;)Lcom/oneplus/android/server/scene/cno;

    :cond_0
    return-void
.end method
