.class public Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPThemeMCLSwitchPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "OPThemeMCLSwitchPreferenceController"


# instance fields
.field mColorAccentPreference:Landroidx/preference/Preference;

.field mCurrentMode:I

.field mPreference:Landroidx/preference/ListPreference;

.field mThemeIconPreference:Lcom/oneplus/settings/ui/OPThemeIconPreference;

.field mUiModeManager:Landroid/app/UiModeManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    const-class p2, Landroid/app/UiModeManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/UiModeManager;

    iput-object p1, p0, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;->switchToMclTheme()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;Ljava/lang/Object;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;->updateUI(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;->enableTheme()V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;->switchToNormalTheme()V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;Z)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;->switchTheme(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private closeAutoDarkMode()V
    .locals 4

    .line 233
    iget-object v0, p0, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    .line 234
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x20

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 237
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeAutoDarkMode active = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OPThemeMCLSwitchPreferenceController"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    .line 239
    :cond_2
    iget-object p0, p0, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {p0, v1}, Landroid/app/UiModeManager;->setNightMode(I)V

    :cond_3
    return-void
.end method

.method private enableTheme()V
    .locals 4

    .line 138
    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController$4;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController$4;-><init>(Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private getCurrentMode()I
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPThemeUtils;->isCurrentMCLTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/settings/R$string;->oneplus_theme_preset_mcl:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/settings/R$string;->aod_clock_default:I

    .line 80
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;->mPreference:Landroidx/preference/ListPreference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private isCurrentDarkMode()Z
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private switchTheme(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;->switchToMclTheme()V

    goto :goto_0

    .line 133
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;->switchToNormalTheme()V

    :goto_0
    return-void
.end method

.method private switchToMclTheme()V
    .locals 4

    .line 223
    invoke-virtual {p0}, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;->setMclAccentColor()V

    .line 224
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentMCLTheme(Landroid/content/Context;I)V

    .line 225
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aod_clock_style"

    const/16 v2, 0x28

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 227
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_custom_unlock_animation_style"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 229
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentHorizonLight(Landroid/content/Context;I)V

    return-void
.end method

.method private switchToNormalTheme()V
    .locals 4

    .line 247
    invoke-virtual {p0}, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;->restoreLastDarkModeAccentColor()V

    .line 248
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentMCLTheme(Landroid/content/Context;I)V

    .line 249
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "aod_clock_style"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 251
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "op_custom_unlock_animation_style"

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 253
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0, v1}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentHorizonLight(Landroid/content/Context;I)V

    return-void
.end method

.method private updateColorAccentPreference()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;->mColorAccentPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 73
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 74
    iget-object p0, p0, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;->mColorAccentPreference:Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateUI(Ljava/lang/Object;)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;->mPreference:Landroidx/preference/ListPreference;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 149
    invoke-direct {p0}, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;->updateColorAccentPreference()V

    .line 150
    iget-object p1, p0, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;->mThemeIconPreference:Lcom/oneplus/settings/ui/OPThemeIconPreference;

    invoke-virtual {p1}, Lcom/oneplus/settings/ui/OPThemeIconPreference;->refreshUI()V

    .line 151
    iget-object p1, p0, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {p0}, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    .line 55
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "OPThemeMCLSwitchPreferenceController"

    const-string v1, "displayPreference"

    .line 56
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "preference_divider_line"

    .line 57
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/ListPreference;

    iput-object v1, p0, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;->mPreference:Landroidx/preference/ListPreference;

    const-string v1, "oneplus_theme_custom_key"

    .line 59
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/ui/OPThemeIconPreference;

    iput-object v1, p0, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;->mThemeIconPreference:Lcom/oneplus/settings/ui/OPThemeIconPreference;

    .line 60
    iget-object v1, p0, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;->mPreference:Landroidx/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 63
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;->getCurrentMode()I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;->mCurrentMode:I

    if-eqz v0, :cond_2

    .line 65
    invoke-virtual {p0}, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;->getAvailabilityStatus()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_2
    const-string v0, "oneplus_theme_accent_color"

    .line 67
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;->mColorAccentPreference:Landroidx/preference/Preference;

    .line 68
    invoke-direct {p0}, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;->updateColorAccentPreference()V

    return-void
.end method

.method public enableDarkMode()V
    .locals 6

    const-string v0, "OPThemeMCLSwitchPreferenceController"

    const-string v1, "enableDarkMode"

    .line 163
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "already_black_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 165
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x20

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v2, v1

    :cond_0
    if-eqz v2, :cond_1

    const-string v0, "0"

    goto :goto_0

    :cond_1
    const-string v0, "1"

    .line 168
    :goto_0
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    xor-int/lit8 v4, v2, 0x1

    const-string v5, "oem_black_mode"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v3, "persist.sys.theme.status"

    .line 170
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_2

    const/4 v1, 0x2

    .line 172
    :cond_2
    iget-object p0, p0, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {p0, v1}, Landroid/app/UiModeManager;->setNightMode(I)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 50
    invoke-static {}, Lcom/oneplus/settings/utils/OPThemeUtils;->isSupportMclTheme()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
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

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPThemeUtils;->isCurrentMCLTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->oneplus_theme_preset_mcl:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 159
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->aod_clock_default:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

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
    .locals 6

    .line 85
    iget-object p1, p0, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;->mPreference:Landroidx/preference/ListPreference;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p1

    .line 86
    iget v0, p0, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;->mCurrentMode:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 90
    :cond_0
    iput p1, p0, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;->mCurrentMode:I

    .line 91
    iget-object v0, p0, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;->mPreference:Landroidx/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->oneplus_theme_preset_mcl:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    const-wide/16 v3, 0x12c

    const-string v0, "already_black_mode"

    if-eqz p1, :cond_2

    .line 93
    invoke-direct {p0}, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;->isCurrentDarkMode()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 94
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 95
    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController$1;

    invoke-direct {v0, p0, p2}, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController$1;-><init>(Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v2

    :cond_2
    if-nez p1, :cond_3

    .line 106
    iget-object v5, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 107
    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController$2;

    invoke-direct {v0, p0, p2}, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController$2;-><init>(Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v2

    .line 118
    :cond_3
    invoke-direct {p0, p2}, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;->updateUI(Ljava/lang/Object;)V

    .line 119
    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController$3;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController$3;-><init>(Lcom/oneplus/settings/controllers/OPThemeMCLSwitchPreferenceController;Z)V

    const-wide/16 p0, 0x190

    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v2
.end method

.method public restoreLastDarkModeAccentColor()V
    .locals 6

    .line 193
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_black_mode_last_accent_color"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->op_control_red_theme_accent_color_default:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 197
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreLastDarkModeAccentColor lastDarkModeAccentColor = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "OPThemeMCLSwitchPreferenceController"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "oem_black_mode_accent_color"

    invoke-static {v1, v3, v0, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 199
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "#"

    const-string v3, ""

    if-nez v1, :cond_1

    .line 200
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "persist.sys.theme.accentcolor"

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_1
    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->getTextAccentColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    const-string v5, "oneplus_accent_text_color"

    invoke-static {v1, v5, v0, v4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 205
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 206
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.theme.accent_text_color"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "oneplus_accentcolor"

    .line 210
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/oneplus/compat/util/OpThemeNative;->enableTheme(Landroid/content/Context;Ljava/util/HashMap;)V

    return-void
.end method

.method public setMclAccentColor()V
    .locals 6

    .line 176
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->op_control_mcl_theme_accent_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_black_mode_accent_color"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 178
    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "oem_black_mode_last_accent_color"

    invoke-static {v4, v5, v1, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 179
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 180
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    const-string v3, "oneplus_accent_color"

    invoke-static {v1, v3, v0, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    const-string v1, "#"

    const-string v2, ""

    .line 181
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "persist.sys.theme.accentcolor"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMclAccentColor MclAccentColor = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OPThemeMCLSwitchPreferenceController"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->getTextAccentColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    const-string v5, "oneplus_accent_text_color"

    invoke-static {v3, v5, v0, v4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 185
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.theme.accent_text_color"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "oneplus_accentcolor"

    .line 188
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/oneplus/compat/util/OpThemeNative;->enableTheme(Landroid/content/Context;Ljava/util/HashMap;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
