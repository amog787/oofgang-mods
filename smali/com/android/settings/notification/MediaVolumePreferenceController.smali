.class public Lcom/android/settings/notification/MediaVolumePreferenceController;
.super Lcom/android/settings/notification/VolumeSeekBarPreferenceController;
.source "MediaVolumePreferenceController.java"


# static fields
.field private static final KEY_MEDIA_VOLUME:Ljava/lang/String; = "media_volume"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "media_volume"

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public getAudioStream()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 35
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$bool;->config_show_media_volume:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public getMuteIcon()I
    .locals 0

    .line 68
    sget p0, Lcom/android/settings/R$drawable;->op_ic_audio_media_mute:I

    return p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "media_volume"

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public isPublicSlice()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSliceable()Z
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/notification/MediaVolumePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    const-string v0, "media_volume"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
