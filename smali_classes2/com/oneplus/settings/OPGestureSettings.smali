.class public Lcom/oneplus/settings/OPGestureSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPGestureSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final OEM_ACC_SENSOR_ROTATE_SILENT_URI:Landroid/net/Uri;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private isDoubleClickEnable:I

.field private isFlashlightEnable:I

.field private isMusicControlEnable:I

.field private isMusicPlayEnable:I

.field private isStartUpCameraEnable:I

.field private isSupportThreeScrrenShot:Z

.field private mBlackScreenPrefererce:Landroidx/preference/PreferenceCategory;

.field private mBlackSettingValues:I

.field private mCameraPerference:Landroidx/preference/SwitchPreference;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mDoubleLightScreenPreference:Landroidx/preference/SwitchPreference;

.field private mDrawMStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

.field private mDrawOStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

.field private mDrawSStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

.field private mDrawVStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

.field private mDrawWStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

.field private mFingerprintGestureCategory:Landroidx/preference/PreferenceCategory;

.field private mFlashLightPreference:Landroidx/preference/SwitchPreference;

.field private mMusicControlPreference:Landroidx/preference/SwitchPreference;

.field private mMusicNextPreference:Landroidx/preference/SwitchPreference;

.field private mMusicPausePreference:Landroidx/preference/SwitchPreference;

.field private mMusicPrevPreference:Landroidx/preference/SwitchPreference;

.field private mMusicStartPreference:Landroidx/preference/SwitchPreference;

.field private mOneHandedMode:Lcom/android/settings/widget/MasterSwitchPreference;

.field private mRotationSilent:Landroidx/preference/SwitchPreference;

.field private mThreeSwipeScreenShot:Landroidx/preference/SwitchPreference;

.field private mUm:Landroid/os/UserManager;

.field private root:Landroidx/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "oem_acc_sensor_rotate_silent"

    .line 84
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/OPGestureSettings;->OEM_ACC_SENSOR_ROTATE_SILENT_URI:Landroid/net/Uri;

    .line 511
    new-instance v0, Lcom/oneplus/settings/OPGestureSettings$2;

    invoke-direct {v0}, Lcom/oneplus/settings/OPGestureSettings$2;-><init>()V

    sput-object v0, Lcom/oneplus/settings/OPGestureSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lcom/oneplus/settings/OPGestureSettings;->isSupportThreeScrrenShot:Z

    .line 341
    new-instance v0, Lcom/oneplus/settings/OPGestureSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/OPGestureSettings$1;-><init>(Lcom/oneplus/settings/OPGestureSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000()Landroid/net/Uri;
    .locals 1

    .line 46
    sget-object v0, Lcom/oneplus/settings/OPGestureSettings;->OEM_ACC_SENSOR_ROTATE_SILENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/OPGestureSettings;)Landroidx/preference/SwitchPreference;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/oneplus/settings/OPGestureSettings;->mRotationSilent:Landroidx/preference/SwitchPreference;

    return-object p0
.end method

