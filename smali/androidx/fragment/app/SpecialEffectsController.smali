.class abstract Landroidx/fragment/app/SpecialEffectsController;
.super Ljava/lang/Object;
.source "SpecialEffectsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;,
        Landroidx/fragment/app/SpecialEffectsController$Operation;
    }
.end annotation


# instance fields
.field final mAwaitingCompletionOperations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroidx/fragment/app/Fragment;",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            ">;"
        }
    .end annotation
.end field

.field private final mContainer:Landroid/view/ViewGroup;

.field mIsContainerPostponed:Z

.field mOperationDirectionIsPop:Z

.field final mPendingOperations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/SpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/SpecialEffectsController;->mAwaitingCompletionOperations:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Landroidx/fragment/app/SpecialEffectsController;->mOperationDirectionIsPop:Z

    .line 87
    iput-boolean v0, p0, Landroidx/fragment/app/SpecialEffectsController;->mIsContainerPostponed:Z

    .line 90
    iput-object p1, p0, Landroidx/fragment/app/SpecialEffectsController;->mContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method private enqueue(Landroidx/fragment/app/SpecialEffectsController$Operation$Type;Landroidx/fragment/app/FragmentStateManager;Landroidx/core/os/CancellationSignal;)V
    .locals 3

    .line 143
    invoke-virtual {p3}, Landroidx/core/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    monitor-enter v0

    .line 148
    :try_start_0
    new-instance v1, Landroidx/core/os/CancellationSignal;

    invoke-direct {v1}, Landroidx/core/os/CancellationSignal;-><init>()V

    .line 149
    new-instance v2, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;

    invoke-direct {v2, p1, p2, v1}, Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;-><init>(Landroidx/fragment/app/SpecialEffectsController$Operation$Type;Landroidx/fragment/app/FragmentStateManager;Landroidx/core/os/CancellationSignal;)V

    .line 151
    iget-object p1, p0, Landroidx/fragment/app/SpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object p1, p0, Landroidx/fragment/app/SpecialEffectsController;->mAwaitingCompletionOperations:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    new-instance p1, Landroidx/fragment/app/SpecialEffectsController$1;

    invoke-direct {p1, p0, v2, v1}, Landroidx/fragment/app/SpecialEffectsController$1;-><init>(Landroidx/fragment/app/SpecialEffectsController;Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;Landroidx/core/os/CancellationSignal;)V

    invoke-virtual {p3, p1}, Landroidx/core/os/CancellationSignal;->setOnCancelListener(Landroidx/core/os/CancellationSignal$OnCancelListener;)V

    .line 166
    new-instance p1, Landroidx/fragment/app/SpecialEffectsController$2;

    invoke-direct {p1, p0, v2}, Landroidx/fragment/app/SpecialEffectsController$2;-><init>(Landroidx/fragment/app/SpecialEffectsController;Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;)V

    invoke-virtual {v2, p1}, Landroidx/fragment/app/SpecialEffectsController$Operation;->addCompletionListener(Ljava/lang/Runnable;)V

    .line 172
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static getOrCreateController(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/SpecialEffectsController;
    .locals 0

    .line 52
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getSpecialEffectsControllerFactory()Landroidx/fragment/app/SpecialEffectsControllerFactory;

    move-result-object p1

    .line 53
    invoke-static {p0, p1}, Landroidx/fragment/app/SpecialEffectsController;->getOrCreateController(Landroid/view/ViewGroup;Landroidx/fragment/app/SpecialEffectsControllerFactory;)Landroidx/fragment/app/SpecialEffectsController;

    move-result-object p0

    return-object p0
.end method

.method static getOrCreateController(Landroid/view/ViewGroup;Landroidx/fragment/app/SpecialEffectsControllerFactory;)Landroidx/fragment/app/SpecialEffectsController;
    .locals 2

    .line 69
    sget v0, Landroidx/fragment/R$id;->special_effects_controller_view_tag:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 70
    instance-of v1, v0, Landroidx/fragment/app/SpecialEffectsController;

    if-eqz v1, :cond_0

    .line 71
    check-cast v0, Landroidx/fragment/app/SpecialEffectsController;

    return-object v0

    .line 74
    :cond_0
    invoke-interface {p1, p0}, Landroidx/fragment/app/SpecialEffectsControllerFactory;->createController(Landroid/view/ViewGroup;)Landroidx/fragment/app/SpecialEffectsController;

    move-result-object p1

    .line 75
    sget v0, Landroidx/fragment/R$id;->special_effects_controller_view_tag:I

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    return-object p1
.end method


# virtual methods
.method cancelAllOperations()V
    .locals 3

    .line 218
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    monitor-enter v0

    .line 219
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/SpecialEffectsController;->mAwaitingCompletionOperations:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 220
    invoke-virtual {v2}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getCancellationSignal()Landroidx/core/os/CancellationSignal;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/core/os/CancellationSignal;->cancel()V

    goto :goto_0

    .line 222
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/SpecialEffectsController;->mAwaitingCompletionOperations:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 225
    iget-object p0, p0, Landroidx/fragment/app/SpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 226
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method enqueueAdd(Landroidx/fragment/app/FragmentStateManager;Landroidx/core/os/CancellationSignal;)V
    .locals 1

    .line 122
    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$Type;->ADD:Landroidx/fragment/app/SpecialEffectsController$Operation$Type;

    invoke-direct {p0, v0, p1, p2}, Landroidx/fragment/app/SpecialEffectsController;->enqueue(Landroidx/fragment/app/SpecialEffectsController$Operation$Type;Landroidx/fragment/app/FragmentStateManager;Landroidx/core/os/CancellationSignal;)V

    return-void
.end method

.method enqueueHide(Landroidx/fragment/app/FragmentStateManager;Landroidx/core/os/CancellationSignal;)V
    .locals 1

    .line 132
    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$Type;->HIDE:Landroidx/fragment/app/SpecialEffectsController$Operation$Type;

    invoke-direct {p0, v0, p1, p2}, Landroidx/fragment/app/SpecialEffectsController;->enqueue(Landroidx/fragment/app/SpecialEffectsController$Operation$Type;Landroidx/fragment/app/FragmentStateManager;Landroidx/core/os/CancellationSignal;)V

    return-void
.end method

.method enqueueRemove(Landroidx/fragment/app/FragmentStateManager;Landroidx/core/os/CancellationSignal;)V
    .locals 1

    .line 137
    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$Type;->REMOVE:Landroidx/fragment/app/SpecialEffectsController$Operation$Type;

    invoke-direct {p0, v0, p1, p2}, Landroidx/fragment/app/SpecialEffectsController;->enqueue(Landroidx/fragment/app/SpecialEffectsController$Operation$Type;Landroidx/fragment/app/FragmentStateManager;Landroidx/core/os/CancellationSignal;)V

    return-void
.end method

.method enqueueShow(Landroidx/fragment/app/FragmentStateManager;Landroidx/core/os/CancellationSignal;)V
    .locals 1

    .line 127
    sget-object v0, Landroidx/fragment/app/SpecialEffectsController$Operation$Type;->SHOW:Landroidx/fragment/app/SpecialEffectsController$Operation$Type;

    invoke-direct {p0, v0, p1, p2}, Landroidx/fragment/app/SpecialEffectsController;->enqueue(Landroidx/fragment/app/SpecialEffectsController$Operation$Type;Landroidx/fragment/app/FragmentStateManager;Landroidx/core/os/CancellationSignal;)V

    return-void
.end method

.method abstract executeOperations(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/fragment/app/SpecialEffectsController$Operation;",
            ">;Z)V"
        }
    .end annotation
.end method

.method executePendingOperations()V
    .locals 3

    .line 206
    iget-boolean v0, p0, Landroidx/fragment/app/SpecialEffectsController;->mIsContainerPostponed:Z

    if-eqz v0, :cond_0

    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    monitor-enter v0

    .line 211
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/SpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-boolean v2, p0, Landroidx/fragment/app/SpecialEffectsController;->mOperationDirectionIsPop:Z

    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/SpecialEffectsController;->executeOperations(Ljava/util/List;Z)V

    .line 212
    iget-object v1, p0, Landroidx/fragment/app/SpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    .line 213
    iput-boolean v1, p0, Landroidx/fragment/app/SpecialEffectsController;->mOperationDirectionIsPop:Z

    .line 214
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method forcePostponedExecutePendingOperations()V
    .locals 1

    .line 199
    iget-boolean v0, p0, Landroidx/fragment/app/SpecialEffectsController;->mIsContainerPostponed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 200
    iput-boolean v0, p0, Landroidx/fragment/app/SpecialEffectsController;->mIsContainerPostponed:Z

    .line 201
    invoke-virtual {p0}, Landroidx/fragment/app/SpecialEffectsController;->executePendingOperations()V

    :cond_0
    return-void
.end method

.method getAwaitingCompletionType(Landroidx/fragment/app/FragmentStateManager;)Landroidx/fragment/app/SpecialEffectsController$Operation$Type;
    .locals 0

    .line 112
    iget-object p0, p0, Landroidx/fragment/app/SpecialEffectsController;->mAwaitingCompletionOperations:Ljava/util/HashMap;

    .line 113
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 112
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/SpecialEffectsController$Operation;

    if-eqz p0, :cond_0

    .line 115
    invoke-virtual {p0}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getType()Landroidx/fragment/app/SpecialEffectsController$Operation$Type;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getContainer()Landroid/view/ViewGroup;
    .locals 0

    .line 95
    iget-object p0, p0, Landroidx/fragment/app/SpecialEffectsController;->mContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method markPostponedState()V
    .locals 5

    .line 180
    iget-object v0, p0, Landroidx/fragment/app/SpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 182
    :try_start_0
    iput-boolean v1, p0, Landroidx/fragment/app/SpecialEffectsController;->mIsContainerPostponed:Z

    .line 183
    iget-object v1, p0, Landroidx/fragment/app/SpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 184
    iget-object v2, p0, Landroidx/fragment/app/SpecialEffectsController;->mPendingOperations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/SpecialEffectsController$Operation;

    .line 186
    invoke-virtual {v2}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getType()Landroidx/fragment/app/SpecialEffectsController$Operation$Type;

    move-result-object v3

    sget-object v4, Landroidx/fragment/app/SpecialEffectsController$Operation$Type;->ADD:Landroidx/fragment/app/SpecialEffectsController$Operation$Type;

    if-eq v3, v4, :cond_1

    .line 187
    invoke-virtual {v2}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getType()Landroidx/fragment/app/SpecialEffectsController$Operation$Type;

    move-result-object v3

    sget-object v4, Landroidx/fragment/app/SpecialEffectsController$Operation$Type;->SHOW:Landroidx/fragment/app/SpecialEffectsController$Operation$Type;

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 188
    :cond_1
    :goto_1
    invoke-virtual {v2}, Landroidx/fragment/app/SpecialEffectsController$Operation;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 191
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isPostponed()Z

    move-result v1

    iput-boolean v1, p0, Landroidx/fragment/app/SpecialEffectsController;->mIsContainerPostponed:Z

    .line 195
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method updateOperationDirection(Z)V
    .locals 0

    .line 176
    iput-boolean p1, p0, Landroidx/fragment/app/SpecialEffectsController;->mOperationDirectionIsPop:Z

    return-void
.end method
