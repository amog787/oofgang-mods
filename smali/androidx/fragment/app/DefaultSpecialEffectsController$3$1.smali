.class Landroidx/fragment/app/DefaultSpecialEffectsController$3$1;
.super Ljava/lang/Object;
.source "DefaultSpecialEffectsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/DefaultSpecialEffectsController$3;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/fragment/app/DefaultSpecialEffectsController$3;


# direct methods
.method constructor <init>(Landroidx/fragment/app/DefaultSpecialEffectsController$3;)V
    .locals 0

    .line 201
    iput-object p1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$3$1;->this$1:Landroidx/fragment/app/DefaultSpecialEffectsController$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 204
    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$3$1;->this$1:Landroidx/fragment/app/DefaultSpecialEffectsController$3;

    iget-object v1, v0, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->val$container:Landroid/view/ViewGroup;

    iget-object v0, v0, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->val$viewToAnimate:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 205
    iget-object p0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$3$1;->this$1:Landroidx/fragment/app/DefaultSpecialEffectsController$3;

    iget-object v0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->this$0:Landroidx/fragment/app/DefaultSpecialEffectsController;

    iget-object v1, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->val$operation:Landroidx/fragment/app/SpecialEffectsController$Operation;

    iget-object p0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$3;->val$signal:Landroidx/core/os/CancellationSignal;

    invoke-virtual {v0, v1, p0}, Landroidx/fragment/app/DefaultSpecialEffectsController;->removeCancellationSignal(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;)V

    return-void
.end method
