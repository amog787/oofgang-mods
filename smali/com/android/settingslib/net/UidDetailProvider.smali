.class public Lcom/android/settingslib/net/UidDetailProvider;
.super Ljava/lang/Object;
.source "UidDetailProvider.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mUidDetailCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settingslib/net/UidDetail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/settingslib/net/UidDetailProvider;->mContext:Landroid/content/Context;

    .line 67
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    return-void
.end method

.method public static buildKeyForUser(I)I
    .locals 0

    rsub-int p0, p0, -0x7d0

    return p0
.end method

.method private buildUidDetail(I)Lcom/android/settingslib/net/UidDetail;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string v2, "Error while building UI detail for uid "

    const-string v3, "DataUsage"

    .line 106
    iget-object v4, v0, Lcom/android/settingslib/net/UidDetailProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 107
    iget-object v5, v0, Lcom/android/settingslib/net/UidDetailProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 109
    new-instance v6, Lcom/android/settingslib/net/UidDetail;

    invoke-direct {v6}, Lcom/android/settingslib/net/UidDetail;-><init>()V

    .line 110
    invoke-virtual {v5, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 111
    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v6, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v7, -0x5

    if-eq v1, v7, :cond_b

    const/4 v7, -0x4

    if-eq v1, v7, :cond_9

    const/16 v7, 0x3e8

    if-eq v1, v7, :cond_8

    const/16 v7, 0x425

    if-eq v1, v7, :cond_7

    .line 137
    iget-object v4, v0, Lcom/android/settingslib/net/UidDetailProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "user"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 140
    invoke-static/range {p1 .. p1}, Lcom/android/settingslib/net/UidDetailProvider;->isKeyForUser(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 141
    invoke-static/range {p1 .. p1}, Lcom/android/settingslib/net/UidDetailProvider;->getUserIdForKey(I)I

    move-result v7

    .line 142
    invoke-virtual {v4, v7}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 144
    iget-object v1, v0, Lcom/android/settingslib/net/UidDetailProvider;->mContext:Landroid/content/Context;

    invoke-static {v1, v7}, Lcom/android/settingslib/Utils;->getUserLabel(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 145
    iget-object v0, v0, Lcom/android/settingslib/net/UidDetailProvider;->mContext:Landroid/content/Context;

    invoke-static {v0, v4, v7}, Lcom/android/settingslib/Utils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v6, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    return-object v6

    .line 151
    :cond_0
    invoke-virtual {v5, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    if-eqz v0, :cond_1

    .line 152
    array-length v8, v0

    goto :goto_0

    :cond_1
    move v8, v7

    .line 154
    :goto_0
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 155
    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, v9}, Landroid/os/UserHandle;-><init>(I)V

    .line 156
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v11

    const/4 v12, 0x1

    if-ne v8, v12, :cond_2

    .line 158
    aget-object v0, v0, v7

    invoke-interface {v11, v0, v7, v9}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 161
    invoke-virtual {v0, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 162
    invoke-virtual {v0, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v0, v5}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v6, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_2
    if-le v8, v12, :cond_5

    .line 166
    new-array v12, v8, [Ljava/lang/CharSequence;

    iput-object v12, v6, Lcom/android/settingslib/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    .line 167
    new-array v12, v8, [Ljava/lang/CharSequence;

    iput-object v12, v6, Lcom/android/settingslib/net/UidDetail;->detailContentDescriptions:[Ljava/lang/CharSequence;

    move v12, v7

    :goto_1
    if-ge v12, v8, :cond_5

    .line 169
    aget-object v13, v0, v12

    .line 170
    invoke-virtual {v5, v13, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    .line 171
    invoke-interface {v11, v13, v7, v9}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v15

    if-eqz v15, :cond_3

    .line 175
    iget-object v7, v6, Lcom/android/settingslib/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    invoke-virtual {v15, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v7, v12

    .line 176
    iget-object v7, v6, Lcom/android/settingslib/net/UidDetail;->detailContentDescriptions:[Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    iget-object v0, v6, Lcom/android/settingslib/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    aget-object v0, v0, v12

    invoke-virtual {v4, v0, v10}, Landroid/os/UserManager;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v7, v12

    .line 178
    iget v0, v14, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    if-eqz v0, :cond_4

    .line 179
    iget v0, v14, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    iget-object v7, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v13, v0, v7}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 180
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 181
    invoke-virtual {v15, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v4, v0, v10}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v6, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_3
    move-object/from16 v16, v0

    :cond_4
    :goto_2
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v16

    const/4 v7, 0x0

    goto :goto_1

    .line 186
    :cond_5
    :goto_3
    iget-object v0, v6, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-virtual {v4, v0, v10}, Landroid/os/UserManager;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 190
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :catch_1
    move-exception v0

    .line 188
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    :goto_4
    iget-object v0, v6, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 194
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    :cond_6
    return-object v6

    .line 132
    :cond_7
    sget v1, Lcom/android/settingslib/R$string;->data_usage_ota:I

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 133
    iget-object v0, v0, Lcom/android/settingslib/net/UidDetailProvider;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$drawable;->ic_system_update:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v6, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    return-object v6

    .line 116
    :cond_8
    sget v0, Lcom/android/settingslib/R$string;->process_kernel_label:I

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 117
    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v6, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    return-object v6

    .line 120
    :cond_9
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 121
    sget v0, Lcom/android/settingslib/R$string;->data_usage_uninstalled_apps_users:I

    goto :goto_5

    .line 122
    :cond_a
    sget v0, Lcom/android/settingslib/R$string;->data_usage_uninstalled_apps:I

    .line 120
    :goto_5
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 123
    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v6, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    return-object v6

    .line 126
    :cond_b
    iget-object v0, v0, Lcom/android/settingslib/net/UidDetailProvider;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 128
    invoke-static {v0}, Lcom/android/settingslib/Utils;->getTetheringLabel(Landroid/net/ConnectivityManager;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 129
    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v6, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    return-object v6
.end method

.method public static getUserIdForKey(I)I
    .locals 0

    rsub-int p0, p0, -0x7d0

    return p0
.end method

.method public static isKeyForUser(I)Z
    .locals 1

    const/16 v0, -0x7d0

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/android/settingslib/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    monitor-enter v0

    .line 72
    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 73
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getUidDetail(IZ)Lcom/android/settingslib/net/UidDetail;
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/android/settingslib/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    monitor-enter v0

    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/net/UidDetail;

    .line 84
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    if-nez p2, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 92
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settingslib/net/UidDetailProvider;->buildUidDetail(I)Lcom/android/settingslib/net/UidDetail;

    move-result-object p2

    .line 94
    iget-object v1, p0, Lcom/android/settingslib/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    monitor-enter v1

    .line 95
    :try_start_1
    iget-object p0, p0, Lcom/android/settingslib/net/UidDetailProvider;->mUidDetailCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 96
    monitor-exit v1

    return-object p2

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 84
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method
