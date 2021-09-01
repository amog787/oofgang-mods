.class public Lcom/android/settings/applications/AppHeaderPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AppHeaderPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# instance fields
.field private mHeaderPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field private mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mParent:Lcom/android/settings/dashboard/DashboardFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

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

    .line 81
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/android/settings/applications/AppHeaderPreferenceController;->mHeaderPreference:Lcom/android/settingslib/widget/LayoutPreference;

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

.method public onResume()V
    .locals 5

    .line 92
    iget-object v0, p0, Lcom/android/settings/applications/AppHeaderPreferenceController;->mParent:Lcom/android/settings/dashboard/DashboardFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 94
    iget-object v2, p0, Lcom/android/settings/applications/AppHeaderPreferenceController;->mParent:Lcom/android/settings/dashboard/DashboardFragment;

    iget-object v3, p0, Lcom/android/settings/applications/AppHeaderPreferenceController;->mHeaderPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v4, Lcom/android/settings/R$id;->entity_header:I

    .line 95
    invoke-virtual {v3, v4}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/android/settings/widget/EntityHeaderController;->newInstance(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/applications/AppHeaderPreferenceController;->mParent:Lcom/android/settings/dashboard/DashboardFragment;

    .line 96
    invoke-virtual {v2}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/AppHeaderPreferenceController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/widget/EntityHeaderController;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/EntityHeaderController;

    iget-object v2, p0, Lcom/android/settings/applications/AppHeaderPreferenceController;->mParent:Lcom/android/settings/dashboard/DashboardFragment;

    .line 97
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/AppHeaderPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2, v3}, Lcom/android/settingslib/Utils;->getBadgedIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/EntityHeaderController;

    iget-object v2, p0, Lcom/android/settings/applications/AppHeaderPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 98
    invoke-virtual {v2, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/EntityHeaderController;->setLabel(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    iget-object v1, p0, Lcom/android/settings/applications/AppHeaderPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 99
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/EntityHeaderController;->setSummary(Landroid/content/pm/PackageInfo;)Lcom/android/settings/widget/EntityHeaderController;

    iget-object v1, p0, Lcom/android/settings/applications/AppHeaderPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 100
    invoke-static {v1}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/EntityHeaderController;->setIsInstantApp(Z)Lcom/android/settings/widget/EntityHeaderController;

    iget-object v1, p0, Lcom/android/settings/applications/AppHeaderPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 101
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/EntityHeaderController;->setPackageName(Ljava/lang/String;)Lcom/android/settings/widget/EntityHeaderController;

    iget-object v1, p0, Lcom/android/settings/applications/AppHeaderPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 102
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/EntityHeaderController;->setUid(I)Lcom/android/settings/widget/EntityHeaderController;

    const/4 v1, 0x0

    .line 103
    invoke-virtual {v0, v1, v1}, Lcom/android/settings/widget/EntityHeaderController;->setButtonActions(II)Lcom/android/settings/widget/EntityHeaderController;

    iget-object p0, p0, Lcom/android/settings/applications/AppHeaderPreferenceController;->mParent:Lcom/android/settings/dashboard/DashboardFragment;

    .line 104
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Z)Landroid/view/View;

    return-void
.end method

.method public setLifeCycle(Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/applications/AppHeaderPreferenceController;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/settings/applications/AppHeaderPreferenceController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    return-object p0
.end method

.method public setPackageInfo(Landroid/content/pm/PackageInfo;)Lcom/android/settings/applications/AppHeaderPreferenceController;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/android/settings/applications/AppHeaderPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    return-object p0
.end method

.method public setParentFragment(Lcom/android/settings/dashboard/DashboardFragment;)Lcom/android/settings/applications/AppHeaderPreferenceController;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/android/settings/applications/AppHeaderPreferenceController;->mParent:Lcom/android/settings/dashboard/DashboardFragment;

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
