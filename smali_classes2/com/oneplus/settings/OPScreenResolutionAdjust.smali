.class public Lcom/oneplus/settings/OPScreenResolutionAdjust;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPScreenResolutionAdjust.java"

# interfaces
.implements Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private m1080PMode:Lcom/android/settings/widget/RadioButtonPreference;

.field private m1080PMode19811:Lcom/android/settings/widget/RadioButtonPreference;

.field private mAm:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mDpiValues1080P:[I

.field private mDpiValuesOther:[I

.field private mEnterValue:I

.field private mIntelligentSwitchResolutionMode:Landroidx/preference/SwitchPreference;

.field private mOtherResolutionMode:Lcom/android/settings/widget/RadioButtonPreference;

.field private mOtherResolutionMode19811:Lcom/android/settings/widget/RadioButtonPreference;

.field private mQHDSettingsCatagory:Landroidx/preference/PreferenceCategory;

.field private mWarnDialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 505
    new-instance v0, Lcom/oneplus/settings/OPScreenResolutionAdjust$5;

    invoke-direct {v0}, Lcom/oneplus/settings/OPScreenResolutionAdjust$5;-><init>()V

    sput-object v0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 68
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mDpiValues1080P:[I

    .line 78
    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void

    nop

    :array_0
    .array-data 4
        0x17c
        0x1a4
        0x1e0
        0x1f4
        0x21c
    .end array-data
.end method

.method static synthetic access$000(Lcom/oneplus/settings/OPScreenResolutionAdjust;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->cancelDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/settings/OPScreenResolutionAdjust;)Landroid/content/Context;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/OPScreenResolutionAdjust;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->changeScreenResolution(I)V

    return-void
.end method

.method private cancelDialog()V
    .locals 3

    .line 320
    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_screen_resolution_auto_adjust"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 322
    iget-object p0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mIntelligentSwitchResolutionMode:Landroidx/preference/SwitchPreference;

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method private changeScreenResolution(I)V
    .locals 6

    .line 210
    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_screen_resolution_adjust"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v2, :cond_2

    .line 212
    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mIntelligentSwitchResolutionMode:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 213
    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mOtherResolutionMode:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 214
    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mOtherResolutionMode19811:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 215
    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->m1080PMode:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 216
    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->m1080PMode19811:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-ne v0, v4, :cond_0

    .line 219
    invoke-direct {p0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->openSurfaceComposerInterface()V

    .line 222
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->is1080pMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 223
    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mDpiValuesOther:[I

    invoke-direct {p0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->getCurrent1080pDpiIndex()I

    move-result v5

    aget p1, p1, v5

    invoke-static {v3, p1}, Lcom/android/settingslib/display/DisplayDensityUtils;->setForcedDisplayDensity(II)V

    .line 225
    :cond_1
    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-ne v0, v4, :cond_8

    .line 228
    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mAm:Landroid/app/ActivityManager;

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPApplicationUtils;->forceStopPackage(Landroid/app/ActivityManager;)V

    goto/16 :goto_1

    :cond_2
    if-nez p1, :cond_6

    .line 232
    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mOtherResolutionMode:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 233
    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mOtherResolutionMode19811:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 234
    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->m1080PMode:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 235
    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->m1080PMode19811:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-ne v0, v4, :cond_3

    .line 238
    invoke-direct {p0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->openSurfaceComposerInterface()V

    .line 241
    :cond_3
    invoke-direct {p0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->is1080pMode()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 242
    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mDpiValuesOther:[I

    invoke-direct {p0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->getCurrent1080pDpiIndex()I

    move-result v5

    aget p1, p1, v5

    invoke-static {v3, p1}, Lcom/android/settingslib/display/DisplayDensityUtils;->setForcedDisplayDensity(II)V

    .line 245
    :cond_4
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v5, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mQHDSettingsCatagory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 246
    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v5, "oneplus_screen_resolution_auto_adjust"

    invoke-static {p1, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    if-ne v0, v4, :cond_5

    .line 249
    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mIntelligentSwitchResolutionMode:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 250
    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 252
    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v5, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 255
    :cond_5
    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    if-ne v0, v4, :cond_8

    .line 261
    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mAm:Landroid/app/ActivityManager;

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPApplicationUtils;->forceStopPackage(Landroid/app/ActivityManager;)V

    goto :goto_1

    :cond_6
    if-ne p1, v4, :cond_8

    .line 265
    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mOtherResolutionMode:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 266
    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mOtherResolutionMode19811:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 267
    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->m1080PMode:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 268
    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->m1080PMode19811:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 270
    invoke-direct {p0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->openSurfaceComposerInterface()V

    .line 272
    invoke-direct {p0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->is1080pMode()Z

    move-result p1

    if-nez p1, :cond_7

    .line 273
    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mDpiValues1080P:[I

    invoke-direct {p0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->getCurrentOtherDpiIndex()I

    move-result v0

    aget p1, p1, v0

    invoke-static {v3, p1}, Lcom/android/settingslib/display/DisplayDensityUtils;->setForcedDisplayDensity(II)V

    .line 276
    :cond_7
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mQHDSettingsCatagory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 278
    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 280
    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mAm:Landroid/app/ActivityManager;

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPApplicationUtils;->forceStopPackage(Landroid/app/ActivityManager;)V

    .line 283
    :cond_8
    :goto_1
    iget-object p0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mAm:Landroid/app/ActivityManager;

    invoke-static {p0, v3}, Lcom/oneplus/settings/utils/OPApplicationUtils;->killProcess(Landroid/app/ActivityManager;Z)V

    return-void
.end method

.method private getCurrent1080pDpiIndex()I
    .locals 5

    .line 443
    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_density_forced"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 444
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .line 447
    :goto_0
    iget-object v3, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mDpiValues1080P:[I

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 448
    aget v3, v3, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method private getCurrentOtherDpiIndex()I
    .locals 5

    .line 458
    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_density_forced"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 459
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .line 462
    :goto_0
    iget-object v3, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mDpiValuesOther:[I

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 463
    aget v3, v3, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method private getFHDScreenSummary()V
    .locals 3

    const-string v0, "ro.boot.project_name"

    .line 552
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "19811"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->m1080PMode:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 554
    iget-object p0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->m1080PMode19811:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->m1080PMode:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 557
    iget-object p0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->m1080PMode19811:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    return-void
.end method

.method private getQHDScreenSummary()V
    .locals 3

    const-string v0, "ro.boot.project_name"

    .line 540
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "19811"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mOtherResolutionMode:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 542
    iget-object p0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mOtherResolutionMode19811:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mOtherResolutionMode:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 546
    iget-object p0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mOtherResolutionMode19811:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    return-void
.end method

.method private is1080pMode()Z
    .locals 2

    .line 342
    iget-object p0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "oneplus_screen_resolution_adjust"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isOtherMode()Z
    .locals 2

    .line 334
    iget-object p0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "oneplus_screen_resolution_adjust"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private openSurfaceComposerInterface()V
    .locals 4

    const-string p0, "SurfaceFlinger"

    .line 185
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 188
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "android.ui.ISurfaceComposer"

    .line 189
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 190
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v1, 0x3f0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 191
    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 90
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    sget p1, Lcom/android/settings/R$xml;->op_screen_resolution_adjust_select:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 92
    sget-object p1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    iput-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    .line 93
    invoke-static {p1}, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->get1080Dpi(Landroid/content/Context;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mDpiValues1080P:[I

    const-string p1, "activity"

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mAm:Landroid/app/ActivityManager;

    const-string p1, "op_qhd_settings"

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mQHDSettingsCatagory:Landroidx/preference/PreferenceCategory;

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->oneplus_screen_resolution_adjust_other:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    .line 97
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->settings_label:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string p1, "op_intelligent_switch_resolution_mode"

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mIntelligentSwitchResolutionMode:Landroidx/preference/SwitchPreference;

    const-string p1, "op_other_resolution_mode"

    .line 99
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/RadioButtonPreference;

    iput-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mOtherResolutionMode:Lcom/android/settings/widget/RadioButtonPreference;

    const-string p1, "op_1080p_mode"

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/RadioButtonPreference;

    iput-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->m1080PMode:Lcom/android/settings/widget/RadioButtonPreference;

    const-string p1, "op_other_resolution_mode_19811"

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/RadioButtonPreference;

    iput-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mOtherResolutionMode19811:Lcom/android/settings/widget/RadioButtonPreference;

    const-string p1, "op_1080p_mode_19811"

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/RadioButtonPreference;

    iput-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->m1080PMode19811:Lcom/android/settings/widget/RadioButtonPreference;

    .line 103
    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mIntelligentSwitchResolutionMode:Landroidx/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 104
    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mOtherResolutionMode:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V

    .line 105
    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->m1080PMode:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V

    .line 106
    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->m1080PMode19811:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V

    .line 107
    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mOtherResolutionMode19811:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V

    .line 109
    invoke-direct {p0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->getQHDScreenSummary()V

    .line 110
    invoke-direct {p0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->getFHDScreenSummary()V

    .line 112
    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$array;->oneplus_screen_dpi_values:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mDpiValuesOther:[I

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    .line 150
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onMultiWindowModeChanged(Z)V

    if-nez p1, :cond_0

    .line 152
    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mIntelligentSwitchResolutionMode:Landroidx/preference/SwitchPreference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 153
    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mOtherResolutionMode:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 154
    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mOtherResolutionMode19811:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 155
    iget-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->m1080PMode:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 156
    iget-object p0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->m1080PMode19811:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 203
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "op_intelligent_switch_resolution_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 204
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->showWarnigDialog(I)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public onRadioButtonClicked(Lcom/android/settings/widget/RadioButtonPreference;)V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mOtherResolutionMode:Lcom/android/settings/widget/RadioButtonPreference;

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mOtherResolutionMode19811:Lcom/android/settings/widget/RadioButtonPreference;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->m1080PMode:Lcom/android/settings/widget/RadioButtonPreference;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->m1080PMode19811:Lcom/android/settings/widget/RadioButtonPreference;

    if-ne p1, v0, :cond_5

    .line 176
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->is1080pMode()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x1

    .line 179
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->showWarnigDialog(I)V

    goto :goto_1

    .line 171
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->isOtherMode()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    const/4 p1, 0x0

    .line 174
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/OPScreenResolutionAdjust;->showWarnigDialog(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 8

    .line 118
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 120
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mIntelligentSwitchResolutionMode:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 122
    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mOtherResolutionMode:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 123
    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mOtherResolutionMode19811:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 124
    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->m1080PMode:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 125
    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->m1080PMode19811:Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "oneplus_screen_resolution_adjust"

    const/4 v3, 0x2

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 129
    iget-object v4, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "oneplus_screen_resolution_auto_adjust"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 134
    iget-object v5, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mOtherResolutionMode:Lcom/android/settings/widget/RadioButtonPreference;

    const/4 v6, 0x1

    if-eqz v0, :cond_2

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    move v7, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v7, v6

    :goto_1
    invoke-virtual {v5, v7}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 136
    iget-object v5, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mIntelligentSwitchResolutionMode:Landroidx/preference/SwitchPreference;

    if-eq v4, v6, :cond_4

    if-ne v0, v3, :cond_3

    goto :goto_2

    :cond_3
    move v4, v1

    goto :goto_3

    :cond_4
    :goto_2
    move v4, v6

    :goto_3
    invoke-virtual {v5, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 137
    iget-object v4, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mOtherResolutionMode19811:Lcom/android/settings/widget/RadioButtonPreference;

    if-eqz v0, :cond_6

    if-ne v0, v3, :cond_5

    goto :goto_4

    :cond_5
    move v5, v1

    goto :goto_5

    :cond_6
    :goto_4
    move v5, v6

    :goto_5
    invoke-virtual {v4, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 139
    iget-object v4, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->m1080PMode:Lcom/android/settings/widget/RadioButtonPreference;

    if-ne v0, v6, :cond_7

    move v5, v6

    goto :goto_6

    :cond_7
    move v5, v1

    :goto_6
    invoke-virtual {v4, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 140
    iget-object v4, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->m1080PMode19811:Lcom/android/settings/widget/RadioButtonPreference;

    if-ne v0, v6, :cond_8

    move v1, v6

    :cond_8
    invoke-virtual {v4, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 141
    iget-object v1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mEnterValue:I

    if-ne v0, v6, :cond_9

    .line 143
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mQHDSettingsCatagory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_9
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 490
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    .line 491
    iget-object v0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_screen_resolution_adjust"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 492
    iget p0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mEnterValue:I

    if-eq p0, v0, :cond_2

    const-string p0, "status"

    const-string v1, "resolution"

    if-ne v0, v2, :cond_0

    const-string v0, "1"

    .line 494
    invoke-static {v1, p0, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "2"

    .line 496
    invoke-static {v1, p0, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const-string v0, "3"

    .line 498
    invoke-static {v1, p0, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public showWarnigDialog(I)V
    .locals 3

    .line 292
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->oneplus_switch_resolution_kill_process_tips:I

    .line 294
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$string;->oneplus_switch_resolution_kill_process_confirm:I

    new-instance v2, Lcom/oneplus/settings/OPScreenResolutionAdjust$2;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/settings/OPScreenResolutionAdjust$2;-><init>(Lcom/oneplus/settings/OPScreenResolutionAdjust;I)V

    .line 295
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget p1, Lcom/android/settings/R$string;->cancel:I

    new-instance v1, Lcom/oneplus/settings/OPScreenResolutionAdjust$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/OPScreenResolutionAdjust$1;-><init>(Lcom/oneplus/settings/OPScreenResolutionAdjust;)V

    .line 303
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 309
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mWarnDialog:Landroidx/appcompat/app/AlertDialog;

    .line 310
    new-instance v0, Lcom/oneplus/settings/OPScreenResolutionAdjust$3;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/OPScreenResolutionAdjust$3;-><init>(Lcom/oneplus/settings/OPScreenResolutionAdjust;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 316
    iget-object p0, p0, Lcom/oneplus/settings/OPScreenResolutionAdjust;->mWarnDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
