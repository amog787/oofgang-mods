.class public Lyou/zta/zta/zta/kth/zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/OnePlusUtil$zta$you;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyou/zta/zta/zta/kth/zta$sis;
    }
.end annotation


# static fields
.field private static bvj:Lyou/zta/zta/zta/kth/zta; = null

.field private static final oif:Ljava/lang/String; = "OnePlusQPowerManager"

.field private static final qbh:Z


# instance fields
.field private bio:Lcom/oneplus/android/wifi/IOpWifiManager;

.field private cno:Lcom/oneplus/config/ConfigObserver;

.field final dma:Ljava/lang/Runnable;

.field private final gck:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private igw:Z

.field private kth:Lyou/zta/zta/zta/kth/zta$sis;

.field private rtg:Landroid/content/Context;

.field private sis:Z

.field private ssp:Z

.field private tsu:Z

.field private wtn:Z

.field private you:Z

.field private ywr:Landroid/content/BroadcastReceiver;

.field private final zta:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lyou/zta/zta/zta/kth/zta;->qbh:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyou/zta/zta/zta/kth/zta;->zta:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyou/zta/zta/zta/kth/zta;->you:Z

    iput-boolean v0, p0, Lyou/zta/zta/zta/kth/zta;->sis:Z

    iput-boolean v0, p0, Lyou/zta/zta/zta/kth/zta;->tsu:Z

    iput-boolean v0, p0, Lyou/zta/zta/zta/kth/zta;->ssp:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lyou/zta/zta/zta/kth/zta;->bio:Lcom/oneplus/android/wifi/IOpWifiManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyou/zta/zta/zta/kth/zta;->igw:Z

    iput-boolean v0, p0, Lyou/zta/zta/zta/kth/zta;->wtn:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyou/zta/zta/zta/kth/zta;->gck:Ljava/util/ArrayList;

    new-instance v0, Lyou/zta/zta/zta/kth/zta$zta;

    invoke-direct {v0, p0}, Lyou/zta/zta/zta/kth/zta$zta;-><init>(Lyou/zta/zta/zta/kth/zta;)V

    iput-object v0, p0, Lyou/zta/zta/zta/kth/zta;->dma:Ljava/lang/Runnable;

    new-instance v0, Lyou/zta/zta/zta/kth/zta$you;

    invoke-direct {v0, p0}, Lyou/zta/zta/zta/kth/zta$you;-><init>(Lyou/zta/zta/zta/kth/zta;)V

    iput-object v0, p0, Lyou/zta/zta/zta/kth/zta;->ywr:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic bio(Lyou/zta/zta/zta/kth/zta;Z)Z
    .locals 0

    iput-boolean p1, p0, Lyou/zta/zta/zta/kth/zta;->ssp:Z

    return p1
.end method

