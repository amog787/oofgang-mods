.class public Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPThemeRedSwitchPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "OPThemeRedSwitchPreferenceController"


# instance fields
.field mColorAccentPreference:Landroidx/preference/Preference;

.field mCurrentMode:I

.field mPreference:Landroidx/preference/ListPreference;

.field mThemeIconPreference:Lcom/oneplus/settings/ui/OPThemeIconPreference;

.field mUiModeManager:Landroid/app/UiModeManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    const-class p2, Landroid/app/UiModeManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/UiModeManager;

    iput-object p1, p0, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;->switchToRedTheme()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;Ljava/lang/Object;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;->updateUI(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;->enableTheme()V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;->switchToNormalTheme()V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private enableTheme()V
    .locals 4

    .line 137
    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController$4;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController$4;-><init>(Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private getCurrentMode()I
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPThemeUtils;->isCurrentREDTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/settings/R$string;->op_red_theme:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/settings/R$string;->aod_clock_default:I

    .line 90
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;->mPreference:Landroidx/preference/ListPreference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private isCurrentDarkMode()Z
    .locals 2

    .line 220
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "oem_black_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private switchTheme(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;->switchToRedTheme()V

    goto :goto_0

    .line 150
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;->switchToNormalTheme()V

    :goto_0
    return-void
.end method

.method private switchToNormalTheme()V
    .locals 4

    .line 244
    invoke-virtual {p0}, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;->restoreLastDarkModeAccentColor()V

    .line 245
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentREDTheme(Landroid/content/Context;I)V

    .line 246
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "aod_clock_style"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 248
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "op_custom_unlock_animation_style"

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 250
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0, v1}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentHorizonLight(Landroid/content/Context;I)V

    return-void
.end method

.method private switchToRedTheme()V
    .locals 4

    .line 227
    invoke-virtual {p0}, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;->setRedAccentColor()V

    .line 228
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentREDTheme(Landroid/content/Context;I)V

    .line 229
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aod_clock_style"

    const/16 v2, 0x32

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 231
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_custom_unlock_animation_style"

    const/16 v2, 0xb

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 233
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentHorizonLight(Landroid/content/Context;I)V

    .line 234
    iget-object v0, p0, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    .line 235
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 236
    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/app/UiModeManager;->setNightMode(I)V

    :cond_1
    return-void
.end method

.method private updateColorAccentPreference()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;->mColorAccentPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_1

    .line 79
    invoke-static {}, Lcom/oneplus/settings/utils/OPThemeUtils;->isSupportREDTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPThemeUtils;->isCurrentREDTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;->mColorAccentPreference:Landroidx/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;->mColorAccentPreference:Landroidx/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 84
    :goto_0
    iget-object p0, p0, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;->mColorAccentPreference:Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private updateUI(Ljava/lang/Object;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;->mPreference:Landroidx/preference/ListPreference;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 156
    invoke-direct {p0}, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;->updateColorAccentPreference()V

    .line 157
    iget-object p1, p0, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;->mThemeIconPreference:Lcom/oneplus/settings/ui/OPThemeIconPreference;

    invoke-virtual {p1}, Lcom/oneplus/settings/ui/OPThemeIconPreference;->refreshUI()V

    .line 158
    iget-object p1, p0, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {p0}, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;->getSummary()Ljava/lang/CharSequence;

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

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "OPThemeRedSwitchPreferenceController"

    const-string v1, "displayPreference"

    .line 62
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "preference_divider_line"

    .line 63
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/ListPreference;

    iput-object v1, p0, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;->mPreference:Landroidx/preference/ListPreference;

    const-string v1, "oneplus_theme_custom_key"

    .line 65
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/ui/OPThemeIconPreference;

    iput-object v1, p0, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;->mThemeIconPreference:Lcom/oneplus/settings/ui/OPThemeIconPreference;

    .line 66
    iget-object v1, p0, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;->mPreference:Landroidx/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 69
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;->getCurrentMode()I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;->mCurrentMode:I

    if-eqz v0, :cond_2

    .line 71
    invoke-virtual {p0}, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;->getAvailabilityStatus()I

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

    .line 73
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;->mColorAccentPreference:Landroidx/preference/Preference;

    .line 74
    invoke-direct {p0}, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;->updateColorAccentPreference()V

    return-void
.end method

.method public enableDarkMode()V
    .locals 6

    .line 170
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "already_black_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 171
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

    .line 174
    :goto_0
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    xor-int/lit8 v4, v2, 0x1

    const-string v5, "oem_black_mode"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v3, "persist.sys.theme.status"

    .line 176
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object p0, p0, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    xor-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Landroid/app/UiModeManager;->setNightModeActivated(Z)Z

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 56
    invoke-static {}, Lcom/oneplus/settings/utils/OPThemeUtils;->isSupportREDTheme()Z

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

    .line 163
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPThemeUtils;->isCurrentREDTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->op_red_theme:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 166
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

    .line 95
    iget-object p1, p0, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;->mPreference:Landroidx/preference/ListPreference;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p1

    .line 96
    iget v0, p0, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;->mCurrentMode:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 99
    :cond_0
    iput p1, p0, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;->mCurrentMode:I

    .line 100
    iget-object v0, p0, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;->mPreference:Landroidx/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->op_red_theme:I

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

    .line 102
    invoke-direct {p0}, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;->isCurrentDarkMode()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 103
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 104
    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController$1;

    invoke-direct {v0, p0, p2}, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController$1;-><init>(Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v2

    :cond_2
    if-nez p1, :cond_3

    .line 114
    iget-object v5, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 115
    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController$2;

    invoke-direct {v0, p0, p2}, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController$2;-><init>(Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v2

    .line 125
    :cond_3
    invoke-direct {p0, p1}, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;->switchTheme(Z)V

    .line 126
    invoke-direct {p0, p2}, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;->updateUI(Ljava/lang/Object;)V

    .line 127
    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController$3;

    invoke-direct {p2, p0}, Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController$3;-><init>(Lcom/oneplus/settings/controllers/OPThemeRedSwitchPreferenceController;)V

    const-wide/16 v0, 0x190

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v2
.end method

.method public restoreLastDarkModeAccentColor()V
    .locals 6

    .line 198
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_black_mode_last_accent_color"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->op_control_red_theme_accent_color_default:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 202
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreLastDarkModeAccentColor lastDarkModeAccentColor = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "OPThemeRedSwitchPreferenceController"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "oem_black_mode_accent_color"

    invoke-static {v1, v3, v0, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 204
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "#"

    const-string v3, ""

    if-nez v1, :cond_1

    .line 205
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "persist.sys.theme.accentcolor"

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_1
    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->getTextAccentColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    const-string v5, "oneplus_accent_text_color"

    invoke-static {v1, v5, v0, v4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 210
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 211
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.theme.accent_text_color"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "oneplus_accentcolor"

    .line 215
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/oneplus/compat/util/OpThemeNative;->enableTheme(Landroid/content/Context;Ljava/util/HashMap;)V

    return-void
.end method

.method public setRedAccentColor()V
    .locals 6

    .line 181
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->op_control_red_theme_accent_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_black_mode_accent_color"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 183
    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "oem_black_mode_last_accent_color"

    invoke-static {v4, v5, v1, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 184
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 185
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    const-string v3, "oneplus_accent_color"

    invoke-static {v1, v3, v0, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    const-string v1, "#"

    const-string v2, ""

    .line 186
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "persist.sys.theme.accentcolor"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRedAccentColor redAccentColor = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OPThemeRedSwitchPreferenceController"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->getTextAccentColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    const-string v5, "oneplus_accent_text_color"

    invoke-static {v3, v5, v0, v4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 190
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.theme.accent_text_color"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "oneplus_accentcolor"

    .line 193
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
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
