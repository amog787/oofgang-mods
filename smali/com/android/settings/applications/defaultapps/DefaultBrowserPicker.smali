.class public Lcom/android/settings/applications/defaultapps/DefaultBrowserPicker;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;
.source "DefaultBrowserPicker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCandidates()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/applications/DefaultAppInfo;",
            ">;"
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 70
    iget-object v2, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->mPm:Landroid/content/pm/PackageManager;

    sget-object v3, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->BROWSE_PROBE:Landroid/content/Intent;

    iget v4, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mUserId:I

    const/high16 v5, 0x20000

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    .line 73
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 74
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v3, :cond_3

    .line 76
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 77
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v8, :cond_2

    iget-boolean v7, v7, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-nez v7, :cond_0

    goto :goto_1

    .line 80
    :cond_0
    iget-object v7, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 81
    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    .line 86
    :cond_1
    :try_start_0
    new-instance v8, Lcom/android/settingslib/applications/DefaultAppInfo;

    iget-object v9, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    iget-object v11, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v7, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    invoke-direct {v8, v1, v9, v10, v11}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILandroid/content/pm/PackageItemInfo;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->mPm:Landroid/content/pm/PackageManager;

    iget p0, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mUserId:I

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getDefaultBrowserPackageNameAsUser(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x311

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 47
    sget p0, Lcom/android/settings/R$xml;->default_browser_settings:I

    return p0
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->mPm:Landroid/content/pm/PackageManager;

    iget p0, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mUserId:I

    invoke-virtual {v0, p1, p0}, Landroid/content/pm/PackageManager;->setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method
