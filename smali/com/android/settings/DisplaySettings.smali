.class public Lcom/android/settings/DisplaySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DisplaySettings.java"

# interfaces
.implements Lcom/oneplus/settings/ui/ColorPickerPreference$CustomColorClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DisplaySettings$BrightnessObserver;,
        Lcom/android/settings/DisplaySettings$DefaultHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static isSupportReadingMode:Z


# instance fields
.field private mAccessibilityDisplayDaltonizerAndInversionContentObserver:Landroid/database/ContentObserver;

.field private mAdvancedSettingsPreference:Landroidx/preference/Preference;

.field private mAnimationDuration:J

.field private mAutoBrightnessPreference:Landroidx/preference/SwitchPreference;

.field private mAutomatic:Z

.field private mAutomaticAvailable:Z

.field private mBlackColors:[Ljava/lang/String;

.field private mBrightPreference:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;

.field private mBrightnessObserver:Lcom/android/settings/DisplaySettings$BrightnessObserver;

.field private mCameraDoubleTapPowerGesturePreference:Landroidx/preference/SwitchPreference;

.field private mCameraGesturePreference:Landroidx/preference/SwitchPreference;

.field private mContext:Landroid/content/Context;

.field private mCurrentTempColor:Ljava/lang/String;

.field private mDarkUiModePreference:Landroidx/preference/Preference;

.field private mDefaultBacklight:F

.field private mDefaultBacklightForVr:F

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDoze801Preference:Landroidx/preference/Preference;

.field private mDozePreference:Landroidx/preference/Preference;

.field private mFontSizePref:Landroidx/preference/Preference;

.field private mGraphicsDynamicOptimization:Landroidx/preference/Preference;

.field private mGraphicsEnhancementEngine:Landroidx/preference/Preference;

.field private mHandler:Landroid/os/Handler;

.field private mIsSupportIrisSmooth:Z

.field private mLastSliderChangeTimeMillis:J

.field private mLedSettingsPreference:Landroidx/preference/Preference;

.field private mLockWallPaperPreference:Landroidx/preference/Preference;

.field private mMaximumBacklight:F

.field private mMaximumBacklightForVr:F

.field private mMinimumBacklight:F

.field private mMinimumBacklightForVr:F

.field private mMotionGraphicsCompensation:Landroidx/preference/Preference;

.field private mNetworkNameDisplayedPreference:Landroidx/preference/SwitchPreference;

.field private mNightModePreference:Landroidx/preference/Preference;

.field private mNotifyLightEnable:I

.field private mNotifyLightPreference:Landroidx/preference/SwitchPreference;

.field private mReadingModePreference:Landroidx/preference/Preference;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mScreenBrightnessRootPreference:Landroidx/preference/PreferenceCategory;

.field private mScreenSaverPreference:Landroidx/preference/Preference;

.field private mScreenTimeoutPreference:Lcom/android/settings/display/TimeoutListPreference;

.field private mSliderAnimator:Landroid/animation/ValueAnimator;

.field private mTapToWakePreference:Landroidx/preference/SwitchPreference;

.field private mToggleLockScreenRotationPreference:Landroidx/preference/SwitchPreference;

.field private mTrueColorMode:Landroidx/preference/SwitchPreference;

.field private mVideoEnhancerPreference:Landroidx/preference/Preference;

.field private mWhiteColors:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 122
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/settings/DisplaySettings;->DEBUG:Z

    .line 1651
    new-instance v0, Lcom/android/settings/DisplaySettings$5;

    invoke-direct {v0}, Lcom/android/settings/DisplaySettings$5;-><init>()V

    sput-object v0, Lcom/android/settings/DisplaySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 119
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 162
    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mNetworkNameDisplayedPreference:Landroidx/preference/SwitchPreference;

    const-wide/16 v0, -0x1

    .line 275
    iput-wide v0, p0, Lcom/android/settings/DisplaySettings;->mLastSliderChangeTimeMillis:J

    const-string v0, "OP_FEATURE_PIXELWORKS_BRIGHTNESS_SMOOTH"

    .line 279
    invoke-static {v0}, Lcom/oneplus/common/ReflectUtil;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/DisplaySettings;->mIsSupportIrisSmooth:Z

    const-wide/16 v0, 0x0

    .line 284
    iput-wide v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationDuration:J

    .line 810
    new-instance v0, Lcom/android/settings/DisplaySettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DisplaySettings$2;-><init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mAccessibilityDisplayDaltonizerAndInversionContentObserver:Landroid/database/ContentObserver;

    .line 1411
    new-instance v0, Lcom/android/settings/DisplaySettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/DisplaySettings$4;-><init>(Lcom/android/settings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DisplaySettings;)V
    .locals 0

    .line 119
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->setAccentColor()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/DisplaySettings;)Landroidx/preference/Preference;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/android/settings/DisplaySettings;->mNightModePreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method static synthetic access$1000(Landroid/content/res/Resources;)Z
    .locals 0

    .line 119
    invoke-static {p0}, Lcom/android/settings/DisplaySettings;->isAutomaticBrightnessAvailable(Landroid/content/res/Resources;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Landroid/content/Context;)Z
    .locals 0

    .line 119
    invoke-static {p0}, Lcom/android/settings/DisplaySettings;->isDozeAvailable(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Landroid/content/res/Resources;)Z
    .locals 0

    .line 119
    invoke-static {p0}, Lcom/android/settings/DisplaySettings;->isTapToWakeAvailable(Landroid/content/res/Resources;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Landroid/content/res/Resources;)Z
    .locals 0

    .line 119
    invoke-static {p0}, Lcom/android/settings/DisplaySettings;->isCameraGestureAvailable(Landroid/content/res/Resources;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Landroid/content/res/Resources;)Z
    .locals 0

    .line 119
    invoke-static {p0}, Lcom/android/settings/DisplaySettings;->isCameraDoubleTapPowerGestureAvailable(Landroid/content/res/Resources;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Landroid/content/Context;)Z
    .locals 0

    .line 119
    invoke-static {p0}, Lcom/android/settings/DisplaySettings;->isVrDisplayModeAvailable(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600()Z
    .locals 1

    .line 119
    sget-boolean v0, Lcom/android/settings/DisplaySettings;->isSupportReadingMode:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/DisplaySettings;)Landroidx/preference/Preference;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/android/settings/DisplaySettings;->mReadingModePreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/DisplaySettings;)Landroid/content/Context;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/DisplaySettings;)V
    .locals 0

    .line 119
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateLockScreenRotation()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/DisplaySettings;)V
    .locals 0

    .line 119
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateMode()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/settings/DisplaySettings;J)J
    .locals 0

    .line 119
    iput-wide p1, p0, Lcom/android/settings/DisplaySettings;->mAnimationDuration:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/android/settings/DisplaySettings;)V
    .locals 0

    .line 119
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateSlider()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/DisplaySettings;)Lcom/android/settings/display/TimeoutListPreference;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/display/TimeoutListPreference;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/settings/DisplaySettings;J)V
    .locals 0

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/android/settings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    return-void
.end method

