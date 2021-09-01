.class public Lcom/android/settings/location/RecentLocationRequestPreferenceController;
.super Lcom/android/settings/location/LocationBasePreferenceController;
.source "RecentLocationRequestPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/location/RecentLocationRequestPreferenceController$PackageEntryClickedListener;
    }
.end annotation


# static fields
.field public static final MAX_APPS:I = 0x3


# instance fields
.field private mCategoryRecentLocationRequests:Landroidx/preference/PreferenceCategory;

.field mRecentLocationApps:Lcom/android/settingslib/location/RecentLocationApps;

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/settings/location/LocationBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x3

    .line 42
    iput p2, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->mType:I

    .line 75
    new-instance p2, Lcom/android/settingslib/location/RecentLocationApps;

    invoke-direct {p2, p1}, Lcom/android/settingslib/location/RecentLocationApps;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->mRecentLocationApps:Lcom/android/settingslib/location/RecentLocationApps;

    return-void
.end method

.method public static createAppPreference(Landroid/content/Context;Lcom/android/settingslib/location/RecentLocationApps$Request;Lcom/android/settings/dashboard/DashboardFragment;)Lcom/android/settings/widget/AppPreference;
    .locals 2

    .line 129
    new-instance v0, Lcom/android/settings/widget/AppPreference;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/AppPreference;-><init>(Landroid/content/Context;)V

    .line 130
    iget-object p0, p1, Lcom/android/settingslib/location/RecentLocationApps$Request;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 131
    iget-object p0, p1, Lcom/android/settingslib/location/RecentLocationApps$Request;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 132
    new-instance p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController$PackageEntryClickedListener;

    iget-object v1, p1, Lcom/android/settingslib/location/RecentLocationApps$Request;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settingslib/location/RecentLocationApps$Request;->userHandle:Landroid/os/UserHandle;

    invoke-direct {p0, p2, v1, p1}, Lcom/android/settings/location/RecentLocationRequestPreferenceController$PackageEntryClickedListener;-><init>(Lcom/android/settings/dashboard/DashboardFragment;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-object v0
.end method

.method public static isRequestMatchesProfileType(Landroid/os/UserManager;Lcom/android/settingslib/location/RecentLocationApps$Request;I)Z
    .locals 1

    .line 143
    iget-object p1, p1, Lcom/android/settingslib/location/RecentLocationApps$Request;->userHandle:Landroid/os/UserHandle;

    .line 144
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    .line 143
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_0

    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_0

    return p1

    :cond_0
    if-nez p0, :cond_1

    and-int/lit8 p0, p2, 0x1

    if-eqz p0, :cond_1

    return p1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 6

    .line 80
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->mCategoryRecentLocationRequests:Landroidx/preference/PreferenceCategory;

    .line 82
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 85
    iget-object v2, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->mRecentLocationApps:Lcom/android/settingslib/location/RecentLocationApps;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settingslib/location/RecentLocationApps;->getAppListSorted(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/location/RecentLocationApps$Request;

    .line 87
    iget v5, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->mType:I

    invoke-static {v1, v4, v5}, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->isRequestMatchesProfileType(Landroid/os/UserManager;Lcom/android/settingslib/location/RecentLocationApps$Request;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 88
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 95
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 97
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/location/RecentLocationApps$Request;

    .line 98
    iget-object v2, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->mCategoryRecentLocationRequests:Landroidx/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/android/settings/location/LocationBasePreferenceController;->mFragment:Lcom/android/settings/dashboard/DashboardFragment;

    .line 99
    invoke-static {p1, v1, v3}, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->createAppPreference(Landroid/content/Context;Lcom/android/settingslib/location/RecentLocationApps$Request;Lcom/android/settings/dashboard/DashboardFragment;)Lcom/android/settings/widget/AppPreference;

    move-result-object v1

    .line 98
    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 103
    :cond_2
    new-instance v0, Lcom/android/settings/widget/AppPreference;

    invoke-direct {v0, p1}, Lcom/android/settings/widget/AppPreference;-><init>(Landroid/content/Context;)V

    .line 104
    sget p1, Lcom/android/settings/R$string;->location_no_recent_apps:I

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 105
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 106
    iget-object p0, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->mCategoryRecentLocationRequests:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_3
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

    .line 112
    iget-object p2, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->mCategoryRecentLocationRequests:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/android/settings/location/LocationBasePreferenceController;->mLocationEnabler:Lcom/android/settings/location/LocationEnabler;

    invoke-virtual {p0, p1}, Lcom/android/settings/location/LocationEnabler;->isEnabled(I)Z

    move-result p0

    invoke-virtual {p2, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public setProfileType(I)V
    .locals 0

    .line 121
    iput p1, p0, Lcom/android/settings/location/RecentLocationRequestPreferenceController;->mType:I

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
