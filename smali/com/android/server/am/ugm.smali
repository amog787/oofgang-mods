.class public Lcom/android/server/am/ugm;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ugm$you;,
        Lcom/android/server/am/ugm$sis;
    }
.end annotation


# static fields
.field public static final bud:Ljava/lang/String; = "top"

.field private static final bvj:Ljava/lang/String; = "oneplus.intent.action.MDM_VIP_BROADCAST"

.field public static final cgv:Ljava/lang/String; = "appVersionName"

.field public static final cjf:Ljava/lang/String; = "avgReceiverTookTime"

.field public static final dma:I = 0x1

.field public static final ear:Ljava/lang/String; = "avgTimeFromSendToRcv"

.field public static final fto:Ljava/lang/String; = "receiver"

.field private static gck:Lcom/android/server/am/ugm; = null

.field private static final gwm:Z

.field public static final hmo:Ljava/lang/String; = "appType"

.field private static final ibl:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN"

.field public static final ire:Ljava/lang/String; = "package"

.field public static final irq:Ljava/lang/String; = "system"

.field public static final les:Ljava/lang/String; = "highused"

.field public static final lqr:Ljava/lang/String; = "action"

.field public static final obl:Ljava/lang/String; = "anrCount"

.field private static final oif:Ljava/lang/String; = "vipBroadcast"

.field public static final oxb:Ljava/lang/String; = "receiverCount"

.field private static final qbh:Ljava/lang/String; = "NYNCG4I0TI"

.field private static final ugm:Ljava/lang/String; = "/data/system/vipBroadData.json"

.field public static final vdb:Ljava/lang/String; = "ttm"

.field public static final vdw:Ljava/lang/String; = "third"

.field public static final veq:Ljava/lang/String; = "appVersionCode"

.field public static final vju:Ljava/lang/String; = "unknown"

.field private static final wtn:Ljava/lang/String; = "OPBroadcastDataCollector"

.field public static final ywr:I = 0x2

.field public static final zgw:Ljava/lang/String; = "array"


# instance fields
.field private bio:Ljava/lang/Object;

.field private cno:Lorg/json/JSONArray;

.field private igw:Landroid/content/BroadcastReceiver;

.field private kth:Ljava/lang/Object;

.field rtg:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ugm$sis$zta;",
            ">;"
        }
    .end annotation
.end field

.field private sis:I

.field ssp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ugm$sis;",
            ">;"
        }
    .end annotation
.end field

.field private tsu:I

.field private you:J

.field private zta:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "persist.sys.vipBroadcast.test"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ugm;->gwm:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/ugm;->you:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ugm;->rtg:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ugm;->ssp:Ljava/util/HashMap;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ugm;->cno:Lorg/json/JSONArray;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ugm;->kth:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ugm;->bio:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/am/ugm$zta;

    invoke-direct {v0, p0}, Lcom/android/server/am/ugm$zta;-><init>(Lcom/android/server/am/ugm;)V

    iput-object v0, p0, Lcom/android/server/am/ugm;->igw:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static bio(I)Ljava/lang/String;
    .locals 1

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const-string p0, "top"

    goto :goto_0

    :cond_0
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_1

    const-string p0, "highused"

    goto :goto_0

    :cond_1
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_2

    const-string p0, "system"

    goto :goto_0

    :cond_2
    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_3

    const-string p0, "third"

    goto :goto_0

    :cond_3
    const-string p0, "unknown"

    :goto_0
    return-object p0
.end method

