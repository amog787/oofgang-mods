.class public Lcom/android/server/am/zgw;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/zgw$you;,
        Lcom/android/server/am/zgw$sis;,
        Lcom/android/server/am/zgw$tsu;
    }
.end annotation


# static fields
.field private static final bio:Z

.field private static volatile bvj:I = 0x0

.field private static final cgv:Ljava/lang/String; = "VIPBroadcast"

.field private static volatile cjf:I = 0x0

.field private static cno:Ljava/lang/Object; = null

.field public static volatile dma:Z = false

.field public static ear:Z = false

.field private static fto:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile gck:Z = false

.field private static volatile gwm:I = 0x0

.field private static final hmo:I = 0x32

.field private static volatile ibl:I = 0x0

.field public static volatile igw:Z = false

.field public static ire:Z = false

.field static final kth:Z

.field private static lqr:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile obl:I = 0x0

.field private static volatile oif:I = 0x0

.field private static volatile oxb:I = 0x0

.field public static volatile qbh:Z = false

.field private static rtg:Lcom/android/server/am/zgw; = null

.field private static final ssp:I = 0x1

.field private static final tsu:Ljava/lang/String; = "OPVIPBroadcastController"

.field private static volatile ugm:I

.field private static volatile vdb:I

.field private static veq:Landroid/content/pm/PackageManagerInternal;

.field public static volatile wtn:Z

.field public static volatile ywr:Z

.field private static volatile zgw:I


# instance fields
.field private sis:Landroid/os/Handler;

.field private you:Landroid/content/Context;

