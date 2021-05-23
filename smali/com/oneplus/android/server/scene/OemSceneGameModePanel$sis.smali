.class Lcom/oneplus/android/server/scene/OemSceneGameModePanel$sis;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->bud()V
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

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel$sis;->zta:Lcom/oneplus/android/server/scene/OemSceneGameModePanel;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel$sis;->zta:Lcom/oneplus/android/server/scene/OemSceneGameModePanel;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->you(Lcom/oneplus/android/server/scene/OemSceneGameModePanel;)Lcom/oneplus/android/server/scene/cno;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel$sis;->zta:Lcom/oneplus/android/server/scene/OemSceneGameModePanel;

    invoke-static {p0}, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->you(Lcom/oneplus/android/server/scene/OemSceneGameModePanel;)Lcom/oneplus/android/server/scene/cno;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/scene/cno;->zta(I)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel$sis;->zta:Lcom/oneplus/android/server/scene/OemSceneGameModePanel;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->you(Lcom/oneplus/android/server/scene/OemSceneGameModePanel;)Lcom/oneplus/android/server/scene/cno;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneGameModePanel$sis;->zta:Lcom/oneplus/android/server/scene/OemSceneGameModePanel;

    invoke-static {p0}, Lcom/oneplus/android/server/scene/OemSceneGameModePanel;->you(Lcom/oneplus/android/server/scene/OemSceneGameModePanel;)Lcom/oneplus/android/server/scene/cno;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
