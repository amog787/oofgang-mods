.class public Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;
.super Lcom/android/settingslib/utils/AsyncLoaderCompat;
.source "StorageAsyncLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$ResultHandler;,
        Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/utils/AsyncLoaderCompat<",
        "Landroid/util/SparseArray<",
        "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mSeenPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStatsManager:Lcom/android/settingslib/applications/StorageStatsSource;

.field private mUserManager:Landroid/os/UserManager;

.field private mUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/UserManager;Ljava/lang/String;Lcom/android/settingslib/applications/StorageStatsSource;Landroid/content/pm/PackageManager;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/settingslib/utils/AsyncLoaderCompat;-><init>(Landroid/content/Context;)V

    .line 60
    iput-object p2, p0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mUserManager:Landroid/os/UserManager;

    .line 61
    iput-object p3, p0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mUuid:Ljava/lang/String;

    .line 62
    iput-object p4, p0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mStatsManager:Lcom/android/settingslib/applications/StorageStatsSource;

    .line 63
    iput-object p5, p0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private getStorageResultForUser(I)Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "StorageAsyncLoader"

    const-string v0, "Loading apps"

    .line 92
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    move/from16 v4, p1

    .line 94
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplicationsAsUser(II)Ljava/util/List;

    move-result-object v5

    .line 95
    new-instance v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;

    invoke-direct {v6}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;-><init>()V

    .line 96
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    .line 97
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    :goto_0
    if-ge v3, v8, :cond_7

    .line 98
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 102
    :try_start_0
    iget-object v9, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mStatsManager:Lcom/android/settingslib/applications/StorageStatsSource;

    iget-object v10, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mUuid:Ljava/lang/String;

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10, v11, v7}, Lcom/android/settingslib/applications/StorageStatsSource;->getStatsForPackage(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    move-result-object v9
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    invoke-interface {v9}, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;->getDataBytes()J

    move-result-wide v10

    .line 110
    iget-object v12, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mStatsManager:Lcom/android/settingslib/applications/StorageStatsSource;

    iget-object v13, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mUuid:Ljava/lang/String;

    iget v14, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v12, v13, v14}, Lcom/android/settingslib/applications/StorageStatsSource;->getCacheQuotaBytes(Ljava/lang/String;I)J

    move-result-wide v12

    .line 111
    invoke-interface {v9}, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;->getCacheBytes()J

    move-result-wide v14

    cmp-long v16, v12, v14

    if-gez v16, :cond_0

    sub-long/2addr v10, v14

    add-long/2addr v10, v12

    .line 123
    :cond_0
    iget-object v12, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mSeenPackages:Landroid/util/ArraySet;

    iget-object v13, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 124
    invoke-interface {v9}, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;->getCodeBytes()J

    move-result-wide v12

    add-long/2addr v10, v12

    .line 125
    iget-object v9, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mSeenPackages:Landroid/util/ArraySet;

    iget-object v12, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_1
    iget v9, v0, Landroid/content/pm/ApplicationInfo;->category:I

    if-eqz v9, :cond_6

    const/4 v12, 0x1

    if-eq v9, v12, :cond_5

    const/4 v12, 0x2

    if-eq v9, v12, :cond_4

    const/4 v12, 0x3

    if-eq v9, v12, :cond_3

    .line 143
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v9, 0x2000000

    and-int/2addr v0, v9

    if-eqz v0, :cond_2

    .line 144
    iget-wide v12, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->gamesSize:J

    add-long/2addr v12, v10

    iput-wide v12, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->gamesSize:J

    goto :goto_1

    .line 147
    :cond_2
    iget-wide v12, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->otherAppsSize:J

    add-long/2addr v12, v10

    iput-wide v12, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->otherAppsSize:J

    goto :goto_1

    .line 139
    :cond_3
    iget-wide v12, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->photosAppsSize:J

    add-long/2addr v12, v10

    iput-wide v12, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->photosAppsSize:J

    goto :goto_1

    .line 136
    :cond_4
    iget-wide v12, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->videoAppsSize:J

    add-long/2addr v12, v10

    iput-wide v12, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->videoAppsSize:J

    goto :goto_1

    .line 133
    :cond_5
    iget-wide v12, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->musicAppsSize:J

    add-long/2addr v12, v10

    iput-wide v12, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->musicAppsSize:J

    goto :goto_1

    .line 130
    :cond_6
    iget-wide v12, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->gamesSize:J

    add-long/2addr v12, v10

    iput-wide v12, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->gamesSize:J

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v9, "App unexpectedly not found"

    .line 105
    invoke-static {v2, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_7
    const-string v0, "Loading external stats"

    .line 152
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :try_start_1
    iget-object v0, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mStatsManager:Lcom/android/settingslib/applications/StorageStatsSource;

    iget-object v1, v1, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mUuid:Ljava/lang/String;

    .line 155
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 154
    invoke-virtual {v0, v1, v3}, Lcom/android/settingslib/applications/StorageStatsSource;->getExternalStorageStats(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;

    move-result-object v0

    iput-object v0, v6, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;->externalStats:Lcom/android/settingslib/applications/StorageStatsSource$ExternalStorageStats;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 157
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    const-string v0, "Obtaining result completed"

    .line 159
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6
.end method

.method private loadApps()Landroid/util/SparseArray;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;"
        }
    .end annotation

    .line 72
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mSeenPackages:Landroid/util/ArraySet;

    .line 73
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 74
    iget-object v1, p0, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 76
    new-instance v2, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$1;

    invoke-direct {v2, p0}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$1;-><init>(Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 84
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 85
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 86
    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v4}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->getStorageResultForUser(I)Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public loadInBackground()Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->loadApps()Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->loadInBackground()Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method protected onDiscardResult(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader$AppsStorageResult;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected bridge synthetic onDiscardResult(Ljava/lang/Object;)V
    .locals 0

    .line 47
    check-cast p1, Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/storage/StorageAsyncLoader;->onDiscardResult(Landroid/util/SparseArray;)V

    return-void
.end method
