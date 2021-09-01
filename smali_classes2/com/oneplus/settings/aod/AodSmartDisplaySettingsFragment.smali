.class public Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;
.super Lcom/android/settings/core/InstrumentedPreferenceFragment;
.source "AodSmartDisplaySettingsFragment.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAodSmartDisplayCurState:Z

.field private mCalendarEnabled:Z

.field private mCalendarPreference:Landroidx/preference/SwitchPreference;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private mMusicInfoEnabled:Z

.field private mMusicPreference:Landroidx/preference/SwitchPreference;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;-><init>()V

    return-void
.end method

.method private loadSettings()V
    .locals 5

    .line 121
    iget-object v0, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mContentResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mCurrentUser:I

    const-string v2, "aod_smart_display_cur_state"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x0

    if-ne v3, v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mAodSmartDisplayCurState:Z

    .line 122
    iget-object v0, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mContentResolver:Landroid/content/ContentResolver;

    iget v2, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mCurrentUser:I

    const-string v4, "aod_smart_display_music_info_enabled"

    invoke-static {v0, v4, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v3, v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mMusicInfoEnabled:Z

    .line 123
    iget-object v0, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mContentResolver:Landroid/content/ContentResolver;

    iget v2, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mCurrentUser:I

    const-string v4, "aod_smart_display_calendar_enabled"

    invoke-static {v0, v4, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v3, v0, :cond_2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    iput-boolean v3, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mCalendarEnabled:Z

    return-void
.end method

.method public static newInstance()Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;
    .locals 1

    .line 52
    new-instance v0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;

    invoke-direct {v0}, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;-><init>()V

    return-object v0
.end method

.method private updateSettings()V
    .locals 4

    .line 127
    iget-object v0, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mContentResolver:Landroid/content/ContentResolver;

    iget-boolean v1, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mAodSmartDisplayCurState:Z

    iget v2, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mCurrentUser:I

    const-string v3, "aod_smart_display_cur_state"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 128
    iget-object v0, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mContentResolver:Landroid/content/ContentResolver;

    iget-boolean v1, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mMusicInfoEnabled:Z

    iget v2, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mCurrentUser:I

    const-string v3, "aod_smart_display_music_info_enabled"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 129
    iget-object v0, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mContentResolver:Landroid/content/ContentResolver;

    iget-boolean v1, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mCalendarEnabled:Z

    iget p0, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mCurrentUser:I

    const-string v2, "aod_smart_display_calendar_enabled"

    invoke-static {v0, v2, v1, p0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    sget p1, Lcom/android/settings/R$xml;->op_aod_smart_display_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->addPreferencesFromResource(I)V

    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mContext:Landroid/content/Context;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 62
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    iput p1, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mCurrentUser:I

    .line 64
    invoke-direct {p0}, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->loadSettings()V

    .line 66
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsActivity;

    invoke-virtual {p1}, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz p1, :cond_0

    .line 68
    sget v0, Lcom/android/settings/R$string;->oneplus_aod_smart_display_title:I

    invoke-virtual {p1, v0, v0}, Lcom/android/settings/widget/SwitchBar;->setSwitchBarText(II)V

    .line 69
    iget-object p1, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-boolean v0, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mAodSmartDisplayCurState:Z

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 70
    iget-object p1, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 73
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    const-string p1, "aod_smart_display_music_info"

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mMusicPreference:Landroidx/preference/SwitchPreference;

    .line 76
    iget-boolean v0, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mMusicInfoEnabled:Z

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 77
    iget-object p1, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mMusicPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "aod_smart_display_calender"

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mCalendarPreference:Landroidx/preference/SwitchPreference;

    .line 80
    iget-boolean v0, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mCalendarEnabled:Z

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 81
    iget-object p1, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mCalendarPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 83
    iget-boolean p1, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mAodSmartDisplayCurState:Z

    if-nez p1, :cond_1

    .line 84
    iget-object v0, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mMusicPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 85
    iget-object p1, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mCalendarPreference:Landroidx/preference/SwitchPreference;

    iget-boolean p0, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mAodSmartDisplayCurState:Z

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreferenceChange preference changed key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AodSmartDisplaySettingsFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 111
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "aod_smart_display_music_info"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iput-boolean p2, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mMusicInfoEnabled:Z

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "aod_smart_display_calender"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 114
    iput-boolean p2, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mCalendarEnabled:Z

    .line 116
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->updateSettings()V

    const/4 p0, 0x1

    return p0
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1

    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSwitchChanged("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AodSmartDisplaySettingsFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iput-boolean p2, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mAodSmartDisplayCurState:Z

    .line 101
    iget-object p1, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mMusicPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 102
    iget-object p1, p0, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->mCalendarPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 104
    invoke-direct {p0}, Lcom/oneplus/settings/aod/AodSmartDisplaySettingsFragment;->updateSettings()V

    return-void
.end method
