.class public Lcom/android/settingslib/drawer/TileUtils;
.super Ljava/lang/Object;
.source "TileUtils.java"


# static fields
.field static final SETTING_PKG:Ljava/lang/String; = "com.android.settings"


# direct methods
.method private static buildUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 441
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 442
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 443
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 444
    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 445
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static buildUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 432
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 433
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 434
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 435
    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 436
    invoke-virtual {p0, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 437
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getBooleanFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/IContentProvider;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 505
    invoke-static {p0, p1, p2, v0}, Lcom/android/settingslib/drawer/TileUtils;->getBundleFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 506
    invoke-virtual {p0, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static getBundleFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/IContentProvider;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 528
    invoke-static {p1}, Lcom/android/settingslib/drawer/TileUtils;->getMethodAndKey(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 532
    :cond_0
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    .line 533
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 534
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 537
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/android/settingslib/drawer/TileUtils;->getProviderFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)Landroid/content/IContentProvider;

    move-result-object v3

    if-nez v3, :cond_2

    return-object v1

    .line 541
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    if-nez p3, :cond_3

    .line 543
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_3
    const-string p2, "com.android.settings.keyhint"

    .line 545
    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move-object v9, p3

    .line 548
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 549
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 548
    invoke-interface/range {v3 .. v9}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1
.end method

.method public static getCategories(Landroid/content/Context;Ljava/util/Map;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 239
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 240
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "user"

    .line 241
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 243
    invoke-virtual {v1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/os/UserHandle;

    .line 245
    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    if-ne v3, v4, :cond_2

    const/4 v7, 0x0

    const/4 v9, 0x1

    const-string v5, "com.android.settings.action.SETTINGS"

    move-object v3, p0

    move-object v4, v10

    move-object v6, p1

    move-object v8, v0

    .line 247
    invoke-static/range {v3 .. v9}, Lcom/android/settingslib/drawer/TileUtils;->loadTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Z)V

    const/4 v9, 0x0

    const-string v5, "com.android.settings.OPERATOR_APPLICATION_SETTING"

    const-string v7, "com.android.settings.category.wireless"

    .line 248
    invoke-static/range {v3 .. v9}, Lcom/android/settingslib/drawer/TileUtils;->loadTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Z)V

    const-string v5, "com.android.settings.MANUFACTURER_APPLICATION_SETTING"

    const-string v7, "com.android.settings.category.device"

    .line 250
    invoke-static/range {v3 .. v9}, Lcom/android/settingslib/drawer/TileUtils;->loadTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Z)V

    :cond_2
    if-eqz v2, :cond_1

    const/4 v7, 0x0

    const/4 v9, 0x0

    const-string v5, "com.android.settings.action.EXTRA_SETTINGS"

    move-object v3, p0

    move-object v4, v10

    move-object v6, p1

    move-object v8, v0

    .line 254
    invoke-static/range {v3 .. v9}, Lcom/android/settingslib/drawer/TileUtils;->loadTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Z)V

    const-string v5, "com.android.settings.action.IA_SETTINGS"

    .line 255
    invoke-static/range {v3 .. v9}, Lcom/android/settingslib/drawer/TileUtils;->loadTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Z)V

    goto :goto_0

    .line 259
    :cond_3
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 260
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/Tile;

    .line 261
    invoke-virtual {v0}, Lcom/android/settingslib/drawer/Tile;->getCategory()Ljava/lang/String;

    move-result-object v1

    .line 262
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/DashboardCategory;

    if-nez v2, :cond_4

    .line 264
    new-instance v2, Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-direct {v2, v1}, Lcom/android/settingslib/drawer/DashboardCategory;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    :cond_4
    invoke-virtual {v2, v0}, Lcom/android/settingslib/drawer/DashboardCategory;->addTile(Lcom/android/settingslib/drawer/Tile;)V

    goto :goto_1

    .line 274
    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 275
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/DashboardCategory;

    .line 276
    invoke-virtual {v0}, Lcom/android/settingslib/drawer/DashboardCategory;->sortTiles()V

    goto :goto_2

    :cond_6
    return-object p1
.end method

