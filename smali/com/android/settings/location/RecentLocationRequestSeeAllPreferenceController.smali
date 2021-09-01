.class public Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;
.super Lcom/android/settings/location/LocationBasePreferenceController;
.source "RecentLocationRequestSeeAllPreferenceController.java"


# instance fields
.field private mCategoryAllRecentLocationRequests:Landroidx/preference/PreferenceScreen;

.field private mPreference:Landroidx/preference/Preference;

.field private mRecentLocationApps:Lcom/android/settingslib/location/RecentLocationApps;

.field private mShowSystem:Z

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/settings/location/LocationBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 40
    iput-boolean p2, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->mShowSystem:Z

    const/4 p2, 0x3

    .line 42
    iput p2, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->mType:I

    .line 46
    new-instance p2, Lcom/android/settingslib/location/RecentLocationApps;

    invoke-direct {p2, p1}, Lcom/android/settingslib/location/RecentLocationApps;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->mRecentLocationApps:Lcom/android/settingslib/location/RecentLocationApps;

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

    .line 56
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceScreen;

    iput-object p1, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->mCategoryAllRecentLocationRequests:Landroidx/preference/PreferenceScreen;

    return-void
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

.method public onLocationModeChanged(IZ)V
    .locals 0

    .line 51
    iget-object p2, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->mCategoryAllRecentLocationRequests:Landroidx/preference/PreferenceScreen;

    iget-object p0, p0, Lcom/android/settings/location/LocationBasePreferenceController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    invoke-virtual {p0, p1}, Lcom/android/settings/location/LocationEnabler;->isEnabled(I)Z

    move-result p0

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public setProfileType(I)V
    .locals 0

    .line 97
    iput p1, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->mType:I

    return-void
.end method

.method public setShowSystem(Z)V
    .locals 0

    .line 101
    iput-boolean p1, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->mShowSystem:Z

    .line 102
    iget-object p1, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {p0, p1}, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 5

    .line 62
    iget-object v0, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->mCategoryAllRecentLocationRequests:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 63
    iput-object p1, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->mPreference:Landroidx/preference/Preference;

    .line 65
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 67
    iget-object v2, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->mRecentLocationApps:Lcom/android/settingslib/location/RecentLocationApps;

    iget-boolean v3, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->mShowSystem:Z

    invoke-virtual {v2, v3}, Lcom/android/settingslib/location/RecentLocationApps;->getAppListSorted(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/location/RecentLocationApps$Request;

    .line 69
    iget v4, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->mType:I

    invoke-static {v0, v3, v4}, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->isRequestMatchesProfileType(Landroid/os/UserManager;Lcom/android/settingslib/location/RecentLocationApps$Request;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 70
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->mCategoryAllRecentLocationRequests:Landroidx/preference/PreferenceScreen;

    new-instance v2, Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/oneplus/settings/ui/OPPreferenceHeaderMargin;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 75
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    new-instance p1, Lcom/android/settingslib/widget/apppreference/AppPreference;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/settingslib/widget/apppreference/AppPreference;-><init>(Landroid/content/Context;)V

    .line 78
    sget v0, Lcom/android/settings/R$string;->location_no_recent_apps:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    const/4 v0, 0x0

    .line 79
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 80
    iget-object p0, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->mCategoryAllRecentLocationRequests:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    .line 82
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/location/RecentLocationApps$Request;

    .line 84
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/location/LocationBasePreferenceController;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    .line 83
    invoke-static {v2, v1, v3}, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->createAppPreference(Landroid/content/Context;Lcom/android/settingslib/location/RecentLocationApps$Request;Lcom/android/settings/dashboard/DashboardFragment;)Lcom/android/settings/widget/AppPreference;

    move-result-object v1

    .line 86
    iget-object v2, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->mCategoryAllRecentLocationRequests:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
