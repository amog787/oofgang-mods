.class public Lcom/android/settingslib/suggestions/SuggestionControllerMixin;
.super Ljava/lang/Object;
.source "SuggestionControllerMixin.java"

# interfaces
.implements Lcom/android/settingslib/suggestions/SuggestionController$ServiceConnectionListener;
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/suggestions/SuggestionControllerMixin$SuggestionControllerHost;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/settingslib/suggestions/SuggestionController$ServiceConnectionListener;",
        "Landroidx/lifecycle/LifecycleObserver;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Landroid/service/settings/suggestions/Suggestion;",
        ">;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHost:Lcom/android/settingslib/suggestions/SuggestionControllerMixin$SuggestionControllerHost;

.field private final mSuggestionController:Lcom/android/settingslib/suggestions/SuggestionController;


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;>;"
        }
    .end annotation

    const/16 p2, 0x2a

    if-ne p1, p2, :cond_0

    .line 117
    new-instance p1, Lcom/android/settingslib/suggestions/SuggestionLoader;

    iget-object p2, p0, Lcom/android/settingslib/suggestions/SuggestionControllerMixin;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settingslib/suggestions/SuggestionControllerMixin;->mSuggestionController:Lcom/android/settingslib/suggestions/SuggestionController;

    invoke-direct {p1, p2, p0}, Lcom/android/settingslib/suggestions/SuggestionLoader;-><init>(Landroid/content/Context;Lcom/android/settingslib/suggestions/SuggestionController;)V

    return-object p1

    .line 119
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "This loader id is not supported "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 39
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/suggestions/SuggestionControllerMixin;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;>;",
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;)V"
        }
    .end annotation

    .line 125
    iget-object p0, p0, Lcom/android/settingslib/suggestions/SuggestionControllerMixin;->mHost:Lcom/android/settingslib/suggestions/SuggestionControllerMixin$SuggestionControllerHost;

    invoke-interface {p0, p2}, Lcom/android/settingslib/suggestions/SuggestionControllerMixin$SuggestionControllerHost;->onSuggestionReady(Ljava/util/List;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public onServiceConnected()V
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionControllerMixin;->mHost:Lcom/android/settingslib/suggestions/SuggestionControllerMixin$SuggestionControllerHost;

    invoke-interface {v0}, Lcom/android/settingslib/suggestions/SuggestionControllerMixin$SuggestionControllerHost;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x2a

    const/4 v2, 0x0

    .line 97
    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :cond_0
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 1

    .line 107
    iget-object p0, p0, Lcom/android/settingslib/suggestions/SuggestionControllerMixin;->mHost:Lcom/android/settingslib/suggestions/SuggestionControllerMixin$SuggestionControllerHost;

    invoke-interface {p0}, Lcom/android/settingslib/suggestions/SuggestionControllerMixin$SuggestionControllerHost;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0x2a

    .line 109
    invoke-virtual {p0, v0}, Landroid/app/LoaderManager;->destroyLoader(I)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 82
    iget-object p0, p0, Lcom/android/settingslib/suggestions/SuggestionControllerMixin;->mSuggestionController:Lcom/android/settingslib/suggestions/SuggestionController;

    invoke-virtual {p0}, Lcom/android/settingslib/suggestions/SuggestionController;->start()V

    return-void
.end method

.method public onStop()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 90
    iget-object p0, p0, Lcom/android/settingslib/suggestions/SuggestionControllerMixin;->mSuggestionController:Lcom/android/settingslib/suggestions/SuggestionController;

    invoke-virtual {p0}, Lcom/android/settingslib/suggestions/SuggestionController;->stop()V

    return-void
.end method
