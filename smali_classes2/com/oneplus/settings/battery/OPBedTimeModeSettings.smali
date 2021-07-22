.class public Lcom/oneplus/settings/battery/OPBedTimeModeSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "OPBedTimeModeSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mAutoActivate:Landroidx/preference/SwitchPreference;

.field private mContext:Landroid/content/Context;

.field private mTimeFormatter:Ljava/text/DateFormat;

.field private mTurnOffTime:Landroidx/preference/Preference;

.field private mTurnOnTime:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/settings/battery/OPBedTimeModeSettings;)Landroidx/preference/Preference;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/oneplus/settings/battery/OPBedTimeModeSettings;->mTurnOnTime:Landroidx/preference/Preference;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/oneplus/settings/battery/OPBedTimeModeSettings;)Landroid/content/Context;
    .locals 0

    .line 27
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/oneplus/settings/battery/OPBedTimeModeSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 27
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/battery/OPBedTimeModeSettings;)Landroidx/preference/Preference;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/oneplus/settings/battery/OPBedTimeModeSettings;->mTurnOffTime:Landroidx/preference/Preference;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/battery/OPBedTimeModeSettings;)Ljava/time/LocalTime;
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/oneplus/settings/battery/OPBedTimeModeSettings;->getCustomEndTime()Ljava/time/LocalTime;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/battery/OPBedTimeModeSettings;)Landroid/content/Context;
    .locals 0

    .line 27
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/oneplus/settings/battery/OPBedTimeModeSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 27
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/oneplus/settings/battery/OPBedTimeModeSettings;Ljava/time/LocalTime;)Ljava/lang/String;
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/oneplus/settings/battery/OPBedTimeModeSettings;->getFormattedTimeString(Ljava/time/LocalTime;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/oneplus/settings/battery/OPBedTimeModeSettings;)Ljava/time/LocalTime;
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/oneplus/settings/battery/OPBedTimeModeSettings;->getCustomStartTime()Ljava/time/LocalTime;

    move-result-object p0

    return-object p0
.end method

