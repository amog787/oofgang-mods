.class public Lcom/android/settings/display/NightDisplaySettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "NightDisplaySettings.java"

# interfaces
.implements Landroid/hardware/display/NightDisplayListener$Callback;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

.field private mNightDisplayListener:Landroid/hardware/display/NightDisplayListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 176
    new-instance v0, Lcom/android/settings/display/NightDisplaySettings$1;

    sget v1, Lcom/android/settings/R$xml;->night_display_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/display/NightDisplaySettings$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/display/NightDisplaySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$0(ILcom/google/android/material/picker/TimePicker;II)V
    .locals 0

    .line 103
    invoke-static {p3, p4}, Ljava/time/LocalTime;->of(II)Ljava/time/LocalTime;

    move-result-object p2

    if-nez p1, :cond_0

    .line 105
    iget-object p0, p0, Lcom/android/settings/display/NightDisplaySettings;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p0, p2}, Landroid/hardware/display/ColorDisplayManager;->setNightDisplayCustomStartTime(Ljava/time/LocalTime;)Z

    goto :goto_0

    .line 107
    :cond_0
    iget-object p0, p0, Lcom/android/settings/display/NightDisplaySettings;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p0, p2}, Landroid/hardware/display/ColorDisplayManager;->setNightDisplayCustomEndTime(Ljava/time/LocalTime;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public getDialogMetricsCategory(I)I
    .locals 0

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x24d

    return p0

    :cond_1
    const/16 p0, 0x24c

    return p0
.end method

.method public getHelpResource()I
    .locals 0

    .line 168
    sget p0, Lcom/android/settings/R$string;->help_url_night_display:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "NightDisplaySettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1e8

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 158
    sget p0, Lcom/android/settings/R$xml;->night_display_settings:I

    return p0
.end method

.method public synthetic lambda$onCreateDialog$0$NightDisplaySettings(ILcom/google/android/material/picker/TimePicker;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/display/NightDisplaySettings;->lambda$onCreateDialog$0(ILcom/google/android/material/picker/TimePicker;II)V

    return-void
.end method

.method public onActivated(Z)V
    .locals 0

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method

.method public onAutoModeChanged(I)V
    .locals 0

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method

.method public onColorTemperatureChanged(I)V
    .locals 0

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 53
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 56
    const-class v0, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/ColorDisplayManager;

    iput-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    .line 57
    new-instance v0, Landroid/hardware/display/NightDisplayListener;

    invoke-direct {v0, p1}, Landroid/hardware/display/NightDisplayListener;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mNightDisplayListener:Landroid/hardware/display/NightDisplayListener;

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 95
    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayCustomStartTime()Ljava/time/LocalTime;

    move-result-object v0

    goto :goto_1

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayCustomEndTime()Ljava/time/LocalTime;

    move-result-object v0

    .line 100
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 101
    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    .line 102
    new-instance v7, Lcom/google/android/material/picker/TimePickerDialog;

    new-instance v3, Lcom/android/settings/display/-$$Lambda$NightDisplaySettings$uURjTEkryHsqnZXn9tv34g18Dgs;

    invoke-direct {v3, p0, p1}, Lcom/android/settings/display/-$$Lambda$NightDisplaySettings$uURjTEkryHsqnZXn9tv34g18Dgs;-><init>(Lcom/android/settings/display/NightDisplaySettings;I)V

    .line 109
    invoke-virtual {v0}, Ljava/time/LocalTime;->getHour()I

    move-result v4

    invoke-virtual {v0}, Ljava/time/LocalTime;->getMinute()I

    move-result v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/picker/TimePickerDialog;-><init>(Landroid/content/Context;Lcom/google/android/material/picker/TimePickerDialog$OnTimeSetListener;IIZ)V

    return-object v7
.end method

.method public onCustomEndTimeChanged(Ljava/time/LocalTime;)V
    .locals 0

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method

.method public onCustomStartTimeChanged(Ljava/time/LocalTime;)V
    .locals 0

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->updatePreferenceStates()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 78
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "night_display_end_time"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->writePreferenceClickMetric(Landroidx/preference/Preference;)V

    .line 80
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return v1

    .line 82
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "night_display_start_time"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->writePreferenceClickMetric(Landroidx/preference/Preference;)V

    const/4 p1, 0x0

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return v1

    .line 87
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onStart()V
    .locals 1

    .line 62
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 65
    iget-object v0, p0, Lcom/android/settings/display/NightDisplaySettings;->mNightDisplayListener:Landroid/hardware/display/NightDisplayListener;

    invoke-virtual {v0, p0}, Landroid/hardware/display/NightDisplayListener;->setCallback(Landroid/hardware/display/NightDisplayListener$Callback;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 70
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    .line 73
    iget-object p0, p0, Lcom/android/settings/display/NightDisplaySettings;->mNightDisplayListener:Landroid/hardware/display/NightDisplayListener;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/display/NightDisplayListener;->setCallback(Landroid/hardware/display/NightDisplayListener$Callback;)V

    return-void
.end method
