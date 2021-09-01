.class public Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "DarkModeScheduleSelectorController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "DarkModeScheduleSelectorController"


# instance fields
.field private mCurrentMode:I

.field mGlobalDarkPreference:Landroidx/preference/Preference;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPreference:Landroidx/preference/ListPreference;

.field private final mUiModeManager:Landroid/app/UiModeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    const-class p2, Landroid/app/UiModeManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/UiModeManager;

    iput-object p2, p0, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->mUiModeManager:Landroid/app/UiModeManager;

    .line 47
    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    iput-object p2, p0, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->mPowerManager:Landroid/os/PowerManager;

    .line 48
    const-class p2, Landroid/location/LocationManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->mLocationManager:Landroid/location/LocationManager;

    return-void
.end method

.method private getCurrentMode()I
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 114
    sget v0, Lcom/android/settings/R$string;->oneplus_never_auto:I

    goto :goto_0

    .line 111
    :cond_0
    sget v0, Lcom/android/settings/R$string;->oneplus_custom_time:I

    goto :goto_0

    .line 108
    :cond_1
    sget v0, Lcom/android/settings/R$string;->oneplus_sunrise_sunset:I

    .line 116
    :goto_0
    iget-object v1, p0, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->mPreference:Landroidx/preference/ListPreference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private needEnableGlobalDarkPreference()Z
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x20

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 68
    :goto_0
    iget-object p0, p0, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {p0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v3, 0x3

    if-eq p0, v3, :cond_1

    move p0, v2

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    if-nez v0, :cond_3

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    return v1
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 53
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->mPreference:Landroidx/preference/ListPreference;

    const-string v0, "oneplus_global_dark_mode"

    .line 56
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->mGlobalDarkPreference:Landroidx/preference/Preference;

    if-eqz p1, :cond_0

    .line 58
    invoke-direct {p0}, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->needEnableGlobalDarkPreference()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .line 121
    iget-object p1, p0, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->mPreference:Landroidx/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p1

    .line 122
    iget p2, p0, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->mCurrentMode:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    return v0

    .line 125
    :cond_0
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p2, p2, 0x20

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    move p2, v1

    goto :goto_0

    :cond_1
    move p2, v0

    .line 127
    :goto_0
    iget-object v2, p0, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->mPreference:Landroidx/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->oneplus_never_auto:I

    .line 128
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 127
    invoke-virtual {v2, v3}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    if-ne p1, v2, :cond_3

    if-eqz p2, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    move v0, v1

    .line 131
    :goto_1
    iget-object v2, p0, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v2, v0}, Landroid/app/UiModeManager;->setNightMode(I)V

    .line 133
    iget-object v0, p0, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->mGlobalDarkPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 135
    :cond_3
    iget-object p2, p0, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->mPreference:Landroidx/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->oneplus_sunrise_sunset:I

    .line 136
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 135
    invoke-virtual {p2, v2}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    if-ne p1, p2, :cond_4

    .line 141
    iget-object p2, p0, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {p2, v0}, Landroid/app/UiModeManager;->setNightMode(I)V

    .line 143
    iget-object p2, p0, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->mGlobalDarkPreference:Landroidx/preference/Preference;

    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 145
    :cond_4
    iget-object p2, p0, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->mPreference:Landroidx/preference/ListPreference;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->oneplus_custom_time:I

    .line 146
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-virtual {p2, v0}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    if-ne p1, p2, :cond_5

    .line 147
    iget-object p2, p0, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->mUiModeManager:Landroid/app/UiModeManager;

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Landroid/app/UiModeManager;->setNightMode(I)V

    .line 149
    iget-object p2, p0, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->mGlobalDarkPreference:Landroidx/preference/Preference;

    invoke-virtual {p2, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 152
    :cond_5
    :goto_2
    iput p1, p0, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->mCurrentMode:I

    return v1
.end method

.method protected refreshSummary(Landroidx/preference/Preference;)V
    .locals 1

    .line 159
    iget-object p0, p0, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {p0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 167
    sget p0, Lcom/android/settings/R$string;->oneplus_never_auto:I

    goto :goto_0

    .line 164
    :cond_0
    sget p0, Lcom/android/settings/R$string;->oneplus_custom_time:I

    goto :goto_0

    .line 161
    :cond_1
    sget p0, Lcom/android/settings/R$string;->oneplus_sunrise_sunset:I

    .line 169
    :goto_0
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 93
    invoke-static {}, Lcom/oneplus/settings/utils/OPThemeUtils;->isSupportREDTheme()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 94
    iget-object p1, p0, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->mPreference:Landroidx/preference/ListPreference;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPThemeUtils;->isCurrentREDTheme(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->getCurrentMode()I

    move-result p1

    iput p1, p0, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->mCurrentMode:I

    .line 98
    iget-object v0, p0, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->setValueIndex(I)V

    .line 99
    iget-object p1, p0, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->mGlobalDarkPreference:Landroidx/preference/Preference;

    if-eqz p1, :cond_1

    .line 100
    invoke-direct {p0}, Lcom/android/settings/display/darkmode/DarkModeScheduleSelectorController;->needEnableGlobalDarkPreference()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