.method private getCustomEndTime()Ljava/time/LocalTime;
    .locals 4

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "bedtime_mode_custom_end_time"

    const-wide/16 v1, 0x0

    const/4 v3, -0x2

    invoke-static {p0, v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    .line 178
    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/time/LocalTime;->ofSecondOfDay(J)Ljava/time/LocalTime;

    move-result-object p0

    return-object p0
.end method

.method private getCustomStartTime()Ljava/time/LocalTime;
    .locals 4

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "bedtime_mode_custom_start_time"

    const-wide/16 v1, 0x0

    const/4 v3, -0x2

    invoke-static {p0, v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    .line 173
    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/time/LocalTime;->ofSecondOfDay(J)Ljava/time/LocalTime;

    move-result-object p0

    return-object p0
.end method

.method private getFormattedTimeString(Ljava/time/LocalTime;)Ljava/lang/String;
    .locals 3

    .line 81
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/oneplus/settings/battery/OPBedTimeModeSettings;->mTimeFormatter:Ljava/text/DateFormat;

    invoke-virtual {v1}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 83
    invoke-virtual {p1}, Ljava/time/LocalTime;->getHour()I

    move-result v1

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 84
    invoke-virtual {p1}, Ljava/time/LocalTime;->getMinute()I

    move-result p1

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    const/4 v1, 0x0

    .line 85
    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xe

    .line 86
    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->set(II)V

    .line 87
    iget-object p0, p0, Lcom/oneplus/settings/battery/OPBedTimeModeSettings;->mTimeFormatter:Ljava/text/DateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private updataState()V
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/oneplus/settings/battery/OPBedTimeModeSettings;->mAutoActivate:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "bedtime_mode_auto_mode"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/oneplus/settings/battery/OPBedTimeModeSettings;->mTurnOnTime:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 64
    iget-object v0, p0, Lcom/oneplus/settings/battery/OPBedTimeModeSettings;->mTurnOffTime:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 65
    iget-object v0, p0, Lcom/oneplus/settings/battery/OPBedTimeModeSettings;->mAutoActivate:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/battery/OPBedTimeModeSettings;->mTurnOnTime:Landroidx/preference/Preference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 69
    iget-object v0, p0, Lcom/oneplus/settings/battery/OPBedTimeModeSettings;->mTurnOffTime:Landroidx/preference/Preference;

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 70
    iget-object v0, p0, Lcom/oneplus/settings/battery/OPBedTimeModeSettings;->mAutoActivate:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 74
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/settings/battery/OPBedTimeModeSettings;->getCustomStartTime()Ljava/time/LocalTime;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/oneplus/settings/battery/OPBedTimeModeSettings;->mTurnOnTime:Landroidx/preference/Preference;

    invoke-direct {p0, v0}, Lcom/oneplus/settings/battery/OPBedTimeModeSettings;->getFormattedTimeString(Ljava/time/LocalTime;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 76
    invoke-direct {p0}, Lcom/oneplus/settings/battery/OPBedTimeModeSettings;->getCustomEndTime()Ljava/time/LocalTime;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/oneplus/settings/battery/OPBedTimeModeSettings;->mTurnOffTime:Landroidx/preference/Preference;

    invoke-direct {p0, v0}, Lcom/oneplus/settings/battery/OPBedTimeModeSettings;->getFormattedTimeString(Ljava/time/LocalTime;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getDialogMetricsCategory(I)I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "OPBedTimeModeSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 168
    sget p0, Lcom/android/settings/R$xml;->op_bed_time_mode_settings:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 46
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/battery/OPBedTimeModeSettings;->mContext:Landroid/content/Context;

    const-string p1, "auto_activate"

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/oneplus/settings/battery/OPBedTimeModeSettings;->mAutoActivate:Landroidx/preference/SwitchPreference;

    const-string p1, "turn_on_time"

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/battery/OPBedTimeModeSettings;->mTurnOnTime:Landroidx/preference/Preference;

    const-string p1, "turn_off_time"

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/battery/OPBedTimeModeSettings;->mTurnOffTime:Landroidx/preference/Preference;

    .line 51
    iget-object p1, p0, Lcom/oneplus/settings/battery/OPBedTimeModeSettings;->mAutoActivate:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 52
    iget-object p1, p0, Lcom/oneplus/settings/battery/OPBedTimeModeSettings;->mTurnOnTime:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 53
    iget-object p1, p0, Lcom/oneplus/settings/battery/OPBedTimeModeSettings;->mTurnOffTime:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 54
    iget-object p1, p0, Lcom/oneplus/settings/battery/OPBedTimeModeSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/battery/OPBedTimeModeSettings;->mTimeFormatter:Ljava/text/DateFormat;

    const-string v0, "UTC"

    .line 55
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 56
    invoke-direct {p0}, Lcom/oneplus/settings/battery/OPBedTimeModeSettings;->updataState()V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 186
    invoke-direct {p0}, Lcom/oneplus/settings/battery/OPBedTimeModeSettings;->getCustomStartTime()Ljava/time/LocalTime;

    move-result-object v0

    goto :goto_1

    .line 188
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/settings/battery/OPBedTimeModeSettings;->getCustomEndTime()Ljava/time/LocalTime;

    move-result-object v0

    .line 191
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 193
    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    .line 194
    new-instance v7, Lcom/google/android/material/picker/TimePickerDialog;

    new-instance v3, Lcom/oneplus/settings/battery/OPBedTimeModeSettings$4;

    invoke-direct {v3, p0, p1}, Lcom/oneplus/settings/battery/OPBedTimeModeSettings$4;-><init>(Lcom/oneplus/settings/battery/OPBedTimeModeSettings;I)V

    .line 227
    invoke-virtual {v0}, Ljava/time/LocalTime;->getHour()I

    move-result v4

    invoke-virtual {v0}, Ljava/time/LocalTime;->getMinute()I

    move-result v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/picker/TimePickerDialog;-><init>(Landroid/content/Context;Lcom/google/android/material/picker/TimePickerDialog$OnTimeSetListener;IIZ)V

    return-object v7
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/oneplus/settings/battery/OPBedTimeModeSettings;->mAutoActivate:Landroidx/preference/SwitchPreference;

    if-ne p1, v0, :cond_0

    .line 147
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 148
    iget-object p2, p0, Lcom/oneplus/settings/battery/OPBedTimeModeSettings;->mTurnOnTime:Landroidx/preference/Preference;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 149
    iget-object p2, p0, Lcom/oneplus/settings/battery/OPBedTimeModeSettings;->mTurnOffTime:Landroidx/preference/Preference;

    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, -0x2

    const-string v0, "bedtime_mode_auto_mode"

    invoke-static {p0, v0, p1, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/oneplus/settings/battery/OPBedTimeModeSettings;->mTurnOnTime:Landroidx/preference/Preference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 158
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/battery/OPBedTimeModeSettings;->mTurnOffTime:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_1

    .line 160
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    :cond_1
    :goto_0
    return v1
.end method

.method public onResume()V
    .locals 0

    .line 93
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 94
    invoke-direct {p0}, Lcom/oneplus/settings/battery/OPBedTimeModeSettings;->updataState()V

    return-void
.end method
