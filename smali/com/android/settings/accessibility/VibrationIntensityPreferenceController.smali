.class public abstract Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "VibrationIntensityPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/VibrationIntensityPreferenceController$SettingObserver;
    }
.end annotation


# instance fields
.field private final mEnabledKey:Ljava/lang/String;

.field private mPreference:Landroidx/preference/Preference;

.field private final mSettingKey:Ljava/lang/String;

.field private final mSettingsContentObserver:Lcom/android/settings/accessibility/VibrationIntensityPreferenceController$SettingObserver;

.field private final mSupportRampingRinger:Z

.field protected final mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 64
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class p2, Landroid/os/Vibrator;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mVibrator:Landroid/os/Vibrator;

    .line 51
    iput-object p3, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mSettingKey:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mEnabledKey:Ljava/lang/String;

    .line 53
    iput-boolean p5, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mSupportRampingRinger:Z

    .line 54
    new-instance p1, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController$1;

    invoke-direct {p1, p0, p3}, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController$1;-><init>(Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mSettingsContentObserver:Lcom/android/settings/accessibility/VibrationIntensityPreferenceController$SettingObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;)Landroidx/preference/Preference;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method public static getIntensityString(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 2

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$bool;->config_vibration_supports_multiple_intensities:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 108
    :cond_0
    sget p1, Lcom/android/settings/R$string;->accessibility_vibration_intensity_high:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 106
    :cond_1
    sget p1, Lcom/android/settings/R$string;->accessibility_vibration_intensity_medium:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 104
    :cond_2
    sget p1, Lcom/android/settings/R$string;->accessibility_vibration_intensity_low:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 102
    :cond_3
    sget p1, Lcom/android/settings/R$string;->accessibility_vibration_intensity_off:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    if-nez p1, :cond_5

    .line 114
    sget p1, Lcom/android/settings/R$string;->switch_off_text:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 116
    :cond_5
    sget p1, Lcom/android/settings/R$string;->switch_on_text:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 82
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mPreference:Landroidx/preference/Preference;

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

.method protected abstract getDefaultIntensity()I
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 4

    .line 88
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mSettingKey:Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->getDefaultIntensity()I

    move-result v2

    .line 88
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 90
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mEnabledKey:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, v3, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mSupportRampingRinger:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 92
    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->isRampingRingerEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    .line 93
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    invoke-static {p0, v0}, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->getIntensityString(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object p0

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

.method public onStart()V
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mSettingsContentObserver:Lcom/android/settings/accessibility/VibrationIntensityPreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController$SettingObserver;->uri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mSettingsContentObserver:Lcom/android/settings/accessibility/VibrationIntensityPreferenceController$SettingObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
