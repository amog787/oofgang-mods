.class public Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;
.super Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;
.source "ZenModeScheduleRuleSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;
    }
.end annotation


# instance fields
.field private mDayDialog:Landroidx/appcompat/app/AlertDialog;

.field private final mDayFormat:Ljava/text/SimpleDateFormat;

.field private mDays:Landroidx/preference/Preference;

.field private mEnd:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;

.field private mExitAtAlarm:Landroidx/preference/SwitchPreference;

.field private mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

.field private mStart:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;-><init>()V

    .line 60
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mDayFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->showDaysDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->updateDays()V

    return-void
.end method

.method private showDaysDialog()V
    .locals 4

    .line 227
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->zen_mode_schedule_rule_days:I

    .line 228
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$6;

    iget-object v2, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v3, v3, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    invoke-direct {v1, p0, v2, v3}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$6;-><init>(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;Landroid/content/Context;[I)V

    .line 229
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$5;-><init>(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)V

    .line 239
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$string;->done_button:I

    const/4 v2, 0x0

    .line 245
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 246
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mDayDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private updateDays()V
    .locals 9

    .line 153
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    if-eqz v0, :cond_4

    .line 154
    array-length v1, v0

    if-lez v1, :cond_4

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 157
    invoke-static {v2}, Lcom/android/settings/notification/zen/ZenModeScheduleDaysSelection;->getDaysOfWeekForLocale(Ljava/util/Calendar;)[I

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    .line 158
    :goto_0
    array-length v6, v3

    if-ge v5, v6, :cond_3

    .line 159
    aget v6, v3, v5

    move v7, v4

    .line 160
    :goto_1
    array-length v8, v0

    if-ge v7, v8, :cond_2

    .line 161
    aget v8, v0, v7

    if-ne v6, v8, :cond_1

    const/4 v7, 0x7

    .line 162
    invoke-virtual {v2, v7, v6}, Ljava/util/Calendar;->set(II)V

    .line 163
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 164
    iget-object v6, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/settings/R$string;->summary_divider_text:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    :cond_0
    iget-object v6, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mDayFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 171
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 172
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mDays:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 173
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mDays:Landroidx/preference/Preference;

    invoke-virtual {p0, v4}, Landroidx/preference/Preference;->notifyDependencyChange(Z)V

    return-void

    .line 177
    :cond_4
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mDays:Landroidx/preference/Preference;

    sget v1, Lcom/android/settings/R$string;->zen_mode_schedule_rule_days_none:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 178
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mDays:Landroidx/preference/Preference;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->notifyDependencyChange(Z)V

    return-void
.end method

.method private updateEndSummary()V
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    mul-int/lit8 v1, v1, 0x3c

    iget v2, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    add-int/2addr v1, v2

    .line 183
    iget v2, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    mul-int/lit8 v2, v2, 0x3c

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    add-int/2addr v2, v0

    const/4 v0, 0x0

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 185
    sget v0, Lcom/android/settings/R$string;->zen_mode_end_time_next_day_summary_format:I

    .line 186
    :cond_1
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mEnd:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;->setSummaryFormat(I)V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 200
    new-instance v1, Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController;

    .line 201
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v1, p1, p0, v2}, Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mHeader:Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController;

    .line 202
    new-instance v1, Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController;

    .line 203
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v1, p1, p0, v2}, Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mActionButtons:Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController;

    .line 204
    new-instance v1, Lcom/android/settings/notification/zen/ZenAutomaticRuleSwitchPreferenceController;

    .line 205
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v1, p1, p0, v2}, Lcom/android/settings/notification/zen/ZenAutomaticRuleSwitchPreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mSwitch:Lcom/android/settings/notification/zen/ZenAutomaticRuleSwitchPreferenceController;

    .line 206
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mHeader:Lcom/android/settings/notification/zen/ZenAutomaticRuleHeaderPreferenceController;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mActionButtons:Lcom/android/settings/notification/zen/ZenRuleButtonsPreferenceController;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeRuleSettingsBase;->mSwitch:Lcom/android/settings/notification/zen/ZenAutomaticRuleSwitchPreferenceController;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x90

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 78
    sget p0, Lcom/android/settings/R$xml;->zen_mode_schedule_rule_settings:I

    return p0
.end method

.method protected onCreateInternal()V
    .locals 4

    .line 83
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "days"

    .line 85
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mDays:Landroidx/preference/Preference;

    .line 86
    new-instance v2, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$1;-><init>(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)V

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 96
    new-instance v2, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V

    iput-object v2, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mStart:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;

    const-string v3, "start_time"

    .line 97
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 98
    iget-object v2, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mStart:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;

    sget v3, Lcom/android/settings/R$string;->zen_mode_start_time:I

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setTitle(I)V

    .line 99
    iget-object v2, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mStart:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;

    new-instance v3, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$2;

    invoke-direct {v3, p0}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$2;-><init>(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;->setCallback(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference$Callback;)V

    .line 115
    iget-object v2, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mStart:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 116
    iget-object v2, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mStart:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;

    iget-object v3, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mDays:Landroidx/preference/Preference;

    invoke-virtual {v3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 118
    new-instance v2, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V

    iput-object v2, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mEnd:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;

    const-string v1, "end_time"

    .line 119
    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mEnd:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;

    sget v2, Lcom/android/settings/R$string;->zen_mode_end_time:I

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 121
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mEnd:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;

    new-instance v2, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$3;-><init>(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;->setCallback(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference$Callback;)V

    .line 137
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mEnd:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 138
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mEnd:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;

    iget-object v2, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mDays:Landroidx/preference/Preference;

    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setDependency(Ljava/lang/String;)V

    const-string v1, "exit_at_alarm"

    .line 140
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mExitAtAlarm:Landroidx/preference/SwitchPreference;

    .line 141
    new-instance v1, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$4;-><init>(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 219
    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onDestroy()V

    .line 220
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mDayDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mDayDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 222
    iput-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mDayDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_0
    return-void
.end method

.method protected setRule(Landroid/app/AutomaticZenRule;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 72
    :goto_0
    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method protected updateControlsInternal()V
    .locals 3

    .line 190
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->updateDays()V

    .line 191
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mStart:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;->setTime(II)V

    .line 192
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mEnd:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v2, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;->setTime(II)V

    .line 193
    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mExitAtAlarm:Landroidx/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->exitAtAlarm:Z

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 194
    invoke-direct {p0}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings;->updateEndSummary()V

    return-void
.end method
