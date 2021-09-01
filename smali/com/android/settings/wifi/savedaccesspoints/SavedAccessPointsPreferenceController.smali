.class public Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "SavedAccessPointsPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field mAccessPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mHost:Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

.field private mPreferenceGroup:Landroidx/preference/PreferenceGroup;

.field private final mUserBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

.field protected final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    new-instance p2, Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object p2, p0, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;->mUserBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    .line 56
    const-class p2, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method static synthetic lambda$refreshSavedAccessPoints$0(Lcom/android/settingslib/wifi/AccessPoint;)Z
    .locals 0

    .line 90
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspointConfig()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private updatePreference()V
    .locals 7

    .line 96
    iget-object v0, p0, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 97
    iget-object v0, p0, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;->mAccessPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/wifi/AccessPoint;

    .line 98
    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 100
    new-instance v3, Lcom/android/settingslib/wifi/AccessPointPreference;

    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;->mUserBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    const/4 v6, 0x1

    invoke-direct {v3, v1, v4, v5, v6}, Lcom/android/settingslib/wifi/AccessPointPreference;-><init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;Z)V

    .line 102
    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 103
    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 104
    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 106
    iget-object v1, p0, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
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

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;->refreshSavedAccessPoints()V

    .line 74
    invoke-direct {p0}, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;->updatePreference()V

    .line 75
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;->refreshSavedAccessPoints()V

    .line 67
    iget-object p0, p0, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;->mAccessPoints:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

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

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;->mHost:Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    .line 82
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 83
    iget-object p0, p0, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;->mHost:Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    check-cast p1, Lcom/android/settingslib/wifi/AccessPointPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->showWifiPage(Lcom/android/settingslib/wifi/AccessPointPreference;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected refreshSavedAccessPoints()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v0, v1}, Lcom/android/settingslib/wifi/WifiSavedConfigUtils;->getAllConfigs(Landroid/content/Context;Landroid/net/wifi/WifiManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/settings/wifi/savedaccesspoints/-$$Lambda$SavedAccessPointsPreferenceController$RMhZcqBmN7Sfb8TDyzEEsGMXe08;->INSTANCE:Lcom/android/settings/wifi/savedaccesspoints/-$$Lambda$SavedAccessPointsPreferenceController$RMhZcqBmN7Sfb8TDyzEEsGMXe08;

    .line 90
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/settings/wifi/savedaccesspoints/SavedNetworkComparator;->INSTANCE:Ljava/util/Comparator;

    .line 91
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 92
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;->mAccessPoints:Ljava/util/List;

    return-void
.end method

.method public setHost(Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;->mHost:Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
