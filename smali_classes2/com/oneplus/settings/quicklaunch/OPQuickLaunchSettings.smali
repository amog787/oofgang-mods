.class public Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPQuickLaunchSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference$OnPreferenceViewClickListener;


# static fields
.field private static final MY_USER_ID:I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mActivity:Lcom/android/settings/SettingsActivity;

.field private mDefaultQuickLaunchAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mEnableQuickLaunch:Landroidx/preference/SwitchPreference;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mHasFingerprint:Z

.field private mPayWaysName:[Ljava/lang/String;

.field private mQuickLaunchGuide:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

.field private mQuickLaunchPreferece:Landroidx/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->MY_USER_ID:I

    .line 317
    new-instance v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings$1;

    invoke-direct {v0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mDefaultQuickLaunchAppList:Ljava/util/List;

    .line 65
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->oneplus_quickpay_ways_name:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mPayWaysName:[Ljava/lang/String;

    return-void
.end method

.method private checkFingerPrint()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    sget v1, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->MY_USER_ID:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    .line 101
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mHasFingerprint:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mHasFingerprint:Z

    :goto_0
    return-void
.end method

.method private createDefaultData()V
    .locals 19

    move-object/from16 v0, p0

    .line 167
    iget-object v1, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mDefaultQuickLaunchAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 168
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v1, :cond_9

    .line 169
    iget-object v1, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    const-string v5, "net.one97.paytm"

    invoke-static {v1, v5}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    new-instance v1, Lcom/oneplus/settings/better/OPAppModel;

    iget-object v6, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mPayWaysName:[Ljava/lang/String;

    aget-object v8, v6, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v7, "net.one97.paytm"

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 171
    invoke-virtual {v1, v4}, Lcom/oneplus/settings/better/OPAppModel;->setType(I)V

    .line 172
    iget-object v2, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-static {v2, v5}, Lcom/oneplus/settings/utils/OPUtils;->getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/better/OPAppModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    .line 174
    iget-object v2, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mDefaultQuickLaunchAppList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_0
    iget-object v1, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    const-string v2, "com.google.android.googlequicksearchbox"

    invoke-static {v1, v2}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    iget-object v1, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-static {v1, v2}, Lcom/oneplus/settings/utils/OPUtils;->getResolveInfoByPackageName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 179
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 180
    iget-object v5, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    const-string v6, "voice_shortcut"

    invoke-static {v5, v2, v6, v1}, Lcom/oneplus/settings/utils/OPUtils;->loadShortcutByPackageNameAndShortcutId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/oneplus/settings/better/OPAppModel;

    move-result-object v1

    .line 181
    iget-object v2, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mDefaultQuickLaunchAppList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_1
    iget-object v1, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    const-string v2, "com.oneplus.note"

    invoke-static {v1, v2}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 186
    iget-object v1, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-static {v1, v2}, Lcom/oneplus/settings/utils/OPUtils;->getResolveInfoByPackageName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 188
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 189
    iget-object v5, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    const-string v6, "new_note"

    invoke-static {v5, v2, v6, v1}, Lcom/oneplus/settings/utils/OPUtils;->loadShortcutByPackageNameAndShortcutId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/oneplus/settings/better/OPAppModel;

    move-result-object v1

    .line 190
    iget-object v2, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mDefaultQuickLaunchAppList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_2
    iget-object v1, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    const-string v2, "com.google.android.music"

    invoke-static {v1, v2}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 194
    iget-object v1, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-static {v1, v2}, Lcom/oneplus/settings/utils/OPUtils;->getResolveInfoByPackageName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 196
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 197
    iget-object v5, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    const-string v6, "music-mylibrary"

    invoke-static {v5, v2, v6, v1}, Lcom/oneplus/settings/utils/OPUtils;->loadShortcutByPackageNameAndShortcutId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/oneplus/settings/better/OPAppModel;

    move-result-object v1

    .line 198
    iget-object v2, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mDefaultQuickLaunchAppList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    :cond_3
    iget-object v1, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    const-string v2, "com.google.android.calendar"

    invoke-static {v1, v2}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 202
    iget-object v1, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-static {v1, v2}, Lcom/oneplus/settings/utils/OPUtils;->getResolveInfoByPackageName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 204
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 205
    iget-object v5, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    const-string v6, "launcher_shortcuts_shortcut_new_event"

    invoke-static {v5, v2, v6, v1}, Lcom/oneplus/settings/utils/OPUtils;->loadShortcutByPackageNameAndShortcutId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/oneplus/settings/better/OPAppModel;

    move-result-object v1

    .line 206
    iget-object v2, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mDefaultQuickLaunchAppList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    iget-object v2, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mDefaultQuickLaunchAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/settings/better/OPAppModel;

    if-nez v5, :cond_5

    goto :goto_0

    .line 214
    :cond_5
    invoke-static {v5}, Lcom/oneplus/settings/utils/OPUtils;->getQuickPayAppString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;

    move-result-object v6

    .line 215
    invoke-virtual {v5}, Lcom/oneplus/settings/better/OPAppModel;->getType()I

    move-result v7

    if-nez v7, :cond_6

    .line 216
    invoke-static {v5}, Lcom/oneplus/settings/utils/OPUtils;->getQuickLaunchAppString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 217
    :cond_6
    invoke-virtual {v5}, Lcom/oneplus/settings/better/OPAppModel;->getType()I

    move-result v7

    if-ne v7, v3, :cond_7

    .line 218
    invoke-static {v5}, Lcom/oneplus/settings/utils/OPUtils;->getQuickLaunchShortcutsString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 219
    :cond_7
    invoke-virtual {v5}, Lcom/oneplus/settings/better/OPAppModel;->getType()I

    move-result v7

    if-ne v7, v4, :cond_8

    .line 220
    invoke-static {v5}, Lcom/oneplus/settings/utils/OPUtils;->getQuickPayAppString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;

    move-result-object v6

    .line 222
    :cond_8
    :goto_1
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    iget-object v5, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/settings/utils/OPUtils;->saveQuickLaunchStrings(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :cond_9
    iget-object v1, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    const-string v5, "com.tencent.mm"

    invoke-static {v1, v5}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v5, 0x3

    if-eqz v1, :cond_a

    .line 227
    new-instance v1, Lcom/oneplus/settings/better/OPAppModel;

    iget-object v6, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mPayWaysName:[Ljava/lang/String;

    const/4 v12, 0x0

    aget-object v8, v6, v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v7, "com.tencent.mm"

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 228
    invoke-virtual {v1, v4}, Lcom/oneplus/settings/better/OPAppModel;->setType(I)V

    .line 229
    iget-object v6, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-static {v6, v12}, Lcom/oneplus/settings/utils/OPUtils;->getQuickPayIconByType(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/oneplus/settings/better/OPAppModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    .line 231
    new-instance v6, Lcom/oneplus/settings/better/OPAppModel;

    iget-object v7, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mPayWaysName:[Ljava/lang/String;

    aget-object v15, v7, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v14, "com.tencent.mm"

    move-object v13, v6

    invoke-direct/range {v13 .. v18}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 232
    invoke-virtual {v6, v4}, Lcom/oneplus/settings/better/OPAppModel;->setType(I)V

    .line 233
    iget-object v7, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-static {v7, v3}, Lcom/oneplus/settings/utils/OPUtils;->getQuickPayIconByType(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/oneplus/settings/better/OPAppModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    .line 236
    new-instance v3, Lcom/oneplus/settings/better/OPAppModel;

    iget-object v7, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mPayWaysName:[Ljava/lang/String;

    aget-object v15, v7, v4

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    const-string v14, "com.tencent.mm"

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 237
    invoke-virtual {v3, v5}, Lcom/oneplus/settings/better/OPAppModel;->setType(I)V

    .line 238
    iget-object v7, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-static {v7, v12}, Lcom/oneplus/settings/utils/OPUtils;->getQuickMiniProgrameconByType(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/oneplus/settings/better/OPAppModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    .line 241
    iget-object v7, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mDefaultQuickLaunchAppList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v1, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mDefaultQuickLaunchAppList:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v1, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mDefaultQuickLaunchAppList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_a
    iget-object v1, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    const-string v3, "com.eg.android.AlipayGphone"

    invoke-static {v1, v3}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 247
    new-instance v1, Lcom/oneplus/settings/better/OPAppModel;

    iget-object v3, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mPayWaysName:[Ljava/lang/String;

    aget-object v8, v3, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v7, "com.eg.android.AlipayGphone"

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 248
    invoke-virtual {v1, v4}, Lcom/oneplus/settings/better/OPAppModel;->setType(I)V

    .line 249
    iget-object v3, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-static {v3, v4}, Lcom/oneplus/settings/utils/OPUtils;->getQuickPayIconByType(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/oneplus/settings/better/OPAppModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    .line 251
    new-instance v3, Lcom/oneplus/settings/better/OPAppModel;

    iget-object v6, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mPayWaysName:[Ljava/lang/String;

    aget-object v8, v6, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const-string v7, "com.eg.android.AlipayGphone"

    move-object v6, v3

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 252
    invoke-virtual {v3, v4}, Lcom/oneplus/settings/better/OPAppModel;->setType(I)V

    .line 253
    iget-object v2, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-static {v2, v5}, Lcom/oneplus/settings/utils/OPUtils;->getQuickPayIconByType(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/oneplus/settings/better/OPAppModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    .line 255
    iget-object v2, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mDefaultQuickLaunchAppList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    iget-object v1, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mDefaultQuickLaunchAppList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    iget-object v2, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mDefaultQuickLaunchAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/better/OPAppModel;

    .line 260
    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->isQuickPayModel(Lcom/oneplus/settings/better/OPAppModel;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 261
    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->getQuickPayAppString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;

    move-result-object v3

    .line 262
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 263
    :cond_c
    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->isWeChatMiniProgrameModel(Lcom/oneplus/settings/better/OPAppModel;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 264
    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->getQuickMiniProgrameString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;

    move-result-object v3

    .line 265
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :cond_d
    :goto_3
    iget-object v3, v0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/settings/utils/OPUtils;->saveQuickLaunchStrings(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 270
    :cond_e
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForQuickLaunch()V

    return-void
.end method

.method private initDefaultData()V
    .locals 4

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_quick_launcher_edited"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    move v2, v3

    :cond_0
    if-nez v2, :cond_1

    .line 161
    invoke-direct {p0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->createDefaultData()V

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    return-void
.end method

.method private initPreference()V
    .locals 6

    .line 127
    sget v0, Lcom/android/settings/R$xml;->op_quicklaunch_settings:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string v0, "op_quick_launcher_settings"

    .line 128
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mQuickLaunchPreferece:Landroidx/preference/Preference;

    .line 129
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportQuickLaunch()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mQuickLaunchPreferece:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    const-string v0, "key_enable_quick_launch"

    .line 132
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mEnableQuickLaunch:Landroidx/preference/SwitchPreference;

    .line 133
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "key_quick_launch_instructions"

    .line 134
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    iput-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mQuickLaunchGuide:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    const-string v2, "op_quick_launch_guide_active_white.json"

    const-string v3, "op_quick_launch_guide_exit_white.json"

    .line 135
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->setAnimationWhiteResources([Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mQuickLaunchGuide:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    const-string v2, "op_quick_launch_guide_active_dark.json"

    const-string v3, "op_quick_launch_guide_exit_dark.json"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->setAnimationDarkResources([Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mQuickLaunchGuide:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    const/4 v2, 0x2

    new-array v3, v2, [I

    sget v4, Lcom/android/settings/R$string;->oneplus_quick_launch_how_to_use_title:I

    aput v4, v3, v1

    sget v4, Lcom/android/settings/R$string;->oneplus_quick_launch_how_to_exit_title:I

    const/4 v5, 0x1

    aput v4, v3, v5

    invoke-virtual {v0, v3}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->setTitleResources([I)V

    .line 138
    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mQuickLaunchGuide:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    new-array v0, v2, [I

    sget v2, Lcom/android/settings/R$string;->oneplus_quick_launch_how_to_use_summary:I

    aput v2, v0, v1

    sget v1, Lcom/android/settings/R$string;->oneplus_quick_launch_how_to_exit_summary:I

    aput v1, v0, v5

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->setDescriptionIdResources([I)V

    return-void
.end method

.method private updatePreferenceState()V
    .locals 4

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_quickpay_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 146
    iget-boolean v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mHasFingerprint:Z

    if-nez v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 149
    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mEnableQuickLaunch:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 151
    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mEnableQuickLaunch:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 154
    :cond_1
    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mEnableQuickLaunch:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method public gotoFingerprintEnrollIntroduction(I)V
    .locals 3

    .line 295
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 296
    const-class v1, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 84
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 304
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->checkFingerPrint()V

    .line 305
    iget-boolean v1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mHasFingerprint:Z

    if-eqz v1, :cond_1

    .line 306
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "op_quickpay_enable"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 313
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 74
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    .line 76
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 77
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "fingerprint"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p1, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 78
    invoke-direct {p0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->initPreference()V

    .line 79
    invoke-direct {p0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->initDefaultData()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 120
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    .line 121
    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mQuickLaunchGuide:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    if-eqz p0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->releaseAnim()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 111
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    .line 112
    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mQuickLaunchGuide:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    if-eqz p0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->stopAnim()V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mEnableQuickLaunch:Landroidx/preference/SwitchPreference;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 281
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 282
    iget-boolean v0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mHasFingerprint:Z

    if-nez v0, :cond_0

    .line 283
    invoke-virtual {p0, p2}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->gotoFingerprintEnrollIntroduction(I)V

    return v1

    .line 287
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "op_quickpay_enable"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 288
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForQuickLaunchToggle()V

    return p2

    :cond_1
    return v1
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onPreferenceViewClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 91
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 92
    invoke-direct {p0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->checkFingerPrint()V

    .line 93
    invoke-direct {p0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->updatePreferenceState()V

    .line 94
    iget-object p0, p0, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchSettings;->mQuickLaunchGuide:Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;

    if-eqz p0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;->startAnim()V

    :cond_0
    return-void
.end method
