.class public Lcom/android/server/am/ear;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/am/IOnePlusGameShakeController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ear$sis;,
        Lcom/android/server/am/ear$you;
    }
.end annotation


# static fields
.field private static bio:Lcom/android/server/am/ear; = null

.field private static final cno:I = 0x1

.field private static gck:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static igw:Ljava/lang/Object; = null

.field private static kth:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final rtg:Ljava/lang/String; = "OnePlusGameShakeController"

.field private static final ssp:Ljava/lang/String; = "GameShakeConfig"

.field private static final wtn:Ljava/lang/String; = "GameMultiTouchConfig"


# instance fields
.field private sis:Landroid/content/Context;

.field private tsu:Lcom/oneplus/config/ConfigObserver;

.field private you:Landroid/os/Handler;

.field private zta:Lcom/oneplus/config/ConfigObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/ear;->kth:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/ear;->igw:Ljava/lang/Object;

    const-string v1, "com.tencent.tmgp.sgame"

    const-string v2, "com.tencent.tmgp.speedmobile"

    const-string v3, "com.tencent.tmgp.pubgmhd"

    const-string v4, "com.netease.onmyoji"

    const-string v5, "com.zhangyangjing.starfish"

    const-string v6, "com.tencent.ig"

    const-string v7, "com.rekoo.pubgm"

    const-string v8, "com.the511plus.MultiTouchTester"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ear;->gck:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ear;->you:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/am/ear$sis;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ear$sis;-><init>(Lcom/android/server/am/ear;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/ear;->you:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/am/ear;->sis:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/am/ear;->tsu()V

    return-void
.end method

.method private rtg(Lorg/json/JSONArray;)V
    .locals 8

    if-nez p1, :cond_0

    const-string p0, "OnePlusGameShakeController"

    const-string p1, "[OnlineConfig] resolveConfigFromJSON jsonArray is null, return"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p0, 0x0

    move v0, p0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_5

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "GameShakeConfig"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/server/am/ear;->kth:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    sget-object v3, Lcom/android/server/am/ear;->kth:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    const-string v3, "value"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    move v3, p0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "package"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "parameter"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/android/server/am/ear;->kth:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    monitor-exit v2

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :cond_2
    const-string v2, "name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "GameMultiTouchConfig"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "value"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v3, "OnePlusGameShakeController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pkgInfoJsonArray.length()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v3, p0

    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "package"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "OnePlusGameShakeController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pkgName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/android/server/am/ear;->igw:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    sput-object v2, Lcom/android/server/am/ear;->gck:Ljava/util/List;

    monitor-exit v1

    goto :goto_3

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_5
    :goto_4
    const-string p0, "OnePlusGameShakeController"

    const-string p1, "[OnlineConfig] resolveConfigFromJSON success!"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catchall_2
    move-exception p0

    goto :goto_6

    :catch_0
    move-exception p0

    :try_start_5
    const-string p1, "OnePlusGameShakeController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] Exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catch_1
    move-exception p0

    const-string p1, "OnePlusGameShakeController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] JSONException:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    :goto_5
    return-void

    :goto_6
    const-string p1, "OnePlusGameShakeController"

    const-string v0, "[OnlineConfig] resolveConfigFromJSON success!"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw p0
.end method

.method public static sis(Landroid/content/Context;)Lcom/android/server/am/ear;
    .locals 1

    sget-object v0, Lcom/android/server/am/ear;->bio:Lcom/android/server/am/ear;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/ear;

    invoke-direct {v0, p0}, Lcom/android/server/am/ear;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/am/ear;->bio:Lcom/android/server/am/ear;

    :cond_0
    sget-object p0, Lcom/android/server/am/ear;->bio:Lcom/android/server/am/ear;

    return-object p0
.end method

.method static synthetic you(Lcom/android/server/am/ear;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/ear;->sis:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic zta(Lcom/android/server/am/ear;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/ear;->rtg(Lorg/json/JSONArray;)V

    return-void
.end method


# virtual methods
.method public getGameMultiTouchList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/android/server/am/ear;->igw:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/am/ear;->gck:Ljava/util/List;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getGameShakeConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/android/server/am/ear;->kth:Ljava/util/HashMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public tsu()V
    .locals 6

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/am/ear;->sis:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/ear;->you:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/am/ear$you;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/am/ear$you;-><init>(Lcom/android/server/am/ear;Lcom/android/server/am/ear$zta;)V

    const-string v5, "GameShakeConfig"

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/ear;->zta:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/am/ear;->sis:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/ear;->you:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/am/ear$you;

    invoke-direct {v3, p0, v4}, Lcom/android/server/am/ear$you;-><init>(Lcom/android/server/am/ear;Lcom/android/server/am/ear$zta;)V

    const-string v4, "GameMultiTouchConfig"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/ear;->tsu:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    iget-object p0, p0, Lcom/android/server/am/ear;->you:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
