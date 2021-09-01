.class public abstract Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;
.source "DefaultBasePicker.java"


# instance fields
.field protected mAppInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/defaultapp/DefaultAppActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mAppNameInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mLogic:Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

.field protected mType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 40
    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;-><init>()V

    .line 41
    invoke-virtual {p0}, Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;->mType:Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;->mLogic:Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    .line 43
    iget-object v1, p0, Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getAppInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;->mAppInfoList:Ljava/util/List;

    .line 44
    iget-object v1, p0, Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;->mLogic:Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    iget-object v2, p0, Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getAppPackageNameList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;->mAppNameInfoList:Ljava/util/List;

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

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 96
    iget-object v2, p0, Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;->mAppNameInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 97
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    .line 100
    :try_start_0
    new-instance v6, Lcom/android/settingslib/applications/DefaultAppInfo;

    iget-object v7, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    iget-object v9, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->mPm:Landroid/content/pm/PackageManager;

    aget-object v10, v2, v5

    iget v11, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mUserId:I

    invoke-virtual {v9, v10, v4, v11}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    invoke-direct {v6, v1, v7, v8, v9}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILandroid/content/pm/PackageItemInfo;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;->mLogic:Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    iget-object p0, p0, Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;->mType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getPmDefaultAppPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 49
    iget-object p0, p0, Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;->mType:Ljava/lang/String;

    invoke-static {p0}, Lcom/oneplus/settings/defaultapp/DefaultAppUtils;->getKeyTypeInt(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 62
    :cond_0
    sget p0, Lcom/android/settings/R$xml;->op_default_mail_settings:I

    goto :goto_0

    .line 59
    :cond_1
    sget p0, Lcom/android/settings/R$xml;->op_default_music_settings:I

    goto :goto_0

    .line 56
    :cond_2
    sget p0, Lcom/android/settings/R$xml;->op_default_gallery_settings:I

    goto :goto_0

    .line 53
    :cond_3
    sget p0, Lcom/android/settings/R$xml;->op_default_camera_settings:I

    :goto_0
    return p0
.end method

.method protected abstract getType()Ljava/lang/String;
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;->mLogic:Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    iget-object v1, p0, Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getDefaultAppPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;->mLogic:Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    iget-object v2, p0, Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->getPmDefaultAppPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 85
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "persistString packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", local defaultAppPackageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",pmDefaultAppPkg:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseDefaultPreference"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;->mLogic:Lcom/oneplus/settings/defaultapp/DefaultAppLogic;

    iget-object v1, p0, Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;->mType:Ljava/lang/String;

    iget-object v2, p0, Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;->mAppInfoList:Ljava/util/List;

    iget-object p0, p0, Lcom/oneplus/settings/defaultapp/view/DefaultBasePicker;->mAppNameInfoList:Ljava/util/List;

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/oneplus/settings/defaultapp/DefaultAppLogic;->setDefaultAppPosition(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
