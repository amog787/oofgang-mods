.class public Lcom/android/settings/search/SettingsSearchIndexablesProvider;
.super Landroid/provider/SearchIndexablesProvider;
.source "SettingsSearchIndexablesProvider.java"


# static fields
.field private static final INVALID_KEYS:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 98
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/settings/search/SettingsSearchIndexablesProvider;->INVALID_KEYS:Ljava/util/Collection;

    const/4 v1, 0x0

    .line 99
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Lcom/android/settings/search/SettingsSearchIndexablesProvider;->INVALID_KEYS:Ljava/util/Collection;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Landroid/provider/SearchIndexablesProvider;-><init>()V

    return-void
.end method

.method private static createIndexableRawColumnObjects(Lcom/android/settingslib/search/SearchIndexableRaw;)[Ljava/lang/Object;
    .locals 3

    .line 433
    sget-object v0, Landroid/provider/SearchIndexablesContract;->INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 434
    iget-object v1, p0, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 435
    iget-object v1, p0, Lcom/android/settingslib/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 436
    iget-object v1, p0, Lcom/android/settingslib/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 437
    iget-object v1, p0, Lcom/android/settingslib/search/SearchIndexableRaw;->entries:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 438
    iget-object v1, p0, Lcom/android/settingslib/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 439
    iget-object v1, p0, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 440
    iget-object v1, p0, Landroid/provider/SearchIndexableData;->className:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 441
    iget v1, p0, Landroid/provider/SearchIndexableData;->iconResId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 442
    iget-object v1, p0, Landroid/provider/SearchIndexableData;->intentAction:Ljava/lang/String;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 443
    iget-object v1, p0, Landroid/provider/SearchIndexableData;->intentTargetPackage:Ljava/lang/String;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 444
    iget-object v1, p0, Landroid/provider/SearchIndexableData;->intentTargetClass:Ljava/lang/String;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 445
    iget-object v1, p0, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 446
    iget p0, p0, Landroid/provider/SearchIndexableData;->userId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0xd

    aput-object p0, v0, v1

    return-object v0
.end method

.method private getDynamicSearchIndexableRawFromProvider(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .line 364
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p0

    .line 365
    invoke-virtual {p0}, Lcom/android/settings/overlay/FeatureFactory;->getSearchFeatureProvider()Lcom/android/settings/search/SearchFeatureProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/settings/search/SearchFeatureProvider;->getSearchIndexableResources()Lcom/android/settingslib/search/SearchIndexableResources;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/settingslib/search/SearchIndexableResources;->getProviderValues()Ljava/util/Collection;

    move-result-object p0

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 368
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/search/SearchIndexableData;

    .line 369
    invoke-virtual {v1}, Lcom/android/settingslib/search/SearchIndexableData;->getSearchIndexProvider()Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    move-result-object v2

    const/4 v3, 0x1

    .line 371
    invoke-interface {v2, p1, v3}, Lcom/android/settingslib/search/Indexable$SearchIndexProvider;->getDynamicRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 377
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/search/SearchIndexableRaw;

    .line 380
    invoke-virtual {v1}, Lcom/android/settingslib/search/SearchIndexableData;->getTargetClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/provider/SearchIndexableData;->className:Ljava/lang/String;

    goto :goto_1

    .line 383
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getInjectionIndexableRawData(Landroid/content/Context;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .line 391
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v0

    .line 393
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 394
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 395
    invoke-interface {v0}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getAllCategories()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/drawer/DashboardCategory;

    .line 396
    invoke-virtual {v4}, Lcom/android/settingslib/drawer/DashboardCategory;->getTiles()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/drawer/Tile;

    .line 397
    invoke-virtual {p0, v2, v5}, Lcom/android/settings/search/SettingsSearchIndexablesProvider;->isEligibleForIndexing(Ljava/lang/String;Lcom/android/settingslib/drawer/Tile;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_0

    .line 400
    :cond_1
    new-instance v6, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {v6, p1}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 401
    invoke-virtual {v5, p1}, Lcom/android/settingslib/drawer/Tile;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 402
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    move-object v7, v9

    goto :goto_1

    :cond_2
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_1
    iput-object v7, v6, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 403
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_0

    .line 406
    :cond_3
    invoke-interface {v0, v5}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getDashboardKeyForTile(Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 407
    invoke-virtual {v5, p1}, Lcom/android/settingslib/drawer/Tile;->getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 408
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_2
    iput-object v9, v6, Lcom/android/settingslib/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 409
    iput-object v9, v6, Lcom/android/settingslib/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 410
    sget-object v7, Lcom/android/settings/dashboard/DashboardFragmentRegistry;->CATEGORY_KEY_TO_PARENT_MAP:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/android/settingslib/drawer/Tile;->getCategory()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v6, Landroid/provider/SearchIndexableData;->className:Ljava/lang/String;

    .line 411
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object v1
.end method

.method private getNonIndexableKeysFromProvider(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p0, "SettingsSearchProvider"

    .line 256
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 257
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSearchFeatureProvider()Lcom/android/settings/search/SearchFeatureProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/search/SearchFeatureProvider;->getSearchIndexableResources()Lcom/android/settingslib/search/SearchIndexableResources;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settingslib/search/SearchIndexableResources;->getProviderValues()Ljava/util/Collection;

    move-result-object v0

    .line 259
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 261
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/search/SearchIndexableData;

    .line 262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 263
    invoke-virtual {v2}, Lcom/android/settingslib/search/SearchIndexableData;->getSearchIndexProvider()Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    move-result-object v3

    .line 266
    :try_start_0
    invoke-interface {v3, p1}, Lcom/android/settingslib/search/Indexable$SearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 282
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 290
    :cond_1
    sget-object v4, Lcom/android/settings/search/SettingsSearchIndexablesProvider;->INVALID_KEYS:Ljava/util/Collection;

    invoke-interface {v2, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 291
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " tried to add an empty non-indexable key"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "debug.com.android.settings.search.crash_on_error"

    .line 274
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    .line 277
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error trying to get non-indexable keys from: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {v2}, Lcom/android/settingslib/search/SearchIndexableData;->getTargetClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 277
    invoke-static {p0, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 275
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_4
    return-object v1
.end method

.method private getSearchIndexableRawFromProvider(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .line 338
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p0

    .line 339
    invoke-virtual {p0}, Lcom/android/settings/overlay/FeatureFactory;->getSearchFeatureProvider()Lcom/android/settings/search/SearchFeatureProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/settings/search/SearchFeatureProvider;->getSearchIndexableResources()Lcom/android/settingslib/search/SearchIndexableResources;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/settingslib/search/SearchIndexableResources;->getProviderValues()Ljava/util/Collection;

    move-result-object p0

    .line 340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 342
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/search/SearchIndexableData;

    .line 343
    invoke-virtual {v1}, Lcom/android/settingslib/search/SearchIndexableData;->getSearchIndexProvider()Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    move-result-object v2

    const/4 v3, 0x1

    .line 344
    invoke-interface {v2, p1, v3}, Lcom/android/settingslib/search/Indexable$SearchIndexProvider;->getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 351
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/search/SearchIndexableRaw;

    .line 354
    invoke-virtual {v1}, Lcom/android/settingslib/search/SearchIndexableData;->getTargetClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/provider/SearchIndexableData;->className:Ljava/lang/String;

    goto :goto_1

    .line 357
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getSearchIndexableResourcesFromProvider(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .line 307
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p0

    .line 308
    invoke-virtual {p0}, Lcom/android/settings/overlay/FeatureFactory;->getSearchFeatureProvider()Lcom/android/settings/search/SearchFeatureProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/settings/search/SearchFeatureProvider;->getSearchIndexableResources()Lcom/android/settingslib/search/SearchIndexableResources;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/settingslib/search/SearchIndexableResources;->getProviderValues()Ljava/util/Collection;

    move-result-object p0

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 311
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/search/SearchIndexableData;

    .line 312
    invoke-virtual {v1}, Lcom/android/settingslib/search/SearchIndexableData;->getSearchIndexProvider()Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    .line 319
    invoke-interface {v2, p1, v3}, Lcom/android/settingslib/search/Indexable$SearchIndexProvider;->getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 325
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/provider/SearchIndexableResource;

    .line 326
    iget-object v5, v4, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 327
    invoke-virtual {v1}, Lcom/android/settingslib/search/SearchIndexableData;->getTargetClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 328
    :cond_2
    iget-object v5, v4, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    :goto_2
    iput-object v5, v4, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    goto :goto_1

    .line 331
    :cond_3
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method


# virtual methods
.method isEligibleForIndexing(Ljava/lang/String;Lcom/android/settingslib/drawer/Tile;)Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 420
    invoke-virtual {p2}, Lcom/android/settingslib/drawer/Tile;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    instance-of p0, p2, Lcom/android/settingslib/drawer/ActivityTile;

    if-eqz p0, :cond_0

    return p1

    .line 425
    :cond_0
    invoke-virtual {p2}, Lcom/android/settingslib/drawer/Tile;->getCategory()Ljava/lang/String;

    move-result-object p0

    const-string p2, "com.android.settings.category.ia.homepage"

    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    return p1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public onCreate()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public queryDynamicRawData([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    .line 167
    invoke-virtual {p0}, Landroid/provider/SearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 169
    invoke-direct {p0, p1}, Lcom/android/settings/search/SettingsSearchIndexablesProvider;->getDynamicSearchIndexableRawFromProvider(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 170
    invoke-direct {p0, p1}, Lcom/android/settings/search/SettingsSearchIndexablesProvider;->getInjectionIndexableRawData(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 172
    new-instance p0, Landroid/database/MatrixCursor;

    sget-object p1, Landroid/provider/SearchIndexablesContract;->INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 173
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/search/SearchIndexableRaw;

    .line 174
    invoke-static {v0}, Lcom/android/settings/search/SettingsSearchIndexablesProvider;->createIndexableRawColumnObjects(Lcom/android/settingslib/search/SearchIndexableRaw;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public queryNonIndexableKeys([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    .line 149
    new-instance p1, Landroid/database/MatrixCursor;

    sget-object v0, Landroid/provider/SearchIndexablesContract;->NON_INDEXABLES_KEYS_COLUMNS:[Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Landroid/provider/SearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/search/SettingsSearchIndexablesProvider;->getNonIndexableKeysFromProvider(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 151
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 152
    sget-object v1, Landroid/provider/SearchIndexablesContract;->NON_INDEXABLES_KEYS_COLUMNS:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 153
    aput-object v0, v1, v2

    .line 154
    invoke-virtual {p1, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public queryRawData([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    .line 133
    new-instance p1, Landroid/database/MatrixCursor;

    sget-object v0, Landroid/provider/SearchIndexablesContract;->INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Landroid/provider/SearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/search/SettingsSearchIndexablesProvider;->getSearchIndexableRawFromProvider(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 135
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/search/SearchIndexableRaw;

    .line 136
    invoke-static {v0}, Lcom/android/settings/search/SettingsSearchIndexablesProvider;->createIndexableRawColumnObjects(Lcom/android/settingslib/search/SearchIndexableRaw;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public querySiteMapPairs()Landroid/database/Cursor;
    .locals 9

    .line 182
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Landroid/provider/SearchIndexablesContract;->SITE_MAP_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Landroid/provider/SearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 185
    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v2

    .line 186
    invoke-virtual {v2, v1}, Lcom/android/settings/overlay/FeatureFactory;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getAllCategories()Ljava/util/List;

    move-result-object v1

    .line 187
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "child_class"

    const-string v4, "parent_class"

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/DashboardCategory;

    .line 189
    sget-object v5, Lcom/android/settings/dashboard/DashboardFragmentRegistry;->CATEGORY_KEY_TO_PARENT_MAP:Ljava/util/Map;

    iget-object v6, v2, Lcom/android/settingslib/drawer/DashboardCategory;->key:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_1

    goto :goto_0

    .line 194
    :cond_1
    invoke-virtual {v2}, Lcom/android/settingslib/drawer/DashboardCategory;->getTiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/drawer/Tile;

    const/4 v7, 0x0

    .line 197
    invoke-virtual {v6}, Lcom/android/settingslib/drawer/Tile;->getMetaData()Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 198
    invoke-virtual {v6}, Lcom/android/settingslib/drawer/Tile;->getMetaData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_2
    if-nez v7, :cond_3

    .line 202
    invoke-virtual {v6}, Lcom/android/settingslib/drawer/Tile;->getComponentName()Ljava/lang/String;

    move-result-object v7

    .line 203
    invoke-virtual {p0}, Landroid/provider/SearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/settingslib/drawer/Tile;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_2

    :cond_3
    const-string v6, ""

    :goto_2
    if-nez v7, :cond_4

    goto :goto_1

    .line 208
    :cond_4
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v8

    .line 209
    invoke-virtual {v8, v4, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v8

    .line 210
    invoke-virtual {v8, v3, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v7

    const-string v8, "child_title"

    .line 211
    invoke-virtual {v7, v8, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    .line 216
    :cond_5
    sget-object p0, Lcom/android/settings/search/CustomSiteMapRegistry;->CUSTOM_SITE_MAP:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 217
    sget-object v2, Lcom/android/settings/search/CustomSiteMapRegistry;->CUSTOM_SITE_MAP:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 218
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v5

    .line 219
    invoke-virtual {v5, v4, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    .line 220
    invoke-virtual {v2, v3, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_3

    :cond_6
    return-object v0
.end method

.method public querySliceUriPairs()Landroid/database/Cursor;
    .locals 5

    .line 228
    invoke-virtual {p0}, Landroid/provider/SearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/slice/SliceViewManager;->getInstance(Landroid/content/Context;)Landroidx/slice/SliceViewManager;

    move-result-object v0

    .line 229
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v2, Landroid/provider/SearchIndexablesContract;->SLICE_URI_PAIRS_COLUMNS:[Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Landroid/provider/SearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v2, Lcom/android/settings/R$string;->config_non_public_slice_query_uri:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 231
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "content"

    if-nez v2, :cond_0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_0

    .line 235
    :cond_0
    new-instance p0, Landroid/net/Uri$Builder;

    invoke-direct {p0}, Landroid/net/Uri$Builder;-><init>()V

    .line 233
    invoke-virtual {p0, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v2, "com.android.settings.slices"

    .line 234
    invoke-virtual {p0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 235
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 237
    :goto_0
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 239
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "android.settings.slices"

    .line 240
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 241
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 243
    invoke-virtual {v0, p0}, Landroidx/slice/SliceViewManager;->getSliceDescendants(Landroid/net/Uri;)Ljava/util/Collection;

    move-result-object p0

    .line 244
    invoke-virtual {v0, v2}, Landroidx/slice/SliceViewManager;->getSliceDescendants(Landroid/net/Uri;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 246
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 247
    invoke-virtual {v1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    .line 248
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key"

    invoke-virtual {v2, v4, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    const-string v3, "slice_uri"

    .line 249
    invoke-virtual {v2, v3, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public queryXmlResources([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4

    .line 110
    new-instance p1, Landroid/database/MatrixCursor;

    sget-object v0, Landroid/provider/SearchIndexablesContract;->INDEXABLES_XML_RES_COLUMNS:[Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Landroid/provider/SearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/search/SettingsSearchIndexablesProvider;->getSearchIndexableResourcesFromProvider(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 113
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/SearchIndexableResource;

    .line 114
    sget-object v1, Landroid/provider/SearchIndexablesContract;->INDEXABLES_XML_RES_COLUMNS:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 115
    iget v3, v0, Landroid/provider/SearchIndexableResource;->rank:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 116
    iget v3, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 117
    iget-object v3, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 118
    iget v3, v0, Landroid/provider/SearchIndexableResource;->iconResId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    .line 119
    iget-object v3, v0, Landroid/provider/SearchIndexableResource;->intentAction:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 120
    iget-object v0, v0, Landroid/provider/SearchIndexableResource;->intentTargetPackage:Ljava/lang/String;

    aput-object v0, v1, v2

    const/4 v0, 0x6

    const/4 v2, 0x0

    .line 121
    aput-object v2, v1, v0

    .line 122
    invoke-virtual {p1, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object p1
.end method
