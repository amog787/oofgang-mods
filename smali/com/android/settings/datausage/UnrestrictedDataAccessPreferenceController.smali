.class public Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "UnrestrictedDataAccessPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;
.implements Lcom/android/settings/applications/AppStateBaseBridge$Callback;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field private final mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field private final mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

.field private mExtraLoaded:Z

.field private mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field private mParentFragment:Lcom/android/settings/dashboard/DashboardFragment;

.field private mScreen:Landroidx/preference/PreferenceScreen;

.field private mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Landroid/app/Application;

    .line 61
    invoke-static {p2}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 63
    new-instance p2, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-direct {p2, p1}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    .line 64
    new-instance p1, Lcom/android/settings/datausage/AppStateDataUsageBridge;

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/settings/datausage/AppStateDataUsageBridge;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;Lcom/android/settings/datausage/DataSaverBackend;)V

    iput-object p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

    return-void
.end method

.method private removeUselessPrefs(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 221
    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    .line 222
    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 223
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 226
    :cond_0
    iget-object v2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static shouldAddPreference(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 241
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 81
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 82
    iput-object p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 87
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$bool;->config_show_data_saver:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

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

.method logSpecialPermissionChange(ZLjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const/16 p1, 0x30d

    goto :goto_0

    :cond_0
    const/16 p1, 0x30e

    .line 235
    :goto_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public onAllSizesComputed()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStateBaseBridge;->release()V

    return-void
.end method

.method public onExtraInfoUpdated()V
    .locals 1

    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mExtraLoaded:Z

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->rebuild()V

    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 191
    instance-of v0, p1, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 193
    check-cast p1, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;

    .line 194
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x1

    if-ne p2, v0, :cond_0

    move v1, v2

    .line 195
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->getEntry()Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object p2

    iget-object p2, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1, p2}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->logSpecialPermissionChange(ZLjava/lang/String;)V

    .line 196
    iget-object p0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {p1}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->getEntry()Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object p2

    iget-object p2, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 197
    invoke-virtual {p1}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->getEntry()Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 196
    invoke-virtual {p0, p2, v0, v1}, Lcom/android/settings/datausage/DataSaverBackend;->setIsWhitelisted(ILjava/lang/String;Z)V

    .line 198
    invoke-virtual {p1}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->getDataUsageState()Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    move-result-object p0

    iput-boolean v1, p0, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverWhitelisted:Z

    return v2

    :cond_1
    return v1
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 130
    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 132
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    .line 134
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 135
    invoke-static {v6}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->shouldAddPreference(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    .line 139
    :cond_1
    iget-object v3, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v3, v3, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    if-nez v3, :cond_2

    goto :goto_2

    .line 143
    :cond_2
    invoke-static {v6}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->generateKey(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/String;

    move-result-object v3

    .line 144
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v4, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    .line 146
    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;

    if-nez v3, :cond_3

    .line 148
    new-instance v3, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;

    iget-object v4, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v4}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v7, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v8, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v9, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mParentFragment:Lcom/android/settings/dashboard/DashboardFragment;

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/datausage/DataSaverBackend;Lcom/android/settings/dashboard/DashboardFragment;)V

    .line 150
    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 151
    iget-object v4, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    .line 153
    :cond_3
    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v5, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 154
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 153
    invoke-static {v4, v6, v5}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfMeteredDataRestricted(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 155
    invoke-virtual {v3}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreference;->updateState()V

    .line 157
    :goto_1
    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setOrder(I)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 161
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->removeUselessPrefs(Ljava/util/Set;)V

    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStateBaseBridge;->resume()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mDataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStateBaseBridge;->pause()V

    return-void
.end method

.method public rebuild()V
    .locals 3

    .line 205
    iget-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mExtraLoaded:Z

    if-nez v0, :cond_0

    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/applications/ApplicationsState$Session;->rebuild(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 212
    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->onRebuildComplete(Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method public setFilter(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    return-void
.end method

.method public setParentFragment(Lcom/android/settings/dashboard/DashboardFragment;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mParentFragment:Lcom/android/settings/dashboard/DashboardFragment;

    return-void
.end method

.method public setSession(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v0, p0, p1}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;Landroidx/lifecycle/Lifecycle;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
