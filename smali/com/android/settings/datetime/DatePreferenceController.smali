.class public Lcom/android/settings/datetime/DatePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "DatePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/google/android/material/picker/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datetime/DatePreferenceController$DatePreferenceHost;
    }
.end annotation


# instance fields
.field private final mAutoTimePreferenceController:Lcom/android/settings/datetime/AutoTimePreferenceController;

.field private final mHost:Lcom/android/settings/datetime/DatePreferenceController$DatePreferenceHost;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datetime/DatePreferenceController$DatePreferenceHost;Lcom/android/settings/datetime/AutoTimePreferenceController;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 54
    iput-object p2, p0, Lcom/android/settings/datetime/DatePreferenceController;->mHost:Lcom/android/settings/datetime/DatePreferenceController$DatePreferenceHost;

    .line 55
    iput-object p3, p0, Lcom/android/settings/datetime/DatePreferenceController;->mAutoTimePreferenceController:Lcom/android/settings/datetime/AutoTimePreferenceController;

    return-void
.end method


# virtual methods
.method public buildDatePicker(Landroid/app/Activity;)Lcom/google/android/material/picker/DatePickerDialog;
    .locals 9

    .line 96
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 97
    new-instance v7, Lcom/google/android/material/picker/DatePickerDialog;

    const/4 v8, 0x1

    .line 100
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v1, 0x2

    .line 101
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v1, 0x5

    .line 102
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    move-object v1, v7

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/picker/DatePickerDialog;-><init>(Landroid/content/Context;Lcom/google/android/material/picker/DatePickerDialog$OnDateSetListener;III)V

    .line 104
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    const/16 p0, 0x7d7

    const/4 p1, 0x0

    .line 105
    invoke-virtual {v0, p0, p1, v8}, Ljava/util/Calendar;->set(III)V

    .line 106
    invoke-virtual {v7}, Lcom/google/android/material/picker/DatePickerDialog;->getDatePicker()Lcom/google/android/material/picker/DatePicker;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/material/picker/DatePicker;->setMinDate(J)V

    .line 107
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    const/16 p0, 0x7f5

    const/16 p1, 0xb

    const/16 v1, 0x1f

    .line 108
    invoke-virtual {v0, p0, p1, v1}, Ljava/util/Calendar;->set(III)V

    .line 109
    invoke-virtual {v7}, Lcom/google/android/material/picker/DatePickerDialog;->getDatePicker()Lcom/google/android/material/picker/DatePicker;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/picker/DatePicker;->setMaxDate(J)V

    return-object v7
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "date"

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 77
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "date"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 80
    :cond_0
    iget-object p0, p0, Lcom/android/settings/datetime/DatePreferenceController;->mHost:Lcom/android/settings/datetime/DatePreferenceController$DatePreferenceHost;

    invoke-interface {p0}, Lcom/android/settings/datetime/DatePreferenceController$DatePreferenceHost;->showDatePicker()V

    const/4 p0, 0x1

    return p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onDateSet(Lcom/google/android/material/picker/DatePicker;III)V
    .locals 0

    .line 91
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/settings/datetime/DatePreferenceController;->setDate(III)V

    .line 92
    iget-object p1, p0, Lcom/android/settings/datetime/DatePreferenceController;->mHost:Lcom/android/settings/datetime/DatePreferenceController$DatePreferenceHost;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {p1, p0}, Lcom/android/settings/datetime/UpdateTimeAndDateCallback;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    return-void
.end method

.method setDate(III)V
    .locals 4

    .line 115
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 117
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x2

    .line 118
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x5

    .line 119
    invoke-virtual {v0, p1, p3}, Ljava/util/Calendar;->set(II)V

    .line 120
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    const-wide v0, 0x1160d1b4800L

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    .line 122
    div-long v0, p1, v0

    const-wide/32 v2, 0x7fffffff

    cmp-long p3, v0, v2

    if-gez p3, :cond_0

    .line 123
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class p3, Landroid/app/timedetector/TimeDetector;

    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/timedetector/TimeDetector;

    const-string p3, "Settings: Set date"

    .line 125
    invoke-static {p1, p2, p3}, Landroid/app/timedetector/TimeDetector;->createManualTimeSuggestion(JLjava/lang/String;)Landroid/app/timedetector/ManualTimeSuggestion;

    move-result-object p1

    .line 126
    invoke-interface {p0, p1}, Landroid/app/timedetector/TimeDetector;->suggestManualTime(Landroid/app/timedetector/ManualTimeSuggestion;)V

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 65
    instance-of v0, p1, Lcom/android/settingslib/RestrictedPreference;

    if-nez v0, :cond_0

    return-void

    .line 68
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 70
    move-object v0, p1

    check-cast v0, Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    iget-object p0, p0, Lcom/android/settings/datetime/DatePreferenceController;->mAutoTimePreferenceController:Lcom/android/settings/datetime/AutoTimePreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/datetime/AutoTimePreferenceController;->isEnabled()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    return-void
.end method
