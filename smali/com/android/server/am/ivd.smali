.class public Lcom/android/server/am/ivd;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ivd$ssp;,
        Lcom/android/server/am/ivd$tsu;,
        Lcom/android/server/am/ivd$cno;,
        Lcom/android/server/am/ivd$rtg;
    }
.end annotation


# static fields
.field private static a:Landroid/os/Handler; = null

.field private static final b:I = 0x1

.field private static bud:Z = false

.field private static final bvj:Ljava/lang/String; = "persist.sys.opjc.debug_loglevel"

.field private static final c:I = 0x2

.field private static cgv:I = 0x0

.field private static final cjf:I = -0x1

.field private static final d:I = 0x64

.field private static final ear:Ljava/lang/String; = ""

.field private static fto:J = 0xa4cb800L

.field private static final gwm:Ljava/lang/String; = "persist.sys.opjc.enable"

.field private static hmo:J = 0x493e0L

.field private static final ibl:Ljava/lang/String; = "persist.sys.opjc.debug_detail"

.field private static ire:J = 0xafc8L

.field private static irq:Z = false

.field private static ivd:Lcom/android/server/am/ivd; = null

.field private static les:Z = false

.field private static lqr:J = 0xea60L

.field private static final obl:I = 0x2

.field private static final oif:Ljava/lang/String; = "OpJobController"

.field private static final oxb:I = 0x3

.field private static final qbh:Ljava/lang/String; = "OPJC"

.field private static qeg:Z = false

.field private static final ugm:Ljava/lang/String; = "com.OPJC.action.debug"

.field private static final vdb:I = 0x123c5c1

.field private static vdw:Z = false

.field private static veq:I = 0x0

.field private static vju:Z = false

.field private static final zgw:I = 0x1


# instance fields
.field private bio:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/ivd$cno;",
            ">;"
        }
    .end annotation
.end field

.field private cno:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private dma:Landroid/content/BroadcastReceiver;

.field private gck:Landroid/app/ActivityManager$OnUidImportanceListener;

.field private igw:Lcom/android/server/am/ivd$rtg;

.field private kth:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private rtg:Ljava/lang/Object;

.field private sis:Landroid/content/Context;

.field private ssp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/bvj;",
            ">;"
        }
    .end annotation
.end field

.field private tsu:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private wtn:Landroid/app/AlarmManager;

.field private you:Lcom/oneplus/config/ConfigObserver;

.field private final ywr:Landroid/app/AlarmManager$OnAlarmListener;

