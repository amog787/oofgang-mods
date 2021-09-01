.class Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;
.super Ljava/lang/Object;
.source "LoaderManagerImpl.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/loader/app/LoaderManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoaderObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "TD;>;"
    }
.end annotation


# instance fields
.field private final mCallback:Landroidx/loader/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
            "TD;>;"
        }
    .end annotation
.end field

.field private mDeliveredData:Z

.field private final mLoader:Landroidx/loader/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/loader/content/Loader<",
            "TD;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/loader/content/Loader;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "TD;>;",
            "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
            "TD;>;)V"
        }
    .end annotation

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 245
    iput-boolean v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mDeliveredData:Z

    .line 248
    iput-object p1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mLoader:Landroidx/loader/content/Loader;

    .line 249
    iput-object p2, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mCallback:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0

    .line 281
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mDeliveredData="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mDeliveredData:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method hasDeliveredData()Z
    .locals 0

    .line 263
    iget-boolean p0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mDeliveredData:Z

    return p0
.end method

.method public onChanged(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 254
    invoke-static {v0}, Landroidx/loader/app/LoaderManagerImpl;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  onLoadFinished in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mLoader:Landroidx/loader/content/Loader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mLoader:Landroidx/loader/content/Loader;

    .line 256
    invoke-virtual {v1, p1}, Landroidx/loader/content/Loader;->dataToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoaderManager"

    .line 255
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 258
    iput-boolean v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mDeliveredData:Z

    .line 259
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mCallback:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    iget-object p0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mLoader:Landroidx/loader/content/Loader;

    invoke-interface {v0, p0, p1}, Landroidx/loader/app/LoaderManager$LoaderCallbacks;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V

    return-void
.end method

.method reset()V
    .locals 2

    .line 268
    iget-boolean v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mDeliveredData:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 269
    invoke-static {v0}, Landroidx/loader/app/LoaderManagerImpl;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Resetting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mLoader:Landroidx/loader/content/Loader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_0
    iget-object v0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mCallback:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    iget-object p0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mLoader:Landroidx/loader/content/Loader;

    invoke-interface {v0, p0}, Landroidx/loader/app/LoaderManager$LoaderCallbacks;->onLoaderReset(Landroidx/loader/content/Loader;)V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 277
    iget-object p0, p0, Landroidx/loader/app/LoaderManagerImpl$LoaderObserver;->mCallback:Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
