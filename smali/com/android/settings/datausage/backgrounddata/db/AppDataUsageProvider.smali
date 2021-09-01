.class public Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider;
.super Landroid/content/ContentProvider;
.source "AppDataUsageProvider.java"


# static fields
.field private static mUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mHelper:Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 33
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.settings.app.datausage"

    const-string v2, "background_data"

    const/4 v3, 0x0

    .line 34
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 35
    sget-object v0, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "background_data/#"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private addPackageMonitor()V
    .locals 4

    .line 53
    new-instance v0, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider$1;-><init>(Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider;)V

    .line 73
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x1

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .line 135
    iget-object p0, p0, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider;->mHelper:Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageHelper;

    invoke-static {p0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->getSqliteDatabase(Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 140
    :cond_0
    sget-object v0, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const-string v1, "background_data"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 p2, 0x1

    if-eq v0, p2, :cond_1

    goto :goto_0

    .line 145
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-array p2, p2, [Ljava/lang/String;

    aput-object p1, p2, v2

    const-string p1, "id = ?"

    .line 146
    invoke-virtual {p0, v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 142
    :cond_2
    invoke-virtual {p0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    :goto_0
    return v2
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 101
    sget-object p0, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "vnd.android.cursor.item/com.android.settings.app.datausage.background_data"

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "vnd.android.cursor.dir/com.android.settings.app.datausage.background_data"

    :goto_0
    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider;->mHelper:Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageHelper;

    invoke-static {v0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->getSqliteDatabase(Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 120
    :cond_0
    sget-object v2, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 123
    :cond_1
    invoke-static {v0, p2}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->isQueryDataEmpty(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->isHaveInternetPermission(Landroid/content/Context;Landroid/content/ContentValues;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "background_data"

    .line 124
    invoke-virtual {v0, p0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_2
    :goto_0
    return-object v1
.end method

.method public onCreate()Z
    .locals 2

    .line 40
    new-instance v0, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageHelper;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider;->mHelper:Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageHelper;

    .line 42
    :try_start_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-direct {p0}, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider;->addPackageMonitor()V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 46
    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->printStackTrace()V

    .line 47
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    :cond_0
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .line 79
    iget-object p0, p0, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider;->mHelper:Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageHelper;

    invoke-static {p0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->getSqliteDatabase(Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 p0, 0x0

    if-nez v0, :cond_0

    return-object p0

    .line 84
    :cond_0
    sget-object v1, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 p3, 0x1

    if-eq v1, p3, :cond_1

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    new-array v4, p3, [Ljava/lang/String;

    const/4 p1, 0x0

    aput-object p0, v4, p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v1, "background_data"

    const-string v3, "id = ?"

    move-object v2, p2

    move-object v7, p5

    .line 90
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v1, "background_data"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    .line 86
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .line 156
    iget-object p0, p0, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider;->mHelper:Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageHelper;

    invoke-static {p0}, Lcom/android/settings/datausage/backgrounddata/utils/BackgroundDataUtils;->getSqliteDatabase(Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageHelper;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 161
    :cond_0
    sget-object v0, Lcom/android/settings/datausage/backgrounddata/db/AppDataUsageProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const-string v1, "background_data"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 p3, 0x1

    if-eq v0, p3, :cond_1

    goto :goto_0

    .line 166
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-array p3, p3, [Ljava/lang/String;

    aput-object p1, p3, v2

    const-string p1, "id = ?"

    .line 167
    invoke-virtual {p0, v1, p2, p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 163
    :cond_2
    invoke-virtual {p0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    :goto_0
    return v2
.end method