.field private zta:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "persist.sys.opjc.debug_loglevel"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/ivd;->veq:I

    const/4 v0, 0x2

    sput v0, Lcom/android/server/am/ivd;->cgv:I

    sput-boolean v1, Lcom/android/server/am/ivd;->vju:Z

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/ivd;->bud:Z

    const-string v0, "persist.sys.opjc.debug_detail"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ivd;->les:Z

    new-array v0, v1, [I

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/android/server/am/ivd;->irq:Z

    sput-boolean v0, Lcom/android/server/am/ivd;->vdw:Z

    const-string v0, "persist.sys.opjc.enable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ivd;->qeg:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/ivd;->ivd:Lcom/android/server/am/ivd;

    sput-object v0, Lcom/android/server/am/ivd;->a:Landroid/os/Handler;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x65

    iput v0, p0, Lcom/android/server/am/ivd;->zta:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ivd;->you:Lcom/oneplus/config/ConfigObserver;

    iput-object v0, p0, Lcom/android/server/am/ivd;->sis:Landroid/content/Context;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ivd;->tsu:Ljava/util/HashSet;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ivd;->rtg:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ivd;->ssp:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ivd;->cno:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ivd;->kth:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ivd;->bio:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/am/ivd$rtg;

    invoke-direct {v1, p0}, Lcom/android/server/am/ivd$rtg;-><init>(Lcom/android/server/am/ivd;)V

    iput-object v1, p0, Lcom/android/server/am/ivd;->igw:Lcom/android/server/am/ivd$rtg;

    iput-object v0, p0, Lcom/android/server/am/ivd;->wtn:Landroid/app/AlarmManager;

    new-instance v1, Lcom/android/server/am/ivd$zta;

    invoke-direct {v1, p0}, Lcom/android/server/am/ivd$zta;-><init>(Lcom/android/server/am/ivd;)V

    iput-object v1, p0, Lcom/android/server/am/ivd;->gck:Landroid/app/ActivityManager$OnUidImportanceListener;

    new-instance v1, Lcom/android/server/am/ivd$you;

    invoke-direct {v1, p0}, Lcom/android/server/am/ivd$you;-><init>(Lcom/android/server/am/ivd;)V

    iput-object v1, p0, Lcom/android/server/am/ivd;->dma:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/am/ivd$sis;

    invoke-direct {v1, p0}, Lcom/android/server/am/ivd$sis;-><init>(Lcom/android/server/am/ivd;)V

    iput-object v1, p0, Lcom/android/server/am/ivd;->ywr:Landroid/app/AlarmManager$OnAlarmListener;

    const/4 v1, 0x1

    const-string v2, "OpJobController--constructor:19121601"

    invoke-static {v1, v2}, Lcom/android/server/am/ivd;->qeg(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/am/ivd;->sis:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iget-object v1, p0, Lcom/android/server/am/ivd;->sis:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/am/ivd;->wtn:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/am/ivd;->gck:Landroid/app/ActivityManager$OnUidImportanceListener;

    const/16 v2, 0x3e8

    invoke-virtual {p1, v1, v2}, Landroid/app/ActivityManager;->addOnUidImportanceListener(Landroid/app/ActivityManager$OnUidImportanceListener;I)V

    new-instance p1, Lcom/android/server/am/ivd$tsu;

    sget-object v1, Lcom/android/server/am/hmo;->s:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, p0, v1}, Lcom/android/server/am/ivd$tsu;-><init>(Lcom/android/server/am/ivd;Landroid/os/Looper;)V

    sput-object p1, Lcom/android/server/am/ivd;->a:Landroid/os/Handler;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.OPJC.action.debug"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ivd;->sis:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/ivd;->dma:Landroid/content/BroadcastReceiver;

    sget-object v3, Lcom/android/server/am/ivd;->a:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/server/am/ivd;->cgv()V

    return-void
.end method

.method private a(Lorg/json/JSONArray;)V
    .locals 8

    if-nez p1, :cond_0

    const-string p0, "OPJC"

    const-string p1, "resolveConfigFromJSON jsonArray is null, return"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_9

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "enable"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v4

    sget-boolean v5, Lcom/android/server/am/ivd;->qeg:Z

    if-eq v4, v5, :cond_2

    sput-boolean v4, Lcom/android/server/am/ivd;->qeg:Z

    const-string v5, "persist.sys.opjc.enable"

    if-eqz v4, :cond_1

    const-string v4, "true"

    goto :goto_1

    :cond_1
    const-string v4, "false"

    :goto_1
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "jobBgTimeout"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v4

    sput-wide v4, Lcom/android/server/am/ivd;->lqr:J

    :cond_3
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "jobTimeOut"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v4

    sput-wide v4, Lcom/android/server/am/ivd;->hmo:J

    :cond_4
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "jobUnResDelayTime"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v4

    sput-wide v4, Lcom/android/server/am/ivd;->fto:J

    :cond_5
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "procStateCutLevel"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    sput v4, Lcom/android/server/am/ivd;->cgv:I

    :cond_6
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pkg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ivd;->tsu:Ljava/util/HashSet;

    monitor-enter v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, p0, Lcom/android/server/am/ivd;->tsu:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    move v5, v0

    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_7

    iget-object v6, p0, Lcom/android/server/am/ivd;->tsu:Ljava/util/HashSet;

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    monitor-exit v4

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_8
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON enable:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/am/ivd;->qeg:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/ivd;->qeg(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON jobBgTimeout:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/android/server/am/ivd;->lqr:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/ivd;->qeg(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON jobTimeOut:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/android/server/am/ivd;->hmo:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/ivd;->qeg(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON jobUnResDelayTime:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/android/server/am/ivd;->fto:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/ivd;->qeg(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON procStateCutLevel:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/server/am/ivd;->cgv:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/ivd;->qeg(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4
    const-string v0, "[OnlineConfig] resolveConfigFromJSON jobControlWhiteList:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/ivd;->tsu:Ljava/util/HashSet;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/am/ivd;->qeg(ILjava/lang/String;)V

    goto/16 :goto_5

    :catchall_1
    move-exception p1

    goto/16 :goto_6

    :catch_0
    move-exception p1

    :try_start_3
    const-string v0, "OPJC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] Exception:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON enable:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/am/ivd;->qeg:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/ivd;->qeg(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON jobBgTimeout:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/android/server/am/ivd;->lqr:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/ivd;->qeg(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON jobTimeOut:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/android/server/am/ivd;->hmo:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/ivd;->qeg(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON jobUnResDelayTime:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/android/server/am/ivd;->fto:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/ivd;->qeg(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON procStateCutLevel:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/server/am/ivd;->cgv:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/ivd;->qeg(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_4

    :catch_1
    move-exception p1

    :try_start_4
    const-string v0, "OPJC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] JSONException:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON enable:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/am/ivd;->qeg:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/ivd;->qeg(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON jobBgTimeout:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/android/server/am/ivd;->lqr:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/ivd;->qeg(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON jobTimeOut:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/android/server/am/ivd;->hmo:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/ivd;->qeg(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON jobUnResDelayTime:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/android/server/am/ivd;->fto:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/ivd;->qeg(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON procStateCutLevel:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/server/am/ivd;->cgv:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/ivd;->qeg(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_4

    :goto_5
    return-void

    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] resolveConfigFromJSON enable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/ivd;->qeg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/am/ivd;->qeg(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] resolveConfigFromJSON jobBgTimeout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/android/server/am/ivd;->lqr:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/am/ivd;->qeg(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] resolveConfigFromJSON jobTimeOut:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/android/server/am/ivd;->hmo:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/am/ivd;->qeg(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] resolveConfigFromJSON jobUnResDelayTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/android/server/am/ivd;->fto:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/am/ivd;->qeg(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] resolveConfigFromJSON procStateCutLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/ivd;->cgv:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/am/ivd;->qeg(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] resolveConfigFromJSON jobControlWhiteList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/ivd;->tsu:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/am/ivd;->qeg(ILjava/lang/String;)V

    throw p1
.end method

.method public static b(Lcom/android/server/am/bvj;Lcom/android/server/am/ibl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/android/server/am/ivd;->ivd:Lcom/android/server/am/ivd;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/am/ivd;->qeg:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ibl;->tsu()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/ivd;->les(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMonitoring uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ibl;->tsu()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ibl;->sis()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " tag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ibl;->rtg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/ivd;->qeg(ILjava/lang/String;)V

    sget-object v0, Lcom/android/server/am/ivd;->ivd:Lcom/android/server/am/ivd;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/ivd;->hmo(Lcom/android/server/am/bvj;Lcom/android/server/am/ibl;)V

    :cond_2
    return-void
.end method

.method static synthetic bio(Lcom/android/server/am/ivd;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/ivd;->rtg:Ljava/lang/Object;

    return-object p0
.end method

.method private bud()V
    .locals 0

    return-void
.end method

.method static synthetic bvj(Lcom/android/server/am/ivd;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/ivd;->lqr(I)V

    return-void
.end method

.method public static c(Lcom/android/server/am/bvj;Lcom/android/server/am/ibl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/android/server/am/ivd;->ivd:Lcom/android/server/am/ivd;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/ibl;->tsu()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/ivd;->les(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopMonitoring uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ibl;->tsu()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ibl;->sis()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " tag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ibl;->rtg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/am/ivd;->qeg(ILjava/lang/String;)V

    :cond_1
    sget-object p1, Lcom/android/server/am/ivd;->ivd:Lcom/android/server/am/ivd;

    invoke-direct {p1, p0}, Lcom/android/server/am/ivd;->fto(Lcom/android/server/am/bvj;)V

    return-void
.end method

.method private cgv()V
    .locals 0

    invoke-static {}, Lcom/android/server/am/ivd;->oxb()I

    invoke-direct {p0}, Lcom/android/server/am/ivd;->bud()V

    invoke-direct {p0}, Lcom/android/server/am/ivd;->vju()V

    return-void
.end method

.method private cjf(I)Lcom/android/server/am/ivd$cno;
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ivd;->bio:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ivd;->bio:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ivd$cno;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSpecificUidCache ret is null, uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/am/ivd;->qeg(ILjava/lang/String;)V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static synthetic cno(Lcom/android/server/am/ivd;)Lcom/oneplus/config/ConfigObserver;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/ivd;->you:Lcom/oneplus/config/ConfigObserver;

    return-object p0
.end method

.method private d(Lcom/android/server/am/ivd$rtg;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAlarm "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ivd$rtg;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cur:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lcom/android/server/am/ivd;->qeg(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ivd;->wtn:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/am/ivd;->ywr:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    iget-object v2, p0, Lcom/android/server/am/ivd;->wtn:Landroid/app/AlarmManager;

    iget-wide v4, p1, Lcom/android/server/am/ivd$rtg;->sis:J

    iget-object v7, p0, Lcom/android/server/am/ivd;->ywr:Landroid/app/AlarmManager$OnAlarmListener;

    sget-object v8, Lcom/android/server/am/ivd;->a:Landroid/os/Handler;

    const/4 v3, 0x3

    const-string v6, "OPJC_Alarm"

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic dma(Lcom/android/server/am/ivd;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/ivd;->cno:Ljava/util/ArrayList;

    return-object p0
.end method

.method private e()V
    .locals 8

    new-instance v0, Lcom/android/server/am/ivd$rtg;

    invoke-direct {v0, p0}, Lcom/android/server/am/ivd$rtg;-><init>(Lcom/android/server/am/ivd;)V

    iget-object v1, p0, Lcom/android/server/am/ivd;->bio:Landroid/util/SparseArray;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/ivd;->bio:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/ivd;->bio:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ivd$cno;

    invoke-static {v3}, Lcom/android/server/am/ivd$cno;->zta(Lcom/android/server/am/ivd$cno;)V

    iget-wide v4, v0, Lcom/android/server/am/ivd$rtg;->sis:J

    invoke-static {v3}, Lcom/android/server/am/ivd$cno;->you(Lcom/android/server/am/ivd$cno;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    iget v4, v3, Lcom/android/server/am/ivd$cno;->zta:I

    invoke-static {v3}, Lcom/android/server/am/ivd$cno;->sis(Lcom/android/server/am/ivd$cno;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Lcom/android/server/am/ivd$cno;->you(Lcom/android/server/am/ivd$cno;)J

    move-result-wide v6

    invoke-static {v0, v4, v5, v6, v7}, Lcom/android/server/am/ivd$rtg;->zta(Lcom/android/server/am/ivd$rtg;ILjava/lang/String;J)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/am/ivd;->igw:Lcom/android/server/am/ivd$rtg;

    invoke-static {v1}, Lcom/android/server/am/ivd$rtg;->you(Lcom/android/server/am/ivd$rtg;)V

    invoke-static {v0}, Lcom/android/server/am/ivd$rtg;->sis(Lcom/android/server/am/ivd$rtg;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-wide v1, v0, Lcom/android/server/am/ivd$rtg;->sis:J

    iget-object v3, p0, Lcom/android/server/am/ivd;->igw:Lcom/android/server/am/ivd$rtg;

    iget-wide v3, v3, Lcom/android/server/am/ivd$rtg;->sis:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/am/ivd;->d(Lcom/android/server/am/ivd$rtg;)V

    iget-object p0, p0, Lcom/android/server/am/ivd;->igw:Lcom/android/server/am/ivd$rtg;

    invoke-static {p0, v0}, Lcom/android/server/am/ivd$rtg;->tsu(Lcom/android/server/am/ivd$rtg;Lcom/android/server/am/ivd$rtg;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ivd;->wtn:Landroid/app/AlarmManager;

    iget-object p0, p0, Lcom/android/server/am/ivd;->ywr:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    :cond_3
    :goto_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private ear(Lcom/android/server/am/ibl;)Lcom/android/server/am/ivd$cno;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/am/ibl;->tsu()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, p1}, Lcom/android/server/am/ivd;->cjf(I)Lcom/android/server/am/ivd$cno;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    return-object v0
.end method

.method private fto(Lcom/android/server/am/bvj;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ivd;->rtg:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ivd;->ssp:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ivd;->ssp:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iget-object v1, p0, Lcom/android/server/am/ivd;->kth:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/android/server/am/ivd;->a:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/am/ivd;->ssp:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/am/ivd;->cno:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/am/ivd;->kth:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

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

.method static synthetic gck()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/android/server/am/ivd;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic gwm(Lcom/android/server/am/ivd;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/ivd;->e()V

    return-void
.end method

.method private hmo(Lcom/android/server/am/bvj;Lcom/android/server/am/ibl;)V
    .locals 5

    :try_start_0
    invoke-virtual {p2}, Lcom/android/server/am/ibl;->tsu()I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, p2}, Lcom/android/server/am/ivd;->cjf(I)Lcom/android/server/am/ivd$cno;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/android/server/am/ivd$cno;->rtg(Lcom/android/server/am/ivd$cno;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/ivd;->rtg:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/ivd;->ssp:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/ivd;->ssp:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iget-object v4, p0, Lcom/android/server/am/ivd;->cno:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/am/ivd;->cno:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v4, v2, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/server/am/ivd;->kth:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object p2, Lcom/android/server/am/ivd;->a:Landroid/os/Handler;

    invoke-virtual {p2, p0}, Landroid/os/Handler;->removeMessages(I)V

    sget p2, Lcom/android/server/am/ivd;->cgv:I

    if-le v0, p2, :cond_3

    sget-object p2, Lcom/android/server/am/ivd;->a:Landroid/os/Handler;

    invoke-virtual {p2, p0, v3, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    sget-object p1, Lcom/android/server/am/ivd;->a:Landroid/os/Handler;

    sget-wide v2, Lcom/android/server/am/ivd;->lqr:J

    invoke-virtual {p1, p0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ivd;->ssp:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/am/ivd;->cno:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/android/server/am/ivd;->kth:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/server/am/ivd;->zta:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p2, Lcom/android/server/am/ivd;->cgv:I

    if-le v0, p2, :cond_2

    sget-object p2, Lcom/android/server/am/ivd;->a:Landroid/os/Handler;

    iget v0, p0, Lcom/android/server/am/ivd;->zta:I

    invoke-virtual {p2, v0, v3, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    sget-object p2, Lcom/android/server/am/ivd;->a:Landroid/os/Handler;

    sget-wide v2, Lcom/android/server/am/ivd;->lqr:J

    invoke-virtual {p2, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    iget p1, p0, Lcom/android/server/am/ivd;->zta:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/am/ivd;->zta:I

    const p2, 0xf423f

    if-le p1, p2, :cond_3

    const/16 p1, 0x65

    iput p1, p0, Lcom/android/server/am/ivd;->zta:I

    :cond_3
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic ibl(Lcom/android/server/am/ivd;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/ivd;->vdb()V

    return-void
.end method

.method static synthetic igw(Lcom/android/server/am/ivd;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/ivd;->ssp:Ljava/util/ArrayList;

    return-object p0
.end method

.method private ire(Lcom/android/server/am/ibl;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/am/ivd;->ugm(Lcom/android/server/am/ibl;)Lcom/android/server/am/ivd$cno;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/server/am/ivd;->a:Landroid/os/Handler;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    sget-object p1, Lcom/android/server/am/ivd;->a:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public static irq(Lcom/android/server/am/ibl;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/android/server/am/ivd;->ivd:Lcom/android/server/am/ivd;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Lcom/android/server/am/ivd;->qeg:Z

    if-nez v0, :cond_1

    return v1

    :cond_1
    if-nez p0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/am/ibl;->tsu()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/ivd;->les(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/am/ivd;->ivd:Lcom/android/server/am/ivd;

    invoke-direct {v0, p0}, Lcom/android/server/am/ivd;->vdw(Lcom/android/server/am/ibl;)Z

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method public static ivd(Lcom/android/server/am/ibl;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/android/server/am/ivd;->ivd:Lcom/android/server/am/ivd;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ibl;->tsu()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/ivd;->les(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportRestrictJob uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/ibl;->tsu()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/ibl;->sis()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " tag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/ibl;->rtg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " duration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/am/ivd;->qeg(ILjava/lang/String;)V

    sget-object p1, Lcom/android/server/am/ivd;->ivd:Lcom/android/server/am/ivd;

    invoke-direct {p1, p0}, Lcom/android/server/am/ivd;->ire(Lcom/android/server/am/ibl;)V

    :cond_1
    return-void
.end method

.method static synthetic kth(Lcom/android/server/am/ivd;Lcom/android/server/am/ibl;)Lcom/android/server/am/ivd$cno;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/ivd;->ear(Lcom/android/server/am/ibl;)Lcom/android/server/am/ivd$cno;

    move-result-object p0

    return-object p0
.end method

.method private static les(I)Z
    .locals 0

    invoke-static {p0}, Lcom/android/server/am/AppRecordManager;->gwm(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private lqr(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/ivd;->rtg:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ivd;->cno:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ivd;->cno:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iget-object v1, p0, Lcom/android/server/am/ivd;->kth:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/android/server/am/ivd;->a:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/am/ivd;->ssp:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/am/ivd;->cno:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/am/ivd;->kth:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

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

.method public static obl()J
    .locals 3

    sget-object v0, Lcom/android/server/am/ivd;->ivd:Lcom/android/server/am/ivd;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    sget-boolean v0, Lcom/android/server/am/ivd;->qeg:Z

    if-nez v0, :cond_1

    return-wide v1

    :cond_1
    sget-wide v0, Lcom/android/server/am/ivd;->hmo:J

    return-wide v0
.end method

.method static synthetic oif(Lcom/android/server/am/ivd;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/ivd;->tsu:Ljava/util/HashSet;

    return-object p0
.end method

.method private static oxb()I
    .locals 1

    sget-boolean v0, Lcom/android/server/am/ivd;->les:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    sput v0, Lcom/android/server/am/ivd;->veq:I

    goto :goto_1

    :cond_0
    sget-boolean v0, Lcom/android/server/am/ivd;->bud:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/android/server/am/ivd;->vju:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    sget v0, Lcom/android/server/am/ivd;->veq:I

    return v0
.end method

.method static synthetic qbh(Lcom/android/server/am/ivd;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ivd;->veq(II)V

    return-void
.end method

.method private static qeg(ILjava/lang/String;)V
    .locals 1

    sget v0, Lcom/android/server/am/ivd;->veq:I

    if-gt p0, v0, :cond_0

    const-string p0, "OPJC"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic rtg(ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/am/ivd;->qeg(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic sis()J
    .locals 2

    sget-wide v0, Lcom/android/server/am/ivd;->fto:J

    return-wide v0
.end method

.method static synthetic ssp(Lcom/android/server/am/ivd;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/ivd;->a(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic tsu(Lcom/android/server/am/ivd;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/ivd;->sis:Landroid/content/Context;

    return-object p0
.end method

.method private ugm(Lcom/android/server/am/ibl;)Lcom/android/server/am/ivd$cno;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    const-string p1, "createOrGetSpecificUidCache return, becasuse job is null"

    invoke-static {p0, p1}, Lcom/android/server/am/ivd;->qeg(ILjava/lang/String;)V

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/am/ibl;->tsu()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/am/ivd;->cjf(I)Lcom/android/server/am/ivd$cno;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lcom/android/server/am/ivd;->les(I)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v2, Lcom/android/server/am/ivd$cno;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/am/ivd$cno;-><init>(Lcom/android/server/am/ivd;Lcom/android/server/am/ibl;Lcom/android/server/am/ivd$zta;)V

    iget-object v3, p0, Lcom/android/server/am/ivd;->bio:Landroid/util/SparseArray;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/am/ivd;->bio:Landroid/util/SparseArray;

    invoke-virtual {p0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x2

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createOrGetSpecificUidCache new uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pkg:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ibl;->sis()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/am/ivd;->qeg(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

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

    :cond_1
    :goto_0
    return-object v2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    return-object v0
.end method

.method private vdb()V
    .locals 3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# dump # ENABLE # "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/am/ivd;->qeg:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/android/server/am/ivd;->qeg(ILjava/lang/String;)V

    const-string p0, "# dump # VERSION # 19121601"

    invoke-static {v0, p0}, Lcom/android/server/am/ivd;->qeg(ILjava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# dump # sIsHydrogenVersion # "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/ivd;->irq:Z

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/am/ivd;->qeg(ILjava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# dump # sLogLevel # "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/ivd;->veq:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/am/ivd;->qeg(ILjava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# dump # sBootDelayTime # "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/am/ivd;->ire:J

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/am/ivd;->qeg(ILjava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# dump # sJobTimeOut # "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/am/ivd;->hmo:J

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/am/ivd;->qeg(ILjava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# dump # sJobUnResDelayTime # "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/am/ivd;->fto:J

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/am/ivd;->qeg(ILjava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# dump # sJobBgTimeout # "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/am/ivd;->lqr:J

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/am/ivd;->qeg(ILjava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# dump # sProcStateCutLevel # "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/ivd;->cgv:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/am/ivd;->qeg(ILjava/lang/String;)V

    return-void
.end method

.method private vdw(Lcom/android/server/am/ibl;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/ivd;->ear(Lcom/android/server/am/ibl;)Lcom/android/server/am/ivd$cno;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lcom/android/server/am/ivd$cno;->cno(Lcom/android/server/am/ivd$cno;Lcom/android/server/am/ibl;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private veq(II)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/am/ivd;->cjf(I)Lcom/android/server/am/ivd$cno;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/am/ivd;->rtg:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ivd;->cno:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/ivd;->cno:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iget-object v2, p0, Lcom/android/server/am/ivd;->kth:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0}, Lcom/android/server/am/ivd$cno;->rtg(Lcom/android/server/am/ivd$cno;)I

    move-result v3

    iget-object p0, p0, Lcom/android/server/am/ivd;->ssp:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/bvj;

    sget p1, Lcom/android/server/am/ivd;->cgv:I

    if-le v3, p1, :cond_0

    sget p1, Lcom/android/server/am/ivd;->cgv:I

    if-gt p2, p1, :cond_0

    sget-object p0, Lcom/android/server/am/ivd;->a:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_0
    sget p1, Lcom/android/server/am/ivd;->cgv:I

    if-gt v3, p1, :cond_1

    sget p1, Lcom/android/server/am/ivd;->cgv:I

    if-le p2, p1, :cond_1

    sget-object p1, Lcom/android/server/am/ivd;->a:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    sget-object p1, Lcom/android/server/am/ivd;->a:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v3, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    sget-object p1, Lcom/android/server/am/ivd;->a:Landroid/os/Handler;

    sget-wide v2, Lcom/android/server/am/ivd;->lqr:J

    invoke-virtual {p1, p0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, p2}, Lcom/android/server/am/ivd$cno;->ssp(Lcom/android/server/am/ivd$cno;I)V

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_1
    return-void
.end method

.method private vju()V
    .locals 5

    const/4 v0, 0x2

    const-string v1, "initOnlineConfig"

    invoke-static {v0, v1}, Lcom/android/server/am/ivd;->qeg(ILjava/lang/String;)V

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/am/ivd;->sis:Landroid/content/Context;

    sget-object v2, Lcom/android/server/am/ivd;->a:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/am/ivd$ssp;

    invoke-direct {v3, p0}, Lcom/android/server/am/ivd$ssp;-><init>(Lcom/android/server/am/ivd;)V

    const-string v4, "OpJobController"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/ivd;->you:Lcom/oneplus/config/ConfigObserver;

    sget-object p0, Lcom/android/server/am/ivd;->a:Landroid/os/Handler;

    sget-wide v0, Lcom/android/server/am/ivd;->ire:J

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method static synthetic wtn(Lcom/android/server/am/ivd;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/ivd;->kth:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic you(I)Z
    .locals 0

    invoke-static {p0}, Lcom/android/server/am/ivd;->les(I)Z

    move-result p0

    return p0
.end method

.method static synthetic ywr(Lcom/android/server/am/ivd;I)Lcom/android/server/am/ivd$cno;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/ivd;->cjf(I)Lcom/android/server/am/ivd$cno;

    move-result-object p0

    return-object p0
.end method

.method public static zgw(Landroid/content/Context;)Lcom/android/server/am/ivd;
    .locals 1

    sget-object v0, Lcom/android/server/am/ivd;->ivd:Lcom/android/server/am/ivd;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/ivd;

    invoke-direct {v0, p0}, Lcom/android/server/am/ivd;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/am/ivd;->ivd:Lcom/android/server/am/ivd;

    :cond_0
    sget-object p0, Lcom/android/server/am/ivd;->ivd:Lcom/android/server/am/ivd;

    return-object p0
.end method

.method static synthetic zta()Lcom/android/server/am/ivd;
    .locals 1

    sget-object v0, Lcom/android/server/am/ivd;->ivd:Lcom/android/server/am/ivd;

    return-object v0
.end method
