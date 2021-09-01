.class public Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TimepowerSettingsFragment.java"

# interfaces
.implements Lcom/google/android/material/picker/TimePickerDialog$OnTimeSetListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mCode:I

.field private mDlgVisible:Z

.field private mPowerOffPref:Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

.field private mPowerOffPreference:Landroidx/preference/Preference;

.field private mPowerOffStatePref:Landroidx/preference/SwitchPreference;

.field private mPowerOnPref:Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

.field private mPowerOnPreference:Landroidx/preference/Preference;

.field private mPowerOnStatePref:Landroidx/preference/SwitchPreference;

.field private mPowerState:Z

.field private mStateArray:[[Z

.field private mTimeArray:[[I

.field private mTimePicker:Lcom/google/android/material/picker/TimePicker;

.field onDismissListener:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 85
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 57
    fill-array-data v1, :array_0

    const-class v2, I

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    new-array v0, v0, [I

    .line 58
    fill-array-data v0, :array_1

    const-class v1, Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mDlgVisible:Z

    .line 627
    new-instance v0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$5;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$5;-><init>(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;)V

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x2
    .end array-data
.end method

.method static synthetic access$000(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mDlgVisible:Z

    return p0
.end method

.method static synthetic access$002(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mDlgVisible:Z

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;I)Landroid/content/Intent;
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getTimeSettingsIntent(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;Landroid/content/Intent;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->startDialogForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private static boolToInt(Z)I
    .locals 0

    return p0
.end method

.method private cancleNewPlanLastPowerOn()V
    .locals 4

    .line 442
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportNewPlanPowerOffAlarm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 446
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 447
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "def_timepower_config"

    .line 446
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 448
    invoke-static {v0}, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->getNearestTime(Ljava/lang/String;)[J

    move-result-object v0

    .line 449
    new-instance v1, Landroid/content/Intent;

    const-string v2, "org.codeaurora.poweroffalarm.action.CANCEL_ALARM"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 450
    aget-wide v2, v0, v2

    const-string v0, "time"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "com.qualcomm.qti.poweroffalarm"

    .line 451
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x11000000

    .line 452
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 453
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private formatTime(II)Ljava/lang/String;
    .locals 6

    .line 215
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->is24Hour()Z

    move-result v0

    const-string v1, ":"

    const/4 v2, 0x0

    const-string v3, "%1$02d"

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    .line 216
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array p1, v4, [Ljava/lang/Object;

    .line 217
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 219
    :cond_0
    sget v0, Lcom/android/settings/R$string;->android_am:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0xc

    if-lt p1, v5, :cond_1

    .line 221
    sget v0, Lcom/android/settings/R$string;->android_pm:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-le p1, v5, :cond_2

    add-int/lit8 p1, p1, -0xc

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    move p1, v5

    .line 228
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array p1, v4, [Ljava/lang/Object;

    .line 229
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private getEditIntent(IIIZLjava/lang/String;)Landroid/content/Intent;
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 284
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 285
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 286
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->is24Hour()Z

    move-result p0

    const-string v2, "24hour"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "power_state"

    .line 287
    invoke-virtual {v1, p0, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "display_time"

    .line 288
    invoke-virtual {v1, p0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "hour"

    .line 289
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "minute"

    .line 290
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "power_type"

    .line 291
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 293
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method

.method private getTimeSettingsIntent(I)Landroid/content/Intent;
    .locals 13

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    const/4 v2, 0x0

    aget-object v1, v1, v2

    aget-boolean v1, v1, v2

    .line 251
    iget-object v3, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnPreference:Landroidx/preference/Preference;

    invoke-virtual {v3}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TIMER"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v3, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnPreference:Landroidx/preference/Preference;

    invoke-virtual {v3}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 256
    iget-object v5, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v6, v5, v2

    aget v6, v6, v2

    .line 257
    aget-object v5, v5, v2

    aget v5, v5, v0

    if-ne p1, v0, :cond_1

    .line 260
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v1, v1, v0

    aget-boolean v1, v1, v2

    .line 264
    iget-object v3, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffPref:Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

    invoke-virtual {v3}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 266
    iget-object v3, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffPreference:Landroidx/preference/Preference;

    invoke-virtual {v3}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v3, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffPreference:Landroidx/preference/Preference;

    invoke-virtual {v3}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 271
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v5, v4, v0

    aget v6, v5, v2

    .line 272
    aget-object v2, v4, v0

    aget v5, v2, v0

    :cond_1
    move v11, v1

    move-object v12, v3

    move v10, v5

    move v9, v6

    move-object v7, p0

    move v8, p1

    .line 275
    invoke-direct/range {v7 .. v12}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->getEditIntent(IIIZLjava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private init()V
    .locals 7

    .line 102
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->readData()V

    .line 103
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v2, 0x1

    aget-boolean v0, v0, v2

    .line 104
    iget-object v3, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v4, v3, v1

    aget v4, v4, v1

    aget-object v3, v3, v1

    aget v3, v3, v2

    invoke-direct {p0, v4, v3}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->formatTime(II)Ljava/lang/String;

    move-result-object v3

    .line 106
    iget-object v4, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v4, v4, v2

    aget-boolean v4, v4, v2

    .line 107
    iget-object v5, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v6, v5, v2

    aget v1, v6, v1

    aget-object v5, v5, v2

    aget v2, v5, v2

    invoke-direct {p0, v1, v2}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->formatTime(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "power_on_switch"

    .line 109
    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/SwitchPreference;

    iput-object v2, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnStatePref:Landroidx/preference/SwitchPreference;

    .line 110
    invoke-virtual {v2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 111
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnStatePref:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "power_off_switch"

    .line 113
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffStatePref:Landroidx/preference/SwitchPreference;

    .line 114
    invoke-virtual {v0, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 115
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffStatePref:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "power_on_settings"

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

    iput-object v2, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnPref:Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

    .line 118
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v2, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnPref:Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

    new-instance v4, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$1;

    invoke-direct {v4, p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$1;-><init>(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;)V

    invoke-virtual {v2, v4}, Lcom/oneplus/settings/timer/timepower/TimepowerPreference;->setViewClickListener(Landroid/view/View$OnClickListener;)V

    const-string v2, "oneplus_power_on_settings"

    .line 132
    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnPreference:Landroidx/preference/Preference;

    .line 133
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v2, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnPreference:Landroidx/preference/Preference;

    new-instance v3, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$2;

    invoke-direct {v3, p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$2;-><init>(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;)V

    .line 135
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string v2, "power_off_settings"

    .line 154
    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

    iput-object v3, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffPref:Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

    .line 155
    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v3, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffPref:Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

    new-instance v4, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$3;

    invoke-direct {v4, p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$3;-><init>(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;)V

    invoke-virtual {v3, v4}, Lcom/oneplus/settings/timer/timepower/TimepowerPreference;->setViewClickListener(Landroid/view/View$OnClickListener;)V

    const-string v3, "oneplus_power_off_settings"

    .line 170
    invoke-virtual {p0, v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffPreference:Landroidx/preference/Preference;

    .line 171
    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffPreference:Landroidx/preference/Preference;

    new-instance v3, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$4;

    invoke-direct {v3, p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment$4;-><init>(Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;)V

    .line 174
    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 190
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 191
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    return-void
.end method

.method private static intToBool(I)Z
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private is24Hour()Z
    .locals 0

    .line 235
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private readData()V
    .locals 10

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "def_timepower_config"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    const/4 v4, 0x6

    if-gt v2, v4, :cond_1

    add-int/lit8 v5, v2, 0x6

    .line 205
    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 206
    iget-object v6, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v6, v6, v3

    const/4 v7, 0x2

    invoke-virtual {v2, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v6, v1

    .line 207
    iget-object v6, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v6, v6, v3

    const/4 v8, 0x4

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v9, 0x1

    aput v7, v6, v9

    .line 208
    iget-object v6, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v6, v6, v3

    const/4 v7, 0x5

    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->intToBool(I)Z

    move-result v8

    aput-boolean v8, v6, v1

    .line 209
    iget-object v6, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v6, v6, v3

    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->intToBool(I)Z

    move-result v2

    aput-boolean v2, v6, v9

    add-int/2addr v3, v9

    move v2, v5

    goto :goto_0

    :cond_1
    return-void
.end method

.method private returnData(II)V
    .locals 3

    .line 663
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 664
    iget-boolean v1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerState:Z

    const-string v2, "power_state"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "hour"

    .line 665
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "minute"

    .line 666
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 667
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 668
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 669
    iget p2, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mCode:I

    invoke-direct {p0, p2, p1}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->returnNewTimeSetResult(ILandroid/content/Intent;)V

    return-void
.end method

.method private returnNewTimeSetResult(ILandroid/content/Intent;)V
    .locals 12

    .line 492
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_8

    const-string v0, "hour"

    .line 494
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "minute"

    .line 495
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne p1, v5, :cond_0

    move v6, v4

    move v7, v5

    goto :goto_0

    :cond_0
    move v7, v4

    move v6, v5

    .line 504
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hour : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "  mTimeArray["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "][0]"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v10, v10, v6

    aget v10, v10, v4

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "TimepowerSettingsFragment"

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "minute : "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "][1]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v9, v9, v6

    aget v9, v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object v8, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v9, v8, v6

    aget v9, v9, v4

    if-ne v1, v9, :cond_1

    aget-object v1, v8, v6

    aget v1, v1, v5

    if-ne v3, v1, :cond_1

    .line 508
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->timepower_time_duplicate:I

    .line 509
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 508
    invoke-static {p1, p0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 510
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 514
    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v1, v1, v7

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v1, v4

    .line 515
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v0, v0, v7

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v5

    .line 516
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v1, v0, v7

    aget v1, v1, v4

    aget-object v0, v0, v7

    aget v0, v0, v5

    invoke-direct {p0, v1, v0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->formatTime(II)Ljava/lang/String;

    move-result-object v0

    .line 518
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v1, v1, v7

    const-string v2, "power_state"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    aput-boolean p2, v1, v4

    .line 520
    iget-object p2, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object p2, p2, v7

    aget-boolean p2, p2, v5

    if-nez p1, :cond_2

    .line 522
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnPref:Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 529
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnPreference:Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    if-ne p1, v5, :cond_3

    .line 534
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffPref:Lcom/oneplus/settings/timer/timepower/TimepowerPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 536
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffPreference:Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    if-nez p2, :cond_5

    if-nez p1, :cond_4

    .line 541
    invoke-direct {p0, v4, v5}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->updateState(IZ)V

    .line 542
    iget-object p0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOnStatePref:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    .line 544
    :cond_4
    invoke-direct {p0, v5, v5}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->updateState(IZ)V

    .line 545
    iget-object p0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerOffStatePref:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    .line 557
    :cond_5
    iget p1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mCode:I

    const/high16 p2, 0x11000000

    if-nez p1, :cond_6

    .line 558
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->cancleNewPlanLastPowerOn()V

    .line 559
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->writeData()V

    .line 566
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.settings.POWER_OP_ON"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 567
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 568
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 569
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->setPowerOn()V

    goto :goto_2

    :cond_6
    if-ne p1, v5, :cond_7

    .line 571
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->writeData()V

    .line 577
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.settings.action.REQUEST_POWER_OFF"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 578
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 580
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    .line 581
    invoke-virtual {p0, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    .line 585
    :cond_7
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->writeData()V

    :cond_8
    :goto_2
    return-void
.end method

.method private setPowerOn()V
    .locals 5

    .line 467
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 468
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "def_timepower_config"

    .line 467
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 469
    invoke-static {v0}, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->getNearestTime(Ljava/lang/String;)[J

    move-result-object v0

    .line 471
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPowerOn writeData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-wide v3, v0, v2

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TimepowerSettingsFragment"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.settings.POWER_OP_ON"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 478
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/high16 v4, 0x8000000

    invoke-static {p0, v2, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 480
    aget-wide v0, v0, v2

    invoke-virtual {v3, v2, v0, v1, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private startDialogForResult(Landroid/content/Intent;I)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 597
    :cond_0
    iput p2, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mCode:I

    .line 598
    new-instance p2, Lcom/google/android/material/picker/TimePicker;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/android/material/picker/TimePicker;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimePicker:Lcom/google/android/material/picker/TimePicker;

    .line 600
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "power_state"

    .line 601
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mPowerState:Z

    const-string p2, "24hour"

    .line 603
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    const-string p2, "hour"

    .line 604
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string p2, "minute"

    .line 605
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string p2, "power_type"

    .line 607
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    .line 613
    iget-object p1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimePicker:Lcom/google/android/material/picker/TimePicker;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/picker/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 614
    iget-object p1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimePicker:Lcom/google/android/material/picker/TimePicker;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/picker/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 615
    iget-object p1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimePicker:Lcom/google/android/material/picker/TimePicker;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/picker/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 618
    new-instance p1, Lcom/google/android/material/picker/TimePickerDialog;

    .line 619
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/android/settings/R$style;->OnePlus_Theme_Dialog_Picker:I

    move-object v0, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/picker/TimePickerDialog;-><init>(Landroid/content/Context;ILcom/google/android/material/picker/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 622
    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 623
    invoke-virtual {p1}, Lcom/google/android/material/picker/TimePickerDialog;->show()V

    .line 624
    iput-boolean p2, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mDlgVisible:Z

    return-void
.end method

.method private updateState(IZ)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    return-void

    .line 333
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v1, v1, p1

    aput-boolean p2, v1, v0

    const-string v1, "com.android.settings.POWER_OP_ON"

    const/high16 v2, 0x11000000

    if-nez p1, :cond_1

    if-ne p2, v0, :cond_1

    .line 336
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->cancleNewPlanLastPowerOn()V

    .line 337
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->writeData()V

    .line 343
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 345
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 346
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportNewPlanPowerOffAlarm()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 347
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->setPowerOn()V

    goto/16 :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    if-ne p2, v0, :cond_2

    .line 352
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->writeData()V

    const/4 p1, 0x2

    new-array p1, p1, [J

    .line 354
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 355
    aget-wide v0, p1, v0

    const-string p1, "trigger_time"

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 360
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.android.settings.action.REQUEST_POWER_OFF"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 363
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 364
    invoke-virtual {p0, p2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_3

    if-nez p2, :cond_3

    .line 370
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->writeData()V

    .line 372
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.android.settings.POWER_CANCEL_OP_OFF"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 374
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, p2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    if-nez p2, :cond_4

    .line 377
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->writeData()V

    .line 381
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 383
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 384
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportNewPlanPowerOffAlarm()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 386
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 387
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "def_timepower_config"

    .line 386
    invoke-static {p1, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 388
    invoke-static {p1}, Lcom/oneplus/settings/timer/timepower/SettingsUtil;->getNearestTime(Ljava/lang/String;)[J

    move-result-object p1

    .line 389
    new-instance p2, Landroid/content/Intent;

    const-string v0, "org.codeaurora.poweroffalarm.action.CANCEL_ALARM"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 390
    aget-wide v0, p1, v0

    const-string p1, "time"

    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "com.qualcomm.qti.poweroffalarm"

    .line 391
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 393
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private writeData()V
    .locals 8

    .line 426
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 428
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v6, v6, v2

    aget v6, v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v6, "%1$02d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mTimeArray:[[I

    aget-object v7, v7, v2

    aget v7, v7, v4

    .line 429
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v1

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v6, v6, v2

    aget-boolean v6, v6, v1

    .line 430
    invoke-static {v6}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->boolToInt(Z)I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v6, "%1$01d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mStateArray:[[Z

    aget-object v7, v7, v2

    aget-boolean v4, v7, v4

    .line 431
    invoke-static {v4}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->boolToInt(Z)I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v1

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 432
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 434
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TimepowerSettingsFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "def_timepower_config"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

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

    .line 90
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    sget p1, Lcom/android/settings/R$xml;->op_time_power_preference:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 96
    invoke-direct {p0}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->init()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 300
    instance-of v0, p1, Landroidx/preference/SwitchPreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 301
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0

    :cond_0
    move p2, v1

    .line 304
    :goto_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "power_on_switch"

    .line 305
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 306
    invoke-direct {p0, v1, p2}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->updateState(IZ)V

    return v2

    :cond_1
    const-string v0, "power_off_switch"

    .line 308
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 309
    invoke-direct {p0, v2, p2}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->updateState(IZ)V

    return v2

    :cond_2
    return v1
.end method

.method public onTimeSet(Lcom/google/android/material/picker/TimePicker;II)V
    .locals 0

    .line 636
    invoke-direct {p0, p2, p3}, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->returnData(II)V

    const/4 p1, 0x0

    .line 637
    iput-boolean p1, p0, Lcom/oneplus/settings/timer/timepower/TimepowerSettingsFragment;->mDlgVisible:Z

    return-void
.end method
