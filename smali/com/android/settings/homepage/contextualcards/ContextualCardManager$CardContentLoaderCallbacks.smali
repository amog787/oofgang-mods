.class Lcom/android/settings/homepage/contextualcards/ContextualCardManager$CardContentLoaderCallbacks;
.super Ljava/lang/Object;
.source "ContextualCardManager.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/ContextualCardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CardContentLoaderCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Lcom/android/settings/homepage/contextualcards/ContextualCard;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/android/settings/homepage/contextualcards/ContextualCardLoader$CardContentLoaderListener;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager$CardContentLoaderCallbacks;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/ContextualCard;",
            ">;>;"
        }
    .end annotation

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 411
    new-instance p1, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;

    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager$CardContentLoaderCallbacks;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 413
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown loader id: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 393
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/homepage/contextualcards/ContextualCardManager$CardContentLoaderCallbacks;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/ContextualCard;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/ContextualCard;",
            ">;)V"
        }
    .end annotation

    .line 420
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager$CardContentLoaderCallbacks;->mListener:Lcom/android/settings/homepage/contextualcards/ContextualCardLoader$CardContentLoaderListener;

    if-eqz p0, :cond_0

    .line 421
    invoke-interface {p0, p2}, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader$CardContentLoaderListener;->onFinishCardLoading(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/List<",
            "Lcom/android/settings/homepage/contextualcards/ContextualCard;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method protected setListener(Lcom/android/settings/homepage/contextualcards/ContextualCardLoader$CardContentLoaderListener;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardManager$CardContentLoaderCallbacks;->mListener:Lcom/android/settings/homepage/contextualcards/ContextualCardLoader$CardContentLoaderListener;

    return-void
.end method