.field private zta:Lcom/oneplus/config/ConfigObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/zgw;->cno:Ljava/lang/Object;

    const-string v0, "persist.sys.vipbroadcast.test"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/zgw;->kth:Z

    const/4 v0, 0x1

    new-array v2, v0, [I

    const/16 v3, 0x12d

    aput v3, v2, v1

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/zgw;->bio:Z

    sput-boolean v0, Lcom/android/server/am/zgw;->igw:Z

    sput-boolean v0, Lcom/android/server/am/zgw;->wtn:Z

    sput-boolean v1, Lcom/android/server/am/zgw;->gck:Z

    sput-boolean v0, Lcom/android/server/am/zgw;->dma:Z

    sput-boolean v1, Lcom/android/server/am/zgw;->ywr:Z

    sput-boolean v0, Lcom/android/server/am/zgw;->qbh:Z

    const/16 v2, 0xc8

    sput v2, Lcom/android/server/am/zgw;->oif:I

    const/16 v3, 0xa

    sput v3, Lcom/android/server/am/zgw;->bvj:I

    const/16 v3, 0x1e

    sput v3, Lcom/android/server/am/zgw;->ibl:I

    const/16 v3, 0x3c

    sput v3, Lcom/android/server/am/zgw;->gwm:I

    const/16 v3, 0x50

    sput v3, Lcom/android/server/am/zgw;->ugm:I

    sput v2, Lcom/android/server/am/zgw;->vdb:I

    const/16 v2, 0x32

    sput v2, Lcom/android/server/am/zgw;->zgw:I

    const/16 v2, 0x64

    sput v2, Lcom/android/server/am/zgw;->obl:I

    const/16 v2, 0x96

    sput v2, Lcom/android/server/am/zgw;->oxb:I

    const/16 v2, 0x12c

    sput v2, Lcom/android/server/am/zgw;->cjf:I

    sput-boolean v1, Lcom/android/server/am/zgw;->ear:Z

    sput-boolean v0, Lcom/android/server/am/zgw;->ire:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/zgw;->fto:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/zgw;->lqr:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/zgw$zta;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/zgw;-><init>()V

    return-void
.end method

.method public static bio()I
    .locals 2

    sget-object v0, Lcom/android/server/am/zgw;->cno:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/android/server/am/zgw;->ugm:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static cjf()Z
    .locals 2

    sget-object v0, Lcom/android/server/am/zgw;->cno:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/server/am/zgw;->wtn:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static cno()I
    .locals 2

    sget-object v0, Lcom/android/server/am/zgw;->cno:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/android/server/am/zgw;->ibl:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static dma()I
    .locals 2

    sget-object v0, Lcom/android/server/am/zgw;->cno:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/android/server/am/zgw;->vdb:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static ear()Z
    .locals 2

    sget-object v0, Lcom/android/server/am/zgw;->cno:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/server/am/zgw;->ire:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private fto(Lorg/json/JSONArray;)V
    .locals 7

    if-nez p1, :cond_0

    const-string p0, "OPVIPBroadcastController"

    const-string p1, "jsonArray is null"

    invoke-static {p0, p1}, Lcom/android/server/am/Slogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p0, 0x0

    move v0, p0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1e

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "brd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "value"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v4, p0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v3}, Lcom/android/server/am/qeg$you;->gck(Ljava/util/List;)V

    const-string v2, "OPVIPBroadcastController"

    const-string v3, "[OnlineConfig] update brd success"

    invoke-static {v2, v3}, Lcom/android/server/am/Slogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v2, "name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "black_brd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "value"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v4, p0

    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    invoke-static {v3}, Lcom/android/server/am/qeg$you;->dma(Ljava/util/List;)V

    const-string v2, "OPVIPBroadcastController"

    const-string v3, "[OnlineConfig] update blackbrd success"

    invoke-static {v2, v3}, Lcom/android/server/am/Slogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v2, "name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "black_alarm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "value"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v4, p0

    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_5

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    invoke-static {v3}, Lcom/android/server/am/qeg$you;->ywr(Ljava/util/List;)V

    const-string v2, "OPVIPBroadcastController"

    const-string v3, "[OnlineConfig] update blackalarm success"

    invoke-static {v2, v3}, Lcom/android/server/am/Slogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string v2, "name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "black_frozen_brd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "value"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    sget-object v3, Lcom/android/server/am/qeg$you;->bio:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    move v3, p0

    :goto_4
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_7

    sget-object v4, Lcom/android/server/am/qeg$you;->bio:Ljava/util/List;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    const-string v2, "OPVIPBroadcastController"

    const-string v3, "[OnlineConfig] update blackgpslist success"

    invoke-static {v2, v3}, Lcom/android/server/am/Slogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    sget-object v2, Lcom/android/server/am/zgw;->cno:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v3, "name"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "enableVIPBroadcast"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "value"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, p0}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/am/zgw;->igw:Z

    const-string v3, "OPVIPBroadcastController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] sEnableFeature = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/am/zgw;->igw:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/am/Slogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const-string v3, "name"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "enableSkipStrategy"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "value"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, p0}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/am/zgw;->wtn:Z

    const-string v3, "OPVIPBroadcastController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] sEnableSkipStrategy = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/am/zgw;->wtn:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/am/Slogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const-string v3, "name"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "enableDelayStartProcessStrategy"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "value"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, p0}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/am/zgw;->dma:Z

    const-string v3, "OPVIPBroadcastController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] sEnableDelayStartProcessStrategy = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/am/zgw;->dma:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/am/Slogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    const-string v3, "name"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "enableDefaultStrategy"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "value"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, p0}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/am/zgw;->ywr:Z

    const-string v3, "OPVIPBroadcastController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] sEnableDefaultStrategy = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/am/zgw;->ywr:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/am/Slogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    const-string v3, "name"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "enablePriorityStrategy"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "value"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, p0}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/am/zgw;->qbh:Z

    const-string v3, "OPVIPBroadcastController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] sEnablePriorityStrategy = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/am/zgw;->qbh:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/am/Slogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    const-string v3, "name"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "periodic"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, "value"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, p0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    sput v3, Lcom/android/server/am/zgw;->oif:I

    const-string v3, "OPVIPBroadcastController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] sPeriodic = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/am/zgw;->oif:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/am/Slogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    const-string v3, "name"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "low"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "value"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, p0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    sput v3, Lcom/android/server/am/zgw;->bvj:I

    const-string v3, "OPVIPBroadcastController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] sLow = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/am/zgw;->bvj:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/am/Slogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    const-string v3, "name"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "medium"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "value"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, p0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    sput v3, Lcom/android/server/am/zgw;->ibl:I

    const-string v3, "OPVIPBroadcastController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] sMedium = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/am/zgw;->ibl:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/am/Slogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    const-string v3, "name"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "high"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "value"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, p0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    sput v3, Lcom/android/server/am/zgw;->gwm:I

    const-string v3, "OPVIPBroadcastController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] sHigh = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/am/zgw;->gwm:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/am/Slogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    const-string v3, "name"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "veryHigh"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const-string v3, "value"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, p0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    sput v3, Lcom/android/server/am/zgw;->ugm:I

    const-string v3, "OPVIPBroadcastController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] sVeryHigh = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/am/zgw;->ugm:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/am/Slogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    const-string v3, "name"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "speedPeriodic"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v3, "value"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, p0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    sput v3, Lcom/android/server/am/zgw;->vdb:I

    const-string v3, "OPVIPBroadcastController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] sSpeedPeriodic = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/am/zgw;->vdb:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/am/Slogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    const-string v3, "name"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "normal"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    const-string v3, "value"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, p0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    sput v3, Lcom/android/server/am/zgw;->zgw:I

    const-string v3, "OPVIPBroadcastController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] sNormal = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/am/zgw;->zgw:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/am/Slogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    const-string v3, "name"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "slow"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    const-string v3, "value"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, p0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    sput v3, Lcom/android/server/am/zgw;->obl:I

    const-string v3, "OPVIPBroadcastController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] sSlow = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/am/zgw;->obl:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/am/Slogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    const-string v3, "name"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "slower"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    const-string v3, "value"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, p0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    sput v3, Lcom/android/server/am/zgw;->oxb:I

    const-string v3, "OPVIPBroadcastController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] sSlower = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/am/zgw;->oxb:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/am/Slogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    const-string v3, "name"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "slowest"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    const-string v3, "value"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, p0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    sput v3, Lcom/android/server/am/zgw;->cjf:I

    const-string v3, "OPVIPBroadcastController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] sSlowest = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/am/zgw;->cjf:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/am/Slogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    const-string v3, "name"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "enableStatistics"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    const-string v3, "value"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, p0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    sput v3, Lcom/android/server/am/zgw;->cjf:I

    const-string v3, "OPVIPBroadcastController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] sEnableStatistics = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/am/zgw;->ire:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/am/Slogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    const-string v3, "name"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "maxDelayCount"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const-string v3, "value"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, p0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    sput v3, Lcom/android/server/am/zgw;->cjf:I

    const-string v3, "OPVIPBroadcastController"

    const-string v4, "[OnlineConfig] maxDelayCount = 50"

    invoke-static {v3, v4}, Lcom/android/server/am/Slogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    const-string v3, "name"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "whitlelist"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const-string v3, "value"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    sget-object v4, Lcom/android/server/am/zgw;->fto:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    move v4, p0

    :goto_5
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1a

    sget-object v5, Lcom/android/server/am/zgw;->fto:Ljava/util/List;

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_1a
    const-string v3, "OPVIPBroadcastController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] update whitlelist success"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/am/zgw;->fto:Ljava/util/List;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/am/Slogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    const-string v3, "name"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actionWhitlelist"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const-string v3, "value"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    sget-object v3, Lcom/android/server/am/zgw;->lqr:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    move v3, p0

    :goto_6
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1c

    sget-object v4, Lcom/android/server/am/zgw;->lqr:Ljava/util/List;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_1c
    const-string v1, "OPVIPBroadcastController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] update whitlelist success"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/am/zgw;->lqr:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/am/Slogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    monitor-exit v2

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1e
    invoke-static {}, Lcom/android/server/am/zgw;->ugm()Z

    move-result p0

    if-eqz p0, :cond_1f

    :goto_7
    invoke-static {}, Lcom/android/server/am/vdb;->vdb()V

    goto :goto_8

    :catchall_1
    move-exception p0

    goto :goto_9

    :catch_0
    move-exception p0

    :try_start_3
    const-string p1, "OPVIPBroadcastController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] resolveConfigFromJSON, error message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/am/Slogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/am/zgw;->ugm()Z

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_7

    :cond_1f
    :goto_8
    return-void

    :goto_9
    invoke-static {}, Lcom/android/server/am/zgw;->ugm()Z

    move-result p1

    if-eqz p1, :cond_20

    invoke-static {}, Lcom/android/server/am/vdb;->vdb()V

    :cond_20
    throw p0
