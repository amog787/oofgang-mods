.class public Lcom/oneplus/settings/controllers/OPTopLevelCloudPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPTopLevelCloudPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;


# static fields
.field private static final KEY_TOP_LEVEL_CLOUD:Ljava/lang/String; = "top_level_cloud"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lcom/oneplus/settings/controllers/OPTopLevelCloudPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 51
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 53
    iget-object v0, p0, Lcom/oneplus/settings/controllers/OPTopLevelCloudPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "com.heytap.cloud"

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/oneplus/settings/controllers/OPTopLevelCloudPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/settings/controllers/OPTopLevelCloudPreferenceController;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/controllers/OPTopLevelCloudPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "com.oneplus.cloud"

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/oneplus/settings/controllers/OPTopLevelCloudPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/settings/controllers/OPTopLevelCloudPreferenceController;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 p1, 0x0

    .line 88
    :try_start_0
    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    .line 92
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_1

    :cond_0
    const-string p0, "(unknown)"

    :goto_1
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/oneplus/settings/controllers/OPTopLevelCloudPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "com.oneplus.cloud"

    .line 44
    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/settings/controllers/OPTopLevelCloudPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "com.heytap.cloud"

    .line 45
    invoke-static {p0, v0}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 46
    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
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

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 97
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object p0, p0, Lcom/oneplus/settings/controllers/OPTopLevelCloudPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->oneplus_top_level_cloud_o2_summary:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 100
    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/controllers/OPTopLevelCloudPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->oneplus_top_level_cloud_h2_summary:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    const-string v0, "com.oneplus.cloud"

    const-string v1, "com.heytap.cloud"

    .line 62
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v2, "top_level_cloud"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 64
    :try_start_0
    iget-object p1, p0, Lcom/oneplus/settings/controllers/OPTopLevelCloudPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 65
    new-instance p1, Landroid/content/Intent;

    const-string v0, "intent.action.ocloud.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    iget-object p0, p0, Lcom/oneplus/settings/controllers/OPTopLevelCloudPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 68
    :cond_0
    iget-object p1, p0, Lcom/oneplus/settings/controllers/OPTopLevelCloudPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 69
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.ONEPLUSCLOUD"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.oneplus.cloud.activity.OPMainActivity"

    .line 71
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    iget-object p0, p0, Lcom/oneplus/settings/controllers/OPTopLevelCloudPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 77
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
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

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
