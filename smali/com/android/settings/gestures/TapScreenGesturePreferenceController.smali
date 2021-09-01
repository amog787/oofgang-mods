.class public Lcom/android/settings/gestures/TapScreenGesturePreferenceController;
.super Lcom/android/settings/gestures/GesturePreferenceController;
.source "TapScreenGesturePreferenceController.java"


# static fields
.field private static final PREF_KEY_VIDEO:Ljava/lang/String; = "gesture_tap_screen_video"


# instance fields
.field private mAmbientConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/settings/gestures/GesturePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iput p1, p0, Lcom/android/settings/gestures/TapScreenGesturePreferenceController;->mUserId:I

    return-void
.end method

.method private getAmbientConfig()Landroid/hardware/display/AmbientDisplayConfiguration;
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/android/settings/gestures/TapScreenGesturePreferenceController;->mAmbientConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Landroid/hardware/display/AmbientDisplayConfiguration;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/gestures/TapScreenGesturePreferenceController;->mAmbientConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 85
    :cond_0
    iget-object p0, p0, Lcom/android/settings/gestures/TapScreenGesturePreferenceController;->mAmbientConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/settings/gestures/TapScreenGesturePreferenceController;->getAmbientConfig()Landroid/hardware/display/AmbientDisplayConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->tapSensorAvailable()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 p0, 0x0

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

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 0

    .line 67
    invoke-super {p0}, Lcom/android/settings/gestures/GesturePreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method protected getVideoPrefKey()Ljava/lang/String;
    .locals 0

    const-string p0, "gesture_tap_screen_video"

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public isChecked()Z
    .locals 1

    .line 72
    invoke-direct {p0}, Lcom/android/settings/gestures/TapScreenGesturePreferenceController;->getAmbientConfig()Landroid/hardware/display/AmbientDisplayConfiguration;

    move-result-object v0

    iget p0, p0, Lcom/android/settings/gestures/TapScreenGesturePreferenceController;->mUserId:I

    invoke-virtual {v0, p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->tapGestureEnabled(I)Z

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

.method public setChecked(Z)Z
    .locals 1

    .line 77
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "doze_tap_gesture"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public setConfig(Landroid/hardware/display/AmbientDisplayConfiguration;)Lcom/android/settings/gestures/TapScreenGesturePreferenceController;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/android/settings/gestures/TapScreenGesturePreferenceController;->mAmbientConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
