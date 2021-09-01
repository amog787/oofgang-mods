.class public Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPSMSNotificationVibrateIntensitySettings.java"

# interfaces
.implements Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntenselyPreference:Lcom/android/settings/ui/RadioButtonPreference;

.field private mLightPreference:Lcom/android/settings/ui/RadioButtonPreference;

.field private mModeratePreference:Lcom/android/settings/ui/RadioButtonPreference;

.field private mVibrator:Landroid/os/Vibrator;

.field private sNoticeVibrateIntensity:[[J


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 14
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [[J

    const/16 v1, 0x9

    new-array v2, v1, [J

    .line 26
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [J

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v1, v1, [J

    fill-array-data v1, :array_2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->sNoticeVibrateIntensity:[[J

    return-void

    nop

    :array_0
    .array-data 8
        -0x1
        0x0
        0x64
        0x96
        0x64
        0x3e8
        0x64
        0x96
        0x64
    .end array-data

    :array_1
    .array-data 8
        -0x2
        0x0
        0x64
        0x96
        0x64
        0x3e8
        0x64
        0x96
        0x64
    .end array-data

    :array_2
    .array-data 8
        -0x3
        0x0
        0x64
        0x96
        0x64
        0x3e8
        0x64
        0x96
        0x64
    .end array-data
.end method

.method private setSmsNotificationVibarateIntensityValue(I)V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notice_vibrate_intensity"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 88
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 90
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->mVibrator:Landroid/os/Vibrator;

    iget-object p0, p0, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->sNoticeVibrateIntensity:[[J

    aget-object p0, p0, p1

    const/4 p1, -0x1

    invoke-virtual {v0, p0, p1}, Landroid/os/Vibrator;->vibrate([JI)V

    :cond_0
    return-void
.end method

.method private updateSmsNotificationVibarateIntensityStatus(I)V
    .locals 4

    .line 95
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->mLightPreference:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 96
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->mModeratePreference:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 97
    iget-object p0, p0, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->mIntenselyPreference:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 43
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->mContext:Landroid/content/Context;

    .line 45
    sget p1, Lcom/android/settings/R$xml;->op_smsnotification_vibrate_intensity:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 46
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->mContext:Landroid/content/Context;

    const-string v0, "vibrator"

    .line 47
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->mVibrator:Landroid/os/Vibrator;

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "oem.linear.motor.support"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    const-string p1, "light"

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object p1, p0, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->mLightPreference:Lcom/android/settings/ui/RadioButtonPreference;

    const-string p1, "moderate"

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object p1, p0, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->mModeratePreference:Lcom/android/settings/ui/RadioButtonPreference;

    const-string p1, "intensely"

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object p1, p0, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->mIntenselyPreference:Lcom/android/settings/ui/RadioButtonPreference;

    .line 56
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->mLightPreference:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    .line 57
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->mModeratePreference:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    .line 58
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->mIntenselyPreference:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 73
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    .line 74
    iget-object p0, p0, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz p0, :cond_0

    .line 77
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Vibrator;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 79
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/settings/ui/RadioButtonPreference;)V
    .locals 1

    .line 102
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "light"

    .line 103
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 104
    invoke-direct {p0, p1}, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->setSmsNotificationVibarateIntensityValue(I)V

    .line 105
    invoke-direct {p0, p1}, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->updateSmsNotificationVibarateIntensityStatus(I)V

    goto :goto_0

    :cond_0
    const-string v0, "moderate"

    .line 106
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 107
    invoke-direct {p0, p1}, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->setSmsNotificationVibarateIntensityValue(I)V

    .line 108
    invoke-direct {p0, p1}, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->updateSmsNotificationVibarateIntensityStatus(I)V

    goto :goto_0

    :cond_1
    const-string v0, "intensely"

    .line 109
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    .line 110
    invoke-direct {p0, p1}, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->setSmsNotificationVibarateIntensityValue(I)V

    .line 111
    invoke-direct {p0, p1}, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->updateSmsNotificationVibarateIntensityStatus(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 64
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 65
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notice_vibrate_intensity"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 67
    invoke-direct {p0, v0}, Lcom/oneplus/settings/notification/OPSMSNotificationVibrateIntensitySettings;->updateSmsNotificationVibarateIntensityStatus(I)V

    return-void
.end method
