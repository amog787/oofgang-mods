.class public Lcom/oneplus/server/ssp;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/server/ssp$you;,
        Lcom/oneplus/server/ssp$zta;
    }
.end annotation


# static fields
.field public static final bio:I = 0x1

.field private static final cno:Ljava/lang/String; = "persist.sys.uxchain.enable"

.field private static igw:Z = false

.field private static final kth:Ljava/lang/String; = "op_uxchain"

.field private static rtg:Lcom/oneplus/server/ssp; = null

.field private static ssp:Landroid/content/Context; = null

.field private static final tsu:Ljava/lang/String; = "OpUxchainOnlineConfig"

.field private static final wtn:Ljava/lang/String; = "persist.sys.uxchain.v2.enable"


# instance fields
.field private sis:Lcom/oneplus/config/ConfigObserver;

.field private you:Z

.field private zta:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/server/ssp;->you:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/server/ssp;->sis:Lcom/oneplus/config/ConfigObserver;

    const-string v0, "persist.sys.uxchain.enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/server/ssp;->you:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/oneplus/server/ssp;->igw:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.uxchain.v2.enable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOpUxchainEnable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oneplus/server/ssp;->you:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpUxchainOnlineConfig"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private bio(Lorg/json/JSONArray;)V
    .locals 7

    const-string v0, "name"

    const-string v1, "OpUxchainOnlineConfig"

    const-string v2, "resolveConfigFromJSON"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const-string p0, "resolve config from json failed for jsonArray is null"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "v2_enable"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "value"

    if-eqz v4, :cond_1

    :try_start_1
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/oneplus/server/ssp;->igw:Z

    :cond_1
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "enable"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/oneplus/server/ssp;->you:Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const-string p1, "persist.sys.uxchain.enable"

    iget-boolean v0, p0, Lcom/oneplus/server/ssp;->you:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "persist.sys.uxchain.v2.enable"

    sget-boolean v0, Lcom/oneplus/server/ssp;->igw:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OpUxchainOnlineConfig] update complete, status: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oneplus/server/ssp;->you:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OpUxchainOnlineConfig] error occured while resolving config: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private cno()V
    .locals 1

    sget-object v0, Lcom/oneplus/server/ssp;->ssp:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/oneplus/server/ssp;->kth(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private gck(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p0, "1"

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    invoke-static {}, Lcom/oneplus/uifirst/UIFirstUtils;->getUIFirstUtil()Lcom/oneplus/uifirst/UIFirstUtils;

    const-string p1, "/proc/sys/kernel/uxchain_v2"

    invoke-static {p1, p0}, Lcom/oneplus/uifirst/UIFirstUtils;->writeProcNode(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private igw(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    const-string v1, "op_uxchain"

    invoke-direct {v0, p1, v1}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oneplus/server/ssp;->bio(Lorg/json/JSONArray;)V

    invoke-direct {p0}, Lcom/oneplus/server/ssp;->wtn()V

    return-void
.end method

.method private kth(Landroid/content/Context;)V
    .locals 4

    const-string v0, "OpUxchainOnlineConfig"

    const-string v1, "registerConfigObserver"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/oneplus/server/ssp;->zta:Landroid/os/Handler;

    new-instance v2, Lcom/oneplus/server/ssp$zta;

    invoke-direct {v2, p0}, Lcom/oneplus/server/ssp$zta;-><init>(Lcom/oneplus/server/ssp;)V

    const-string v3, "op_uxchain"

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/server/ssp;->sis:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    return-void
.end method

.method public static rtg()Lcom/oneplus/server/ssp;
    .locals 2

    sget-object v0, Lcom/oneplus/server/ssp;->rtg:Lcom/oneplus/server/ssp;

    if-nez v0, :cond_1

    const-class v0, Lcom/oneplus/server/ssp;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/oneplus/server/ssp;->rtg:Lcom/oneplus/server/ssp;

    if-nez v1, :cond_0

    new-instance v1, Lcom/oneplus/server/ssp;

    invoke-direct {v1}, Lcom/oneplus/server/ssp;-><init>()V

    sput-object v1, Lcom/oneplus/server/ssp;->rtg:Lcom/oneplus/server/ssp;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/oneplus/server/ssp;->rtg:Lcom/oneplus/server/ssp;

    return-object v0
.end method

.method static synthetic sis()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/oneplus/server/ssp;->ssp:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic tsu(Lcom/oneplus/server/ssp;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/server/ssp;->igw(Landroid/content/Context;)V

    return-void
.end method

.method private wtn()V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/server/ssp;->you:Z

    if-eqz v0, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    invoke-static {}, Lcom/oneplus/uifirst/UIFirstUtils;->getUIFirstUtil()Lcom/oneplus/uifirst/UIFirstUtils;

    const-string v1, "/proc/sys/kernel/uxchain_enabled"

    invoke-static {v1, v0}, Lcom/oneplus/uifirst/UIFirstUtils;->writeProcNode(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/oneplus/server/ssp;->igw:Z

    invoke-direct {p0, v0}, Lcom/oneplus/server/ssp;->gck(Z)V

    return-void
.end method

.method static synthetic you(Lcom/oneplus/server/ssp;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/server/ssp;->wtn()V

    return-void
.end method

.method static synthetic zta(Lcom/oneplus/server/ssp;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/server/ssp;->bio(Lorg/json/JSONArray;)V

    return-void
.end method


# virtual methods
.method public ssp(Landroid/content/Context;)V
    .locals 1

    sput-object p1, Lcom/oneplus/server/ssp;->ssp:Landroid/content/Context;

    new-instance p1, Lcom/oneplus/server/ssp$you;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/oneplus/server/ssp$you;-><init>(Lcom/oneplus/server/ssp;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oneplus/server/ssp;->zta:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget-object p1, Lcom/oneplus/server/ssp;->ssp:Landroid/content/Context;

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/oneplus/server/ssp;->kth(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
