.class public Lcom/android/settings/accessibility/TouchVibrationPreferenceFragment;
.super Lcom/android/settings/accessibility/VibrationPreferenceFragment;
.source "TouchVibrationPreferenceFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDefaultVibrationIntensity()I
    .locals 1

    .line 54
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/os/Vibrator;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    .line 55
    invoke-virtual {p0}, Landroid/os/Vibrator;->getDefaultHapticFeedbackIntensity()I

    move-result p0

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x50e

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 36
    sget p0, Lcom/android/settings/R$xml;->accessibility_touch_vibration_settings:I

    return p0
.end method

.method protected getPreviewVibrationAudioAttributesUsage()I
    .locals 0

    const/16 p0, 0xd

    return p0
.end method

.method protected getVibrationEnabledSetting()Ljava/lang/String;
    .locals 0

    const-string p0, "haptic_feedback_enabled"

    return-object p0
.end method

.method protected getVibrationIntensitySetting()Ljava/lang/String;
    .locals 0

    const-string p0, "haptic_feedback_intensity"

    return-object p0
.end method