.end method

.method public static gck()I
    .locals 2

    sget-object v0, Lcom/android/server/am/zgw;->cno:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/android/server/am/zgw;->zgw:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static hmo(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/android/server/am/zgw;->cno:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/am/zgw;->fto:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private ibl()V
    .locals 5

    const-string v0, "OPVIPBroadcastController"

    const-string v1, "initOnlineConfig"

    invoke-static {v0, v1}, Lcom/android/server/am/Slogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/am/zgw$you;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/zgw$you;-><init>(Lcom/android/server/am/zgw;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/zgw;->sis:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/am/zgw;->you:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/zgw;->sis:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/am/zgw$sis;

    invoke-direct {v3, p0}, Lcom/android/server/am/zgw$sis;-><init>(Lcom/android/server/am/zgw;)V

    const-string v4, "VIPBroadcast"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/zgw;->zta:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    iget-object p0, p0, Lcom/android/server/am/zgw;->sis:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public static igw()Lcom/android/server/am/zgw;
    .locals 1

    invoke-static {}, Lcom/android/server/am/zgw$tsu;->zta()Lcom/android/server/am/zgw;

    move-result-object v0

    return-object v0
.end method

.method public static ire(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/android/server/am/zgw;->cno:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/am/zgw;->lqr:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static kth()I
    .locals 2

    sget-object v0, Lcom/android/server/am/zgw;->cno:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/android/server/am/zgw;->oif:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static lqr()V
    .locals 2

    sget-object v0, Lcom/android/server/am/zgw;->cno:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/android/server/am/zgw;->dma:Z

    sput-boolean v1, Lcom/android/server/am/zgw;->gck:Z

    sput-boolean v1, Lcom/android/server/am/zgw;->qbh:Z

    sput-boolean v1, Lcom/android/server/am/zgw;->wtn:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static obl()Z
    .locals 2

    sget-object v0, Lcom/android/server/am/zgw;->cno:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/server/am/zgw;->igw:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/server/am/zgw;->bio:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static oif()I
    .locals 2

    sget-object v0, Lcom/android/server/am/zgw;->cno:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/android/server/am/zgw;->cjf:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static oxb()Z
    .locals 2

    sget-object v0, Lcom/android/server/am/zgw;->cno:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/server/am/zgw;->qbh:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static qbh()I
    .locals 2

    sget-object v0, Lcom/android/server/am/zgw;->cno:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/android/server/am/zgw;->oxb:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static rtg()I
    .locals 2

    sget-object v0, Lcom/android/server/am/zgw;->cno:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/android/server/am/zgw;->gwm:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic sis(Lcom/android/server/am/zgw;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/zgw;->you:Landroid/content/Context;

    return-object p0
.end method

.method public static ssp()I
    .locals 2

    sget-object v0, Lcom/android/server/am/zgw;->cno:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/android/server/am/zgw;->bvj:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static tsu()V
    .locals 2

    sget-object v0, Lcom/android/server/am/zgw;->cno:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/android/server/am/zgw;->dma:Z

    sput-boolean v1, Lcom/android/server/am/zgw;->qbh:Z

    sput-boolean v1, Lcom/android/server/am/zgw;->wtn:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static ugm()Z
    .locals 2

    sget-object v0, Lcom/android/server/am/zgw;->cno:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/server/am/zgw;->ywr:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static vdb()Z
    .locals 2

    sget-object v0, Lcom/android/server/am/zgw;->cno:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/server/am/zgw;->dma:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static veq(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3

    if-eqz p0, :cond_3

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x2710

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x81

    if-eqz v0, :cond_1

    return v2

    :cond_1
    sget-object v0, Lcom/android/server/am/zgw;->veq:Landroid/content/pm/PackageManagerInternal;

    if-nez v0, :cond_2

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    sput-object v0, Lcom/android/server/am/zgw;->veq:Landroid/content/pm/PackageManagerInternal;

    :cond_2
    sget-object v0, Lcom/android/server/am/zgw;->veq:Landroid/content/pm/PackageManagerInternal;

    if-eqz v0, :cond_3

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManagerInternal;->isPlatformSigned(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static wtn()I
    .locals 2

    sget-object v0, Lcom/android/server/am/zgw;->cno:Ljava/lang/Object;

    monitor-enter v0

    const/16 v1, 0x32

    :try_start_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic you(Lcom/android/server/am/zgw;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/zgw;->fto(Lorg/json/JSONArray;)V

    return-void
.end method

.method public static ywr()I
    .locals 2

    sget-object v0, Lcom/android/server/am/zgw;->cno:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/android/server/am/zgw;->obl:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static zgw()Z
    .locals 2

    sget-object v0, Lcom/android/server/am/zgw;->cno:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/server/am/zgw;->gck:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic zta()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/server/am/zgw;->cno:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method bvj(Landroid/content/Context;)V
    .locals 2

    const-string v0, "OPVIPBroadcastController"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/android/server/am/Slogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/am/zgw;->you:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/am/zgw;->ibl()V

    invoke-virtual {p0}, Lcom/android/server/am/zgw;->gwm()V

    const-class p0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    sput-object p0, Lcom/android/server/am/zgw;->veq:Landroid/content/pm/PackageManagerInternal;

    return-void
.end method

.method gwm()V
    .locals 3

    sget-object p0, Lcom/android/server/am/zgw;->cno:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/am/zgw;->fto:Ljava/util/List;

    const-string v1, "net.oneplus.launcher"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/zgw;->fto:Ljava/util/List;

    const-string v1, "com.android.systemui"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/zgw;->fto:Ljava/util/List;

    const-string v1, "com.oneplus.factorymode"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/zgw;->fto:Ljava/util/List;

    const-string v1, "com.android.settings"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/zgw;->fto:Ljava/util/List;

    const-string v1, "com.oneplus.dialer"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/zgw;->fto:Ljava/util/List;

    const-string v1, "com.android.phone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/zgw;->fto:Ljava/util/List;

    const-string v1, "com.oem.autotest"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/zgw;->fto:Ljava/util/List;

    const-string v1, "com.fingerprints.fingerprintsensortest"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/zgw;->fto:Ljava/util/List;

    const-string v1, "com.oneplus.factorymode.specialtest"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/zgw;->fto:Ljava/util/List;

    const-string v1, "com.oneplus.sdcardservice"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/zgw;->fto:Ljava/util/List;

    const-string v1, "com.oneplus.batterymonitor"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/zgw;->lqr:Ljava/util/List;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/zgw;->lqr:Ljava/util/List;

    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/zgw;->lqr:Ljava/util/List;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/zgw;->lqr:Ljava/util/List;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/zgw;->lqr:Ljava/util/List;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "OPVIPBroadcastController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initWhiteList, sWhitleList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/am/zgw;->fto:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " sActionWhitleList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/am/zgw;->lqr:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/Slogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
