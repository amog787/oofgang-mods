.class public Lcom/oneplus/android/server/iris/bio;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/iris/bio$you;
    }
.end annotation


# static fields
.field private static final bio:J = 0x3e8L

.field private static final cno:Z

.field private static final dma:Ljava/lang/String; = "0"

.field private static final gck:I = 0xc8

.field private static final igw:I = 0x0

.field private static final kth:Ljava/lang/String; = "IrisWhiteListConfig"

.field private static final oif:Landroid/net/Uri;

.field private static final qbh:Ljava/lang/String; = "category_id = 7"

.field private static final ssp:Ljava/lang/String; = "OpIrisWhiteListManager"

.field private static final wtn:I = 0x1

.field private static final ywr:Ljava/lang/String; = "net.oneplus.provider.appcategoryprovider.AppCategoryContentProvider"


# instance fields
.field private rtg:Landroid/os/Handler;

.field private sis:Lcom/oneplus/android/server/iris/kth;

.field private tsu:Lcom/oneplus/android/server/iris/igw;

.field private you:Lcom/oneplus/config/ConfigObserver;

.field private final zta:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/iris/bio;->cno:Z

    const-string v0, "content://net.oneplus.provider.appcategoryprovider.AppCategoryContentProvider/app_category"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/android/server/iris/bio;->oif:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oneplus/android/server/iris/bio$zta;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/android/server/iris/bio$zta;-><init>(Lcom/oneplus/android/server/iris/bio;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/android/server/iris/bio;->rtg:Landroid/os/Handler;

    iput-object p1, p0, Lcom/oneplus/android/server/iris/bio;->zta:Landroid/content/Context;

    new-instance v0, Lcom/oneplus/android/server/iris/kth;

    invoke-direct {v0}, Lcom/oneplus/android/server/iris/kth;-><init>()V

    iput-object v0, p0, Lcom/oneplus/android/server/iris/bio;->sis:Lcom/oneplus/android/server/iris/kth;

    new-instance v1, Lcom/oneplus/android/server/iris/igw;

    invoke-direct {v1, v0}, Lcom/oneplus/android/server/iris/igw;-><init>(Lcom/oneplus/android/server/iris/kth;)V

    iput-object v1, p0, Lcom/oneplus/android/server/iris/bio;->tsu:Lcom/oneplus/android/server/iris/igw;

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/iris/bio;->bio(Landroid/content/Context;)V

    return-void
.end method

.method private bio(Landroid/content/Context;)V
    .locals 2

    const-string v0, "OpIrisWhiteListManager"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1100006

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/android/server/iris/bio;->tsu:Lcom/oneplus/android/server/iris/igw;

    const-string v0, "UTF-8"

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/android/server/iris/igw;->zta(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method private cno(Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/iris/bio;->gck(Lorg/json/JSONArray;)V

    return-void
.end method

.method private dma(Ljava/lang/String;)V
    .locals 10

    sget-boolean v0, Lcom/oneplus/android/server/iris/bio;->cno:Z

    const-string v1, "OpIrisWhiteListManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateGameSdr2HdrWhiteList selection = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/oneplus/android/server/iris/bio;->zta:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/oneplus/android/server/iris/bio;->oif:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_1
    const-string p1, "package_name"

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget-boolean v3, Lcom/oneplus/android/server/iris/bio;->cno:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateGameSdr2HdrWhiteList pkg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, p0, Lcom/oneplus/android/server/iris/bio;->sis:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {v3, p1}, Lcom/oneplus/android/server/iris/kth;->oxb(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/oneplus/android/server/iris/bio;->sis:Lcom/oneplus/android/server/iris/kth;

    const-string v4, "267-3-1"

    invoke-virtual {v3, p1, v4}, Lcom/oneplus/android/server/iris/kth;->obl(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/oneplus/android/server/iris/bio;->sis:Lcom/oneplus/android/server/iris/kth;

    const-string v4, "0"

    invoke-virtual {v3, p1, v4}, Lcom/oneplus/android/server/iris/kth;->zgw(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    const/16 p1, 0xc8

    if-lt v2, p1, :cond_1

    :cond_3
    if-eqz v0, :cond_4

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    return-void

    :goto_1
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p0
.end method

.method private gck(Lorg/json/JSONArray;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "OpIrisWhiteListManager"

    const-string v3, "resolveConfigFromJSON"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    const-string v0, "resolveConfigFromJSON: jsonArray is null"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v4, 0x0

    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_c

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "version"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "online version: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " local version: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/oneplus/android/server/iris/bio;->sis:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {v9}, Lcom/oneplus/android/server/iris/kth;->ywr()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v0, Lcom/oneplus/android/server/iris/bio;->sis:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {v8}, Lcom/oneplus/android/server/iris/kth;->ywr()J

    move-result-wide v8

    cmp-long v8, v8, v6

    if-ltz v8, :cond_1

    return-void

    :cond_1
    iget-object v8, v0, Lcom/oneplus/android/server/iris/bio;->sis:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {v8}, Lcom/oneplus/android/server/iris/kth;->zta()V

    iget-object v8, v0, Lcom/oneplus/android/server/iris/bio;->sis:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {v8, v6, v7}, Lcom/oneplus/android/server/iris/kth;->ire(J)V

    const-string v6, "timmingv2"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iget-object v7, v0, Lcom/oneplus/android/server/iris/bio;->sis:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {v7, v6}, Lcom/oneplus/android/server/iris/kth;->cjf(Z)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "timmingv2: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v6, "url"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/oneplus/android/server/iris/bio;->sis:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {v7, v6}, Lcom/oneplus/android/server/iris/kth;->ear(Ljava/lang/String;)V

    sget-boolean v7, Lcom/oneplus/android/server/iris/bio;->cno:Z

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sdr2hdr url: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v6, "sdr2hdr"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, " appType: "

    const-string v10, "appType"

    const-string v11, "pkg"

    const-string v12, " type: "

    const-string v13, "type"

    if-ge v7, v8, :cond_5

    :try_start_1
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-boolean v10, Lcom/oneplus/android/server/iris/bio;->cno:Z

    if-eqz v10, :cond_4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "sdr2hdr pkg: "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v9, v0, Lcom/oneplus/android/server/iris/bio;->sis:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {v9, v11}, Lcom/oneplus/android/server/iris/kth;->oxb(Ljava/lang/String;)V

    iget-object v9, v0, Lcom/oneplus/android/server/iris/bio;->sis:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {v9, v11, v13}, Lcom/oneplus/android/server/iris/kth;->obl(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v0, Lcom/oneplus/android/server/iris/bio;->sis:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {v9, v11, v8}, Lcom/oneplus/android/server/iris/kth;->zgw(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    const-string v6, "memcPackage"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_7

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "ultimate"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-boolean v16, Lcom/oneplus/android/server/iris/bio;->cno:Z

    if-eqz v16, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "memc pkg: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ultimate: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v1, v0, Lcom/oneplus/android/server/iris/bio;->sis:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {v1, v14}, Lcom/oneplus/android/server/iris/kth;->ugm(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/oneplus/android/server/iris/bio;->sis:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {v1, v14, v8}, Lcom/oneplus/android/server/iris/kth;->gwm(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/oneplus/android/server/iris/bio;->sis:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {v1, v14, v15}, Lcom/oneplus/android/server/iris/kth;->vdb(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p1

    goto :goto_2

    :cond_7
    const-string v1, "memcActivity"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v7, "activity"

    if-ge v3, v6, :cond_9

    :try_start_2
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-boolean v8, Lcom/oneplus/android/server/iris/bio;->cno:Z

    if-eqz v8, :cond_8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "memc activity: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v8, v0, Lcom/oneplus/android/server/iris/bio;->sis:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {v8, v7}, Lcom/oneplus/android/server/iris/kth;->ibl(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/oneplus/android/server/iris/bio;->sis:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {v8, v7, v6}, Lcom/oneplus/android/server/iris/kth;->bvj(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_9
    const-string v1, "DualMemcActivity"

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_b

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-boolean v8, Lcom/oneplus/android/server/iris/bio;->cno:Z

    if-eqz v8, :cond_a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dual MEMC activity: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v8, v0, Lcom/oneplus/android/server/iris/bio;->sis:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {v8, v6}, Lcom/oneplus/android/server/iris/kth;->oif(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/oneplus/android/server/iris/bio;->sis:Lcom/oneplus/android/server/iris/kth;

    invoke-virtual {v8, v6, v5}, Lcom/oneplus/android/server/iris/kth;->qbh(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_b
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "resolveConfigFromJSON error:"

    goto :goto_5

    :catch_1
    move-exception v0

    const-string v1, "resolveConfigFromJSON JSONException:"

    :goto_5
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c
    return-void
.end method

.method private kth(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleUpdateWhiteList cfgName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpIrisWhiteListManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/iris/bio;->wtn(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private rtg()V
    .locals 4

    const-string v0, "OpIrisWhiteListManager"

    const-string v1, "fetchConfig"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/android/server/iris/bio;->rtg:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "config_name"

    const-string v3, "IrisWhiteListConfig"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/oneplus/android/server/iris/bio;->rtg:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method static synthetic sis(Lcom/oneplus/android/server/iris/bio;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/iris/bio;->kth(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic tsu(Lcom/oneplus/android/server/iris/bio;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/iris/bio;->cno(Lorg/json/JSONArray;)V

    return-void
.end method

.method private wtn(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/oneplus/android/server/iris/bio;->cno:Z

    const-string v1, "OpIrisWhiteListManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolveAdditionalConfig: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/iris/bio;->zta:Landroid/content/Context;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/oneplus/android/server/iris/bio;->zta:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/iris/bio;->gck(Lorg/json/JSONArray;)V

    goto :goto_0

    :cond_1
    const-string p0, "resolveAdditionalConfig: mContext is null"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic you(Lcom/oneplus/android/server/iris/bio;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/iris/bio;->rtg:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic zta()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/iris/bio;->cno:Z

    return v0
.end method


# virtual methods
.method public igw()V
    .locals 5

    const-string v0, "OpIrisWhiteListManager"

    const-string v1, "onBootComplete"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/oneplus/android/server/iris/bio;->zta:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/android/server/iris/bio;->rtg:Landroid/os/Handler;

    new-instance v3, Lcom/oneplus/android/server/iris/bio$you;

    invoke-direct {v3, p0}, Lcom/oneplus/android/server/iris/bio$you;-><init>(Lcom/oneplus/android/server/iris/bio;)V

    const-string v4, "IrisWhiteListConfig"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/android/server/iris/bio;->you:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    invoke-direct {p0}, Lcom/oneplus/android/server/iris/bio;->rtg()V

    return-void
.end method

.method public ssp()Lcom/oneplus/android/server/iris/kth;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/iris/bio;->sis:Lcom/oneplus/android/server/iris/kth;

    return-object p0
.end method
