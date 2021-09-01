.class public Lcom/android/settings/media/MediaDeviceUpdateWorker;
.super Lcom/android/settings/slices/SliceBackgroundWorker;
.source "MediaDeviceUpdateWorker.java"

# interfaces
.implements Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/media/MediaDeviceUpdateWorker$DevicesChangedBroadcastReceiver;
    }
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private mIsTouched:Z

.field mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

.field protected final mMediaDevices:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/android/settingslib/media/MediaDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageName:Ljava/lang/String;

.field private final mReceiver:Lcom/android/settings/media/MediaDeviceUpdateWorker$DevicesChangedBroadcastReceiver;

.field private mTopDevice:Lcom/android/settingslib/media/MediaDevice;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/settings/slices/SliceBackgroundWorker;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 55
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mMediaDevices:Ljava/util/Collection;

    .line 67
    iput-object p1, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mContext:Landroid/content/Context;

    const-string p1, "media_package_name"

    .line 68
    invoke-virtual {p2, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mPackageName:Ljava/lang/String;

    .line 69
    new-instance p1, Lcom/android/settings/media/MediaDeviceUpdateWorker$DevicesChangedBroadcastReceiver;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/settings/media/MediaDeviceUpdateWorker$DevicesChangedBroadcastReceiver;-><init>(Lcom/android/settings/media/MediaDeviceUpdateWorker;Lcom/android/settings/media/MediaDeviceUpdateWorker$1;)V

    iput-object p1, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mReceiver:Lcom/android/settings/media/MediaDeviceUpdateWorker$DevicesChangedBroadcastReceiver;

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/media/MediaDeviceUpdateWorker;)V
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceBackgroundWorker;->notifySliceChange()V

    return-void
.end method

