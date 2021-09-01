.class public Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPFaceUnlockModeSettings.java"

# interfaces
.implements Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRetainModeView:Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;

.field private mSwipeUpMode:Lcom/android/settings/ui/RadioButtonPreference;

.field private mUsePowerButton:Lcom/android/settings/ui/RadioButtonPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 119
    new-instance v0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings$1;

    invoke-direct {v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private setRetainViewMode(I)V
    .locals 0

    .line 81
    iget-object p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;->mRetainModeView:Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;

    if-eqz p1, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;->getUnlockMode()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->setViewType(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method public getUnlockMode()I
    .locals 2

    .line 97
    iget-object p0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "oneplus_face_unlock_powerkey_recognize_enable"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    sget p1, Lcom/android/settings/R$xml;->op_face_unlock_mode_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 44
    sget-object p1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    iput-object p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;->mContext:Landroid/content/Context;

    const-string p1, "key_faceunlock_swipe_up_mode"

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;->mSwipeUpMode:Lcom/android/settings/ui/RadioButtonPreference;

    const-string p1, "key_faceunlock_use_power_button_mode"

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;->mUsePowerButton:Lcom/android/settings/ui/RadioButtonPreference;

    .line 47
    iget-object p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;->mSwipeUpMode:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    .line 48
    iget-object p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;->mUsePowerButton:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    const-string p1, "key_faceunlock_mode_retain_view"

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;

    iput-object p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;->mRetainModeView:Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 112
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    .line 113
    iget-object p0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;->mRetainModeView:Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;

    if-eqz p0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->releaseAnim()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 103
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    .line 104
    iget-object p0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;->mRetainModeView:Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;

    if-eqz p0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPFaceUnlockModeLottieViewCategory;->stopAnim()V

    :cond_0
    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/settings/ui/RadioButtonPreference;)V
    .locals 6

    .line 65
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;->mSwipeUpMode:Lcom/android/settings/ui/RadioButtonPreference;

    const-string v1, "pop_up_face_unlock"

    const-string v2, "oneplus_face_unlock_powerkey_recognize_enable"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v0, :cond_0

    .line 66
    invoke-virtual {v0, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 67
    iget-object p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;->mUsePowerButton:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 68
    iget-object p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 69
    invoke-static {v1, v3}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    .line 70
    invoke-direct {p0, v3}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;->setRetainViewMode(I)V

    goto :goto_0

    .line 71
    :cond_0
    iget-object v5, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;->mUsePowerButton:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v5, :cond_1

    .line 72
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 73
    iget-object p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;->mUsePowerButton:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 74
    iget-object p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 75
    invoke-static {v1, v4}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    .line 76
    invoke-direct {p0, v4}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;->setRetainViewMode(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .line 55
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;->mSwipeUpMode:Lcom/android/settings/ui/RadioButtonPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;->mUsePowerButton:Lcom/android/settings/ui/RadioButtonPreference;

    if-eqz v0, :cond_2

    .line 56
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_face_unlock_powerkey_recognize_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 57
    iget-object v1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;->mSwipeUpMode:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v3, 0x1

    if-nez v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 58
    iget-object v1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettings;->mUsePowerButton:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne v0, v3, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 60
    :cond_2
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    return-void
.end method