.method static synthetic access$200()Ljava/util/List;
    .locals 1

    .line 46
    invoke-static {}, Lcom/oneplus/settings/OPGestureSettings;->getNonVisibleKeys()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getConfig()V
    .locals 4

    .line 486
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_acc_blackscreen_gestrue_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mBlackSettingValues:I

    .line 488
    invoke-static {v0, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->get(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/OPGestureSettings;->isFlashlightEnable:I

    .line 489
    iget v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mBlackSettingValues:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->get(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/OPGestureSettings;->isMusicPlayEnable:I

    .line 490
    iget v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mBlackSettingValues:I

    const/4 v3, 0x2

    invoke-static {v0, v3}, Lcom/oneplus/settings/gestures/OPGestureUtils;->get(II)I

    .line 491
    iget v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mBlackSettingValues:I

    const/4 v3, 0x3

    invoke-static {v0, v3}, Lcom/oneplus/settings/gestures/OPGestureUtils;->get(II)I

    .line 492
    iget v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mBlackSettingValues:I

    const/4 v3, 0x4

    invoke-static {v0, v3}, Lcom/oneplus/settings/gestures/OPGestureUtils;->get(II)I

    .line 493
    iget v0, p0, Lcom/oneplus/settings/OPGestureSettings;->isMusicPlayEnable:I

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    iput v2, p0, Lcom/oneplus/settings/OPGestureSettings;->isMusicControlEnable:I

    .line 494
    iget v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mBlackSettingValues:I

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->get(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/OPGestureSettings;->isStartUpCameraEnable:I

    .line 495
    iget v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mBlackSettingValues:I

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->get(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/OPGestureSettings;->isDoubleClickEnable:I

    return-void
.end method

.method private static getNonVisibleKeys()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 589
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "double_click_light_screen_key"

    .line 590
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "music_control_key"

    .line 591
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "rotation_silent_enable"

    .line 592
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "three_screenshots_enable"

    .line 593
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "anti_misoperation_of_the_screen_touch_enable"

    .line 594
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "fingerprint_gesture_control"

    .line 595
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private initBlackScreenView()V
    .locals 4

    const-string v0, "motion_sensor__control"

    .line 257
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    const-string v0, "gesture_to_answer_call"

    .line 258
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    const-string v1, "gesture_to_control_calls"

    .line 259
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 260
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->supportGestureAudioRoute()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 261
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportGoogleCommSuit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_1
    const-string v0, "quick_startup"

    .line 264
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    const-string v0, "music_control"

    .line 265
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    const-string v0, "black_screen_gestures"

    .line 266
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mBlackScreenPrefererce:Landroidx/preference/PreferenceCategory;

    const-string v0, "draw_o_start_camera_key"

    .line 268
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mCameraPerference:Landroidx/preference/SwitchPreference;

    .line 269
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 270
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportGesture20(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 271
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mBlackScreenPrefererce:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/OPGestureSettings;->mCameraPerference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2
    const-string v0, "double_click_light_screen_key"

    .line 274
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mDoubleLightScreenPreference:Landroidx/preference/SwitchPreference;

    .line 275
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "music_control_key"

    .line 289
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mMusicControlPreference:Landroidx/preference/SwitchPreference;

    .line 290
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "open_light_device_key"

    .line 292
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mFlashLightPreference:Landroidx/preference/SwitchPreference;

    .line 293
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 294
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportGesture20(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 295
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mBlackScreenPrefererce:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/OPGestureSettings;->mFlashLightPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 301
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/settings/OPGestureSettings;->getConfig()V

    .line 302
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportGesture20(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_5

    .line 303
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mCameraPerference:Landroidx/preference/SwitchPreference;

    iget v3, p0, Lcom/oneplus/settings/OPGestureSettings;->isStartUpCameraEnable:I

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_1

    :cond_4
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 306
    :cond_5
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mDoubleLightScreenPreference:Landroidx/preference/SwitchPreference;

    iget v3, p0, Lcom/oneplus/settings/OPGestureSettings;->isDoubleClickEnable:I

    if-nez v3, :cond_6

    move v3, v1

    goto :goto_2

    :cond_6
    move v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 316
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mMusicControlPreference:Landroidx/preference/SwitchPreference;

    iget v3, p0, Lcom/oneplus/settings/OPGestureSettings;->isMusicControlEnable:I

    if-nez v3, :cond_7

    move v3, v1

    goto :goto_3

    :cond_7
    move v3, v2

    :goto_3
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 317
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportGesture20(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 318
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mFlashLightPreference:Landroidx/preference/SwitchPreference;

    iget p0, p0, Lcom/oneplus/settings/OPGestureSettings;->isFlashlightEnable:I

    if-nez p0, :cond_8

    goto :goto_4

    :cond_8
    move v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_9
    return-void
.end method

.method private initFingerprintGesture()V
    .locals 1

    const-string v0, "fingerprint_gesture_control"

    .line 200
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mFingerprintGestureCategory:Landroidx/preference/PreferenceCategory;

    .line 217
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/settings/OPGestureSettings;->mFingerprintGestureCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private initGestureSummary()V
    .locals 3

    .line 245
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 249
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/OPGestureSettings;->mDrawOStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

    const-string v2, "oneplus_draw_o_start_app"

    invoke-static {v0, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getGestureSummarybyGestureKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v1, p0, Lcom/oneplus/settings/OPGestureSettings;->mDrawVStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

    const-string v2, "oneplus_draw_v_start_app"

    invoke-static {v0, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getGestureSummarybyGestureKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v1, p0, Lcom/oneplus/settings/OPGestureSettings;->mDrawSStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

    const-string v2, "oneplus_draw_s_start_app"

    invoke-static {v0, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getGestureSummarybyGestureKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v1, p0, Lcom/oneplus/settings/OPGestureSettings;->mDrawMStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

    const-string v2, "oneplus_draw_m_start_app"

    invoke-static {v0, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getGestureSummarybyGestureKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 253
    iget-object p0, p0, Lcom/oneplus/settings/OPGestureSettings;->mDrawWStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

    const-string v1, "oneplus_draw_w_start_app"

    invoke-static {v0, v1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getGestureSummarybyGestureKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initGestureViews()V
    .locals 2

    const-string v0, "oneplus_draw_o_start_app"

    .line 230
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPGesturePreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mDrawOStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

    const-string v0, "oneplus_draw_v_start_app"

    .line 231
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPGesturePreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mDrawVStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

    const-string v0, "oneplus_draw_s_start_app"

    .line 232
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPGesturePreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mDrawSStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

    const-string v0, "oneplus_draw_m_start_app"

    .line 233
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPGesturePreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mDrawMStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

    const-string v0, "oneplus_draw_w_start_app"

    .line 234
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPGesturePreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mDrawWStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

    .line 235
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportGesture20(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mBlackScreenPrefererce:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/OPGestureSettings;->mDrawOStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 237
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mBlackScreenPrefererce:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/OPGestureSettings;->mDrawVStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 238
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mBlackScreenPrefererce:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/OPGestureSettings;->mDrawSStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 239
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mBlackScreenPrefererce:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/OPGestureSettings;->mDrawMStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 240
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mBlackScreenPrefererce:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/oneplus/settings/OPGestureSettings;->mDrawWStartAppPreference:Lcom/oneplus/settings/ui/OPGesturePreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private initSensorView()V
    .locals 5

    .line 160
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->root:Landroidx/preference/PreferenceScreen;

    .line 162
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oem.threeScreenshot.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/settings/OPGestureSettings;->isSupportThreeScrrenShot:Z

    const-string v0, "three_screenshots_enable"

    .line 164
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mThreeSwipeScreenShot:Landroidx/preference/SwitchPreference;

    .line 166
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "one_hand_mode"

    .line 168
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/MasterSwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mOneHandedMode:Lcom/android/settings/widget/MasterSwitchPreference;

    .line 169
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "OP_FEATURE_ONE_HAND_MODE"

    .line 170
    invoke-static {v0}, Lcom/oneplus/common/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 171
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isBeta()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mOneHandedMode:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1
    const-string v0, "rotation_silent_enable"

    .line 176
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mRotationSilent:Landroidx/preference/SwitchPreference;

    .line 177
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 179
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "oem_acc_sensor_three_finger"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 184
    iget-object v2, p0, Lcom/oneplus/settings/OPGestureSettings;->mThreeSwipeScreenShot:Landroidx/preference/SwitchPreference;

    const/4 v3, 0x1

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    invoke-virtual {v2, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 186
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mRotationSilent:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "oem_acc_sensor_rotate_silent"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_3

    move v3, v1

    :cond_3
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 188
    iget-boolean v0, p0, Lcom/oneplus/settings/OPGestureSettings;->isSupportThreeScrrenShot:Z

    if-nez v0, :cond_4

    .line 190
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->root:Landroidx/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/oneplus/settings/OPGestureSettings;->mThreeSwipeScreenShot:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 194
    :cond_4
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportGoogleCommSuit()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 195
    iget-object p0, p0, Lcom/oneplus/settings/OPGestureSettings;->mRotationSilent:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_5
    return-void
.end method

.method private toggleMusicController(Z)V
    .locals 4

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    .line 456
    iget-object p1, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {p1, v3}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set1(Landroid/content/Context;I)I

    .line 457
    iget-object p1, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set1(Landroid/content/Context;I)I

    .line 458
    iget-object p1, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set1(Landroid/content/Context;I)I

    .line 459
    iget-object p0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set1(Landroid/content/Context;I)I

    goto :goto_0

    .line 461
    :cond_0
    iget-object p1, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {p1, v3}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set0(Landroid/content/Context;I)I

    .line 462
    iget-object p1, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set0(Landroid/content/Context;I)I

    .line 463
    iget-object p1, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set0(Landroid/content/Context;I)I

    .line 464
    iget-object p0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set0(Landroid/content/Context;I)I

    :goto_0
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

    .line 147
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "user"

    .line 148
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/oneplus/settings/OPGestureSettings;->mUm:Landroid/os/UserManager;

    .line 149
    sget p1, Lcom/android/settings/R$xml;->op_gesture_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 150
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    .line 151
    invoke-direct {p0}, Lcom/oneplus/settings/OPGestureSettings;->initFingerprintGesture()V

    .line 152
    invoke-direct {p0}, Lcom/oneplus/settings/OPGestureSettings;->initBlackScreenView()V

    .line 153
    invoke-direct {p0}, Lcom/oneplus/settings/OPGestureSettings;->initGestureViews()V

    .line 154
    invoke-direct {p0}, Lcom/oneplus/settings/OPGestureSettings;->initSensorView()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 337
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    .line 338
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 472
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 473
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "op_fingerprint_gesture_swipe_down_up"

    .line 474
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "system_navigation_keys_enabled"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    const-string v0, "op_fingerprint_long_press_camera_shot"

    .line 476
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 477
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const-string v0, "one_hand_mode"

    .line 478
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 479
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, -0x2

    const-string v0, "op_one_hand_mode_setting"

    invoke-static {p0, v0, p2, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 5

    .line 358
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "draw_o_start_camera_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 359
    iget-object p1, p0, Lcom/oneplus/settings/OPGestureSettings;->mCameraPerference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    const/4 v0, 0x6

    if-eqz p1, :cond_0

    .line 360
    iget-object p0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set1(Landroid/content/Context;I)I

    goto :goto_0

    .line 362
    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set0(Landroid/content/Context;I)I

    :goto_0
    return v1

    .line 366
    :cond_1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "double_click_light_screen_key"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 367
    iget-object p1, p0, Lcom/oneplus/settings/OPGestureSettings;->mDoubleLightScreenPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    const/4 v0, 0x7

    if-eqz p1, :cond_3

    .line 368
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportTapCoexist()Z

    move-result p1

    if-nez p1, :cond_2

    .line 369
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v3, "oem_acc_blackscreen_gestrue_enable"

    invoke-static {p1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/16 v3, 0xb

    invoke-static {p1, v3}, Lcom/oneplus/settings/gestures/OPGestureUtils;->get(II)I

    move-result p1

    if-ne p1, v1, :cond_2

    .line 371
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v4, Lcom/android/settings/R$string;->oneplus_security_settings_fingerprint_toggle_two_toast_1:I

    invoke-static {p1, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 372
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set0(Landroid/content/Context;I)I

    const-string p1, "tap_screen_show"

    .line 373
    invoke-static {p1, v2}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    .line 376
    :cond_2
    iget-object p0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set1(Landroid/content/Context;I)I

    goto :goto_1

    .line 378
    :cond_3
    iget-object p0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set0(Landroid/content/Context;I)I

    :goto_1
    return v1

    .line 382
    :cond_4
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "music_control_key"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 383
    iget-object p1, p0, Lcom/oneplus/settings/OPGestureSettings;->mMusicControlPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPGestureSettings;->toggleMusicController(Z)V

    return v1

    .line 386
    :cond_5
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "music_control_next_key"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 388
    iget-object p1, p0, Lcom/oneplus/settings/OPGestureSettings;->mMusicNextPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    const/4 v0, 0x3

    if-eqz p1, :cond_6

    .line 389
    iget-object p0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set1(Landroid/content/Context;I)I

    goto :goto_2

    .line 391
    :cond_6
    iget-object p0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set0(Landroid/content/Context;I)I

    :goto_2
    return v1

    .line 396
    :cond_7
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "music_control_prev_key"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 398
    iget-object p1, p0, Lcom/oneplus/settings/OPGestureSettings;->mMusicPrevPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    const/4 v0, 0x4

    if-eqz p1, :cond_8

    .line 399
    iget-object p0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set1(Landroid/content/Context;I)I

    goto :goto_3

    .line 401
    :cond_8
    iget-object p0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set0(Landroid/content/Context;I)I

    :goto_3
    return v1

    .line 406
    :cond_9
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "open_light_device_key"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 407
    iget-object p1, p0, Lcom/oneplus/settings/OPGestureSettings;->mFlashLightPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 408
    iget-object p0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {p0, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set1(Landroid/content/Context;I)I

    goto :goto_4

    .line 410
    :cond_a
    iget-object p0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {p0, v2}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set0(Landroid/content/Context;I)I

    :goto_4
    return v1

    .line 414
    :cond_b
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "music_control_start_key"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 416
    iget-object p1, p0, Lcom/oneplus/settings/OPGestureSettings;->mMusicStartPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 417
    iget-object p0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {p0, v1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set1(Landroid/content/Context;I)I

    goto :goto_5

    .line 419
    :cond_c
    iget-object p0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {p0, v1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set0(Landroid/content/Context;I)I

    :goto_5
    return v1

    .line 422
    :cond_d
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "music_control_pause_key"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 424
    iget-object p1, p0, Lcom/oneplus/settings/OPGestureSettings;->mMusicPausePreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_e

    .line 425
    iget-object p0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set1(Landroid/content/Context;I)I

    goto :goto_6

    .line 427
    :cond_e
    iget-object p0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set0(Landroid/content/Context;I)I

    :goto_6
    return v1

    .line 432
    :cond_f
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "three_screenshots_enable"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 433
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mThreeSwipeScreenShot:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    const-string v2, "oem_acc_sensor_three_finger"

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 435
    iget-object p1, p0, Lcom/oneplus/settings/OPGestureSettings;->mThreeSwipeScreenShot:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    const-string v0, "op_three_key_screenshots_enabled"

    invoke-static {v0, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    .line 438
    iget-object p1, p0, Lcom/oneplus/settings/OPGestureSettings;->mUm:Landroid/os/UserManager;

    if-eqz p1, :cond_10

    const/16 v0, 0x3e7

    invoke-virtual {p1, v0}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 439
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/OPGestureSettings;->mThreeSwipeScreenShot:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    invoke-static {p1, v2, p0, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_10
    return v1

    .line 443
    :cond_11
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "rotation_silent_enable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 445
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/settings/OPGestureSettings;->mRotationSilent:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    const-string v0, "oem_acc_sensor_rotate_silent"

    invoke-static {p1, v0, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v1

    :cond_12
    return v2
.end method

.method public onResume()V
    .locals 7

    .line 326
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 327
    invoke-direct {p0}, Lcom/oneplus/settings/OPGestureSettings;->initGestureSummary()V

    .line 328
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_one_hand_mode_setting"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 329
    iget-object v1, p0, Lcom/oneplus/settings/OPGestureSettings;->mOneHandedMode:Lcom/android/settings/widget/MasterSwitchPreference;

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_acc_sensor_rotate_silent"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/settings/OPGestureSettings;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v6, -0x1

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 332
    iget-object v0, p0, Lcom/oneplus/settings/OPGestureSettings;->mRotationSilent:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