.method private bvj(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lyou/zta/zta/zta/kth/zta;->you:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lyou/zta/zta/zta/kth/zta;->wtn:Z

    if-nez v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lyou/zta/zta/zta/kth/zta;->ssp:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lyou/zta/zta/zta/kth/zta;->tsu:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lyou/zta/zta/zta/kth/zta;->gck:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lyou/zta/zta/zta/kth/zta;->gck:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    iget-boolean p1, p0, Lyou/zta/zta/zta/kth/zta;->sis:Z

    :goto_0
    iget-boolean v0, p0, Lyou/zta/zta/zta/kth/zta;->igw:Z

    if-eq p1, v0, :cond_4

    sget-boolean v0, Lyou/zta/zta/zta/kth/zta;->qbh:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lyou/zta/zta/zta/kth/zta;->igw:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mIsWifiConnected="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lyou/zta/zta/zta/kth/zta;->wtn:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mIsScreenOn="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lyou/zta/zta/zta/kth/zta;->ssp:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OnePlusQPowerManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lyou/zta/zta/zta/kth/zta;->dma:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method static synthetic cno(Lyou/zta/zta/zta/kth/zta;)V
    .locals 0

    invoke-direct {p0}, Lyou/zta/zta/zta/kth/zta;->oif()V

    return-void
.end method

.method public static gck()Lyou/zta/zta/zta/kth/zta;
    .locals 1

    sget-object v0, Lyou/zta/zta/zta/kth/zta;->bvj:Lyou/zta/zta/zta/kth/zta;

    if-nez v0, :cond_0

    new-instance v0, Lyou/zta/zta/zta/kth/zta;

    invoke-direct {v0}, Lyou/zta/zta/zta/kth/zta;-><init>()V

    sput-object v0, Lyou/zta/zta/zta/kth/zta;->bvj:Lyou/zta/zta/zta/kth/zta;

    :cond_0
    sget-object v0, Lyou/zta/zta/zta/kth/zta;->bvj:Lyou/zta/zta/zta/kth/zta;

    return-object v0
.end method

.method private gwm(Z)V
    .locals 2

    iget-object v0, p0, Lyou/zta/zta/zta/kth/zta;->zta:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lyou/zta/zta/zta/kth/zta;->sis:Z

    if-eq p1, v1, :cond_0

    iput-boolean p1, p0, Lyou/zta/zta/zta/kth/zta;->sis:Z

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->rtg()Lcom/android/server/OnePlusUtil$zta;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/OnePlusUtil$zta;->sis()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lyou/zta/zta/zta/kth/zta;->bvj(Ljava/lang/String;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private ibl(Z)V
    .locals 2

    iget-object v0, p0, Lyou/zta/zta/zta/kth/zta;->zta:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lyou/zta/zta/zta/kth/zta;->tsu:Z

    if-eq p1, v1, :cond_0

    iput-boolean p1, p0, Lyou/zta/zta/zta/kth/zta;->tsu:Z

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->rtg()Lcom/android/server/OnePlusUtil$zta;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/OnePlusUtil$zta;->sis()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lyou/zta/zta/zta/kth/zta;->bvj(Ljava/lang/String;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic igw(Lyou/zta/zta/zta/kth/zta;Z)Z
    .locals 0

    iput-boolean p1, p0, Lyou/zta/zta/zta/kth/zta;->wtn:Z

    return p1
.end method

.method static synthetic kth(Lyou/zta/zta/zta/kth/zta;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lyou/zta/zta/zta/kth/zta;->zta:Ljava/lang/Object;

    return-object p0
.end method

.method private oif()V
    .locals 2

    iget-object v0, p0, Lyou/zta/zta/zta/kth/zta;->gck:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lyou/zta/zta/zta/kth/zta;->gck:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->rtg()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v0

    if-lez v1, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/server/OnePlusUtil$zta;->bio(Lcom/android/server/OnePlusUtil$zta$you;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/server/OnePlusUtil$zta;->dma(Lcom/android/server/OnePlusUtil$zta$you;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private qbh(Z)V
    .locals 2

    iget-object v0, p0, Lyou/zta/zta/zta/kth/zta;->zta:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lyou/zta/zta/zta/kth/zta;->you:Z

    if-eq p1, v1, :cond_1

    iput-boolean p1, p0, Lyou/zta/zta/zta/kth/zta;->you:Z

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lyou/zta/zta/zta/kth/zta;->dma:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->rtg()Lcom/android/server/OnePlusUtil$zta;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/OnePlusUtil$zta;->sis()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lyou/zta/zta/zta/kth/zta;->bvj(Ljava/lang/String;)V

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic rtg()Z
    .locals 1

    sget-boolean v0, Lyou/zta/zta/zta/kth/zta;->qbh:Z

    return v0
.end method

.method static synthetic sis(Lyou/zta/zta/zta/kth/zta;)Z
    .locals 0

    iget-boolean p0, p0, Lyou/zta/zta/zta/kth/zta;->igw:Z

    return p0
.end method

.method static synthetic ssp(Lyou/zta/zta/zta/kth/zta;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lyou/zta/zta/zta/kth/zta;->ywr(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic tsu(Lyou/zta/zta/zta/kth/zta;Z)Z
    .locals 0

    iput-boolean p1, p0, Lyou/zta/zta/zta/kth/zta;->igw:Z

    return p1
.end method

.method static synthetic wtn(Lyou/zta/zta/zta/kth/zta;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lyou/zta/zta/zta/kth/zta;->bvj(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic you(Lyou/zta/zta/zta/kth/zta;Lcom/oneplus/android/wifi/IOpWifiManager;)Lcom/oneplus/android/wifi/IOpWifiManager;
    .locals 0

    iput-object p1, p0, Lyou/zta/zta/zta/kth/zta;->bio:Lcom/oneplus/android/wifi/IOpWifiManager;

    return-object p1
.end method

.method private ywr(Lorg/json/JSONArray;)V
    .locals 7

    if-nez p1, :cond_0

    const-string p0, "OnePlusQPowerManager"

    const-string p1, "config is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_7

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "feature"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {p0, v3}, Lyou/zta/zta/zta/kth/zta;->qbh(Z)V

    :cond_1
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "feature_screenoff"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iget-boolean v4, p0, Lyou/zta/zta/zta/kth/zta;->sis:Z

    if-eq v3, v4, :cond_2

    invoke-direct {p0, v3}, Lyou/zta/zta/zta/kth/zta;->gwm(Z)V

    :cond_2
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "feature_frontapp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iget-boolean v4, p0, Lyou/zta/zta/zta/kth/zta;->tsu:Z

    if-eq v3, v4, :cond_3

    invoke-direct {p0, v3}, Lyou/zta/zta/zta/kth/zta;->ibl(Z)V

    :cond_3
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "list"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    iget-object v3, p0, Lyou/zta/zta/zta/kth/zta;->gck:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v4, p0, Lyou/zta/zta/zta/kth/zta;->gck:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move v4, v0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_5

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lyou/zta/zta/zta/kth/zta;->gck:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lyou/zta/zta/zta/kth/zta;->gck:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v2, "OnePlusQPowerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] update list success "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lyou/zta/zta/zta/kth/zta;->gck:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OnePlusQPowerManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method static synthetic zta(Lyou/zta/zta/zta/kth/zta;)Lcom/oneplus/android/wifi/IOpWifiManager;
    .locals 0

    iget-object p0, p0, Lyou/zta/zta/zta/kth/zta;->bio:Lcom/oneplus/android/wifi/IOpWifiManager;

    return-object p0
.end method


# virtual methods
.method public dma(Landroid/content/Context;)V
    .locals 4

    iput-object p1, p0, Lyou/zta/zta/zta/kth/zta;->rtg:Landroid/content/Context;

    new-instance p1, Lyou/zta/zta/zta/kth/zta$sis;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lyou/zta/zta/zta/kth/zta$sis;-><init>(Lyou/zta/zta/zta/kth/zta;Lyou/zta/zta/zta/kth/zta$zta;)V

    iput-object p1, p0, Lyou/zta/zta/zta/kth/zta;->kth:Lyou/zta/zta/zta/kth/zta$sis;

    new-instance p1, Lcom/oneplus/config/ConfigObserver;

    iget-object v0, p0, Lyou/zta/zta/zta/kth/zta;->rtg:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lyou/zta/zta/zta/kth/zta;->kth:Lyou/zta/zta/zta/kth/zta$sis;

    const-string v3, "QPower"

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object p1, p0, Lyou/zta/zta/zta/kth/zta;->cno:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigObserver;->register()V

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lyou/zta/zta/zta/kth/zta;->rtg:Landroid/content/Context;

    iget-object p0, p0, Lyou/zta/zta/zta/kth/zta;->ywr:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public frontPackageChanged(Ljava/lang/String;IILjava/lang/String;II)V
    .locals 0

    iget-boolean p2, p0, Lyou/zta/zta/zta/kth/zta;->tsu:Z

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lyou/zta/zta/zta/kth/zta;->bvj(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
