.class public Lcom/android/settings/notification/RemoteVolumePreferenceController$RemoteVolumeSliceWorker;
.super Lcom/android/settings/slices/SliceBackgroundWorker;
.source "RemoteVolumePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/volume/MediaSessions$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/RemoteVolumePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteVolumeSliceWorker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/slices/SliceBackgroundWorker<",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/android/settingslib/volume/MediaSessions$Callbacks;"
    }
.end annotation


# instance fields
.field private mMediaSessions:Lcom/android/settingslib/volume/MediaSessions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    .line 265
    invoke-direct {p0, p1, p2}, Lcom/android/settings/slices/SliceBackgroundWorker;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 266
    new-instance p2, Lcom/android/settingslib/volume/MediaSessions;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, p1, v0, p0}, Lcom/android/settingslib/volume/MediaSessions;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/settingslib/volume/MediaSessions$Callbacks;)V

    iput-object p2, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController$RemoteVolumeSliceWorker;->mMediaSessions:Lcom/android/settingslib/volume/MediaSessions;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 281
    iput-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController$RemoteVolumeSliceWorker;->mMediaSessions:Lcom/android/settingslib/volume/MediaSessions;

    return-void
.end method

.method public onRemoteRemoved(Landroid/media/session/MediaSession$Token;)V
    .locals 0

    .line 292
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceBackgroundWorker;->notifySliceChange()V

    return-void
.end method

.method public onRemoteUpdate(Landroid/media/session/MediaSession$Token;Ljava/lang/String;Landroid/media/session/MediaController$PlaybackInfo;)V
    .locals 0

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceBackgroundWorker;->notifySliceChange()V

    return-void
.end method

.method public onRemoteVolumeChanged(Landroid/media/session/MediaSession$Token;I)V
    .locals 0

    .line 297
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceBackgroundWorker;->notifySliceChange()V

    return-void
.end method

.method protected onSlicePinned()V
    .locals 0

    .line 271
    iget-object p0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController$RemoteVolumeSliceWorker;->mMediaSessions:Lcom/android/settingslib/volume/MediaSessions;

    invoke-virtual {p0}, Lcom/android/settingslib/volume/MediaSessions;->init()V

    return-void
.end method

.method protected onSliceUnpinned()V
    .locals 0

    .line 276
    iget-object p0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController$RemoteVolumeSliceWorker;->mMediaSessions:Lcom/android/settingslib/volume/MediaSessions;

    invoke-virtual {p0}, Lcom/android/settingslib/volume/MediaSessions;->destroy()V

    return-void
.end method