.method public static getCompleteUri(Lcom/android/settingslib/drawer/Tile;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 411
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/Tile;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 412
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 416
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 417
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 418
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 422
    :cond_1
    invoke-virtual {p0}, Lcom/android/settingslib/drawer/Tile;->getMetaData()Landroid/os/Bundle;

    move-result-object p0

    const-string v1, "com.android.settings.keyhint"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 423
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 424
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Please specify the meta-data com.android.settings.keyhint in AndroidManifest.xml for "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TileUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/android/settingslib/drawer/TileUtils;->buildUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 428
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2, p0}, Lcom/android/settingslib/drawer/TileUtils;->buildUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static getIconFromUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/IContentProvider;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 459
    invoke-static {p0, p2, p3, v0}, Lcom/android/settingslib/drawer/TileUtils;->getBundleFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    const-string p3, "com.android.settings.icon_package"

    .line 463
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 464
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const/4 v1, 0x0

    const-string v2, "com.android.settings.icon"

    .line 467
    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-nez p2, :cond_2

    return-object v0

    .line 472
    :cond_2
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 473
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    return-object v0

    .line 474
    :cond_4
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static getMethodAndKey(Landroid/net/Uri;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 575
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 576
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 579
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 580
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    .line 581
    :cond_2
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method

.method private static getProviderFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)Landroid/content/IContentProvider;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/IContentProvider;",
            ">;)",
            "Landroid/content/IContentProvider;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 560
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 561
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    .line 564
    :cond_1
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 565
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireUnstableProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object p0

    invoke-interface {p2, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    :cond_2
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/IContentProvider;

    return-object p0
.end method

.method static getSwitchDataFromProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 380
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const-string v1, "getSwitchData"

    .line 381
    invoke-static {p1, v1, p2}, Lcom/android/settingslib/drawer/TileUtils;->buildUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 p2, 0x0

    .line 382
    invoke-static {p0, p1, v0, p2}, Lcom/android/settingslib/drawer/TileUtils;->getBundleFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private static getSwitchDataFromProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 387
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const-string v1, "getSwitchData"

    .line 388
    invoke-static {p1, v1}, Lcom/android/settingslib/drawer/TileUtils;->buildUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v1, 0x0

    .line 389
    invoke-static {p0, p1, v0, v1}, Lcom/android/settingslib/drawer/TileUtils;->getBundleFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "switch_data"

    .line 391
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public static getTextFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/IContentProvider;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 490
    invoke-static {p0, p1, p2, v0}, Lcom/android/settingslib/drawer/TileUtils;->getBundleFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 491
    invoke-virtual {p0, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static loadActivityTiles(Landroid/content/Context;Landroid/os/UserHandle;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Landroid/content/Intent;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/UserHandle;",
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .line 301
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 303
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const/16 v1, 0x80

    .line 302
    invoke-virtual {p0, p5, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    .line 304
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 305
    iget-boolean v1, v0, Landroid/content/pm/ResolveInfo;->system:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 309
    :cond_0
    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 310
    iget-object v7, v8, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 311
    invoke-static/range {v2 .. v8}, Lcom/android/settingslib/drawer/TileUtils;->loadTile(Landroid/os/UserHandle;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/pm/ComponentInfo;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static loadProviderTiles(Landroid/content/Context;Landroid/os/UserHandle;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Landroid/content/Intent;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/UserHandle;",
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .line 318
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 320
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const/4 v2, 0x0

    .line 319
    invoke-virtual {v0, p5, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentContentProvidersAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 321
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 322
    iget-boolean v2, v1, Landroid/content/pm/ResolveInfo;->system:Z

    if-nez v2, :cond_1

    goto :goto_0

    .line 326
    :cond_1
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 327
    iget-object v2, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/android/settingslib/drawer/TileUtils;->getSwitchDataFromProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 329
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 332
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Landroid/os/Bundle;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v9, v1

    .line 333
    invoke-static/range {v3 .. v9}, Lcom/android/settingslib/drawer/TileUtils;->loadTile(Landroid/os/UserHandle;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/pm/ComponentInfo;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static loadTile(Landroid/os/UserHandle;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Landroid/content/Intent;Landroid/os/Bundle;Landroid/content/pm/ComponentInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;",
            "Landroid/content/Intent;",
            "Landroid/os/Bundle;",
            "Landroid/content/pm/ComponentInfo;",
            ")V"
        }
    .end annotation

    const-string v0, "com.android.settings.category"

    if-eqz p5, :cond_0

    .line 344
    invoke-virtual {p5, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    if-nez p2, :cond_2

    .line 346
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Found "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p6, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for intent "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " missing metadata "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p5, :cond_1

    const-string v0, ""

    .line 348
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TileUtils"

    .line 346
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 351
    :cond_2
    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 354
    instance-of p4, p6, Landroid/content/pm/ProviderInfo;

    if-eqz p4, :cond_3

    .line 356
    new-instance v0, Landroid/util/Pair;

    move-object v1, p6

    check-cast v1, Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v2, "com.android.settings.keyhint"

    .line 357
    invoke-virtual {p5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 358
    :cond_3
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p6, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v2, p6, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 359
    :goto_0
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/drawer/Tile;

    if-nez v1, :cond_5

    if-eqz p4, :cond_4

    .line 362
    new-instance p4, Lcom/android/settingslib/drawer/ProviderTile;

    check-cast p6, Landroid/content/pm/ProviderInfo;

    invoke-direct {p4, p6, p2, p5}, Lcom/android/settingslib/drawer/ProviderTile;-><init>(Landroid/content/pm/ProviderInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 363
    :cond_4
    new-instance p4, Lcom/android/settingslib/drawer/ActivityTile;

    check-cast p6, Landroid/content/pm/ActivityInfo;

    invoke-direct {p4, p6, p2}, Lcom/android/settingslib/drawer/ActivityTile;-><init>(Landroid/content/pm/ActivityInfo;Ljava/lang/String;)V

    :goto_1
    move-object v1, p4

    .line 364
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 366
    :cond_5
    invoke-virtual {v1, p5}, Lcom/android/settingslib/drawer/Tile;->setMetaData(Landroid/os/Bundle;)V

    .line 369
    :goto_2
    iget-object p1, v1, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 370
    iget-object p1, v1, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    :cond_6
    invoke-interface {p3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    .line 373
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method static loadTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/UserHandle;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;Z)V"
        }
    .end annotation

    .line 290
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p6, :cond_0

    const-string p2, "com.android.settings"

    .line 292
    invoke-virtual {v6, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, v6

    .line 294
    invoke-static/range {v0 .. v5}, Lcom/android/settingslib/drawer/TileUtils;->loadActivityTiles(Landroid/content/Context;Landroid/os/UserHandle;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Landroid/content/Intent;)V

    .line 295
    invoke-static/range {v0 .. v5}, Lcom/android/settingslib/drawer/TileUtils;->loadProviderTiles(Landroid/content/Context;Landroid/os/UserHandle;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Landroid/content/Intent;)V

    return-void
.end method

.method public static putBooleanToUriAndGetResult(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/IContentProvider;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 521
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 522
    invoke-virtual {v0, p3, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 523
    invoke-static {p0, p1, p2, v0}, Lcom/android/settingslib/drawer/TileUtils;->getBundleFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
