.class public Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ZenModeScheduleRuleSettings.java"

# interfaces
.implements Lcom/google/android/material/picker/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimePickerFragment"
.end annotation


# instance fields
.field public pref:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 299
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x22c

    return p0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    .line 310
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;->access$300(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;->access$400(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 311
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 312
    iget-object v1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-static {v1}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;->access$300(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;)I

    move-result v1

    goto :goto_1

    :cond_1
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    :goto_1
    move v5, v1

    if-eqz p1, :cond_2

    .line 313
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-static {p1}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;->access$400(Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;)I

    move-result p1

    goto :goto_2

    :cond_2
    const/16 p1, 0xc

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    :goto_2
    move v6, p1

    .line 314
    new-instance p1, Lcom/google/android/material/picker/TimePickerDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    .line 315
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v7

    move-object v2, p1

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/material/picker/TimePickerDialog;-><init>(Landroid/content/Context;Lcom/google/android/material/picker/TimePickerDialog$OnTimeSetListener;IIZ)V

    return-object p1
.end method

.method public onTimeSet(Lcom/google/android/material/picker/TimePicker;II)V
    .locals 0

    .line 319
    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;

    if-eqz p0, :cond_0

    .line 320
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/notification/zen/ZenModeScheduleRuleSettings$TimePickerPreference;->setTime(II)V

    :cond_0
    return-void
.end method
