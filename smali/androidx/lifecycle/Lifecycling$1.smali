.class Landroidx/lifecycle/Lifecycling$1;
.super Ljava/lang/Object;
.source "Lifecycling.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field final synthetic val$observer:Landroidx/lifecycle/LifecycleEventObserver;


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    .line 61
    iget-object p0, p0, Landroidx/lifecycle/Lifecycling$1;->val$observer:Landroidx/lifecycle/LifecycleEventObserver;

    invoke-interface {p0, p1, p2}, Landroidx/lifecycle/LifecycleEventObserver;->onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method
