.class public abstract Lcom/android/settingslib/media/MediaManager;
.super Ljava/lang/Object;
.source "MediaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/media/MediaManager$MediaDeviceCallback;
    }
.end annotation


# instance fields
.field protected final mCallbacks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/android/settingslib/media/MediaManager$MediaDeviceCallback;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field protected final mMediaDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/media/MediaDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settingslib/media/MediaManager;->mCallbacks:Ljava/util/Collection;

    .line 35
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settingslib/media/MediaManager;->mMediaDevices:Ljava/util/List;

    .line 41
    iput-object p1, p0, Lcom/android/settingslib/media/MediaManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getCallbacks()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/settingslib/media/MediaManager$MediaDeviceCallback;",
            ">;"
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p0, p0, Lcom/android/settingslib/media/MediaManager;->mCallbacks:Ljava/util/Collection;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method protected dispatchConnectedDeviceChanged(Ljava/lang/String;)V
    .locals 1

    .line 102
    invoke-direct {p0}, Lcom/android/settingslib/media/MediaManager;->getCallbacks()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/media/MediaManager$MediaDeviceCallback;

    .line 103
    invoke-interface {v0, p1}, Lcom/android/settingslib/media/MediaManager$MediaDeviceCallback;->onConnectedDeviceChanged(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected dispatchDataChanged()V
    .locals 1

    .line 108
    invoke-direct {p0}, Lcom/android/settingslib/media/MediaManager;->getCallbacks()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/media/MediaManager$MediaDeviceCallback;

    .line 109
    invoke-interface {v0}, Lcom/android/settingslib/media/MediaManager$MediaDeviceCallback;->onDeviceAttributesChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected dispatchDeviceListAdded()V
    .locals 4

    .line 90
    invoke-direct {p0}, Lcom/android/settingslib/media/MediaManager;->getCallbacks()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/media/MediaManager$MediaDeviceCallback;

    .line 91
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settingslib/media/MediaManager;->mMediaDevices:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v2}, Lcom/android/settingslib/media/MediaManager$MediaDeviceCallback;->onDeviceListAdded(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected dispatchOnRequestFailed(I)V
    .locals 1

    .line 114
    invoke-direct {p0}, Lcom/android/settingslib/media/MediaManager;->getCallbacks()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/media/MediaManager$MediaDeviceCallback;

    .line 115
    invoke-interface {v0, p1}, Lcom/android/settingslib/media/MediaManager$MediaDeviceCallback;->onRequestFailed(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected registerCallback(Lcom/android/settingslib/media/MediaManager$MediaDeviceCallback;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/android/settingslib/media/MediaManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    iget-object p0, p0, Lcom/android/settingslib/media/MediaManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected unregisterCallback(Lcom/android/settingslib/media/MediaManager$MediaDeviceCallback;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/android/settingslib/media/MediaManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object p0, p0, Lcom/android/settingslib/media/MediaManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
