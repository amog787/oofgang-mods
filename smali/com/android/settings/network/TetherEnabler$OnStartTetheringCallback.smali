.class final Lcom/android/settings/network/TetherEnabler$OnStartTetheringCallback;
.super Landroid/net/ConnectivityManager$OnStartTetheringCallback;
.source "TetherEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/TetherEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OnStartTetheringCallback"
.end annotation


# instance fields
.field final mTetherEnabler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/network/TetherEnabler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/settings/network/TetherEnabler;)V
    .locals 1

    .line 384
    invoke-direct {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;-><init>()V

    .line 385
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/network/TetherEnabler$OnStartTetheringCallback;->mTetherEnabler:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private update()V
    .locals 1

    .line 399
    iget-object p0, p0, Lcom/android/settings/network/TetherEnabler$OnStartTetheringCallback;->mTetherEnabler:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/network/TetherEnabler;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 401
    invoke-virtual {p0, v0}, Lcom/android/settings/network/TetherEnabler;->updateState([Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onTetheringFailed()V
    .locals 0

    .line 395
    invoke-direct {p0}, Lcom/android/settings/network/TetherEnabler$OnStartTetheringCallback;->update()V

    return-void
.end method

.method public onTetheringStarted()V
    .locals 0

    .line 390
    invoke-direct {p0}, Lcom/android/settings/network/TetherEnabler$OnStartTetheringCallback;->update()V

    return-void
.end method