.method private buildMediaDevices(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/media/MediaDevice;",
            ">;)V"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mMediaDevices:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 107
    iget-object p0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mMediaDevices:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method static synthetic lambda$adjustVolume$2(Lcom/android/settingslib/media/MediaDevice;I)V
    .locals 0

    .line 231
    invoke-virtual {p0, p1}, Lcom/android/settingslib/media/MediaDevice;->requestSetVolume(I)V

    return-void
.end method

.method private synthetic lambda$connectDevice$0()V
    .locals 0

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceBackgroundWorker;->notifySliceChange()V

    return-void
.end method

.method private synthetic lambda$connectDevice$1(Lcom/android/settingslib/media/MediaDevice;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/media/LocalMediaManager;->connectDevice(Lcom/android/settingslib/media/MediaDevice;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 132
    new-instance p1, Lcom/android/settings/media/-$$Lambda$MediaDeviceUpdateWorker$uxnvOiUPk4EhidwtbhIg6HGJ_mw;

    invoke-direct {p1, p0}, Lcom/android/settings/media/-$$Lambda$MediaDeviceUpdateWorker$uxnvOiUPk4EhidwtbhIg6HGJ_mw;-><init>(Lcom/android/settings/media/MediaDeviceUpdateWorker;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method addDeviceToPlayMedia(Lcom/android/settingslib/media/MediaDevice;)Z
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/media/LocalMediaManager;->addDeviceToPlayMedia(Lcom/android/settingslib/media/MediaDevice;)Z

    move-result p0

    return p0
.end method

.method adjustSessionVolume(I)V
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/media/LocalMediaManager;->adjustSessionVolume(I)V

    return-void
.end method

.method adjustSessionVolume(Ljava/lang/String;I)V
    .locals 0

    .line 193
    iget-object p0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/media/LocalMediaManager;->adjustSessionVolume(Ljava/lang/String;I)V

    return-void
.end method

.method public adjustVolume(Lcom/android/settingslib/media/MediaDevice;I)V
    .locals 0

    .line 230
    new-instance p0, Lcom/android/settings/media/-$$Lambda$MediaDeviceUpdateWorker$rzN5nt74lJqnQLJYe8ZTW3eLXtE;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/media/-$$Lambda$MediaDeviceUpdateWorker$rzN5nt74lJqnQLJYe8ZTW3eLXtE;-><init>(Lcom/android/settingslib/media/MediaDevice;I)V

    invoke-static {p0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    return-void
.end method

.method public connectDevice(Lcom/android/settingslib/media/MediaDevice;)V
    .locals 1

    .line 130
    new-instance v0, Lcom/android/settings/media/-$$Lambda$MediaDeviceUpdateWorker$StU8riXozfT724iqWr07-BomaPA;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/media/-$$Lambda$MediaDeviceUpdateWorker$StU8riXozfT724iqWr07-BomaPA;-><init>(Lcom/android/settings/media/MediaDeviceUpdateWorker;Lcom/android/settingslib/media/MediaDevice;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method getActiveRemoteMediaDevice()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/RoutingSessionInfo;",
            ">;"
        }
    .end annotation

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 214
    iget-object p0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/LocalMediaManager;->getActiveMediaSession()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RoutingSessionInfo;

    .line 215
    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->isSystemSession()Z

    move-result v2

    if-nez v2, :cond_0

    .line 216
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getCurrentConnectedMediaDevice()Lcom/android/settingslib/media/MediaDevice;
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/LocalMediaManager;->getCurrentConnectedDevice()Lcom/android/settingslib/media/MediaDevice;

    move-result-object p0

    return-object p0
.end method

.method getDeselectableMediaDevice()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/media/MediaDevice;",
            ">;"
        }
    .end annotation

    .line 180
    iget-object p0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/LocalMediaManager;->getDeselectableMediaDevice()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method getIsTouched()Z
    .locals 0

    .line 152
    iget-boolean p0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mIsTouched:Z

    return p0
.end method

.method public getMediaDeviceById(Ljava/lang/String;)Lcom/android/settingslib/media/MediaDevice;
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mMediaDevices:Ljava/util/Collection;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, p1}, Lcom/android/settingslib/media/LocalMediaManager;->getMediaDeviceById(Ljava/util/List;Ljava/lang/String;)Lcom/android/settingslib/media/MediaDevice;

    move-result-object p0

    return-object p0
.end method

.method public getMediaDevices()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/settingslib/media/MediaDevice;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object p0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mMediaDevices:Ljava/util/Collection;

    return-object p0
.end method

.method getPackageName()Ljava/lang/String;
    .locals 0

    .line 236
    iget-object p0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method getSelectableMediaDevice()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/media/MediaDevice;",
            ">;"
        }
    .end annotation

    .line 172
    iget-object p0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/LocalMediaManager;->getSelectableMediaDevice()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method getSelectedMediaDevice()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/media/MediaDevice;",
            ">;"
        }
    .end annotation

    .line 176
    iget-object p0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/LocalMediaManager;->getSelectedMediaDevice()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method getSessionName()Ljava/lang/CharSequence;
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/LocalMediaManager;->getSessionName()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method getSessionVolume()I
    .locals 0

    .line 205
    iget-object p0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/LocalMediaManager;->getSessionVolume()I

    move-result p0

    return p0
.end method

.method getSessionVolumeMax()I
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/LocalMediaManager;->getSessionVolumeMax()I

    move-result p0

    return p0
.end method

.method getTopDevice()Lcom/android/settingslib/media/MediaDevice;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mTopDevice:Lcom/android/settingslib/media/MediaDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->getMediaDeviceById(Ljava/lang/String;)Lcom/android/settingslib/media/MediaDevice;

    move-result-object p0

    return-object p0
.end method

.method hasAdjustVolumeUserRestriction()Z
    .locals 3

    .line 240
    iget-object v0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mContext:Landroid/content/Context;

    .line 241
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "no_adjust_volume"

    .line 240
    invoke-static {v0, v2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 244
    :cond_0
    iget-object p0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 246
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 245
    invoke-virtual {p0, v2, v0}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method isDeviceIncluded(Ljava/util/Collection;Lcom/android/settingslib/media/MediaDevice;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/settingslib/media/MediaDevice;",
            ">;",
            "Lcom/android/settingslib/media/MediaDevice;",
            ")Z"
        }
    .end annotation

    .line 184
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/media/MediaDevice;

    .line 185
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$connectDevice$0$MediaDeviceUpdateWorker()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->lambda$connectDevice$0()V

    return-void
.end method

.method public synthetic lambda$connectDevice$1$MediaDeviceUpdateWorker(Lcom/android/settingslib/media/MediaDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->lambda$connectDevice$1(Lcom/android/settingslib/media/MediaDevice;)V

    return-void
.end method

.method public onDeviceAttributesChanged()V
    .locals 0

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceBackgroundWorker;->notifySliceChange()V

    return-void
.end method

.method public onDeviceListUpdate(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/media/MediaDevice;",
            ">;)V"
        }
    .end annotation

    .line 101
    invoke-direct {p0, p1}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->buildMediaDevices(Ljava/util/List;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceBackgroundWorker;->notifySliceChange()V

    return-void
.end method

.method public onRequestFailed(I)V
    .locals 0

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceBackgroundWorker;->notifySliceChange()V

    return-void
.end method

.method public onSelectedDeviceStateChanged(Lcom/android/settingslib/media/MediaDevice;I)V
    .locals 0

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceBackgroundWorker;->notifySliceChange()V

    return-void
.end method

.method protected onSlicePinned()V
    .locals 4

    .line 74
    iget-object v0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mMediaDevices:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mIsTouched:Z

    .line 76
    iget-object v0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mPackageName:Ljava/lang/String;

    .line 77
    invoke-virtual {v0}, Lcom/android/settingslib/media/LocalMediaManager;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    :cond_0
    new-instance v0, Lcom/android/settingslib/media/LocalMediaManager;

    iget-object v1, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settingslib/media/LocalMediaManager;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    iput-object v0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/media/LocalMediaManager;->registerCallback(Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;)V

    .line 82
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mReceiver:Lcom/android/settings/media/MediaDeviceUpdateWorker$DevicesChangedBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 84
    iget-object p0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/LocalMediaManager;->startScan()V

    return-void
.end method

.method protected onSliceUnpinned()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/media/LocalMediaManager;->unregisterCallback(Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;)V

    .line 90
    iget-object v0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mReceiver:Lcom/android/settings/media/MediaDeviceUpdateWorker$DevicesChangedBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 91
    iget-object p0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/LocalMediaManager;->stopScan()V

    return-void
.end method

.method removeDeviceFromPlayMedia(Lcom/android/settingslib/media/MediaDevice;)Z
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/media/LocalMediaManager;->removeDeviceFromPlayMedia(Lcom/android/settingslib/media/MediaDevice;)Z

    move-result p0

    return p0
.end method

.method setIsTouched(Z)V
    .locals 0

    .line 148
    iput-boolean p1, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mIsTouched:Z

    return-void
.end method

.method setTopDevice(Lcom/android/settingslib/media/MediaDevice;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->mTopDevice:Lcom/android/settingslib/media/MediaDevice;

    return-void
.end method
