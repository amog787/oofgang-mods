.class public Landroidx/transition/Scene;
.super Ljava/lang/Object;
.source "Scene.java"


# instance fields
.field private mExitAction:Ljava/lang/Runnable;

.field private mSceneRoot:Landroid/view/ViewGroup;


# direct methods
.method public static getCurrentScene(Landroid/view/ViewGroup;)Landroidx/transition/Scene;
    .locals 1

    .line 209
    sget v0, Landroidx/transition/R$id;->transition_current_scene:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/transition/Scene;

    return-object p0
.end method

.method static setCurrentScene(Landroid/view/ViewGroup;Landroidx/transition/Scene;)V
    .locals 1

    .line 196
    sget v0, Landroidx/transition/R$id;->transition_current_scene:I

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public exit()V
    .locals 1

    .line 149
    iget-object v0, p0, Landroidx/transition/Scene;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/transition/Scene;->getCurrentScene(Landroid/view/ViewGroup;)Landroidx/transition/Scene;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 150
    iget-object p0, p0, Landroidx/transition/Scene;->mExitAction:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 151
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