.method private disableEntryForAccessibilityDisplayDaltonizerAndInversion()V
    .locals 7

    .line 797
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_daltonizer_enabled"

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 798
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_display_inversion_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 799
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_display_grayscale_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    if-nez v0, :cond_3

    if-nez v3, :cond_3

    if-eqz v4, :cond_7

    .line 801
    :cond_3
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mNightModePreference:Landroidx/preference/Preference;

    if-eqz v5, :cond_5

    if-nez v0, :cond_4

    if-nez v3, :cond_4

    if-nez v4, :cond_4

    move v6, v2

    goto :goto_3

    :cond_4
    move v6, v1

    .line 802
    :goto_3
    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 804
    :cond_5
    iget-object p0, p0, Lcom/android/settings/DisplaySettings;->mReadingModePreference:Landroidx/preference/Preference;

    if-eqz p0, :cond_7

    if-nez v0, :cond_6

    if-nez v3, :cond_6

    if-nez v4, :cond_6

    move v1, v2

    .line 805
    :cond_6
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_7
    return-void
.end method

.method private disablePreferenceIfManaged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1578
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 1580
    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 1581
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    .line 1582
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 1581
    invoke-static {p0, p2, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 1583
    invoke-virtual {p1, p0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_0

    .line 1585
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/settingslib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private handleLockScreenRotationPreferenceClick()V
    .locals 1

    .line 1428
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    .line 1430
    iget-object p0, p0, Lcom/android/settings/DisplaySettings;->mToggleLockScreenRotationPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {v0, p0}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    return-void
.end method

.method private initAccentColors(Landroid/content/res/Resources;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0xc

    new-array v3, v2, [Ljava/lang/String;

    .line 1281
    sget v4, Lcom/android/settings/R$color;->op_primary_default_light:I

    .line 1282
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget v4, Lcom/android/settings/R$color;->op_primary_golden_light:I

    .line 1283
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget v4, Lcom/android/settings/R$color;->op_primary_lemon_yellow_light:I

    .line 1284
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    sget v4, Lcom/android/settings/R$color;->op_primary_grass_green_light:I

    .line 1285
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x3

    aput-object v4, v3, v8

    sget v4, Lcom/android/settings/R$color;->op_primary_charm_purple_light:I

    .line 1286
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x4

    aput-object v4, v3, v9

    sget v4, Lcom/android/settings/R$color;->op_primary_sky_blue_light:I

    .line 1287
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x5

    aput-object v4, v3, v10

    sget v4, Lcom/android/settings/R$color;->op_primary_vigour_red_light:I

    .line 1288
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x6

    aput-object v4, v3, v11

    sget v4, Lcom/android/settings/R$color;->op_primary_fashion_pink_light:I

    .line 1289
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x7

    aput-object v4, v3, v12

    sget v4, Lcom/android/settings/R$color;->op_primary_red_light:I

    .line 1290
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v13, 0x8

    aput-object v4, v3, v13

    sget v4, Lcom/android/settings/R$color;->op_primary_blue_light:I

    .line 1291
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v14, 0x9

    aput-object v4, v3, v14

    sget v4, Lcom/android/settings/R$color;->op_primary_green_light:I

    .line 1292
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v15, 0xa

    aput-object v4, v3, v15

    sget v4, Lcom/android/settings/R$color;->op_primary_green_custom:I

    .line 1293
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v16, 0xb

    aput-object v4, v3, v16

    iput-object v3, v0, Lcom/android/settings/DisplaySettings;->mWhiteColors:[Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/String;

    .line 1295
    sget v3, Lcom/android/settings/R$color;->op_primary_default_dark:I

    .line 1296
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    sget v3, Lcom/android/settings/R$color;->op_primary_golden_dark:I

    .line 1297
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    sget v3, Lcom/android/settings/R$color;->op_primary_lemon_yellow_dark:I

    .line 1298
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    sget v3, Lcom/android/settings/R$color;->op_primary_grass_green_dark:I

    .line 1299
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    sget v3, Lcom/android/settings/R$color;->op_primary_charm_purple_dark:I

    .line 1300
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    sget v3, Lcom/android/settings/R$color;->op_primary_sky_blue_dark:I

    .line 1301
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    sget v3, Lcom/android/settings/R$color;->op_primary_vigour_red_dark:I

    .line 1302
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v11

    sget v3, Lcom/android/settings/R$color;->op_primary_fashion_pink_dark:I

    .line 1303
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v12

    sget v3, Lcom/android/settings/R$color;->op_primary_red_dark:I

    .line 1304
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v13

    sget v3, Lcom/android/settings/R$color;->op_primary_blue_dark:I

    .line 1305
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v14

    sget v3, Lcom/android/settings/R$color;->op_primary_green_dark:I

    .line 1306
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v15

    sget v3, Lcom/android/settings/R$color;->op_primary_green_custom:I

    .line 1307
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v16

    iput-object v2, v0, Lcom/android/settings/DisplaySettings;->mBlackColors:[Ljava/lang/String;

    .line 1309
    iget-object v1, v0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1311
    :cond_0
    iget-object v0, v0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    :goto_0
    return-void
.end method

.method private static isAutomaticBrightnessAvailable(Landroid/content/res/Resources;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static isCameraDoubleTapPowerGestureAvailable(Landroid/content/res/Resources;)Z
    .locals 1

    const v0, 0x111003c

    .line 694
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method private static isCameraGestureAvailable(Landroid/content/res/Resources;)Z
    .locals 3

    const v0, 0x10e002c

    .line 687
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq p0, v2, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-eqz p0, :cond_1

    const-string p0, "gesture.disable_camera_launch"

    .line 690
    invoke-static {p0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0
.end method

.method private static isDozeAvailable(Landroid/content/Context;)Z
    .locals 2

    .line 670
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "debug.doze.component"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 671
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 672
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1040219

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 675
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static isTapToWakeAvailable(Landroid/content/res/Resources;)Z
    .locals 1

    const v0, 0x11100dd

    .line 679
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method private static isVrDisplayModeAvailable(Landroid/content/Context;)Z
    .locals 0

    .line 699
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$updateSlider$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1469
    iget-object p1, p0, Lcom/android/settings/DisplaySettings;->mBrightPreference:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;

    iget-object p0, p0, Lcom/android/settings/DisplaySettings;->mSliderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->setBrightness(I)V

    return-void
.end method

.method private setAccentColor()V
    .locals 3

    .line 1389
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1390
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_white_mode_accent_color"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1391
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1392
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_black_mode_accent_color"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1394
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$color;->op_primary_default_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1396
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oneplus_accent_color"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1397
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "#"

    const-string v2, ""

    .line 1398
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1400
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->setCustomAccentColor()V

    const-string p0, "persist.sys.theme.accentcolor"

    .line 1401
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setBrightness(I)V
    .locals 2

    .line 1078
    iget v0, p0, Lcom/android/settings/DisplaySettings;->mMinimumBacklight:F

    iget v1, p0, Lcom/android/settings/DisplaySettings;->mMaximumBacklight:F

    invoke-static {p1, v0, v1}, Lcom/android/settingslib/display/BrightnessUtils;->convertGammaToLinearFloat(IFF)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Landroid/util/MathUtils;->min(FF)F

    move-result p1

    .line 1081
    iget-object p0, p0, Lcom/android/settings/DisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->setTemporaryBrightness(F)V

    return-void
.end method

.method private setCustomAccentColor()V
    .locals 4

    .line 1375
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_white_custom_accent_color"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1376
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "#FF0000"

    if-eqz v1, :cond_0

    move-object v0, v2

    .line 1379
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mWhiteColors:[Ljava/lang/String;

    const/16 v3, 0xb

    aput-object v0, v1, v3

    .line 1380
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_black_custom_accent_color"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1381
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v0

    .line 1384
    :goto_0
    iget-object p0, p0, Lcom/android/settings/DisplaySettings;->mBlackColors:[Ljava/lang/String;

    aput-object v2, p0, v3

    return-void
.end method

.method private updateFontSizeSummary()V
    .locals 4

    .line 933
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Landroidx/preference/Preference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 934
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "font_scale"

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    .line 936
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 937
    sget v2, Lcom/android/settings/R$array;->entries_font_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 938
    sget v3, Lcom/android/settings/R$array;->entryvalues_font_size:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 939
    invoke-static {v1, v0}, Lcom/android/settings/display/ToggleFontSizePreferenceFragment;->fontSizeValueToIndex(F[Ljava/lang/String;)I

    move-result v0

    .line 941
    iget-object p0, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Landroidx/preference/Preference;

    aget-object v0, v2, v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateLockScreenRotation()V
    .locals 1

    .line 1421
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 1423
    iget-object p0, p0, Lcom/android/settings/DisplaySettings;->mToggleLockScreenRotationPreference:Landroidx/preference/SwitchPreference;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method private updateMode()V
    .locals 4

    .line 1494
    iget-boolean v0, p0, Lcom/android/settings/DisplaySettings;->mAutomaticAvailable:Z

    if-eqz v0, :cond_1

    .line 1496
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "screen_brightness_mode"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    .line 1498
    :cond_0
    iput-boolean v3, p0, Lcom/android/settings/DisplaySettings;->mAutomatic:Z

    .line 1499
    iget-object p0, p0, Lcom/android/settings/DisplaySettings;->mAutoBrightnessPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method private updateNotifyLightStatus(I)V
    .locals 2

    .line 1435
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_acc_breath_light"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1436
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_light_pulse"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1437
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_led_low_power"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1438
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "battery_led_charging"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private updateScreenSaverSummary()V
    .locals 1

    .line 926
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    .line 928
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/dream/DreamSettings;->getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 927
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateSlider()V
    .locals 8

    .line 1443
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSliderAnimator:Landroid/animation/ValueAnimator;

    const-string v1, "DisplaySettings"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "animateSliderTo: cancel anim."

    .line 1444
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSliderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1451
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->isInVrMode()Z

    move-result v0

    const/4 v2, -0x2

    if-eqz v0, :cond_1

    .line 1452
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v3, p0, Lcom/android/settings/DisplaySettings;->mDefaultBacklightForVr:F

    const-string v4, "screen_brightness_for_vr_float"

    invoke-static {v0, v4, v3, v2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 1455
    iget v2, p0, Lcom/android/settings/DisplaySettings;->mMinimumBacklightForVr:F

    iget v3, p0, Lcom/android/settings/DisplaySettings;->mMaximumBacklightForVr:F

    invoke-static {v0, v2, v3}, Lcom/android/settingslib/display/BrightnessUtils;->convertLinearToGammaFloat(FFF)I

    move-result v0

    goto :goto_0

    .line 1457
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v3, p0, Lcom/android/settings/DisplaySettings;->mDefaultBacklight:F

    const-string v4, "screen_brightness_float"

    invoke-static {v0, v4, v3, v2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 1459
    iget v2, p0, Lcom/android/settings/DisplaySettings;->mMinimumBacklight:F

    iget v3, p0, Lcom/android/settings/DisplaySettings;->mMaximumBacklight:F

    invoke-static {v0, v2, v3}, Lcom/android/settingslib/display/BrightnessUtils;->convertLinearToGammaFloat(FFF)I

    move-result v0

    .line 1462
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_5

    .line 1465
    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v2, p0, Lcom/android/settings/DisplaySettings;->mSliderAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 1466
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mBrightPreference:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;

    invoke-virtual {v5}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->getBrightness()I

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x1

    aput v0, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 1467
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "animateSliderTo: animating from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mBrightPreference:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;

    invoke-virtual {v3}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->getBrightness()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mSliderAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/settings/-$$Lambda$DisplaySettings$qOh46548JQf3cUmLta2I9UEyRo4;

    invoke-direct {v3, p0}, Lcom/android/settings/-$$Lambda$DisplaySettings$qOh46548JQf3cUmLta2I9UEyRo4;-><init>(Lcom/android/settings/DisplaySettings;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1471
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mBrightPreference:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;

    .line 1472
    invoke-virtual {v2}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->getBrightness()I

    move-result v2

    sub-int/2addr v2, v0

    .line 1471
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0xbb8

    sget v2, Lcom/android/settingslib/display/BrightnessUtils;->GAMMA_SPACE_MAX:I

    div-int/2addr v0, v2

    int-to-long v2, v0

    .line 1476
    iget-boolean v0, p0, Lcom/android/settings/DisplaySettings;->mIsSupportIrisSmooth:Z

    if-eqz v0, :cond_3

    const-wide/16 v4, 0x3e8

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    goto :goto_1

    :cond_2
    move-wide v2, v4

    .line 1479
    :cond_3
    :goto_1
    iget-wide v4, p0, Lcom/android/settings/DisplaySettings;->mAnimationDuration:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_4

    move-wide v2, v4

    .line 1483
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AMD:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSliderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1486
    iget-object p0, p0, Lcom/android/settings/DisplaySettings;->mSliderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    .line 1488
    :cond_5
    iget-object p0, p0, Lcom/android/settings/DisplaySettings;->mBrightPreference:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->setBrightness(I)V

    :goto_2
    return-void
.end method

.method private updateState()V
    .locals 4

    .line 865
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateFontSizeSummary()V

    .line 866
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateScreenSaverSummary()V

    .line 869
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_acc_breath_light"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/DisplaySettings;->mNotifyLightEnable:I

    .line 870
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mLedSettingsPreference:Landroidx/preference/Preference;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v0, v3, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 871
    :goto_0
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 876
    :cond_1
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAutoBrightnessPreference:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_3

    .line 877
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 879
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAutoBrightnessPreference:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 882
    :cond_3
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mNetworkNameDisplayedPreference:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_5

    .line 883
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_network_name_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 885
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mNetworkNameDisplayedPreference:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 889
    :cond_5
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mTapToWakePreference:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_7

    .line 890
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "double_tap_to_wake"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 891
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mTapToWakePreference:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_6

    move v0, v3

    goto :goto_3

    :cond_6
    move v0, v2

    :goto_3
    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 895
    :cond_7
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mCameraGesturePreference:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_9

    .line 896
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "camera_gesture_disabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 897
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mCameraGesturePreference:Landroidx/preference/SwitchPreference;

    if-nez v0, :cond_8

    move v0, v3

    goto :goto_4

    :cond_8
    move v0, v2

    :goto_4
    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 901
    :cond_9
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_b

    .line 903
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "camera_double_tap_power_gesture_disabled"

    .line 902
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 904
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroidx/preference/SwitchPreference;

    if-nez v0, :cond_a

    move v0, v3

    goto :goto_5

    :cond_a
    move v0, v2

    :goto_5
    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 907
    :cond_b
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mVideoEnhancerPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_d

    const-string v0, "persist.sys.oem.vendor.media.vpp.enable"

    .line 908
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 909
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mVideoEnhancerPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_c

    sget v0, Lcom/android/settings/R$string;->switch_on_text:I

    goto :goto_6

    :cond_c
    sget v0, Lcom/android/settings/R$string;->switch_off_text:I

    :goto_6
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 914
    :cond_d
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mGraphicsDynamicOptimization:Landroidx/preference/Preference;

    if-eqz v0, :cond_f

    .line 915
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_iris_video_sdr2hdr_status"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 916
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mGraphicsDynamicOptimization:Landroidx/preference/Preference;

    if-ne v0, v3, :cond_e

    sget v0, Lcom/android/settings/R$string;->switch_on_text:I

    goto :goto_7

    :cond_e
    sget v0, Lcom/android/settings/R$string;->switch_off_text:I

    :goto_7
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 918
    :cond_f
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mMotionGraphicsCompensation:Landroidx/preference/Preference;

    if-eqz v0, :cond_11

    .line 919
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_iris_video_memc_status"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 920
    iget-object p0, p0, Lcom/android/settings/DisplaySettings;->mMotionGraphicsCompensation:Landroidx/preference/Preference;

    if-ne v0, v3, :cond_10

    sget v0, Lcom/android/settings/R$string;->switch_on_text:I

    goto :goto_8

    :cond_10
    sget v0, Lcom/android/settings/R$string;->switch_off_text:I

    :goto_8
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_11
    return-void
.end method

.method private updateTimeoutPreferenceDescription(J)V
    .locals 8

    .line 707
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/display/TimeoutListPreference;

    .line 713
    invoke-virtual {v0}, Lcom/android/settings/RestrictedListPreference;->isDisabledByAdmin()Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_1

    .line 714
    iget-object p0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->disabled_by_policy_title:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-wide/16 v3, 0x0

    cmp-long v1, p1, v3

    if-gez v1, :cond_2

    goto :goto_1

    .line 719
    :cond_2
    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 720
    invoke-virtual {v0}, Landroidx/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v1, :cond_6

    .line 721
    array-length v4, v1

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    move v4, v2

    move v5, v4

    .line 725
    :goto_0
    array-length v6, v3

    if-ge v4, v6, :cond_5

    .line 726
    aget-object v6, v3, v4

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v6, p1, v6

    if-ltz v6, :cond_4

    move v5, v4

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 731
    :cond_5
    iget-object p0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->screen_timeout_summary:I

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    aget-object v1, v1, v5

    aput-object v1, p2, v2

    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 734
    :cond_6
    :goto_1
    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    .line 1574
    sget p0, Lcom/android/settings/R$string;->help_uri_display:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x2e

    return p0
.end method

.method isInVrMode()Z
    .locals 2

    .line 1066
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->safeGetVrManager()Landroid/service/vr/IVrManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1069
    :try_start_0
    invoke-interface {p0}, Landroid/service/vr/IVrManager;->getVrModeState()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "DisplaySettings"

    const-string v1, "Failed to check vr mode!"

    .line 1071
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$updateSlider$0$DisplaySettings(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/DisplaySettings;->lambda$updateSlider$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1212
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x64

    if-ne v0, p1, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    if-eqz p3, :cond_1

    const-string p1, "current_temp_color"

    .line 1215
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/DisplaySettings;->mCurrentTempColor:Ljava/lang/String;

    .line 1216
    iget-object p1, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result p1

    const/16 p2, 0xb

    if-eqz p1, :cond_0

    .line 1217
    iget-object p1, p0, Lcom/android/settings/DisplaySettings;->mWhiteColors:[Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/DisplaySettings;->mCurrentTempColor:Ljava/lang/String;

    aput-object p0, p1, p2

    goto :goto_0

    .line 1218
    :cond_0
    iget-object p1, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1219
    iget-object p1, p0, Lcom/android/settings/DisplaySettings;->mBlackColors:[Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/DisplaySettings;->mCurrentTempColor:Ljava/lang/String;

    aput-object p0, p1, p2

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 364
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 365
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 366
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    .line 368
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    .line 369
    new-instance v0, Lcom/android/settings/DisplaySettings$DefaultHandler;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DisplaySettings$DefaultHandler;-><init>(Lcom/android/settings/DisplaySettings;Landroid/content/Context;)V

    .line 370
    sget v0, Lcom/android/settings/R$xml;->display_settings:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 371
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 372
    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->initAccentColors(Landroid/content/res/Resources;)V

    const-string v0, "screen_brightness"

    .line 373
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenBrightnessRootPreference:Landroidx/preference/PreferenceCategory;

    const-string v0, "display_system"

    .line 374
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    const-string v0, "header_category_custom"

    .line 375
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    const-string v0, "screensaver"

    .line 377
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroidx/preference/Preference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1110067

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenSaverPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    const-string v0, "screen_timeout"

    .line 384
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/display/TimeoutListPreference;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/display/TimeoutListPreference;

    const-string v0, "font_size"

    .line 386
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Landroidx/preference/Preference;

    .line 388
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/DisplaySettings;->isAutomaticBrightnessAvailable(Landroid/content/res/Resources;)Z

    move-result v0

    const-string v2, "auto_brightness"

    if-eqz v0, :cond_1

    .line 389
    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mAutoBrightnessPreference:Landroidx/preference/SwitchPreference;

    .line 390
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 392
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mAutoBrightnessPreference:Landroidx/preference/SwitchPreference;

    .line 393
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    const-string v0, "doze"

    .line 407
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mDozePreference:Landroidx/preference/Preference;

    const-string v0, "doze_801"

    .line 408
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mDoze801Preference:Landroidx/preference/Preference;

    .line 409
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mDozePreference:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 410
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mDoze801Preference:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 411
    invoke-static {p1}, Lcom/android/settings/DisplaySettings;->isDozeAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 413
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isDreProducts()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isEucalyptusProducts()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 418
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mDoze801Preference:Landroidx/preference/Preference;

    if-eqz v0, :cond_3

    .line 419
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 421
    :cond_3
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportAlwaysOnDisplay()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mDozePreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_7

    .line 422
    sget v2, Lcom/android/settings/R$string;->oneplus_hand_up_proximity_title:I

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_2

    .line 414
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mDozePreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_7

    .line 415
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_2

    .line 427
    :cond_5
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mDoze801Preference:Landroidx/preference/Preference;

    if-eqz v0, :cond_6

    .line 428
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 430
    :cond_6
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mDozePreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_7

    .line 431
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 499
    :cond_7
    :goto_2
    invoke-static {p1}, Lcom/android/settings/DisplaySettings;->isVrDisplayModeAvailable(Landroid/content/Context;)Z

    move-result v0

    const-string/jumbo v2, "vr_display_pref"

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_8

    .line 501
    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/DropDownPreference;

    new-array v2, v3, [Ljava/lang/CharSequence;

    .line 502
    sget v5, Lcom/android/settings/R$string;->display_vr_pref_low_persistence:I

    .line 503
    invoke-virtual {p1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    sget v5, Lcom/android/settings/R$string;->display_vr_pref_off:I

    .line 504
    invoke-virtual {p1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 502
    invoke-virtual {v0, v2}, Landroidx/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    new-array v2, v3, [Ljava/lang/CharSequence;

    const-string v5, "0"

    aput-object v5, v2, v1

    const-string v5, "1"

    aput-object v5, v2, v4

    .line 506
    invoke-virtual {v0, v2}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 509
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 510
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "vr_display_mode"

    invoke-static {v5, v6, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 514
    invoke-virtual {v0, v2}, Landroidx/preference/DropDownPreference;->setValueIndex(I)V

    .line 515
    new-instance v2, Lcom/android/settings/DisplaySettings$1;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/DisplaySettings$1;-><init>(Lcom/android/settings/DisplaySettings;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_3

    .line 531
    :cond_8
    invoke-virtual {p0, v2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/DropDownPreference;

    .line 532
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 536
    :goto_3
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/settings/DisplaySettings;->mHandler:Landroid/os/Handler;

    const-string p1, "toggle_lock_screen_rotation_preference"

    .line 539
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mToggleLockScreenRotationPreference:Landroidx/preference/SwitchPreference;

    .line 540
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 541
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 544
    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "oem_acc_breath_light"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/DisplaySettings;->mNotifyLightEnable:I

    const-string p1, "notify_light_enable"

    .line 545
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/DisplaySettings;->mNotifyLightPreference:Landroidx/preference/SwitchPreference;

    .line 546
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 547
    iget-object p1, p0, Lcom/android/settings/DisplaySettings;->mNotifyLightPreference:Landroidx/preference/SwitchPreference;

    iget v0, p0, Lcom/android/settings/DisplaySettings;->mNotifyLightEnable:I

    if-nez v0, :cond_a

    move v0, v1

    goto :goto_4

    :cond_a
    move v0, v4

    :goto_4
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const-string p1, "lockguard_wallpaper_settings"

    .line 549
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/DisplaySettings;->mLockWallPaperPreference:Landroidx/preference/Preference;

    .line 550
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 551
    iget-object p1, p0, Lcom/android/settings/DisplaySettings;->mLockWallPaperPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 558
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 559
    invoke-virtual {p1, v1}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v0

    iput v0, p0, Lcom/android/settings/DisplaySettings;->mMinimumBacklight:F

    .line 560
    invoke-virtual {p1, v4}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v0

    iput v0, p0, Lcom/android/settings/DisplaySettings;->mMaximumBacklight:F

    .line 561
    invoke-virtual {p1, v3}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v0

    iput v0, p0, Lcom/android/settings/DisplaySettings;->mDefaultBacklight:F

    const/4 v0, 0x5

    .line 562
    invoke-virtual {p1, v0}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v0

    iput v0, p0, Lcom/android/settings/DisplaySettings;->mMinimumBacklightForVr:F

    const/4 v0, 0x6

    .line 563
    invoke-virtual {p1, v0}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v0

    iput v0, p0, Lcom/android/settings/DisplaySettings;->mMaximumBacklightForVr:F

    const/4 v0, 0x7

    .line 564
    invoke-virtual {p1, v0}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result p1

    iput p1, p0, Lcom/android/settings/DisplaySettings;->mDefaultBacklightForVr:F

    .line 565
    iget-object p1, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/settings/DisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 566
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1110029

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/DisplaySettings;->mAutomaticAvailable:Z

    const-string p1, "power"

    .line 567
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    .line 569
    iget-object p1, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "oem.autobrightctl.animation.support"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    const-string p1, "manual_brightness_displays"

    .line 572
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/DisplaySettings;->mBrightPreference:Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;

    .line 573
    invoke-virtual {p1, p0}, Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory;->setCallback(Lcom/oneplus/settings/ui/OPBrightnessSeekbarPreferenceCategory$OPCallbackBrightness;)V

    .line 574
    new-instance p1, Lcom/android/settings/DisplaySettings$BrightnessObserver;

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v0}, Lcom/android/settings/DisplaySettings$BrightnessObserver;-><init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/DisplaySettings;->mBrightnessObserver:Lcom/android/settings/DisplaySettings$BrightnessObserver;

    .line 575
    invoke-virtual {p1}, Lcom/android/settings/DisplaySettings$BrightnessObserver;->startObserving()V

    .line 578
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->setCustomAccentColor()V

    const-string p1, "led_settings"

    .line 579
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/DisplaySettings;->mLedSettingsPreference:Landroidx/preference/Preference;

    .line 580
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateState()V

    .line 583
    iget-object p1, p0, Lcom/android/settings/DisplaySettings;->mNotifyLightPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 585
    iget-object p1, p0, Lcom/android/settings/DisplaySettings;->mLedSettingsPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 590
    iget-object p1, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "oem.read_mode.support"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    sput-boolean p1, Lcom/android/settings/DisplaySettings;->isSupportReadingMode:Z

    const-string p1, "oneplus_night_mode"

    .line 591
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/DisplaySettings;->mNightModePreference:Landroidx/preference/Preference;

    const-string p1, "oneplus_reading_mode"

    .line 592
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/DisplaySettings;->mReadingModePreference:Landroidx/preference/Preference;

    if-eqz p1, :cond_b

    .line 593
    sget-boolean v0, Lcom/android/settings/DisplaySettings;->isSupportReadingMode:Z

    if-nez v0, :cond_b

    .line 594
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenBrightnessRootPreference:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_b
    const-string/jumbo p1, "video_enhancer"

    .line 599
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/DisplaySettings;->mVideoEnhancerPreference:Landroidx/preference/Preference;

    .line 600
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportVideoEnhancer()Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/android/settings/DisplaySettings;->mVideoEnhancerPreference:Landroidx/preference/Preference;

    if-eqz p1, :cond_c

    .line 601
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 604
    :cond_c
    iget-object p1, p0, Lcom/android/settings/DisplaySettings;->mSliderAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_d

    .line 605
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 609
    :cond_d
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    if-eqz p1, :cond_e

    const-string p1, "status_bar_custom"

    .line 610
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :cond_e
    const-string p1, "op_true_color_mode"

    .line 614
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/DisplaySettings;->mTrueColorMode:Landroidx/preference/SwitchPreference;

    .line 615
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "display_white_balance_enabled"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 616
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mTrueColorMode:Landroidx/preference/SwitchPreference;

    if-ne p1, v4, :cond_f

    move p1, v4

    goto :goto_5

    :cond_f
    move p1, v1

    :goto_5
    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 617
    iget-object p1, p0, Lcom/android/settings/DisplaySettings;->mTrueColorMode:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 618
    iget-object p1, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->isSupportTrueColorMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 619
    iget-object p1, p0, Lcom/android/settings/DisplaySettings;->mTrueColorMode:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_10
    const-string p1, "graphics_dynamic_optimization"

    .line 622
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/DisplaySettings;->mGraphicsDynamicOptimization:Landroidx/preference/Preference;

    const-string p1, "motion_graphics_compensation"

    .line 623
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/DisplaySettings;->mMotionGraphicsCompensation:Landroidx/preference/Preference;

    const-string p1, "graphics_enhancement_engine"

    .line 624
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/DisplaySettings;->mGraphicsEnhancementEngine:Landroidx/preference/Preference;

    .line 625
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportMotionGraphicsCompensation()Z

    move-result p1

    if-nez p1, :cond_11

    iget-object p1, p0, Lcom/android/settings/DisplaySettings;->mGraphicsEnhancementEngine:Landroidx/preference/Preference;

    if-eqz p1, :cond_11

    .line 626
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 628
    :cond_11
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportMotionGraphicsCompensation()Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/android/settings/DisplaySettings;->mVideoEnhancerPreference:Landroidx/preference/Preference;

    if-eqz p1, :cond_12

    .line 629
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_12
    const-string p1, "op_advanced_settings"

    .line 632
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/DisplaySettings;->mAdvancedSettingsPreference:Landroidx/preference/Preference;

    .line 634
    iget-object p1, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->isSupportMultiScreenResolution(Landroid/content/Context;)Z

    move-result p1

    .line 635
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenRefreshRate()Z

    move-result v0

    .line 636
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenCutting()Z

    move-result v2

    if-nez v2, :cond_14

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportScreenDisplayAdaption()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportAppsDisplayInFullscreen()Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_6

    :cond_13
    move v4, v1

    .line 638
    :cond_14
    :goto_6
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 639
    iget-object p1, p0, Lcom/android/settings/DisplaySettings;->mAdvancedSettingsPreference:Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->op_display_advanced_settings_summary_5:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_15
    if-eqz p1, :cond_17

    if-eqz v0, :cond_17

    if-eqz v4, :cond_17

    .line 641
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportHolePunchFrontCam()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 642
    iget-object p1, p0, Lcom/android/settings/DisplaySettings;->mAdvancedSettingsPreference:Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->op_display_advanced_settings_summary_6:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 644
    :cond_16
    iget-object p1, p0, Lcom/android/settings/DisplaySettings;->mAdvancedSettingsPreference:Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->op_display_advanced_settings_summary_1:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_17
    if-eqz v0, :cond_19

    if-eqz v4, :cond_19

    .line 647
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportHolePunchFrontCam()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 648
    iget-object p1, p0, Lcom/android/settings/DisplaySettings;->mAdvancedSettingsPreference:Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->op_display_advanced_settings_summary_7:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 650
    :cond_18
    iget-object p1, p0, Lcom/android/settings/DisplaySettings;->mAdvancedSettingsPreference:Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->op_display_advanced_settings_summary_2:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_19
    if-eqz p1, :cond_1a

    if-eqz v0, :cond_1a

    .line 653
    iget-object p1, p0, Lcom/android/settings/DisplaySettings;->mAdvancedSettingsPreference:Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->op_display_advanced_settings_summary_3:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_1a
    if-eqz v4, :cond_1b

    .line 655
    iget-object p1, p0, Lcom/android/settings/DisplaySettings;->mAdvancedSettingsPreference:Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->op_display_advanced_settings_summary_4:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1b
    :goto_7
    const-string p1, "dark_ui_mode"

    .line 658
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/DisplaySettings;->mDarkUiModePreference:Landroidx/preference/Preference;

    .line 659
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 660
    iget-object p0, p0, Lcom/android/settings/DisplaySettings;->mDarkUiModePreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1c
    return-void
.end method

.method public onCustomColorClick()V
    .locals 3

    .line 1226
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oneplus.intent.action.ONEPLUS_COLOR_PICKER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1228
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1229
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oneplus_white_custom_accent_color"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DisplaySettings;->mCurrentTempColor:Ljava/lang/String;

    goto :goto_0

    .line 1230
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1231
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oneplus_black_custom_accent_color"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DisplaySettings;->mCurrentTempColor:Ljava/lang/String;

    .line 1233
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mCurrentTempColor:Ljava/lang/String;

    const-string v2, "current_color"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x64

    .line 1234
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 857
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    .line 858
    iget-object p0, p0, Lcom/android/settings/DisplaySettings;->mBrightnessObserver:Lcom/android/settings/DisplaySettings$BrightnessObserver;

    if-eqz p0, :cond_0

    .line 859
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings$BrightnessObserver;->stopObserving()V

    :cond_0
    return-void
.end method

.method public onOPBrightValueChanged(II)V
    .locals 6

    .line 1092
    iget-object p1, p0, Lcom/android/settings/DisplaySettings;->mSliderAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    .line 1093
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1095
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->isInVrMode()Z

    move-result p1

    .line 1105
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1106
    iget-wide v2, p0, Lcom/android/settings/DisplaySettings;->mLastSliderChangeTimeMillis:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    const-string v4, "DisplaySettings"

    if-gtz p1, :cond_2

    .line 1107
    sget-boolean p1, Lcom/android/settings/DisplaySettings;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "Slider.onChanged denoise init."

    .line 1108
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    :cond_1
    iput-wide v0, p0, Lcom/android/settings/DisplaySettings;->mLastSliderChangeTimeMillis:J

    return-void

    :cond_2
    sub-long/2addr v0, v2

    const-wide/16 v2, 0xa

    cmp-long p1, v0, v2

    if-gez p1, :cond_4

    .line 1113
    sget-boolean p0, Lcom/android/settings/DisplaySettings;->DEBUG:Z

    if-eqz p0, :cond_3

    const-string p0, "Slider.onChanged denoise consecutive change."

    .line 1114
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    .line 1118
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/settings/DisplaySettings;->setBrightness(I)V

    return-void
.end method

.method public onOPBrightValueStartTrackingTouch(I)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 838
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    .line 840
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 841
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, p0}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .line 946
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "op_true_color_mode"

    .line 947
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 948
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 949
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "display_white_balance_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 951
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForTrueColor()V

    goto :goto_0

    :cond_0
    const-string v1, "screen_timeout"

    .line 952
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 954
    :try_start_0
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 955
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_timeout"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    int-to-long v1, v1

    .line 956
    invoke-direct {p0, v1, v2}, Lcom/android/settings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "DisplaySettings"

    const-string v3, "could not persist screen timeout setting"

    .line 958
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 961
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAutoBrightnessPreference:Landroidx/preference/SwitchPreference;

    if-ne p1, v1, :cond_2

    .line 962
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 963
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 966
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForAutoBrightness()V

    .line 969
    :cond_2
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mNetworkNameDisplayedPreference:Landroidx/preference/SwitchPreference;

    if-ne p1, v1, :cond_3

    .line 970
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 971
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_network_name_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 975
    :cond_3
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mTapToWakePreference:Landroidx/preference/SwitchPreference;

    if-ne p1, v1, :cond_4

    .line 976
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 977
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "double_tap_to_wake"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 979
    :cond_4
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mCameraGesturePreference:Landroidx/preference/SwitchPreference;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_5

    .line 980
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 981
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    xor-int/2addr v1, v2

    const-string v4, "camera_gesture_disabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 984
    :cond_5
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mCameraDoubleTapPowerGesturePreference:Landroidx/preference/SwitchPreference;

    if-ne p1, v1, :cond_6

    .line 985
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 986
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    xor-int/2addr v1, v2

    const-string v4, "camera_double_tap_power_gesture_disabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 990
    :cond_6
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mNotifyLightPreference:Landroidx/preference/SwitchPreference;

    if-ne p1, v1, :cond_8

    .line 991
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 992
    invoke-direct {p0, p1}, Lcom/android/settings/DisplaySettings;->updateNotifyLightStatus(I)V

    .line 993
    iget-object p0, p0, Lcom/android/settings/DisplaySettings;->mLedSettingsPreference:Landroidx/preference/Preference;

    if-eqz p0, :cond_7

    .line 994
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_7
    return v2

    :cond_8
    const-string/jumbo p0, "video_enhancer"

    .line 1001
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1002
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p2, "true"

    goto :goto_1

    :cond_9
    const-string p2, "false"

    :goto_1
    const-string v0, "persist.sys.oem.vendor.media.vpp.enable"

    .line 1003
    invoke-static {v0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_a

    const-string p1, "1"

    goto :goto_2

    :cond_a
    const-string p1, "0"

    .line 1004
    :goto_2
    invoke-static {p0, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return v2
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 1033
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "doze"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "doze_801"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1044
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "lockguard_wallpaper_settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1045
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SET_WALLPAPER"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "net.oneplus.launcher"

    .line 1046
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1047
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/oneplus/settings/utils/OPUtils;->isActionExist(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1049
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1051
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0

    .line 1035
    :cond_2
    :goto_1
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.oneplus.aod"

    const-string v1, "com.oneplus.settings.SettingsActivity"

    .line 1036
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1037
    iget-object p0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 1039
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 1013
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mToggleLockScreenRotationPreference:Landroidx/preference/SwitchPreference;

    if-ne v0, p1, :cond_0

    .line 1014
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->handleLockScreenRotationPreferenceClick()V

    .line 1016
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 6

    .line 752
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 753
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateState()V

    .line 755
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const-wide/16 v2, 0x7530

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 757
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/display/TimeoutListPreference;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 758
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/display/TimeoutListPreference;

    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 759
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    if-eqz v2, :cond_0

    .line 763
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    .line 762
    invoke-static {v3}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfMaximumTimeToLockIsSet(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v3

    const/4 v4, 0x0

    .line 766
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v4

    .line 768
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/display/TimeoutListPreference;

    invoke-virtual {v2, v4, v5, v3}, Lcom/android/settings/display/TimeoutListPreference;->removeUnusableTimeouts(JLcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 770
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/settings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    .line 774
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContext:Landroid/content/Context;

    .line 776
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "no_config_screen_timeout"

    .line 774
    invoke-static {v0, v2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 778
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Lcom/android/settings/display/TimeoutListPreference;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/settings/display/TimeoutListPreference;->removeUnusableTimeouts(JLcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_1
    const-string/jumbo v0, "wallpaper"

    const-string v1, "no_set_wallpaper"

    .line 782
    invoke-direct {p0, v0, v1}, Lcom/android/settings/DisplaySettings;->disablePreferenceIfManaged(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateLockScreenRotation()V

    .line 786
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 787
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 791
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->disableEntryForAccessibilityDisplayDaltonizerAndInversion()V

    return-void
.end method

.method public onStart()V
    .locals 5

    .line 739
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStart()V

    .line 741
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_daltonizer_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mAccessibilityDisplayDaltonizerAndInversionContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 743
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_inversion_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mAccessibilityDisplayDaltonizerAndInversionContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 745
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_grayscale_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/DisplaySettings;->mAccessibilityDisplayDaltonizerAndInversionContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, p0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 848
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    .line 850
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/DisplaySettings;->mAccessibilityDisplayDaltonizerAndInversionContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method safeGetVrManager()Landroid/service/vr/IVrManager;
    .locals 0

    const-string/jumbo p0, "vrmanager"

    .line 1060
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object p0

    return-object p0
.end method

.method public saveBrightnessDataBase(I)V
    .locals 2

    .line 1127
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSliderAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1128
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1130
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->isInVrMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1131
    iget v0, p0, Lcom/android/settings/DisplaySettings;->mMinimumBacklightForVr:F

    .line 1132
    iget v1, p0, Lcom/android/settings/DisplaySettings;->mMaximumBacklightForVr:F

    goto :goto_0

    .line 1135
    :cond_1
    iget v0, p0, Lcom/android/settings/DisplaySettings;->mMinimumBacklight:F

    .line 1136
    iget v1, p0, Lcom/android/settings/DisplaySettings;->mMaximumBacklight:F

    .line 1139
    :goto_0
    invoke-static {p1, v0, v1}, Lcom/android/settingslib/display/BrightnessUtils;->convertGammaToLinearFloat(IFF)F

    move-result p1

    .line 1140
    new-instance v0, Lcom/android/settings/DisplaySettings$3;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/DisplaySettings$3;-><init>(Lcom/android/settings/DisplaySettings;F)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
