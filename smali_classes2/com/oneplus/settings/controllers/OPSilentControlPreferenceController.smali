.class public Lcom/oneplus/settings/controllers/OPSilentControlPreferenceController;
.super Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;
.source "OPSilentControlPreferenceController.java"


# static fields
.field private static final KEY_SILENT_TOGGLE:Ljava/lang/String; = "silent_toggle"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "silent_toggle"

    .line 19
    invoke-direct {p0, p1, v0}, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
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

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "silent_toggle"

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

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 29
    iget-object p1, p0, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    invoke-virtual {p1}, Lcom/android/settings/notification/AudioHelper;->getRingerModeInternal()I

    move-result p1

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "silent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " current ringerMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPVibrateAndSilentControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v0, "vibrate_when_ringing"

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_0

    .line 34
    iget-object p1, p0, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;->mAudioManager:Landroid/media/AudioManager;

    const/16 p2, -0x64

    invoke-virtual {p1, v1, p2, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 35
    iget-object p1, p0, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v2}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 36
    iget-object p1, p0, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_3

    .line 38
    iget-object p0, p0, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, v3}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    goto :goto_0

    .line 43
    :cond_0
    iget-object p2, p0, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p2, v1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 44
    iget-object p2, p0, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p2, v1}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result p2

    if-gt p2, v3, :cond_1

    .line 46
    iget-object p2, p0, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p2, v1, v3, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_1
    if-ne p1, v3, :cond_2

    .line 50
    iget-object p0, p0, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 53
    :cond_2
    iget-object p0, p0, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    :goto_0
    return v3
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    invoke-virtual {v0}, Lcom/android/settings/notification/AudioHelper;->getRingerModeInternal()I

    move-result v0

    .line 63
    iput v0, p0, Lcom/oneplus/settings/controllers/OPVibrateControlPreferenceController;->mRingerMode:I

    const/4 p0, 0x1

    if-eq v0, p0, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    check-cast p1, Landroidx/preference/SwitchPreference;

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    .line 69
    :cond_1
    :goto_0
    check-cast p1, Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_1
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
