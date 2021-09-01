.class public Lcom/android/settings/applications/RecentAppsPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "RecentAppsPreferenceController.java"

# interfaces
.implements Lcom/android/settings/applications/RecentAppStatsMixin$RecentAppStatsListener;


# static fields
.field static final KEY_DIVIDER:Ljava/lang/String; = "recent_apps_divider"


# instance fields
.field mAppEntitiesController:Lcom/android/settingslib/widget/AppEntitiesHeaderController;

.field private final mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mHost:Landroidx/fragment/app/Fragment;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mRecentApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field

.field mRecentAppsPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field private mScreen:Landroidx/preference/PreferenceScreen;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 74
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    .line 74
    invoke-static {p1}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 76
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iput p1, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mUserId:I

    .line 77
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/RecentAppsPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private createAppEntity(Landroid/app/usage/UsageStats;)Lcom/android/settingslib/widget/AppEntityInfo;
    .locals 8

    .line 158
    invoke-virtual {p1}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    iget v2, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mUserId:I

    .line 160
    invoke-virtual {v1, v0, v2}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 165
    :cond_0
    new-instance v2, Lcom/android/settingslib/widget/AppEntityInfo$Builder;

    invoke-direct {v2}, Lcom/android/settingslib/widget/AppEntityInfo$Builder;-><init>()V

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v4, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    .line 166
    invoke-static {v3, v4}, Lcom/android/settingslib/Utils;->getBadgedIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settingslib/widget/AppEntityInfo$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settingslib/widget/AppEntityInfo$Builder;

    iget-object v3, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    .line 167
    invoke-virtual {v2, v3}, Lcom/android/settingslib/widget/AppEntityInfo$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settingslib/widget/AppEntityInfo$Builder;

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-double v4, v4

    const/4 p1, 0x0

    sget-object v6, Landroid/icu/text/RelativeDateTimeFormatter$Style;->SHORT:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    .line 168
    invoke-static {v3, v4, v5, p1, v6}, Lcom/android/settingslib/utils/StringUtil;->formatRelativeTime(Landroid/content/Context;DZLandroid/icu/text/RelativeDateTimeFormatter$Style;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/android/settingslib/widget/AppEntityInfo$Builder;->setSummary(Ljava/lang/CharSequence;)Lcom/android/settingslib/widget/AppEntityInfo$Builder;

    new-instance p1, Lcom/android/settings/applications/-$$Lambda$RecentAppsPreferenceController$M3cWnW9MwZL0-3os_mLS9QZCJMw;

    invoke-direct {p1, p0, v0, v1}, Lcom/android/settings/applications/-$$Lambda$RecentAppsPreferenceController$M3cWnW9MwZL0-3os_mLS9QZCJMw;-><init>(Lcom/android/settings/applications/RecentAppsPreferenceController;Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    .line 171
    invoke-virtual {v2, p1}, Lcom/android/settingslib/widget/AppEntityInfo$Builder;->setOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/AppEntityInfo$Builder;

    .line 178
    invoke-virtual {v2}, Lcom/android/settingslib/widget/AppEntityInfo$Builder;->build()Lcom/android/settingslib/widget/AppEntityInfo;

    move-result-object p0

    return-object p0
.end method

.method private displayRecentApps()V
    .locals 5

    .line 145
    iget-object v0, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mRecentApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStats;

    .line 146
    invoke-direct {p0, v2}, Lcom/android/settings/applications/RecentAppsPreferenceController;->createAppEntity(Landroid/app/usage/UsageStats;)Lcom/android/settingslib/widget/AppEntityInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 148
    iget-object v3, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mAppEntitiesController:Lcom/android/settingslib/widget/AppEntitiesHeaderController;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v1, v2}, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->setAppEntity(ILcom/android/settingslib/widget/AppEntityInfo;)Lcom/android/settingslib/widget/AppEntitiesHeaderController;

    move v1, v4

    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    :cond_2
    return-void
.end method

.method private synthetic lambda$createAppEntity$1(Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/view/View;)V
    .locals 9

    .line 172
    iget-object p3, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v0, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mRecentAppsPreference:Lcom/android/settingslib/widget/LayoutPreference;

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getMetricsCategory()I

    move-result v1

    .line 172
    invoke-virtual {p3, v0, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logClickedPreference(Landroidx/preference/Preference;I)Z

    .line 174
    const-class v2, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    sget v3, Lcom/android/settings/R$string;->application_info_label:I

    iget-object p2, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mHost:Landroidx/fragment/app/Fragment;

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getMetricsCategory()I

    move-result v8

    const/16 v7, 0x3e9

    move-object v4, p1

    .line 174
    invoke-static/range {v2 .. v8}, Lcom/android/settings/applications/AppInfoBase;->startAppInfoFragment(Ljava/lang/Class;ILjava/lang/String;ILandroidx/fragment/app/Fragment;II)V

    return-void
.end method

.method private synthetic lambda$displayPreference$0(Landroid/view/View;)V
    .locals 2

    .line 98
    iget-object p1, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v0, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mRecentAppsPreference:Lcom/android/settingslib/widget/LayoutPreference;

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getMetricsCategory()I

    move-result v1

    .line 98
    invoke-virtual {p1, v0, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logClickedPreference(Landroidx/preference/Preference;I)Z

    .line 100
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 101
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    sget v0, Lcom/android/settings/R$string;->application_info_label:I

    .line 103
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getMetricsCategory()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    .line 105
    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private refreshUi()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mRecentApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    invoke-direct {p0}, Lcom/android/settings/applications/RecentAppsPreferenceController;->displayRecentApps()V

    .line 129
    iget-object p0, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mRecentAppsPreference:Lcom/android/settingslib/widget/LayoutPreference;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mRecentAppsPreference:Lcom/android/settingslib/widget/LayoutPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 133
    iget-object v0, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    instance-of v0, v0, Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;

    if-nez v0, :cond_1

    .line 134
    new-instance v0, Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;-><init>(Landroid/content/Context;)V

    const/16 v1, -0x3e8

    .line 135
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 136
    iget-object p0, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 91
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 92
    iput-object p1, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mRecentAppsPreference:Lcom/android/settingslib/widget/LayoutPreference;

    .line 94
    sget v0, Lcom/android/settings/R$id;->op_app_entities_header:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 95
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->newInstance(Landroid/content/Context;Landroid/view/View;)Lcom/android/settingslib/widget/AppEntitiesHeaderController;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->recent_app_category_title:I

    .line 96
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->setHeaderTitleRes(I)Lcom/android/settingslib/widget/AppEntitiesHeaderController;

    new-instance v0, Lcom/android/settings/applications/-$$Lambda$RecentAppsPreferenceController$lSTV08Ev1kIAejEfOXr-6eUBel8;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/-$$Lambda$RecentAppsPreferenceController$lSTV08Ev1kIAejEfOXr-6eUBel8;-><init>(Lcom/android/settings/applications/RecentAppsPreferenceController;)V

    .line 97
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/AppEntitiesHeaderController;->setHeaderDetailsClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/AppEntitiesHeaderController;

    iput-object p1, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mAppEntitiesController:Lcom/android/settingslib/widget/AppEntitiesHeaderController;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x1

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

.method public synthetic lambda$createAppEntity$1$RecentAppsPreferenceController(Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/applications/RecentAppsPreferenceController;->lambda$createAppEntity$1(Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$displayPreference$0$RecentAppsPreferenceController(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/RecentAppsPreferenceController;->lambda$displayPreference$0(Landroid/view/View;)V

    return-void
.end method

.method public onReloadDataCompleted(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;)V"
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mRecentApps:Ljava/util/List;

    .line 112
    invoke-direct {p0}, Lcom/android/settings/applications/RecentAppsPreferenceController;->refreshUi()V

    .line 114
    new-instance p1, Lcom/android/settings/applications/RecentAppsPreferenceController$1;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 115
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {p1, p0, v0, v2, v1}, Lcom/android/settings/applications/RecentAppsPreferenceController$1;-><init>(Lcom/android/settings/applications/RecentAppsPreferenceController;Landroid/content/Context;ILandroid/content/pm/PackageManager;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 123
    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public setFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mHost:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
