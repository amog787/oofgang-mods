.class public Lcom/android/settings/applications/appinfo/DrawOverlayDetailPreferenceController;
.super Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;
.source "DrawOverlayDetailPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static isManagedProfile(Landroid/os/UserManager;)Z
    .locals 1

    .line 61
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/settings/applications/appinfo/DrawOverlayDetailPreferenceController;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result p0

    return p0
.end method

.method public static isManagedProfile(Landroid/os/UserManager;I)Z
    .locals 2

    if-eqz p0, :cond_2

    .line 73
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    const/16 v0, 0x3e7

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    if-eqz p0, :cond_1

    .line 78
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    :cond_1
    return v1

    .line 71
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "userManager must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 5

    .line 44
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/DrawOverlayDetailPreferenceController;->isManagedProfile(Landroid/os/UserManager;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    return v1

    .line 48
    :cond_0
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 49
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    move v2, v0

    .line 52
    :goto_0
    iget-object v3, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_3

    .line 53
    aget-object v3, v3, v2

    const-string v4, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1
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

.method protected getDetailFragmentClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/SettingsPreferenceFragment;",
            ">;"
        }
    .end annotation

    .line 83
    const-class p0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getAppEntry()Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->getSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

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

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
