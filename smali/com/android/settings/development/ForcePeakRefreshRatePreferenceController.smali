.class public Lcom/android/settings/development/ForcePeakRefreshRatePreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "ForcePeakRefreshRatePreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static DEFAULT_REFRESH_RATE:F = 60.0f

.field static NO_CONFIG:F


# instance fields
.field mPeakRefreshRate:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 50
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 52
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p1, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    const-string v0, "ForcePeakRefreshRateCtr"

    if-nez p1, :cond_0

    const-string p1, "No valid default display device"

    .line 56
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    sget p1, Lcom/android/settings/development/ForcePeakRefreshRatePreferenceController;->DEFAULT_REFRESH_RATE:F

    iput p1, p0, Lcom/android/settings/development/ForcePeakRefreshRatePreferenceController;->mPeakRefreshRate:F

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p1}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/development/ForcePeakRefreshRatePreferenceController;->findPeakRefreshRate([Landroid/view/Display$Mode;)F

    move-result p1

    iput p1, p0, Lcom/android/settings/development/ForcePeakRefreshRatePreferenceController;->mPeakRefreshRate:F

    .line 62
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DEFAULT_REFRESH_RATE : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/settings/development/ForcePeakRefreshRatePreferenceController;->DEFAULT_REFRESH_RATE:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " mPeakRefreshRate : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/development/ForcePeakRefreshRatePreferenceController;->mPeakRefreshRate:F

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private findPeakRefreshRate([Landroid/view/Display$Mode;)F
    .locals 5

    .line 123
    sget p0, Lcom/android/settings/development/ForcePeakRefreshRatePreferenceController;->DEFAULT_REFRESH_RATE:F

    .line 124
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 125
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/android/settings/development/ForcePeakRefreshRatePreferenceController;->DEFAULT_REFRESH_RATE:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 126
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 73
    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/development/ForcePeakRefreshRatePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method forcePeakRefreshRate(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 110
    iget p1, p0, Lcom/android/settings/development/ForcePeakRefreshRatePreferenceController;->mPeakRefreshRate:F

    goto :goto_0

    :cond_0
    sget p1, Lcom/android/settings/development/ForcePeakRefreshRatePreferenceController;->NO_CONFIG:F

    .line 111
    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "min_refresh_rate"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "pref_key_peak_refresh_rate"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$bool;->config_show_smooth_display:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 93
    iget p0, p0, Lcom/android/settings/development/ForcePeakRefreshRatePreferenceController;->mPeakRefreshRate:F

    sget v0, Lcom/android/settings/development/ForcePeakRefreshRatePreferenceController;->DEFAULT_REFRESH_RATE:F

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method isForcePeakRefreshRateEnabled()Z
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget v1, Lcom/android/settings/development/ForcePeakRefreshRatePreferenceController;->NO_CONFIG:F

    const-string v2, "min_refresh_rate"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 119
    iget p0, p0, Lcom/android/settings/development/ForcePeakRefreshRatePreferenceController;->mPeakRefreshRate:F

    cmpl-float p0, v0, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 3

    .line 101
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    .line 102
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget v1, Lcom/android/settings/development/ForcePeakRefreshRatePreferenceController;->NO_CONFIG:F

    const-string v2, "min_refresh_rate"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 105
    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Landroidx/preference/SwitchPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 79
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/settings/development/ForcePeakRefreshRatePreferenceController;->forcePeakRefreshRate(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 87
    iget-object p1, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p1, Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/development/ForcePeakRefreshRatePreferenceController;->isForcePeakRefreshRateEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
