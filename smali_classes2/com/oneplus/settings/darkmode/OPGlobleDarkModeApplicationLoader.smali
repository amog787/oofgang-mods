.class public Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;
.super Lcom/oneplus/settings/apploader/OPApplicationLoader;
.source "OPGlobleDarkModeApplicationLoader.java"


# static fields
.field protected static mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mAppopsModeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mGrayAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field protected mWhiteAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;->mAppList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/AppOpsManager;Landroid/content/pm/PackageManager;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/settings/apploader/OPApplicationLoader;-><init>(Landroid/content/Context;Landroid/app/AppOpsManager;Landroid/content/pm/PackageManager;)V

    .line 28
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;->mAppopsModeMap:Ljava/util/Map;

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;->mWhiteAppList:Ljava/util/List;

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;->mGrayAppList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAppListByType(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 81
    sget-object p0, Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;->mAppList:Ljava/util/List;

    return-object p0

    .line 83
    :cond_0
    iget-object p0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAllAppSortBySelectedList:Ljava/util/List;

    return-object p0
.end method

.method public loadAllAppList()V
    .locals 18

    move-object/from16 v0, p0

    const-string v1, "OPGlobleDarkModeApplicationLoader"

    .line 90
    :try_start_0
    sget-object v2, Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;->mAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 91
    iget-object v2, v0, Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;->mWhiteAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 92
    iget-object v2, v0, Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;->mGrayAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 93
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 94
    iget v3, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAppType:I

    const/16 v4, 0x64

    if-eq v3, v4, :cond_0

    const-string v3, "android.intent.category.LAUNCHER"

    .line 95
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    :cond_0
    iget-boolean v3, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mNeedLoadWorkProfileApps:Z

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 99
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 100
    iget-object v6, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 101
    iget-object v8, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v2, v5, v7}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v7

    .line 103
    invoke-interface {v3, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 106
    :cond_1
    iget-object v3, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 111
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    .line 114
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 115
    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 116
    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 117
    iget-object v7, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 118
    invoke-virtual {v3, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Ljava/lang/String;

    .line 121
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v7, -0x1

    .line 123
    iget-object v8, v0, Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;->mAppopsModeMap:Ljava/util/Map;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 124
    iget-object v7, v0, Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;->mAppopsModeMap:Ljava/util/Map;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :cond_4
    move v14, v7

    const/16 v15, 0x6c

    const/16 v12, 0x69

    const/16 v11, 0x6a

    const/16 v10, 0x66

    const/16 v8, 0x65

    if-eq v14, v4, :cond_5

    const/16 v7, 0x67

    if-eq v14, v7, :cond_5

    if-eq v14, v11, :cond_5

    if-eq v14, v8, :cond_5

    if-eq v14, v10, :cond_5

    if-eq v14, v12, :cond_5

    if-eq v14, v15, :cond_5

    goto :goto_1

    .line 135
    :cond_5
    iget-object v7, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v6, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 136
    new-instance v15, Lcom/oneplus/settings/better/OPDarkModeAppModel;

    const-string v16, ""

    const/16 v17, 0x0

    move v5, v7

    move-object v7, v15

    move-object v8, v6

    move-object/from16 v10, v16

    move v11, v13

    move/from16 v12, v17

    invoke-direct/range {v7 .. v12}, Lcom/oneplus/settings/better/OPDarkModeAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 139
    invoke-virtual {v15, v5}, Lcom/oneplus/settings/better/OPDarkModeAppModel;->setVersionCode(I)V

    .line 140
    iget-object v5, v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v5, v3}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->getBadgedIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/oneplus/settings/better/OPDarkModeAppModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x1

    const/16 v5, 0x65

    const/16 v7, 0x66

    if-eq v14, v4, :cond_7

    if-eq v14, v5, :cond_7

    if-eq v14, v7, :cond_7

    const/16 v8, 0x6a

    if-ne v14, v8, :cond_6

    goto :goto_2

    :cond_6
    const/4 v8, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    move v8, v3

    .line 145
    :goto_3
    invoke-virtual {v15, v8}, Lcom/oneplus/settings/better/OPDarkModeAppModel;->setSelected(Z)V

    .line 146
    invoke-virtual {v15, v14}, Lcom/oneplus/settings/better/OPDarkModeAppModel;->setAppopsMode(I)V

    const/16 v8, 0x6b

    if-eq v14, v8, :cond_9

    const/16 v8, 0x68

    if-ne v14, v8, :cond_8

    goto :goto_4

    :cond_8
    const/4 v8, 0x0

    .line 150
    invoke-virtual {v15, v8}, Lcom/oneplus/settings/better/OPDarkModeAppModel;->setDisable(Z)V

    goto :goto_5

    :cond_9
    :goto_4
    const/4 v8, 0x0

    .line 148
    invoke-virtual {v15, v3}, Lcom/oneplus/settings/better/OPDarkModeAppModel;->setDisable(Z)V

    .line 152
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GlobalDarkMode--packageName:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " uid:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " currentMode:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mAppList.contains(appModel):"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;->mAppList:Ljava/util/List;

    invoke-interface {v6, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v14, v7, :cond_b

    const/16 v3, 0x69

    if-eq v14, v3, :cond_b

    const/16 v3, 0x6c

    if-eq v14, v3, :cond_b

    if-ne v14, v5, :cond_a

    goto :goto_6

    .line 165
    :cond_a
    iget-object v3, v0, Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;->mWhiteAppList:Ljava/util/List;

    invoke-interface {v3, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 166
    iget-object v3, v0, Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;->mWhiteAppList:Ljava/util/List;

    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 161
    :cond_b
    :goto_6
    iget-object v3, v0, Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;->mGrayAppList:Ljava/util/List;

    invoke-interface {v3, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 162
    iget-object v3, v0, Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;->mGrayAppList:Ljava/util/List;

    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_7
    move v5, v8

    goto/16 :goto_1

    .line 171
    :cond_d
    iget-object v2, v0, Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;->mWhiteAppList:Ljava/util/List;

    sget-object v3, Lcom/oneplus/settings/apploader/OPApplicationLoader;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 172
    iget-object v2, v0, Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;->mGrayAppList:Ljava/util/List;

    sget-object v3, Lcom/oneplus/settings/apploader/OPApplicationLoader;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 173
    sget-object v2, Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;->mAppList:Ljava/util/List;

    iget-object v3, v0, Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;->mWhiteAppList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 174
    sget-object v2, Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;->mAppList:Ljava/util/List;

    iget-object v0, v0, Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;->mGrayAppList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    const-string v2, "some unknown error happened."

    .line 178
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_8
    return-void
.end method

.method public loadAppMode(I)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 43
    invoke-virtual {v0, v1}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;->mAppopsModeMap:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 47
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    :cond_0
    if-eqz v0, :cond_4

    .line 50
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$PackageOps;

    .line 51
    invoke-virtual {v1}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 52
    invoke-virtual {v1}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v3

    .line 53
    invoke-virtual {p0, v2}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->isThisUserAProfileOfCurrentUser(I)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {v1}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$OpEntry;

    .line 58
    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v5

    if-ne v5, p1, :cond_3

    .line 59
    iget-object v5, p0, Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;->mAppopsModeMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 64
    :cond_4
    iget-object p0, p0, Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;->mAppopsModeMap:Ljava/util/Map;

    return-object p0
.end method

.method public releaseAppList()V
    .locals 1

    .line 68
    sget-object v0, Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;->mAppList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 69
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;->mWhiteAppList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 72
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 74
    :cond_1
    iget-object p0, p0, Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;->mGrayAppList:Ljava/util/List;

    if-eqz p0, :cond_2

    .line 75
    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_2
    return-void
.end method
