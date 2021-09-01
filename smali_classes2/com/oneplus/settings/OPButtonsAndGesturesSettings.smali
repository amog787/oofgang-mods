.class public Lcom/oneplus/settings/OPButtonsAndGesturesSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "OPButtonsAndGesturesSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mAlertsliderSettingsPreference:Landroidx/preference/Preference;

.field private mButtonsAndFullscreenGesturesPreference:Landroidx/preference/Preference;

.field private mButtonsSettingsPreference:Landroidx/preference/Preference;

.field private mContext:Landroid/content/Context;

.field private mFingerprintGestureLongpressCamera:Landroidx/preference/SwitchPreference;

.field private mFingerprintGestureSwipeDownUp:Landroidx/preference/SwitchPreference;

.field private mLongPressPowerButtonPreference:Landroidx/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 199
    new-instance v0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings$1;

    invoke-direct {v0}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 36
    invoke-static {}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->isSupportHardwareKeys()Z

    move-result v0

    return v0
.end method

.method private static isFingerprintLongpressCameraShotEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "op_fingerprint_long_press_camera_shot"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private static isSupportHardwareKeys()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static isSystemUINavigationEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "system_navigation_keys_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private loadPreferenceScreen()V
    .locals 3

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "emergency_affordance_needed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 124
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mFingerprintGestureLongpressCamera:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 125
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->isFingerprintLongpressCameraShotEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mFingerprintGestureSwipeDownUp:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 128
    iget-object v1, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->isSystemUINavigationEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mLongPressPowerButtonPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_4

    .line 131
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quick_turn_on_voice_assistant"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    move v2, v1

    :cond_2
    if-eqz v2, :cond_3

    .line 133
    iget-object p0, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mLongPressPowerButtonPreference:Landroidx/preference/Preference;

    sget v0, Lcom/android/settings/R$string;->oneplus_voice_assistant:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 135
    :cond_3
    iget-object p0, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mLongPressPowerButtonPreference:Landroidx/preference/Preference;

    sget v0, Lcom/android/settings/R$string;->power_menu:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_4
    :goto_0
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

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 193
    new-instance v1, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppPreferenceController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantAppPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 194
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 195
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "OPOthersSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 113
    sget p0, Lcom/android/settings/R$xml;->op_buttons_and_gesture_settings:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 59
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    sget-object p1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    iput-object p1, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mContext:Landroid/content/Context;

    const-string p1, "op_fingerprint_long_press_camera_shot"

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mFingerprintGestureLongpressCamera:Landroidx/preference/SwitchPreference;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 63
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isDreProducts()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isEucalyptusProducts()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mFingerprintGestureLongpressCamera:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 67
    :cond_1
    iget-object p1, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mFingerprintGestureLongpressCamera:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "op_fingerprint_gesture_swipe_down_up"

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mFingerprintGestureSwipeDownUp:Landroidx/preference/SwitchPreference;

    .line 69
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 70
    iget-object p1, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result p1

    if-nez p1, :cond_2

    .line 71
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportGesturePullNotificationBar()Z

    move-result p1

    if-nez p1, :cond_3

    .line 72
    iget-object p1, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mFingerprintGestureSwipeDownUp:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 75
    :cond_2
    iget-object p1, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mFingerprintGestureLongpressCamera:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 76
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportGesturePullNotificationBar()Z

    move-result p1

    if-nez p1, :cond_3

    .line 77
    iget-object p1, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mFingerprintGestureSwipeDownUp:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_3
    :goto_0
    const-string p1, "op_alertslider_settings_soc_tri_state"

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mAlertsliderSettingsPreference:Landroidx/preference/Preference;

    .line 82
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportSocTriState()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mAlertsliderSettingsPreference:Landroidx/preference/Preference;

    if-eqz p1, :cond_4

    .line 83
    sget v1, Lcom/android/settings/R$string;->alertslider_settings:I

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 86
    :cond_4
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isDreProducts()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isEucalyptusProducts()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 87
    :cond_5
    iget-object p1, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mAlertsliderSettingsPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_6
    const-string p1, "op_buttons_and_fullscreen_gestures"

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mButtonsAndFullscreenGesturesPreference:Landroidx/preference/Preference;

    const-string p1, "buttons_settings"

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mButtonsSettingsPreference:Landroidx/preference/Preference;

    .line 92
    invoke-static {}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->isSupportHardwareKeys()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 93
    iget-object p1, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mButtonsAndFullscreenGesturesPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_1

    .line 95
    :cond_7
    iget-object p1, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mButtonsSettingsPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_1
    const-string p1, "long_press_power_button"

    .line 97
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mLongPressPowerButtonPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 179
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 157
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 158
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    goto :goto_0

    .line 159
    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 160
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 162
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mFingerprintGestureLongpressCamera:Landroidx/preference/SwitchPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2

    .line 163
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "op_fingerprint_long_press_camera_shot"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v1

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->mFingerprintGestureSwipeDownUp:Landroidx/preference/SwitchPreference;

    if-ne p1, v0, :cond_3

    .line 168
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "system_navigation_keys_enabled"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 0

    .line 150
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 151
    invoke-direct {p0}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->loadPreferenceScreen()V

    return-void
.end method
