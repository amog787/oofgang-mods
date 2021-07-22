.class Lcom/android/settings/notification/RemoteVolumePreferenceController$1;
.super Ljava/lang/Object;
.source "RemoteVolumePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/volume/MediaSessions$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/RemoteVolumePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/RemoteVolumePreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/RemoteVolumePreferenceController;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController$1;->this$0:Lcom/android/settings/notification/RemoteVolumePreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoteRemoved(Landroid/media/session/MediaSession$Token;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController$1;->this$0:Lcom/android/settings/notification/RemoteVolumePreferenceController;

    iget-object v0, v0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mActiveToken:Landroid/media/session/MediaSession$Token;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 70
    iget-object p1, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController$1;->this$0:Lcom/android/settings/notification/RemoteVolumePreferenceController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/notification/RemoteVolumePreferenceController;->access$000(Lcom/android/settings/notification/RemoteVolumePreferenceController;Landroid/media/session/MediaSession$Token;)V

    .line 71
    iget-object p0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController$1;->this$0:Lcom/android/settings/notification/RemoteVolumePreferenceController;

    iget-object p0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 72
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public onRemoteUpdate(Landroid/media/session/MediaSession$Token;Ljava/lang/String;Landroid/media/session/MediaController$PlaybackInfo;)V
    .locals 1

    .line 59
    iget-object p2, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController$1;->this$0:Lcom/android/settings/notification/RemoteVolumePreferenceController;

    iget-object v0, p2, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mActiveToken:Landroid/media/session/MediaSession$Token;

    if-nez v0, :cond_0

    .line 60
    invoke-static {p2, p1}, Lcom/android/settings/notification/RemoteVolumePreferenceController;->access$000(Lcom/android/settings/notification/RemoteVolumePreferenceController;Landroid/media/session/MediaSession$Token;)V

    .line 62
    :cond_0
    iget-object p2, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController$1;->this$0:Lcom/android/settings/notification/RemoteVolumePreferenceController;

    iget-object p2, p2, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mActiveToken:Landroid/media/session/MediaSession$Token;

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 63
    iget-object p0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController$1;->this$0:Lcom/android/settings/notification/RemoteVolumePreferenceController;

    iget-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object p2, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mActiveToken:Landroid/media/session/MediaSession$Token;

    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/notification/RemoteVolumePreferenceController;->access$100(Lcom/android/settings/notification/RemoteVolumePreferenceController;Lcom/android/settings/notification/VolumeSeekBarPreference;Landroid/media/session/MediaSession$Token;Landroid/media/session/MediaController$PlaybackInfo;)V

    :cond_1
    return-void
.end method

.method public onRemoteVolumeChanged(Landroid/media/session/MediaSession$Token;I)V
    .locals 1

    .line 79
    iget-object p2, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController$1;->this$0:Lcom/android/settings/notification/RemoteVolumePreferenceController;

    iget-object p2, p2, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mActiveToken:Landroid/media/session/MediaSession$Token;

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 80
    iget-object p1, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController$1;->this$0:Lcom/android/settings/notification/RemoteVolumePreferenceController;

    iget-object p2, p1, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    const-string v0, "RemoteVolumePrefCtr"

    if-nez p2, :cond_0

    const-string p0, "Preference is null"

    .line 81
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 84
    :cond_0
    iget-object p1, p1, Lcom/android/settings/notification/RemoteVolumePreferenceController;->mMediaController:Landroid/media/session/MediaController;

    if-nez p1, :cond_1

    const-string p0, "MediaController is null"

    .line 85
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 88
    :cond_1
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p0, "PlaybackInfo is null"

    .line 90
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 93
    :cond_2
    iget-object p0, p0, Lcom/android/settings/notification/RemoteVolumePreferenceController$1;->this$0:Lcom/android/settings/notification/RemoteVolumePreferenceController;

    iget-object p0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    :cond_3
    return-void
.end method
