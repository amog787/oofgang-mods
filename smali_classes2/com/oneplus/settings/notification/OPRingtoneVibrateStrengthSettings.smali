.class public Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPRingtoneVibrateStrengthSettings.java"

# interfaces
.implements Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDynamicModePreference:Lcom/android/settings/ui/RadioButtonPreference;

.field private mIntenselyPreference:Lcom/android/settings/ui/RadioButtonPreference;

.field private mLightPreference:Lcom/android/settings/ui/RadioButtonPreference;

.field private mModeratePreference:Lcom/android/settings/ui/RadioButtonPreference;

.field private mRhythm1Preference:Lcom/android/settings/ui/RadioButtonPreference;

.field private mRhythm2Preference:Lcom/android/settings/ui/RadioButtonPreference;

.field private mRhythm3Preference:Lcom/android/settings/ui/RadioButtonPreference;

.field private mRhythm4Preference:Lcom/android/settings/ui/RadioButtonPreference;

.field private mRhythm5Preference:Lcom/android/settings/ui/RadioButtonPreference;

.field private mVibrateIntensityCategory:Landroidx/preference/PreferenceCategory;

.field private mVibrateRhythmCategory:Landroidx/preference/PreferenceCategory;

.field private mVibrator:Landroid/os/Vibrator;

.field private sVibratePatternrhythm:[[J


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 16
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x5

    new-array v1, v0, [[J

    new-array v0, v0, [J

    .line 59
    fill-array-data v0, :array_0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/16 v0, 0x9

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/16 v0, 0xd

    new-array v2, v0, [J

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/16 v2, 0x11

    new-array v2, v2, [J

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-array v0, v0, [J

    fill-array-data v0, :array_4

    const/4 v2, 0x4

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->sVibratePatternrhythm:[[J

    return-void

    nop

    :array_0
    .array-data 8
        -0x2
        0x0
        0x3e8
        0x3e8
        0x3e8
    .end array-data

    :array_1
    .array-data 8
        -0x2
        0x0
        0x1f4
        0xfa
        0xa
        0x3e8
        0x1f4
        0xfa
        0xa
    .end array-data

    :array_2
    .array-data 8
        -0x2
        0x0
        0x12c
        0x190
        0x12c
        0x190
        0x12c
        0x3e8
        0x12c
        0x190
        0x12c
        0x190
        0x12c
    .end array-data

    :array_3
    .array-data 8
        -0x2
        0x0
        0x1e
        0x50
        0x1e
        0x50
        0x32
        0xb4
        0x258
        0x3e8
        0x1e
        0x50
        0x1e
        0x50
        0x32
        0xb4
        0x258
    .end array-data

    :array_4
    .array-data 8
        -0x2
        0x0
        0x50
        0xc8
        0x258
        0x96
        0xa
        0x3e8
        0x50
        0xc8
        0x258
        0x96
        0xa
    .end array-data
.end method

.method private setIncomingCallVibarateIntensity(I)V
    .locals 4

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "incoming_call_vibrate_intensity"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 178
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    return-void

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "incoming_call_vibrate_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 183
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->sVibratePatternrhythm:[[J

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    if-le v0, v1, :cond_1

    move v0, v3

    .line 185
    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->cancel()V

    if-nez p1, :cond_2

    .line 187
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->sVibratePatternrhythm:[[J

    aget-object p1, p1, v0

    const-wide/16 v1, -0x1

    aput-wide v1, p1, v3

    goto :goto_0

    :cond_2
    if-ne p1, v2, :cond_3

    .line 189
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->sVibratePatternrhythm:[[J

    aget-object p1, p1, v0

    const-wide/16 v1, -0x2

    aput-wide v1, p1, v3

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 191
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->sVibratePatternrhythm:[[J

    aget-object p1, p1, v0

    const-wide/16 v1, -0x3

    aput-wide v1, p1, v3

    .line 193
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->sVibratePatternrhythm:[[J

    aget-object v1, p1, v0

    array-length v1, v1

    if-ge v3, v1, :cond_5

    .line 194
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sVibratePatternrhythm ["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->sVibratePatternrhythm:[[J

    aget-object v1, v1, v0

    aget-wide v1, v1, v3

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OPVibrateStrengthPreferenceFragment"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 197
    :cond_5
    iget-object p0, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mVibrator:Landroid/os/Vibrator;

    aget-object p1, p1, v0

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/os/Vibrator;->vibrate([JI)V

    return-void
.end method

.method private setIncomingCallVibrateValue(I)V
    .locals 5

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "incoming_call_vibrate_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "incoming_call_vibrate_intensity"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 162
    iget-object v1, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mVibrator:Landroid/os/Vibrator;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->sVibratePatternrhythm:[[J

    aget-object v0, v0, p1

    const-wide/16 v3, -0x1

    aput-wide v3, v0, v1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 168
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->sVibratePatternrhythm:[[J

    aget-object v0, v0, p1

    const-wide/16 v3, -0x2

    aput-wide v3, v0, v1

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 170
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->sVibratePatternrhythm:[[J

    aget-object v0, v0, p1

    const-wide/16 v3, -0x3

    aput-wide v3, v0, v1

    .line 172
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mVibrator:Landroid/os/Vibrator;

    iget-object p0, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->sVibratePatternrhythm:[[J

    aget-object p0, p0, p1

    invoke-virtual {v0, p0, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    return-void
.end method

.method private updateIncomingCallVibarateIntensityStatus(I)V
    .locals 4

    .line 152
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mLightPreference:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 153
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mModeratePreference:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 154
    iget-object p0, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mIntenselyPreference:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method private updateIncomingCallVibrateStatus(I)V
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mDynamicModePreference:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v3, 0x5

    if-ne p1, v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 142
    :goto_0
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mRhythm1Preference:Lcom/android/settings/ui/RadioButtonPreference;

    if-nez p1, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 145
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mRhythm2Preference:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v2, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 146
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mRhythm3Preference:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    move v3, v2

    goto :goto_3

    :cond_4
    move v3, v1

    :goto_3
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 147
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mRhythm4Preference:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v3, 0x3

    if-ne p1, v3, :cond_5

    move v3, v2

    goto :goto_4

    :cond_5
    move v3, v1

    :goto_4
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 148
    iget-object p0, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mRhythm5Preference:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    move v1, v2

    :cond_6
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

    .line 76
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    sget p1, Lcom/android/settings/R$xml;->op_ringtone_vibrate_strength:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 78
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mContext:Landroid/content/Context;

    .line 79
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {p1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 82
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mVibrator:Landroid/os/Vibrator;

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "oem.linear.motor.support"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    const-string p1, "vibrate_rhythm"

    .line 86
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mVibrateRhythmCategory:Landroidx/preference/PreferenceCategory;

    const-string p1, "vibrate_intensity"

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mVibrateIntensityCategory:Landroidx/preference/PreferenceCategory;

    const-string p1, "dynamic_mode"

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object p1, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mDynamicModePreference:Lcom/android/settings/ui/RadioButtonPreference;

    const-string p1, "rhythm_1"

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object p1, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mRhythm1Preference:Lcom/android/settings/ui/RadioButtonPreference;

    const-string p1, "rhythm_2"

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object p1, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mRhythm2Preference:Lcom/android/settings/ui/RadioButtonPreference;

    const-string p1, "rhythm_3"

    .line 93
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object p1, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mRhythm3Preference:Lcom/android/settings/ui/RadioButtonPreference;

    const-string p1, "rhythm_4"

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object p1, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mRhythm4Preference:Lcom/android/settings/ui/RadioButtonPreference;

    const-string p1, "rhythm_5"

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object p1, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mRhythm5Preference:Lcom/android/settings/ui/RadioButtonPreference;

    const-string p1, "light"

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object p1, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mLightPreference:Lcom/android/settings/ui/RadioButtonPreference;

    const-string p1, "moderate"

    .line 97
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object p1, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mModeratePreference:Lcom/android/settings/ui/RadioButtonPreference;

    const-string p1, "intensely"

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object p1, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mIntenselyPreference:Lcom/android/settings/ui/RadioButtonPreference;

    .line 99
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mDynamicModePreference:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    .line 100
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mRhythm1Preference:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    .line 101
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mRhythm2Preference:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    .line 102
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mRhythm3Preference:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    .line 103
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mRhythm4Preference:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    .line 104
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mRhythm5Preference:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    .line 105
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mLightPreference:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    .line 106
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mModeratePreference:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    .line 107
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mIntenselyPreference:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    .line 109
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXVibrate()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isDreProducts()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isEucalyptusProducts()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 110
    :cond_1
    iget-object p1, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mVibrateRhythmCategory:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mDynamicModePreference:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 112
    :cond_2
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isDreProducts()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isEucalyptusProducts()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 113
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->oneplus_vibrate_rhythm:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 114
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mVibrateIntensityCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_4
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 134
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    .line 135
    iget-object p0, p0, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->mVibrator:Landroid/os/Vibrator;

    if-eqz p0, :cond_0

    .line 136
    invoke-virtual {p0}, Landroid/os/Vibrator;->cancel()V

    :cond_0
    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/settings/ui/RadioButtonPreference;)V
    .locals 4

    .line 202
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "dynamic_mode"

    .line 203
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "incoming_call_vibrate_mode"

    const/4 v1, 0x5

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 206
    invoke-direct {p0, v1}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->updateIncomingCallVibrateStatus(I)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "rhythm_1"

    .line 207
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 208
    invoke-direct {p0, v1}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->setIncomingCallVibrateValue(I)V

    .line 209
    invoke-direct {p0, v1}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->updateIncomingCallVibrateStatus(I)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "rhythm_2"

    .line 210
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 211
    invoke-direct {p0, v2}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->setIncomingCallVibrateValue(I)V

    .line 212
    invoke-direct {p0, v2}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->updateIncomingCallVibrateStatus(I)V

    goto :goto_0

    :cond_2
    const-string v0, "rhythm_3"

    .line 213
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x2

    if-eqz v0, :cond_3

    .line 214
    invoke-direct {p0, v3}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->setIncomingCallVibrateValue(I)V

    .line 215
    invoke-direct {p0, v3}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->updateIncomingCallVibrateStatus(I)V

    goto :goto_0

    :cond_3
    const-string v0, "rhythm_4"

    .line 216
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x3

    .line 217
    invoke-direct {p0, p1}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->setIncomingCallVibrateValue(I)V

    .line 218
    invoke-direct {p0, p1}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->updateIncomingCallVibrateStatus(I)V

    goto :goto_0

    :cond_4
    const-string v0, "rhythm_5"

    .line 219
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p1, 0x4

    .line 220
    invoke-direct {p0, p1}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->setIncomingCallVibrateValue(I)V

    .line 221
    invoke-direct {p0, p1}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->updateIncomingCallVibrateStatus(I)V

    goto :goto_0

    :cond_5
    const-string v0, "light"

    .line 222
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 223
    invoke-direct {p0, v1}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->setIncomingCallVibarateIntensity(I)V

    .line 224
    invoke-direct {p0, v1}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->updateIncomingCallVibarateIntensityStatus(I)V

    goto :goto_0

    :cond_6
    const-string v0, "moderate"

    .line 225
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 226
    invoke-direct {p0, v2}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->setIncomingCallVibarateIntensity(I)V

    .line 227
    invoke-direct {p0, v2}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->updateIncomingCallVibarateIntensityStatus(I)V

    goto :goto_0

    :cond_7
    const-string v0, "intensely"

    .line 228
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 229
    invoke-direct {p0, v3}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->setIncomingCallVibarateIntensity(I)V

    .line 230
    invoke-direct {p0, v3}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->updateIncomingCallVibarateIntensityStatus(I)V

    :cond_8
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 122
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "incoming_call_vibrate_mode"

    const/4 v2, 0x0

    .line 123
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 125
    invoke-direct {p0, v0}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->updateIncomingCallVibrateStatus(I)V

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "incoming_call_vibrate_intensity"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 128
    invoke-direct {p0, v0}, Lcom/oneplus/settings/notification/OPRingtoneVibrateStrengthSettings;->updateIncomingCallVibarateIntensityStatus(I)V

    return-void
.end method
