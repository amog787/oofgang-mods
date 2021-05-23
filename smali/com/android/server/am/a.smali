.class public Lcom/android/server/am/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/a$you;,
        Lcom/android/server/am/a$zta;
    }
.end annotation


# static fields
.field private static final bio:Ljava/lang/String; = "OpORMFeature"

.field private static final cno:Ljava/lang/String; = "persist.vendor.omm.enabled.kill"

.field public static final igw:I = 0x1

.field private static final kth:Ljava/lang/String; = "persist.sys.orm.feature.enable"

.field private static rtg:Lcom/android/server/am/a; = null

.field private static ssp:Landroid/content/Context; = null

.field private static final tsu:Ljava/lang/String; = "OpORMOnLineConfig"

.field private static final wtn:Ljava/lang/Object;


# instance fields
.field private sis:Lcom/oneplus/config/ConfigObserver;

.field private you:Z

.field private zta:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/a;->wtn:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/a;->you:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/a;->sis:Lcom/oneplus/config/ConfigObserver;

    sget-object v0, Lcom/android/server/am/a;->wtn:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "persist.sys.orm.feature.enable"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/a;->you:Z

    const-string v2, "persist.sys.orm.feature.enable"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "OpORMOnLineConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOpORMEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/am/a;->you:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private bio(Lorg/json/JSONArray;)V
    .locals 4

    const-string v0, "OpORMOnLineConfig"

    const-string v1, "resolveConfigFromJSON"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "enable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/server/am/a;->wtn:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v3, "value"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/a;->you:Z

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/android/server/am/a;->wtn:Ljava/lang/Object;

    monitor-enter p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    const-string v0, "persist.sys.orm.feature.enable"

    iget-boolean v1, p0, Lcom/android/server/am/a;->you:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/a;->you:Z

    if-nez v0, :cond_3

    const-string v0, "persist.vendor.omm.enabled.kill"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemProperties;->reportSyspropChanged()V

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OpORMOnLineConfig] update complete, status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/am/a;->you:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "OpORMOnLineConfig"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p1

    goto :goto_2

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OpORMOnLineConfig] error occured while resolving config: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpORMOnLineConfig"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :cond_4
    :goto_3
    const-string p0, "OpORMOnLineConfig"

    const-string p1, "resolve config from json failed for jsonArray is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private cno()V
    .locals 1

    sget-object v0, Lcom/android/server/am/a;->ssp:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/am/a;->kth(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private igw(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    const-string v1, "OpORMFeature"

    invoke-direct {v0, p1, v1}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/am/a;->bio(Lorg/json/JSONArray;)V

    return-void
.end method

.method private kth(Landroid/content/Context;)V
    .locals 4

    const-string v0, "OpORMOnLineConfig"

    const-string v1, "registerConfigObserver"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/am/a;->zta:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/a$zta;

    invoke-direct {v2, p0}, Lcom/android/server/am/a$zta;-><init>(Lcom/android/server/am/a;)V

    const-string v3, "OpORMFeature"

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/a;->sis:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    return-void
.end method

.method static synthetic sis(Lcom/android/server/am/a;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/a;->igw(Landroid/content/Context;)V

    return-void
.end method

.method public static tsu()Lcom/android/server/am/a;
    .locals 2

    const-class v0, Lcom/android/server/am/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/am/a;->rtg:Lcom/android/server/am/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/am/a;

    invoke-direct {v1}, Lcom/android/server/am/a;-><init>()V

    sput-object v1, Lcom/android/server/am/a;->rtg:Lcom/android/server/am/a;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/android/server/am/a;->rtg:Lcom/android/server/am/a;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic you()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/server/am/a;->ssp:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic zta(Lcom/android/server/am/a;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/a;->bio(Lorg/json/JSONArray;)V

    return-void
.end method


# virtual methods
.method public rtg()Z
    .locals 1

    sget-object v0, Lcom/android/server/am/a;->wtn:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/am/a;->you:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public ssp(Landroid/content/Context;)V
    .locals 1

    sput-object p1, Lcom/android/server/am/a;->ssp:Landroid/content/Context;

    new-instance p1, Lcom/android/server/am/a$you;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/server/am/a$you;-><init>(Lcom/android/server/am/a;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/am/a;->zta:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget-object p1, Lcom/android/server/am/a;->ssp:Landroid/content/Context;

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/am/a;->kth(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
