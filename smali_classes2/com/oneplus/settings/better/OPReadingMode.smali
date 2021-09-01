.class public Lcom/oneplus/settings/better/OPReadingMode;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "OPReadingMode.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static mReadingModeEffectManager:Lcom/oneplus/settings/better/ReadingModeEffectManager;


# instance fields
.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mAutoTurnOnAppList:Landroidx/preference/PreferenceCategory;

.field private mBlockPeekNotificationsPreference:Landroidx/preference/SwitchPreference;

.field private mContext:Landroid/content/Context;

.field private mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;

.field private mHandler:Landroid/os/Handler;

.field private mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mReadingModeAddAppsPreference:Landroidx/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 223
    new-instance v0, Lcom/oneplus/settings/better/OPReadingMode$2;

    invoke-direct {v0}, Lcom/oneplus/settings/better/OPReadingMode$2;-><init>()V

    sput-object v0, Lcom/oneplus/settings/better/OPReadingMode;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPReadingMode;->mAppList:Ljava/util/List;

    .line 65
    new-instance v0, Lcom/oneplus/settings/better/OPReadingMode$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/better/OPReadingMode$1;-><init>(Lcom/oneplus/settings/better/OPReadingMode;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPReadingMode;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/better/OPReadingMode;)Landroidx/preference/PreferenceCategory;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/oneplus/settings/better/OPReadingMode;->mAutoTurnOnAppList:Landroidx/preference/PreferenceCategory;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/better/OPReadingMode;)Ljava/util/List;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/oneplus/settings/better/OPReadingMode;->mAppList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/better/OPReadingMode;)Lcom/oneplus/settings/apploader/OPApplicationLoader;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/oneplus/settings/better/OPReadingMode;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/better/OPReadingMode;)Landroid/content/Context;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/oneplus/settings/better/OPReadingMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400()Lcom/oneplus/settings/better/ReadingModeEffectManager;
    .locals 1

    .line 42
    sget-object v0, Lcom/oneplus/settings/better/OPReadingMode;->mReadingModeEffectManager:Lcom/oneplus/settings/better/ReadingModeEffectManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/better/OPReadingMode;)Landroid/app/AppOpsManager;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/oneplus/settings/better/OPReadingMode;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/better/OPReadingMode;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/oneplus/settings/better/OPReadingMode;->isShowAutoTurnOnAppList()V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/settings/better/OPReadingMode;)Landroid/content/ContentResolver;
    .locals 0

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method private isShowAutoTurnOnAppList()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingMode;->mAutoTurnOnAppList:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 111
    iget-object p0, p0, Lcom/oneplus/settings/better/OPReadingMode;->mAutoTurnOnAppList:Landroidx/preference/PreferenceCategory;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 113
    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/better/OPReadingMode;->mAutoTurnOnAppList:Landroidx/preference/PreferenceCategory;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    return-void
.end method

.method private updateListData()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingMode;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    invoke-virtual {v0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingMode;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->loadSelectedGameOrReadAppMap(I)Ljava/util/Map;

    .line 147
    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingMode;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/oneplus/settings/better/OPReadingMode;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->initData(ILandroid/os/Handler;)V

    :cond_0
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

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    new-instance v1, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/oneplus/settings/better/OPReadingModeTurnOnPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 173
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 174
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "OPReadingMode"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 239
    sget p0, Lcom/android/settings/R$xml;->op_reading_mode:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 120
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/better/OPReadingMode;->mContext:Landroid/content/Context;

    const-string p1, "appops"

    .line 122
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/oneplus/settings/better/OPReadingMode;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/better/OPReadingMode;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 124
    new-instance p1, Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingMode;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/settings/better/OPReadingMode;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v2, p0, Lcom/oneplus/settings/better/OPReadingMode;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {p1, v0, v1, v2}, Lcom/oneplus/settings/apploader/OPApplicationLoader;-><init>(Landroid/content/Context;Landroid/app/AppOpsManager;Landroid/content/pm/PackageManager;)V

    iput-object p1, p0, Lcom/oneplus/settings/better/OPReadingMode;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    const-string p1, "auto_turn_on_apps"

    .line 125
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/oneplus/settings/better/OPReadingMode;->mAutoTurnOnAppList:Landroidx/preference/PreferenceCategory;

    const-string p1, "reading_mode_add_apps"

    .line 126
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/settings/better/OPReadingMode;->mReadingModeAddAppsPreference:Landroidx/preference/Preference;

    if-eqz p1, :cond_0

    .line 128
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    const-string p1, "block_peek_notifications"

    .line 131
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/oneplus/settings/better/OPReadingMode;->mBlockPeekNotificationsPreference:Landroidx/preference/SwitchPreference;

    if-eqz p1, :cond_1

    .line 133
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    const-string p1, "oneplus_reading_mode_footer"

    .line 140
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/oneplus/settings/widget/OPFooterPreference;

    iput-object p1, p0, Lcom/oneplus/settings/better/OPReadingMode;->mFooterPreference:Lcom/oneplus/settings/widget/OPFooterPreference;

    .line 141
    sget p0, Lcom/android/settings/R$string;->oneplus_reading_mode_auto_summary:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(I)V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 166
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 180
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "block_peek_notifications"

    .line 191
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 192
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, -0x2

    const-string v0, "reading_mode_block_notification"

    invoke-static {p0, v0, p1, p2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 195
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForReadingModeNotification()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 203
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "reading_mode_add_apps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 210
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.action.READINGMODE_EFFECT_SELECT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string p1, "classname"

    .line 211
    const-class v1, Lcom/android/settings/Settings$ReadingModeAppListActivity;

    .line 212
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 211
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    iget-object p0, p0, Lcom/oneplus/settings/better/OPReadingMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-object p1, v0

    .line 215
    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No activity found for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPReadingMode"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 4

    .line 154
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 155
    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingMode;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/better/ReadingModeEffectManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/better/ReadingModeEffectManager;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/better/OPReadingMode;->mReadingModeEffectManager:Lcom/oneplus/settings/better/ReadingModeEffectManager;

    .line 156
    invoke-virtual {v0}, Lcom/oneplus/settings/better/ReadingModeEffectManager;->loadAppMap()Ljava/util/Map;

    .line 157
    invoke-direct {p0}, Lcom/oneplus/settings/better/OPReadingMode;->updateListData()V

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "reading_mode_block_notification"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 159
    iget-object p0, p0, Lcom/oneplus/settings/better/OPReadingMode;->mBlockPeekNotificationsPreference:Landroidx/preference/SwitchPreference;

    if-eqz p0, :cond_1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 160
    :cond_0
    invoke-virtual {p0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    return-void
.end method
