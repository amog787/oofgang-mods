.class Landroidx/fragment/app/DefaultSpecialEffectsController$5;
.super Ljava/lang/Object;
.source "DefaultSpecialEffectsController.java"

# interfaces
.implements Landroidx/core/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/DefaultSpecialEffectsController;->startAnimation(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$viewToAnimate:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/fragment/app/DefaultSpecialEffectsController;Landroid/view/View;)V
    .locals 0

    .line 228
    iput-object p2, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$5;->val$viewToAnimate:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .line 231
    iget-object p0, p0, Landroidx/fragment/app/DefaultSpecialEffectsController$5;->val$viewToAnimate:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    return-void
.end method