.method private bvj(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "data"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "appid"

    const-string v2, "NYNCG4I0TI"

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object p1

    const-string v2, "OPBroadcastDataCollector"

    if-eqz p1, :cond_0

    const-string p1, "preserveOsData"

    invoke-static {v2, p1}, Lcom/android/server/am/Slogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/ugm;->zta:Landroid/content/Context;

    invoke-virtual {p1, p0, p2, v1, v0}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    const-string p0, " OpDeviceManagerInjector.getInstance() is null"

    invoke-static {v2, p0}, Lcom/android/server/am/Slogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private dma()J
    .locals 5

    const-wide/16 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ugm;->zta:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {p0, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v0, v2, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catch_0
    move-exception p0

    :try_start_1
    const-string v2, "OPBroadcastDataCollector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getTotalMemory : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/am/Slogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-wide v0
.end method

.method private gwm()V
    .locals 1

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ugm;->cno:Lorg/json/JSONArray;

    return-void
.end method

.method public static declared-synchronized igw()Lcom/android/server/am/ugm;
    .locals 2

    const-class v0, Lcom/android/server/am/ugm;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/am/ugm;->gck:Lcom/android/server/am/ugm;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/am/ugm;

    invoke-direct {v1}, Lcom/android/server/am/ugm;-><init>()V

    sput-object v1, Lcom/android/server/am/ugm;->gck:Lcom/android/server/am/ugm;

    :cond_0
    sget-object v1, Lcom/android/server/am/ugm;->gck:Lcom/android/server/am/ugm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private oif()Z
    .locals 0

    sget-boolean p0, Lcom/android/server/am/ugm;->gwm:Z

    return p0
.end method

.method private static qbh()Z
    .locals 1

    invoke-static {}, Lcom/android/server/am/zgw;->obl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/am/zgw;->ear()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private rtg()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/ugm;->ssp()V

    const-string v1, "ttm"

    iget-wide v2, p0, Lcom/android/server/am/ugm;->you:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "anrCount"

    invoke-virtual {p0}, Lcom/android/server/am/ugm;->kth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "receiverCount"

    invoke-virtual {p0}, Lcom/android/server/am/ugm;->gck()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "array"

    iget-object p0, p0, Lcom/android/server/am/ugm;->cno:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " createMDMData : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "OPBroadcastDataCollector"

    invoke-static {v1, p0}, Lcom/android/server/am/Slogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method private sis(Lcom/android/server/am/ugm$sis$zta;)Lorg/json/JSONObject;
    .locals 6

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    iget v0, p1, Lcom/android/server/am/ugm$sis$zta;->cno:I

    const/4 v1, 0x1

    iget-wide v2, p1, Lcom/android/server/am/ugm$sis$zta;->rtg:J

    if-le v0, v1, :cond_0

    int-to-long v4, v0

    div-long/2addr v2, v4

    :cond_0
    iget v0, p1, Lcom/android/server/am/ugm$sis$zta;->kth:I

    iget-wide v4, p1, Lcom/android/server/am/ugm$sis$zta;->ssp:J

    if-le v0, v1, :cond_1

    int-to-long v0, v0

    div-long/2addr v4, v0

    :cond_1
    :try_start_0
    const-string p1, "avgReceiverTookTime"

    invoke-virtual {p0, p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "avgTimeFromSendToRcv"

    invoke-virtual {p0, p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OPBroadcastDataCollector"

    invoke-static {v0, p1}, Lcom/android/server/am/Slogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method private ssp()V
    .locals 11

    iget-object v0, p0, Lcom/android/server/am/ugm;->rtg:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ugm;->rtg:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ugm$sis$zta;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "@"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v4, v2

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    aget-object v5, v2, v4

    const/4 v6, 0x1

    aget-object v7, v2, v6

    const/4 v8, 0x2

    aget-object v2, v2, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v8, v4

    :goto_1
    :try_start_1
    iget-object v9, p0, Lcom/android/server/am/ugm;->cno:Lorg/json/JSONArray;

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_4

    iget-object v9, p0, Lcom/android/server/am/ugm;->cno:Lorg/json/JSONArray;

    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    if-eqz v9, :cond_3

    const-string v10, "package"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_2

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, v3}, Lcom/android/server/am/ugm;->sis(Lcom/android/server/am/ugm$sis$zta;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v9, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_2
    invoke-direct {p0, v3}, Lcom/android/server/am/ugm;->sis(Lcom/android/server/am/ugm$sis$zta;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_2
    move v4, v6

    goto :goto_3

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    if-nez v4, :cond_0

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "package"

    iget-object v6, v3, Lcom/android/server/am/ugm$sis$zta;->you:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "appVersionCode"

    iget-object v6, v3, Lcom/android/server/am/ugm$sis$zta;->sis:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, v3}, Lcom/android/server/am/ugm;->sis(Lcom/android/server/am/ugm$sis$zta;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/android/server/am/ugm;->cno:Lorg/json/JSONArray;

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "OPBroadcastDataCollector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dataToJsonData Exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/server/am/Slogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static tsu(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const-string v0, "\n"

    const-string v1, "\r\n"

    const-string v2, "\""

    const-string v3, "\'"

    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v5, -0x1

    if-eq p1, v5, :cond_2

    const-string p1, "\\\'"

    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v5, :cond_3

    const-string p1, "\\\""

    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v5, :cond_4

    const-string p1, "\\u000d\\u000a"

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_4
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v5, :cond_5

    const-string p1, "\\u000a"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_5
    invoke-static {p0}, Lcom/android/server/am/ugm$you;->you(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/io/OutputStreamWriter;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v1, "UTF-8"

    invoke-direct {p1, v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    invoke-virtual {p1}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 p1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " createJsonFile : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OPBroadcastDataCollector"

    invoke-static {v0, p0}, Lcom/android/server/am/Slogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move p0, p1

    :goto_0
    return p0
.end method

.method private ugm()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/am/ugm;->ibl()V

    invoke-virtual {p0}, Lcom/android/server/am/ugm;->vdb()V

    invoke-virtual {p0}, Lcom/android/server/am/ugm;->zgw()V

    invoke-direct {p0}, Lcom/android/server/am/ugm;->gwm()V

    return-void
.end method

.method public static you(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ugm$sis$zta;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ugm$sis$zta;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ugm$sis$zta;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static synthetic zta()Z
    .locals 1

    invoke-static {}, Lcom/android/server/am/ugm;->qbh()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public cjf()V
    .locals 2

    invoke-static {}, Lcom/android/server/am/ugm;->qbh()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ugm;->bio:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/am/ugm;->tsu:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/am/ugm;->tsu:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public cno(Ljava/io/PrintWriter;)V
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0}, Lcom/android/server/am/ugm;->rtg()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/data/system/vipBroadData.json"

    invoke-static {v0, v1}, Lcom/android/server/am/ugm;->tsu(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTotalMem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/ugm;->you:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAnrTotalCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/ugm;->kth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mReceiverInfoMap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/ugm;->wtn()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpsysToFile isok = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " file path is : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public ear()V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/am/ugm;->rtg()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "vipBroadcast"

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/ugm;->bvj(Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/ugm;->ugm()V

    return-void
.end method

.method public gck()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ugm;->bio:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Lcom/android/server/am/ugm;->tsu:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public ibl()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/ugm;->kth:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Lcom/android/server/am/ugm;->sis:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public kth()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ugm;->kth:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Lcom/android/server/am/ugm;->sis:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public obl()V
    .locals 2

    invoke-static {}, Lcom/android/server/am/ugm;->qbh()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ugm;->kth:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/am/ugm;->sis:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/am/ugm;->sis:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public oxb(ILjava/lang/String;Ljava/lang/String;JJLjava/lang/String;I)V
    .locals 3

    invoke-static {}, Lcom/android/server/am/ugm;->qbh()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scenes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " actionName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " receiverTookTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " timeFromSendtorcv = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " appVersionCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " queueFlag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPBroadcastDataCollector"

    invoke-static {v1, v0}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ugm;->rtg:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {p9}, Lcom/android/server/am/ugm;->bio(I)Ljava/lang/String;

    move-result-object p9

    const-string v1, "unknown"

    invoke-virtual {v1, p9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ugm;->rtg:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ugm$sis$zta;

    if-nez v2, :cond_2

    new-instance v2, Lcom/android/server/am/ugm$sis$zta;

    invoke-direct {v2, p2, p3, p9, p8}, Lcom/android/server/am/ugm$sis$zta;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string p2, "OPBroadcastDataCollector"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p8, "before update info = "

    invoke-virtual {p3, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/am/ugm$sis$zta;->toString()Ljava/lang/String;

    move-result-object p8

    invoke-virtual {p3, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    iget-wide p6, v2, Lcom/android/server/am/ugm$sis$zta;->rtg:J

    add-long/2addr p6, p4

    iput-wide p6, v2, Lcom/android/server/am/ugm$sis$zta;->rtg:J

    iget p1, v2, Lcom/android/server/am/ugm$sis$zta;->cno:I

    add-int/2addr p1, p2

    iput p1, v2, Lcom/android/server/am/ugm$sis$zta;->cno:I

    goto :goto_0

    :cond_3
    iget-wide p3, v2, Lcom/android/server/am/ugm$sis$zta;->ssp:J

    add-long/2addr p3, p6

    iput-wide p3, v2, Lcom/android/server/am/ugm$sis$zta;->ssp:J

    iget p1, v2, Lcom/android/server/am/ugm$sis$zta;->kth:I

    add-int/2addr p1, p2

    iput p1, v2, Lcom/android/server/am/ugm$sis$zta;->kth:I

    :goto_0
    const-string p1, "OPBroadcastDataCollector"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "after update info = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/am/ugm$sis$zta;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/am/Slogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/ugm;->rtg:Ljava/util/HashMap;

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public vdb()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ugm;->rtg:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ugm;->rtg:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public wtn()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ugm$sis$zta;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/ugm;->rtg:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ugm;->rtg:Ljava/util/HashMap;

    invoke-static {p0}, Lcom/android/server/am/ugm;->you(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public ywr(Landroid/content/Context;)V
    .locals 9

    invoke-static {}, Lcom/android/server/am/ugm;->qbh()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/android/server/am/ugm;->zta:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/am/ugm;->dma()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ugm;->you:J

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/AlarmManager;

    new-instance v0, Landroid/content/Intent;

    const-string v8, "oneplus.intent.action.MDM_VIP_BROADCAST"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    const/4 v2, 0x2

    const-wide/16 v3, 0x3e8

    invoke-direct {p0}, Lcom/android/server/am/ugm;->oif()Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/32 v5, 0xdbba0

    goto :goto_0

    :cond_0
    const-wide/32 v5, 0x5265c00

    :goto_0
    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    invoke-virtual {p1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ugm;->zta:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/am/ugm;->igw:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string p0, "OPBroadcastDataCollector"

    const-string p1, "init"

    invoke-static {p0, p1}, Lcom/android/server/am/Slogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public zgw()V
    .locals 2

    invoke-static {}, Lcom/android/server/am/ugm;->qbh()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ugm;->bio:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Lcom/android/server/am/ugm;->tsu:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
