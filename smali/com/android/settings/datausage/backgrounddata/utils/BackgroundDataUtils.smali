.class public Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;
.super Ljava/lang/Object;
.source "BackgroundDataUtils.java"


# direct methods
.method public static addBackgroundDataApp(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    if-eqz p0, :cond_1

    .line 206
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-gez p2, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    invoke-static {p0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->getSqliteDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const/4 v0, 0x2

    .line 210
    invoke-static {p0, p1, p2, v0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->addBackgroundDataApp(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static addBackgroundDataApp(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;II)V
    .locals 2

    if-eqz p0, :cond_2

    .line 214
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-gez p2, :cond_0

    goto :goto_0

    .line 217
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->queryApp(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 218
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "package_name"

    .line 220
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "uid"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 222
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "type"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p1, 0x0

    const-string p2, "background_data"

    .line 223
    invoke-virtual {p0, p2, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_2
    :goto_0
    return-void
.end method

.method public static changeRoamingAppStatus(Landroid/content/Context;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 306
    :cond_0
    invoke-static {p0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->getSqliteDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 310
    :cond_1
    invoke-static {v0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->queryAllApp(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 311
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 314
    :cond_2
    invoke-static {p0, v1}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->changeRoamingAppStatus(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_1

    .line 312
    :cond_3
    :goto_0
    invoke-static {p0, v0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->initAppBackgroundDataType(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_1
    return-void
.end method

.method public static changeRoamingAppStatus(Landroid/content/Context;Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;)V
    .locals 6

    .line 346
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;->getPackage_name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1}, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;->getUid()I

    move-result v2

    if-gez v2, :cond_0

    goto :goto_1

    .line 349
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;->getPackage_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;->getUid()I

    move-result v3

    invoke-static {p0, v2, v3}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 350
    invoke-virtual {p1}, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;->getType()I

    move-result v2

    .line 351
    invoke-virtual {p1}, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;->getPackage_name()Ljava/lang/String;

    move-result-object v3

    .line 352
    invoke-virtual {p1}, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;->getUid()I

    move-result v4

    if-eqz v2, :cond_4

    const/4 v5, 0x1

    if-eq v2, v5, :cond_3

    const/4 v5, 0x2

    if-eq v2, v5, :cond_1

    goto :goto_1

    .line 362
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->isRoaming()Z

    move-result v2

    if-nez v2, :cond_2

    .line 363
    invoke-static {p0, v4, v3, v1}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->setBlackList(Landroid/content/Context;ILjava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 365
    :cond_2
    invoke-static {p0, v4, v3, v0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->setBlackList(Landroid/content/Context;ILjava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 359
    :cond_3
    invoke-static {p0, v4, v3, v0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->setBlackList(Landroid/content/Context;ILjava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 356
    :cond_4
    invoke-static {p0, v4, v3, v1}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->setBlackList(Landroid/content/Context;ILjava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 372
    :goto_0
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 373
    invoke-static {p0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->getSqliteDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 375
    invoke-virtual {p1}, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;->getPackage_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;->getUid()I

    move-result p1

    invoke-static {p0, v0, p1}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->deleteBackgroundDataApp(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I

    :cond_5
    :goto_1
    return-void
.end method

.method public static changeRoamingAppStatus(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 326
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 329
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;

    .line 331
    :try_start_0
    invoke-static {p0, v0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->changeRoamingAppStatus(Landroid/content/Context;Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 333
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static deleteBackgroundDataApp(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 0

    if-eqz p0, :cond_2

    if-gez p2, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    invoke-static {p0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->getSqliteDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    if-nez p1, :cond_1

    const-string p1, ""

    .line 259
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->deleteBackgroundDataApp(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public static deleteBackgroundDataApp(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I
    .locals 4

    const/4 v0, -0x1

    if-eqz p0, :cond_3

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    .line 269
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->queryApp(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 270
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 271
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "background_data"

    if-eqz v0, :cond_2

    new-array p1, v1, [Ljava/lang/String;

    .line 272
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v2

    const-string p2, "uid = ?"

    invoke-virtual {p0, v3, p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v2

    .line 274
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "package_name = ? and uid = ?"

    invoke-virtual {p0, v3, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method private static filterApp(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 549
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "com.android.providers.downloads"

    .line 550
    invoke-static {p0, v1}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->getAppUid(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "com.google.android.gms"

    .line 551
    invoke-static {p0, v1}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->getAppUid(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getAllInternetApp(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 419
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 420
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_4

    .line 423
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 424
    invoke-static {p0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->filterApp(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    .line 425
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 426
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 427
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 428
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_3

    .line 431
    :cond_2
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v7, :cond_3

    goto :goto_3

    :cond_3
    move v8, v3

    .line 435
    :goto_1
    array-length v9, v7

    if-ge v8, v9, :cond_6

    .line 436
    aget-object v9, v7, v8

    const-string v10, "android.permission.INTERNET"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 437
    invoke-static {p0, v5}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->getAppUid(Landroid/content/Context;Landroid/content/pm/PackageInfo;)I

    move-result v9

    .line 438
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_2

    .line 441
    :cond_4
    invoke-static {v9}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v10, 0x2

    .line 442
    invoke-static {p1, v6, v9, v10}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->addBackgroundDataApp(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;II)V

    .line 443
    new-instance v11, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;

    invoke-direct {v11, v6, v9, v10}, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    :goto_4
    return-object v0
.end method

.method public static getAppType(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 3

    .line 95
    invoke-static {p0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->getSqliteDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    return v1

    .line 99
    :cond_0
    invoke-static {p0, v0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->initAppBackgroundDataType(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 101
    invoke-static {v0, p1, p2}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->queryApp(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 102
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 106
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;

    invoke-virtual {p0}, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;->getType()I

    move-result p0

    if-gt p0, v1, :cond_3

    if-gez p0, :cond_2

    goto :goto_0

    :cond_2
    move v1, p0

    :cond_3
    :goto_0
    return v1

    .line 103
    :cond_4
    :goto_1
    invoke-static {v0, p1, p2, v1}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->addBackgroundDataApp(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;II)V

    return v1
.end method

.method public static getAppUid(Landroid/content/Context;Landroid/content/pm/PackageInfo;)I
    .locals 0

    .line 459
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->getAppUid(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getAppUid(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    .line 465
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 466
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 468
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static getSqliteDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 117
    :cond_0
    new-instance v1, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageHelper;

    invoke-direct {v1, p0}, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageHelper;-><init>(Landroid/content/Context;)V

    .line 119
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 121
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static getSqliteDatabase(Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageHelper;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 131
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 133
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static initAppBackgroundDataType(Landroid/content/Context;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 73
    :cond_0
    invoke-static {p0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->getSqliteDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 74
    invoke-static {p0, v0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->initAppBackgroundDataType(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public static initAppBackgroundDataType(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    invoke-static {p1}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->queryAllApp(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 82
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    :cond_1
    invoke-static {p0, p1}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->getAllInternetApp(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object p1

    .line 84
    invoke-static {p0, p1}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->changeRoamingAppStatus(Landroid/content/Context;Ljava/util/List;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static isAppInstalled(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 281
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 284
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 287
    :try_start_0
    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 289
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    if-nez v2, :cond_2

    .line 292
    invoke-static {p0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->getSqliteDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    if-eqz p0, :cond_1

    if-lez p2, :cond_1

    .line 294
    invoke-static {p0, p1, p2}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->deleteBackgroundDataApp(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v0
.end method

.method public static isHaveInternetPermission(Landroid/content/Context;Landroid/content/ContentValues;)Z
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "package_name"

    .line 509
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->isHaveInternetPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isHaveInternetPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 513
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 517
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x1000

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 518
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz p0, :cond_2

    move p1, v0

    .line 520
    :goto_0
    array-length v1, p0

    if-ge p1, v1, :cond_2

    .line 521
    aget-object v1, p0, p1

    const-string v2, "android.permission.INTERNET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 527
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return v0
.end method

.method public static isQueryDataEmpty(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 8

    .line 492
    invoke-static {p0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->getSqliteDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 p0, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    const/4 v2, 0x0

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    aput-object p1, v4, p0

    .line 494
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v4, p2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v1, "background_data"

    const-string v3, "package_name = ? and uid = ?"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 496
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 500
    :cond_0
    invoke-static {p1}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->releaseCursor(Landroid/database/Cursor;)V

    goto :goto_1

    .line 497
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->releaseCursor(Landroid/database/Cursor;)V

    return p2

    :cond_2
    :goto_1
    return p0
.end method

.method public static isQueryDataEmpty(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z
    .locals 10

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "package_name"

    .line 477
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "uid"

    .line 478
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    const/4 v4, 0x0

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    aput-object v1, v6, v0

    .line 480
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v3, "background_data"

    const-string v5, "package_name = ? and uid = ?"

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 482
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 486
    :cond_1
    invoke-static {p0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->releaseCursor(Landroid/database/Cursor;)V

    goto :goto_1

    .line 483
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->releaseCursor(Landroid/database/Cursor;)V

    return v1

    :cond_3
    :goto_1
    return v0
.end method

.method public static isRoaming()Z
    .locals 10

    const-string v0, "getRoamingReduction"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "extphone"

    .line 388
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lorg/codeaurora/internal/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v2

    .line 389
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 391
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "generalGetter"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v1

    const-class v8, Landroid/os/Bundle;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 392
    invoke-virtual {v4, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v0, v5, v1

    aput-object v3, v5, v9

    .line 393
    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 394
    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 396
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public static queryAllApp(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 139
    invoke-static {p0, v0, v1, v2}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->queryApp(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static queryApp(Landroid/database/sqlite/SQLiteDatabase;I)Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;
    .locals 9

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 190
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v2, "background_data"

    const-string v4, "id = ?"

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 191
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "package_name"

    .line 192
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 193
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, ""

    :cond_1
    const-string v1, "uid"

    .line 196
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v2, "type"

    .line 197
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 198
    invoke-static {p0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->releaseCursor(Landroid/database/Cursor;)V

    .line 199
    new-instance p0, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;-><init>(ILjava/lang/String;II)V

    return-object p0

    .line 201
    :cond_2
    invoke-static {p0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->releaseCursor(Landroid/database/Cursor;)V

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static queryApp(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 143
    invoke-static {p0, p1, p2, v0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->queryApp(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static queryApp(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;II)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v2, "background_data"

    move-object v1, p0

    .line 157
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_0

    .line 160
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    const/4 v4, 0x0

    new-array v6, v0, [Ljava/lang/String;

    .line 162
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v3, "background_data"

    const-string v5, "uid = ?"

    move-object v2, p0

    .line 161
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const/4 p3, 0x2

    new-array v4, p3, [Ljava/lang/String;

    aput-object p1, v4, v1

    .line 165
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v1, "background_data"

    const-string v3, "package_name = ? and uid = ?"

    move-object v0, p0

    .line 164
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 168
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_4

    .line 169
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-lez p2, :cond_4

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_2
    const-string p2, "package_name"

    .line 171
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 172
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    const-string p2, ""

    :cond_3
    const-string p3, "id"

    .line 175
    invoke-interface {p0, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p0, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    const-string v0, "uid"

    .line 176
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v1, "type"

    .line 177
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 178
    new-instance v2, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;

    invoke-direct {v2, p3, p2, v0, v1}, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;-><init>(ILjava/lang/String;II)V

    .line 179
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-nez p2, :cond_2

    .line 182
    :cond_4
    invoke-static {p0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->releaseCursor(Landroid/database/Cursor;)V

    return-object p1
.end method

.method private static releaseCursor(Landroid/database/Cursor;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 563
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method public static setAppBackgroundDataType(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 3

    .line 45
    invoke-static {p0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->getSqliteDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 49
    :cond_0
    invoke-static {v0, p1, p2}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->queryApp(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 52
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 53
    invoke-static {v0, p1, p2, p3}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->addBackgroundDataApp(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;II)V

    .line 54
    new-instance v0, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;-><init>(Ljava/lang/String;II)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 56
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;

    invoke-virtual {v1}, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;->getId()I

    move-result v1

    .line 57
    invoke-static {v0, v1, p3}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->updateBackgroundDataApp(Landroid/database/sqlite/SQLiteDatabase;II)I

    .line 58
    new-instance v0, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;-><init>(Ljava/lang/String;II)V

    .line 60
    :goto_0
    invoke-static {p0, v0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->changeRoamingAppStatus(Landroid/content/Context;Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;)V

    :cond_2
    return-void
.end method

.method public static setBlackList(Landroid/content/Context;ILjava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    .line 411
    new-instance v0, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    .line 412
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/settings/datausage/DataSaverBackend;->setIsBlacklisted(ILjava/lang/String;Z)V

    return-void
.end method

.method public static updateBackgroundDataApp(Landroid/database/sqlite/SQLiteDatabase;II)I
    .locals 2

    const/4 v0, -0x1

    if-eqz p0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    invoke-static {p0, p1}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->queryApp(Landroid/database/sqlite/SQLiteDatabase;I)Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 232
    invoke-virtual {v1}, Lcom/android/settings/datausage/backgrounddata/bean/BackgroundDataBean;->getId()I

    move-result v1

    if-lez v1, :cond_1

    .line 233
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 234
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 235
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "background_data"

    const-string v1, "id = ?"

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v0
.end method
