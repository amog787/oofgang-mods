.class public Lcom/android/settings/applications/managedomainurls/DomainAppPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "DomainAppPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;


# static fields
.field private static final INSTALLED_APP_DETAILS:I = 0x1


# instance fields
.field private mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mDomainAppList:Landroidx/preference/PreferenceGroup;

.field private mFragment:Lcom/android/settings/applications/managedomainurls/ManageDomainUrls;

.field private mMetricsCategory:I

.field private mPreferenceCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 54
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    .line 54
    invoke-static {p1}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreferenceController;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    return-void
.end method

.method private cacheAllPrefs(Landroidx/preference/PreferenceGroup;)V
    .locals 5

    .line 125
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreferenceController;->mPreferenceCache:Ljava/util/Map;

    .line 126
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 128
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 129
    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 132
    :cond_0
    iget-object v3, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreferenceController;->mPreferenceCache:Ljava/util/Map;

    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getCachedPreference(Ljava/lang/String;)Landroidx/preference/Preference;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreferenceController;->mPreferenceCache:Ljava/util/Map;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/preference/Preference;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private rebuild()V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreferenceController;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_WITH_DOMAIN_URLS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/applications/ApplicationsState$Session;->rebuild(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/managedomainurls/DomainAppPreferenceController;->onRebuildComplete(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private rebuildAppList(Landroidx/preference/PreferenceGroup;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceGroup;",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .line 156
    invoke-direct {p0, p1}, Lcom/android/settings/applications/managedomainurls/DomainAppPreferenceController;->cacheAllPrefs(Landroidx/preference/PreferenceGroup;)V

    .line 157
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 158
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 159
    invoke-static {v1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 161
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 162
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 163
    invoke-direct {p0, v5}, Lcom/android/settings/applications/managedomainurls/DomainAppPreferenceController;->getCachedPreference(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;

    if-nez v6, :cond_0

    .line 165
    new-instance v6, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;

    invoke-direct {v6, v1, v2, v4}, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;-><init>(Landroid/content/Context;Landroid/util/IconDrawableFactory;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    .line 166
    invoke-virtual {v6, v5}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p1, v6}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    .line 169
    :cond_0
    invoke-virtual {v6}, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->reuse()V

    .line 171
    :goto_1
    invoke-virtual {v6, v3}, Landroidx/preference/Preference;->setOrder(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 173
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/applications/managedomainurls/DomainAppPreferenceController;->removeCachedPrefs(Landroidx/preference/PreferenceGroup;)V

    return-void
.end method

.method private removeCachedPrefs(Landroidx/preference/PreferenceGroup;)V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreferenceController;->mPreferenceCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 142
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 144
    iput-object p1, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreferenceController;->mPreferenceCache:Ljava/util/Map;

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

    .line 65
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreferenceController;->mDomainAppList:Landroidx/preference/PreferenceGroup;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

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

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 7

    .line 71
    instance-of v0, p1, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;

    if-eqz v0, :cond_0

    .line 72
    check-cast p1, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;

    invoke-virtual {p1}, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->getEntry()Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object p1

    .line 73
    const-class v0, Lcom/android/settings/applications/AppLaunchSettings;

    sget v1, Lcom/android/settings/R$string;->auto_launch_label:I

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreferenceController;->mFragment:Lcom/android/settings/applications/managedomainurls/ManageDomainUrls;

    const/4 v5, 0x1

    iget v6, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreferenceController;->mMetricsCategory:I

    invoke-static/range {v0 .. v6}, Lcom/android/settings/applications/AppInfoBase;->startAppInfoFragment(Ljava/lang/Class;ILjava/lang/String;ILandroidx/fragment/app/Fragment;II)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
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

.method public onAllSizesComputed()V
    .locals 0

    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/android/settings/applications/managedomainurls/DomainAppPreferenceController;->rebuild()V

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

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreferenceController;->mDomainAppList:Landroidx/preference/PreferenceGroup;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/applications/managedomainurls/DomainAppPreferenceController;->rebuildAppList(Landroidx/preference/PreferenceGroup;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public setFragment(Lcom/android/settings/applications/managedomainurls/ManageDomainUrls;)V
    .locals 1

    .line 82
    iput-object p1, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreferenceController;->mFragment:Lcom/android/settings/applications/managedomainurls/ManageDomainUrls;

    .line 83
    invoke-virtual {p1}, Lcom/android/settings/applications/managedomainurls/ManageDomainUrls;->getMetricsCategory()I

    move-result p1

    iput p1, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreferenceController;->mMetricsCategory:I

    .line 84
    iget-object p1, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreferenceController;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreferenceController;->mFragment:Lcom/android/settings/applications/managedomainurls/ManageDomainUrls;

    invoke-virtual {v0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;Landroidx/lifecycle/Lifecycle;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreferenceController;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
