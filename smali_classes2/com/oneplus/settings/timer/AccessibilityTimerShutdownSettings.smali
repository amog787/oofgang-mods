.class public Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AccessibilityTimerShutdownSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private am:Landroid/app/AlarmManager;

.field private c:Ljava/util/Calendar;

.field private intent:Landroid/content/Intent;

.field private mShutdownPreference:Landroidx/preference/SwitchPreference;

.field private mStartupPreference:Landroidx/preference/SwitchPreference;

.field private mTimeDownSettingsPreference:Landroidx/preference/Preference;

.field private mTimeUpSettingsPreference:Landroidx/preference/Preference;

.field private pIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)Ljava/util/Calendar;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->c:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)Landroid/content/Intent;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->intent:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$102(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->intent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$200(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)Landroid/app/PendingIntent;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->pIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method static synthetic access$202(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->pIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$300(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)Landroid/app/AlarmManager;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->am:Landroid/app/AlarmManager;

    return-object p0
.end method

.method static synthetic access$302(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;Landroid/app/AlarmManager;)Landroid/app/AlarmManager;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->am:Landroid/app/AlarmManager;

    return-object p1
.end method

.method static synthetic access$400(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)Landroidx/preference/Preference;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->mTimeUpSettingsPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private initView()V
    .locals 5

    const-string v0, "accessibility_timer_startup_device"

    .line 68
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->mStartupPreference:Landroidx/preference/SwitchPreference;

    .line 69
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->mStartupPreference:Landroidx/preference/SwitchPreference;

    .line 71
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_startup_timer"

    const/4 v3, 0x1

    .line 70
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const-string v0, "accessibility_timer_shutdown_device"

    .line 74
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->mShutdownPreference:Landroidx/preference/SwitchPreference;

    .line 75
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->mShutdownPreference:Landroidx/preference/SwitchPreference;

    .line 77
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "oem_shutdown_timer"

    .line 76
    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    move v3, v2

    :cond_1
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const-string v0, "accessibility_timer_startup_device_settings"

    .line 80
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->mTimeUpSettingsPreference:Landroidx/preference/Preference;

    .line 81
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 82
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->mTimeDownSettingsPreference:Landroidx/preference/Preference;

    .line 83
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    sget p1, Lcom/android/settings/R$xml;->op_accessibility_timer_shutdown_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 11

    .line 98
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "accessibility_timer_shutdown_device"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 101
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 102
    iget-object p0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->mStartupPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    const-string v0, "oem_shutdown_timer"

    .line 100
    invoke-static {p1, v0, p0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    goto/16 :goto_0

    .line 104
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "accessibility_timer_startup_device"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 107
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 108
    iget-object p0, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->mStartupPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    const-string v0, "oem_startup_timer"

    .line 106
    invoke-static {p1, v0, p0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "accessibility_timer_startup_device_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    const/16 v3, 0xc

    const/16 v4, 0xb

    if-eqz v0, :cond_2

    .line 112
    iget-object p1, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->c:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 113
    iget-object p1, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->c:Ljava/util/Calendar;

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 114
    iget-object p1, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->c:Ljava/util/Calendar;

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 115
    new-instance p1, Lcom/google/android/material/picker/TimePickerDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    new-instance v7, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$1;

    invoke-direct {v7, p0}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$1;-><init>(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)V

    const/4 v10, 0x1

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, Lcom/google/android/material/picker/TimePickerDialog;-><init>(Landroid/content/Context;Lcom/google/android/material/picker/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 139
    invoke-virtual {p1}, Lcom/google/android/material/picker/TimePickerDialog;->show()V

    return v2

    .line 143
    :cond_2
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 145
    iget-object p1, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->c:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 146
    iget-object p1, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->c:Ljava/util/Calendar;

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 147
    iget-object p1, p0, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->c:Ljava/util/Calendar;

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 148
    new-instance p1, Lcom/google/android/material/picker/TimePickerDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    new-instance v7, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$2;

    invoke-direct {v7, p0}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings$2;-><init>(Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;)V

    const/4 v10, 0x1

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, Lcom/google/android/material/picker/TimePickerDialog;-><init>(Landroid/content/Context;Lcom/google/android/material/picker/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 173
    invoke-virtual {p1}, Lcom/google/android/material/picker/TimePickerDialog;->show()V

    return v2

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 0

    .line 60
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 62
    invoke-direct {p0}, Lcom/oneplus/settings/timer/AccessibilityTimerShutdownSettings;->initView()V

    return-void
.end method
