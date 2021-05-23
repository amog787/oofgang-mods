.class public final Lcom/android/server/am/cjf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/OnePlusUtil$zta$you;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/cjf$you;,
        Lcom/android/server/am/cjf$sis;
    }
.end annotation


# static fields
.field private static final a:I = 0x4

.field private static final b:I = 0x5

.field private static bud:Ljava/lang/Object; = null

.field private static final c:I = 0x6

.field private static final cgv:I = 0x78492d21

.field private static final d:I = 0x7

.field private static final e:I = 0x8

.field private static final f:I = 0x0

.field private static final fto:Ljava/lang/String; = "OnePlusDuallteManager"

.field private static final g:I = 0x1

.field private static final h:I = 0x2

.field public static final hmo:Z

.field private static final i:J = 0x0L

.field private static final irq:Ljava/lang/String; = "persist.radio.duallte.operated"

.field private static final ivd:I = 0x3

.field private static final j:J = 0x1L

.field private static final k:J = 0x1L

.field private static final l:J = 0x2L

.field private static final les:Ljava/lang/String; = "persist.radio.duallte.enable"

.field private static final lqr:Ljava/lang/String; = "com.Duallte.action.debug"

.field private static final m:J = 0x4L

.field private static n:J = 0x0L

.field public static o:Z = false

.field private static final p:Ljava/lang/String; = ""

.field private static final q:Ljava/lang/String; = "Duallte"

.field private static final qeg:I = 0x2

.field private static r:I = 0x0

.field private static s:I = 0x0

.field private static t:Z = false

.field private static u:Z = false

.field private static v:Z = false

.field private static final vdw:I = 0x1

.field private static final veq:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field private static vju:Lcom/android/server/am/cjf;

.field private static w:Z

.field public static x:Z

.field private static y:[Z


# instance fields
.field private bio:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bvj:Ljava/lang/Object;

.field private cjf:[Ljava/lang/String;

.field private cno:Landroid/content/Context;

.field private dma:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final ear:[Ljava/lang/String;

.field private gck:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private gwm:Landroid/net/ConnectivityManager;

.field private ibl:Landroid/telephony/TelephonyManager;

.field private igw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ire:Landroid/content/BroadcastReceiver;

.field private kth:Landroid/os/Handler;

.field private obl:Ljava/lang/String;

.field private oif:Ljava/lang/reflect/Method;

.field private oxb:[Ljava/lang/String;

.field private qbh:Lcom/oneplus/config/ConfigObserver;

.field private rtg:Z

.field private sis:Ljava/lang/String;

.field private ssp:Z

.field private tsu:Z

.field private ugm:Z

.field private vdb:Z

.field private wtn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private you:Ljava/lang/String;

.field private ywr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zgw:Z

.field private zta:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/cjf;->hmo:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/cjf;->vju:Lcom/android/server/am/cjf;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/cjf;->bud:Ljava/lang/Object;

    const-wide/32 v0, 0xafc8

    sput-wide v0, Lcom/android/server/am/cjf;->n:J

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/cjf;->o:Z

    sput v0, Lcom/android/server/am/cjf;->r:I

    sput v0, Lcom/android/server/am/cjf;->s:I

    sput-boolean v0, Lcom/android/server/am/cjf;->t:Z

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/am/cjf;->u:Z

    sput-boolean v0, Lcom/android/server/am/cjf;->v:Z

    sput-boolean v0, Lcom/android/server/am/cjf;->w:Z

    sput-boolean v1, Lcom/android/server/am/cjf;->x:Z

    const/4 v0, 0x2

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/am/cjf;->y:[Z

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput v2, v0, Lcom/android/server/am/cjf;->zta:I

    const-string v3, ""

    iput-object v3, v0, Lcom/android/server/am/cjf;->you:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/server/am/cjf;->sis:Ljava/lang/String;

    iput-boolean v2, v0, Lcom/android/server/am/cjf;->tsu:Z

    iput-boolean v2, v0, Lcom/android/server/am/cjf;->rtg:Z

    iput-boolean v2, v0, Lcom/android/server/am/cjf;->ssp:Z

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/server/am/cjf;->cno:Landroid/content/Context;

    iput-object v4, v0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/android/server/am/cjf;->bio:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/android/server/am/cjf;->igw:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/android/server/am/cjf;->wtn:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/android/server/am/cjf;->gck:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/android/server/am/cjf;->dma:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/android/server/am/cjf;->ywr:Ljava/util/List;

    iput-object v4, v0, Lcom/android/server/am/cjf;->oif:Ljava/lang/reflect/Method;

    iput-object v4, v0, Lcom/android/server/am/cjf;->bvj:Ljava/lang/Object;

    iput-object v4, v0, Lcom/android/server/am/cjf;->ibl:Landroid/telephony/TelephonyManager;

    iput-object v4, v0, Lcom/android/server/am/cjf;->gwm:Landroid/net/ConnectivityManager;

    iput-boolean v2, v0, Lcom/android/server/am/cjf;->ugm:Z

    iput-boolean v2, v0, Lcom/android/server/am/cjf;->vdb:Z

    iput-boolean v2, v0, Lcom/android/server/am/cjf;->zgw:Z

    const-string v4, "ro.boot.project_codename"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/am/cjf;->obl:Ljava/lang/String;

    filled-new-array {v3, v3}, [Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/am/cjf;->oxb:[Ljava/lang/String;

    filled-new-array {v3, v3}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/am/cjf;->cjf:[Ljava/lang/String;

    const-string v4, "405840"

    const-string v5, "405854"

    const-string v6, "405855"

    const-string v7, "405856"

    const-string v8, "405857"

    const-string v9, "405858"

    const-string v10, "405859"

    const-string v11, "405860"

    const-string v12, "405861"

    const-string v13, "405862"

    const-string v14, "405863"

    const-string v15, "405864"

    const-string v16, "405865"

    const-string v17, "405866"

    const-string v18, "405867"

    const-string v19, "405868"

    const-string v20, "405869"

    const-string v21, "405870"

    const-string v22, "405871"

    const-string v23, "405872"

    const-string v24, "405873"

    const-string v25, "405874"

    filled-new-array/range {v4 .. v25}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/am/cjf;->ear:[Ljava/lang/String;

    new-instance v3, Lcom/android/server/am/cjf$zta;

    invoke-direct {v3, v0}, Lcom/android/server/am/cjf$zta;-><init>(Lcom/android/server/am/cjf;)V

    iput-object v3, v0, Lcom/android/server/am/cjf;->ire:Landroid/content/BroadcastReceiver;

    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/cjf;->m(Landroid/content/Context;)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/am/cjf;->x:Z

    sput-boolean v3, Lcom/android/server/am/cjf;->o:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OnePlusDuallteManager VERSION = v2018061601 |sEnable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/android/server/am/cjf;->o:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OnePlusDuallteManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, v0, Lcom/android/server/am/cjf;->cno:Landroid/content/Context;

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/am/cjf;->tsu:Z

    const-string v4, "phone"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, v0, Lcom/android/server/am/cjf;->ibl:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    sget-object v1, Lcom/android/server/am/cjf;->y:[Z

    aget-boolean v2, v1, v2

    if-eqz v2, :cond_0

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_0

    sput-boolean v3, Lcom/android/server/am/cjf;->t:Z

    :cond_0
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "mOnePlusDuallteManagerThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/android/server/am/cjf$sis;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/android/server/am/cjf$sis;-><init>(Lcom/android/server/am/cjf;Landroid/os/Looper;)V

    iput-object v2, v0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    iget-object v1, v0, Lcom/android/server/am/cjf;->cno:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, v0, Lcom/android/server/am/cjf;->gwm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_1

    sput-boolean v3, Lcom/android/server/am/cjf;->u:Z

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/cjf;->b()V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.Duallte.action.debug"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/am/cjf;->cno:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/am/cjf;->ire:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->rtg()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/OnePlusUtil$zta;->bio(Lcom/android/server/OnePlusUtil$zta$you;)V

    sput-object v0, Lcom/android/server/am/cjf;->vju:Lcom/android/server/am/cjf;

    return-void
.end method

.method private A(Z)Z
    .locals 11

    sget-boolean v0, Lcom/android/server/am/cjf;->hmo:Z

    const-string v1, "OnePlusDuallteManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLLMState isRecover:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    sget-boolean v2, Lcom/android/server/am/cjf;->w:Z

    if-nez v2, :cond_1

    return v0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/cjf;->oif:Ljava/lang/reflect/Method;

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/android/server/am/cjf;->veq()Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/cjf;->oif:Ljava/lang/reflect/Method;

    :cond_2
    iget-object v2, p0, Lcom/android/server/am/cjf;->bvj:Ljava/lang/Object;

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/android/server/am/cjf;->fto()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/cjf;->bvj:Ljava/lang/Object;

    :cond_3
    iget-object v2, p0, Lcom/android/server/am/cjf;->oif:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/am/cjf;->bvj:Ljava/lang/Object;

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/android/server/am/cjf;->oif:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "downlink"

    const-string v5, "uplink"

    const-wide/16 v6, 0x0

    const-string v8, "rat"

    const-string v9, "priority"

    const-string v10, "enableConnectionExtension"

    if-eqz p1, :cond_5

    :try_start_1
    invoke-virtual {v2, v10, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v2, v9, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v2, v8, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-wide/16 v6, 0x1

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :goto_0
    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    :cond_5
    invoke-virtual {v2, v10, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v2, v9, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v2, v8, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-wide/16 v6, 0x2

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    :goto_1
    iget-boolean p1, p0, Lcom/android/server/am/cjf;->ugm:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/android/server/am/cjf;->oif:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/android/server/am/cjf;->bvj:Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "setLowLatencyMode"

    aput-object v6, v5, v0

    aput-object v2, v5, v3

    invoke-virtual {p1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return v3

    :cond_7
    :goto_2
    const-string p1, "setLLMState method or iExtTelephony is null, return"

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :catch_0
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/am/cjf;->veq()Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/cjf;->oif:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Lcom/android/server/am/cjf;->fto()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/cjf;->bvj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private B(Z)Z
    .locals 7

    sget-boolean v0, Lcom/android/server/am/cjf;->hmo:Z

    const-string v1, "OnePlusDuallteManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNrSilence isRecover:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/server/am/cjf;->oxb()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/android/server/am/cjf;->j()Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/cjf;->oif:Ljava/lang/reflect/Method;

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/android/server/am/cjf;->veq()Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/cjf;->oif:Ljava/lang/reflect/Method;

    :cond_2
    iget-object v2, p0, Lcom/android/server/am/cjf;->bvj:Ljava/lang/Object;

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/android/server/am/cjf;->fto()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/cjf;->bvj:Ljava/lang/Object;

    :cond_3
    iget-object v2, p0, Lcom/android/server/am/cjf;->oif:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/am/cjf;->bvj:Ljava/lang/Object;

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/server/am/cjf;->oif:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v4, "enable"

    if-nez p1, :cond_5

    move p1, v3

    goto :goto_0

    :cond_5
    move p1, v0

    :goto_0
    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "reason"

    const/4 v4, 0x4

    invoke-virtual {v2, p1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-boolean p1, p0, Lcom/android/server/am/cjf;->ugm:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/android/server/am/cjf;->oif:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/android/server/am/cjf;->bvj:Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "setNrSilenceMode"

    aput-object v6, v5, v0

    aput-object v2, v5, v3

    invoke-virtual {p1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return v3

    :cond_7
    :goto_1
    const-string p1, "setNrSilence method or iExtTelephony is null, return"

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0}, Lcom/android/server/am/cjf;->veq()Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/cjf;->oif:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Lcom/android/server/am/cjf;->fto()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/cjf;->bvj:Ljava/lang/Object;

    return v0
.end method

.method private C(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string p0, ""

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set system property key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " |value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " |curValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnePlusDuallteManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "failed to set system property"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static final a(Landroid/content/Context;)Lcom/android/server/am/cjf;
    .locals 1

    sget-object v0, Lcom/android/server/am/cjf;->vju:Lcom/android/server/am/cjf;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/cjf;

    invoke-direct {v0, p0}, Lcom/android/server/am/cjf;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/am/cjf;->vju:Lcom/android/server/am/cjf;

    :cond_0
    sget-object p0, Lcom/android/server/am/cjf;->vju:Lcom/android/server/am/cjf;

    return-object p0
.end method

.method private b()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/cjf;->e()V

    invoke-direct {p0}, Lcom/android/server/am/cjf;->c()V

    invoke-virtual {p0}, Lcom/android/server/am/cjf;->d()V

    invoke-direct {p0}, Lcom/android/server/am/cjf;->f()V

    return-void
.end method

.method static synthetic bio()[Z
    .locals 1

    sget-object v0, Lcom/android/server/am/cjf;->y:[Z

    return-object v0
.end method

.method private bud(Ljava/lang/Boolean;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/cjf;->hmo:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDualSimStateReady ready:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " |mCurFrontPkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/cjf;->sis:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnePlusDuallteManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/server/am/cjf;->t:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sput-boolean p1, Lcom/android/server/am/cjf;->t:Z

    if-eqz p1, :cond_1

    sget-boolean p1, Lcom/android/server/am/cjf;->u:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/am/cjf;->sis:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/cjf;->u()V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic bvj(Lcom/android/server/am/cjf;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/cjf;->vdb:Z

    return p1
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/cjf;->igw:Ljava/util/List;

    const-string v1, "com.tencent.tmgp.sgame"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/cjf;->igw:Ljava/util/List;

    const-string v1, "com.tencent.tmgp.pubgm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/am/cjf;->igw:Ljava/util/List;

    const-string v0, "com.tencent.tmgp.pubgmhd"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private cgv(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/cjf;->hmo:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDDSChangeDone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |mCurFrontPkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/cjf;->sis:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnePlusDuallteManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/server/am/cjf;->v:Z

    if-eq v0, p1, :cond_2

    sput-boolean p1, Lcom/android/server/am/cjf;->v:Z

    if-eqz p1, :cond_1

    sget-boolean p1, Lcom/android/server/am/cjf;->u:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/am/cjf;->sis:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/cjf;->t()V

    :cond_2
    :goto_0
    return-void
.end method

.method private cjf()V
    .locals 3

    const-string p0, "OnePlusDuallteManager"

    const-string v0, "# dump # VERSION # 2018061601"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# dump # sEnable # "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/cjf;->o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# dump # operateDelayTime # "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/am/cjf;->n:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic cno(Lcom/android/server/am/cjf;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/cjf;->ibl:Landroid/telephony/TelephonyManager;

    return-object p1
.end method

.method static synthetic dma(Lcom/android/server/am/cjf;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/cjf;->ivd()V

    return-void
.end method

.method private e()V
    .locals 3

    sget-object v0, Lcom/android/server/am/cjf;->bud:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/cjf;->bio:Ljava/util/List;

    const-string v2, "com.tencent.tmgp.cf"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/cjf;->bio:Ljava/util/List;

    const-string v2, "com.tencent.tmgp.dwrg"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/cjf;->bio:Ljava/util/List;

    const-string v2, "com.tencent.tmgp.speedmobile"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/cjf;->bio:Ljava/util/List;

    const-string v2, "com.tencent.tmgp.supercell.clashroyale"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/cjf;->bio:Ljava/util/List;

    const-string v2, "com.tencent.tmgp.supercell.clashofclans"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/cjf;->bio:Ljava/util/List;

    const-string v2, "com.netease.dwrg"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/cjf;->bio:Ljava/util/List;

    const-string v2, "com.netease.dwrg.baidu"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/cjf;->bio:Ljava/util/List;

    const-string v2, "com.netease.dwrg.aligames"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/cjf;->bio:Ljava/util/List;

    const-string v2, "com.netease.dwrg.nearme.gamecenter"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/cjf;->bio:Ljava/util/List;

    const-string v2, "com.netease.hyxd"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/cjf;->bio:Ljava/util/List;

    const-string v2, "com.netease.hyxd.baidu"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/cjf;->bio:Ljava/util/List;

    const-string v2, "com.netease.hyxd.aligames"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/cjf;->bio:Ljava/util/List;

    const-string v2, "com.netease.hyxd.nearme.gamecenter"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/cjf;->bio:Ljava/util/List;

    const-string v2, "com.supercell.clashroyale.uc"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/cjf;->bio:Ljava/util/List;

    const-string v2, "com.supercell.clashofclans.uc"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/cjf;->bio:Ljava/util/List;

    const-string v2, "com.supercell.clashroyale.baidu"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/cjf;->bio:Ljava/util/List;

    const-string v2, "com.supercell.clashofclans.qihoo"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/cjf;->bio:Ljava/util/List;

    const-string v2, "com.supercell.clashofclans.baidu"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/cjf;->bio:Ljava/util/List;

    const-string v2, "com.supercell.clashroyale.kunlun"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/cjf;->bio:Ljava/util/List;

    const-string v2, "com.supercell.clashofclans.kunlun"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/cjf;->bio:Ljava/util/List;

    const-string v2, "com.supercell.clashroyale.nearme.gamecenter"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/cjf;->bio:Ljava/util/List;

    const-string v2, "com.supercell.clashofclans.nearme.gamecenter"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/cjf;->bio:Ljava/util/List;

    const-string v2, "com.blizzard.wtcg.hearthstone"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/cjf;->bio:Ljava/util/List;

    const-string v2, "air.tv.douyu.android"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/cjf;->bio:Ljava/util/List;

    const-string v2, "com.douyu.rush"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/cjf;->bio:Ljava/util/List;

    const-string v2, "com.douyu.hd.air.douyutv"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/cjf;->bio:Ljava/util/List;

    const-string v2, "com.duowan.kiwi"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/cjf;->bio:Ljava/util/List;

    const-string v2, "com.duowan.mobile"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/cjf;->bio:Ljava/util/List;

    const-string v2, "com.tencent.KiHan"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/cjf;->bio:Ljava/util/List;

    const-string v2, "com.youzu.bs"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/cjf;->bio:Ljava/util/List;

    const-string v2, "com.youzu.bs.nearme.gamecenter"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/cjf;->bio:Ljava/util/List;

    const-string v2, "com.tencent.tmgp.supercell.brawlstars"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/am/cjf;->bio:Ljava/util/List;

    const-string v1, "com.dts.freefireth"

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private ear()V
    .locals 7

    sget-object v0, Lcom/android/server/am/cjf;->bud:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/cjf;->bio:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/cjf;->bio:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/server/am/cjf;->bio:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    add-int/2addr v1, v2

    const-string v4, "OnePlusDuallteManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# dump # mSpecialGameList # "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :cond_2
    :goto_1
    const-string p0, "OnePlusDuallteManager"

    const-string v1, "# dump # mSpecialGameList = null, return"

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private f()V
    .locals 8

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "persist.radio.duallte.operated"

    const-string v2, "-1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "persist.radio.duallte.enable"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initSysPropt() lastOperated:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " |curDuallteState:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "OnePlusDuallteManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "1"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v7, 0x0

    if-eqz v2, :cond_0

    invoke-direct {p0, v1, v4}, Lcom/android/server/am/cjf;->C(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v3, v6}, Lcom/android/server/am/cjf;->C(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v1, v2, v7, v7, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    const-wide/32 v3, 0xea60

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-static {v1, v2, v7, v7, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    const-wide/32 v3, 0xafc8

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v1, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-static {v1, v2, v7, v7, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    invoke-virtual {p0, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private fto()Ljava/lang/Object;
    .locals 9

    sget-boolean v0, Lcom/android/server/am/cjf;->hmo:Z

    const-string v1, "OnePlusDuallteManager"

    if-eqz v0, :cond_0

    const-string v0, "getIExtTelephony()"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v2, "extphone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    const-string v3, "org.codeaurora.internal.IExtTelephony$Stub"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "asInterface"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/os/IBinder;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v2, v4, v8

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/cjf;->bvj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIExtTelephony() exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private g(I)Z
    .locals 4

    iget-object p0, p0, Lcom/android/server/am/cjf;->ibl:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "OnePlusDuallteManager"

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "slot = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    sget-boolean v0, Lcom/android/server/am/cjf;->hmo:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cmcc"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mccmnc = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string p1, "46000"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "46002"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "46004"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "46007"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "46008"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "46013"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method static synthetic gck(Lcom/android/server/am/cjf;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/cjf;->les()V

    return-void
.end method

.method static synthetic gwm(Lcom/android/server/am/cjf;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/cjf;->zgw:Z

    return p0
.end method

.method private h(I)Z
    .locals 3

    iget-object p0, p0, Lcom/android/server/am/cjf;->ibl:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object p0

    sget-boolean v0, Lcom/android/server/am/cjf;->hmo:Z

    const-string v1, "OnePlusDuallteManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ct"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mccmnc = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "slot = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const-string p1, "46003"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "46005"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "46011"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "46012"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "46059"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method private hmo()I
    .locals 1

    const-string p0, "persist.radio.dds.phone"

    const-string v0, "0"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private i(I)Z
    .locals 4

    iget-object p0, p0, Lcom/android/server/am/cjf;->ibl:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "OnePlusDuallteManager"

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "slot = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    sget-boolean v0, Lcom/android/server/am/cjf;->hmo:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cu"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mccmnc = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string p1, "46001"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "46009"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "46006"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method static synthetic ibl(Lcom/android/server/am/cjf;Z)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/cjf;->A(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic igw(Lcom/android/server/am/cjf;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/cjf;->vju()V

    return-void
.end method

.method private irq(Ljava/lang/Boolean;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/cjf;->u:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sput-boolean p1, Lcom/android/server/am/cjf;->u:Z

    if-eqz p1, :cond_0

    sget-boolean p1, Lcom/android/server/am/cjf;->t:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/am/cjf;->sis:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/cjf;->u()V

    :cond_1
    :goto_0
    return-void
.end method

.method private ivd()V
    .locals 4

    sget-object v0, Lcom/android/server/am/cjf;->y:[Z

    const/4 v1, 0x0

    aget-boolean v2, v0, v1

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/server/am/cjf;->y:[Z

    aget-boolean v2, v0, v1

    if-nez v2, :cond_2

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0, v3}, Lcom/android/server/am/cjf;->qeg(Z)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1}, Lcom/android/server/am/cjf;->qeg(Z)V

    :goto_0
    return-void
.end method

.method private j()Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/cjf;->ibl:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    sget-object v1, Lcom/android/server/am/cjf;->y:[Z

    const/4 v2, 0x0

    aget-boolean v3, v1, v2

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_2

    move v1, v2

    move v4, v3

    :goto_0
    if-ge v1, v0, :cond_1

    if-eqz v4, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/am/cjf;->g(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v3

    goto :goto_1

    :cond_0
    move v4, v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sim is two CMCC:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OnePlusDuallteManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_2

    return v3

    :cond_2
    return v2
.end method

.method private k()Z
    .locals 5

    invoke-direct {p0}, Lcom/android/server/am/cjf;->hmo()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/server/am/cjf;->ibl:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/am/cjf;->hmo:Z

    const-string v3, "OnePlusDuallteManager"

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nonDdsSlot "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mccmnc = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nonDdsSlot  "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mccmnc is empty"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/cjf;->ear:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    sget-boolean v0, Lcom/android/server/am/cjf;->hmo:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isLTEOnlySim "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return p0
.end method

.method static synthetic kth(Lcom/android/server/am/cjf;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/cjf;->cjf:[Ljava/lang/String;

    return-object p0
.end method

.method private l()Z
    .locals 0

    sget-boolean p0, Lcom/android/server/am/cjf;->t:Z

    if-eqz p0, :cond_0

    sget-boolean p0, Lcom/android/server/am/cjf;->u:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private les()V
    .locals 2

    sget-object v0, Lcom/android/server/am/cjf;->y:[Z

    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/cjf;->t:Z

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/android/server/am/cjf;->t:Z

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/am/cjf;->bud(Ljava/lang/Boolean;)V

    :cond_1
    return-void
.end method

.method public static final lqr()Lcom/android/server/am/cjf;
    .locals 1

    sget-object v0, Lcom/android/server/am/cjf;->vju:Lcom/android/server/am/cjf;

    return-object v0
.end method

.method private m(Landroid/content/Context;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x1110069

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method private n()Z
    .locals 10

    sget-boolean v0, Lcom/android/server/am/cjf;->hmo:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusDuallteManager"

    const-string v1, "matchNoPagingOnlineConfigOperators"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/cjf;->dma:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/cjf;->ywr:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "CT"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "CU"

    const-string v9, "CMCC"

    if-eqz v7, :cond_2

    invoke-direct {p0}, Lcom/android/server/am/cjf;->hmo()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/am/cjf;->h(I)Z

    move-result v3

    goto :goto_0

    :cond_2
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-direct {p0}, Lcom/android/server/am/cjf;->hmo()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/am/cjf;->g(I)Z

    move-result v3

    goto :goto_0

    :cond_3
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/android/server/am/cjf;->hmo()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/am/cjf;->i(I)Z

    move-result v3

    :cond_4
    :goto_0
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v7, 0x1

    if-eqz v4, :cond_6

    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/android/server/am/cjf;->hmo()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/server/am/cjf;->i(I)Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_1
    move v3, v7

    goto :goto_2

    :cond_5
    move v3, v2

    goto :goto_2

    :cond_6
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/android/server/am/cjf;->hmo()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/server/am/cjf;->h(I)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_7
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/android/server/am/cjf;->hmo()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/server/am/cjf;->g(I)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_8
    :goto_2
    if-eqz v3, :cond_1

    return v7

    :cond_9
    return v2
.end method

.method private o()Z
    .locals 3

    invoke-direct {p0}, Lcom/android/server/am/cjf;->n()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string v0, "OnePlusDuallteManager"

    const-string v2, "matchNoPagingOnlineConfigOperators"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/am/cjf;->hmo()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/am/cjf;->h(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string p0, "nodds sim is ct"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method static synthetic obl(Lcom/android/server/am/cjf;Z)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/cjf;->y(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic oif(Lcom/android/server/am/cjf;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/cjf;->vdb:Z

    return p0
.end method

.method private oxb()Z
    .locals 9

    iget-object v0, p0, Lcom/android/server/am/cjf;->cno:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "multi_sim_data_call"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_9

    const v3, 0x7fffffff

    if-ge v0, v3, :cond_9

    iget-object v3, p0, Lcom/android/server/am/cjf;->ibl:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v0}, Landroid/telephony/TelephonyManager;->getServiceStateForSubscriber(I)Landroid/telephony/ServiceState;

    move-result-object v0

    if-eqz v0, :cond_9

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v3

    const-string v5, "OnePlusDuallteManager"

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v6

    if-nez v6, :cond_2

    :cond_0
    sget-boolean v3, Lcom/android/server/am/cjf;->hmo:Z

    if-eqz v3, :cond_1

    const-string v3, "ps regInfo null or cell indentity null"

    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v0, v4, v4}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v3

    :cond_2
    const/4 v0, 0x3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v6

    sget-boolean v7, Lcom/android/server/am/cjf;->hmo:Z

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "regInfo = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "id = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-nez v6, :cond_4

    return v1

    :cond_4
    invoke-virtual {v6}, Landroid/telephony/CellIdentity;->getType()I

    move-result v3

    if-eq v3, v0, :cond_5

    goto :goto_0

    :cond_5
    check-cast v6, Landroid/telephony/CellIdentityLte;

    invoke-virtual {v6}, Landroid/telephony/CellIdentityLte;->getBands()[I

    move-result-object v3

    array-length v6, v3

    if-lez v6, :cond_6

    aget v2, v3, v1

    :cond_6
    :goto_0
    sget-boolean v3, Lcom/android/server/am/cjf;->hmo:Z

    if-eqz v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "band = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-eq v2, v0, :cond_8

    const/16 v0, 0x27

    if-ne v2, v0, :cond_9

    :cond_8
    invoke-direct {p0}, Lcom/android/server/am/cjf;->hmo()I

    move-result v0

    if-ltz v0, :cond_9

    invoke-direct {p0}, Lcom/android/server/am/cjf;->hmo()I

    move-result v0

    if-gt v0, v4, :cond_9

    invoke-direct {p0}, Lcom/android/server/am/cjf;->hmo()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/am/cjf;->g(I)Z

    move-result p0

    if-eqz p0, :cond_9

    return v4

    :cond_9
    return v1
.end method

.method private p()Z
    .locals 10

    sget-boolean v0, Lcom/android/server/am/cjf;->hmo:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusDuallteManager"

    const-string v1, "matchOnlineConfigOperators"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/cjf;->wtn:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/cjf;->gck:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "CT"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "CU"

    const-string v9, "CMCC"

    if-eqz v7, :cond_2

    invoke-direct {p0}, Lcom/android/server/am/cjf;->hmo()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/am/cjf;->h(I)Z

    move-result v3

    goto :goto_0

    :cond_2
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-direct {p0}, Lcom/android/server/am/cjf;->hmo()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/am/cjf;->g(I)Z

    move-result v3

    goto :goto_0

    :cond_3
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/android/server/am/cjf;->hmo()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/am/cjf;->i(I)Z

    move-result v3

    :cond_4
    :goto_0
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v7, 0x1

    if-eqz v4, :cond_6

    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/android/server/am/cjf;->hmo()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/server/am/cjf;->i(I)Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_1
    move v3, v7

    goto :goto_2

    :cond_5
    move v3, v2

    goto :goto_2

    :cond_6
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/android/server/am/cjf;->hmo()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/server/am/cjf;->h(I)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_7
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/android/server/am/cjf;->hmo()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/server/am/cjf;->g(I)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_8
    :goto_2
    if-eqz v3, :cond_1

    return v7

    :cond_9
    return v2
.end method

.method private q()Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/cjf;->ibl:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v4, v1

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    if-eqz v4, :cond_0

    invoke-direct {p0, v3}, Lcom/android/server/am/cjf;->h(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v1

    goto :goto_1

    :cond_0
    move v4, v2

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "matchOperators matchState: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "OnePlusDuallteManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_2

    return v2

    :cond_2
    invoke-direct {p0}, Lcom/android/server/am/cjf;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    invoke-direct {p0}, Lcom/android/server/am/cjf;->p()Z

    move-result p0

    if-eqz p0, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method static synthetic qbh(Lcom/android/server/am/cjf;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/cjf;->v(Lorg/json/JSONArray;)V

    return-void
.end method

.method private qeg(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/cjf;->hmo:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSingleSimChangeDone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |mCurFrontPkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/cjf;->sis:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnePlusDuallteManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/server/am/cjf;->w:Z

    if-eq v0, p1, :cond_2

    sput-boolean p1, Lcom/android/server/am/cjf;->w:Z

    if-eqz p1, :cond_1

    sget-boolean p1, Lcom/android/server/am/cjf;->u:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/am/cjf;->sis:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/cjf;->s()V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic rtg(Lcom/android/server/am/cjf;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/cjf;->z()V

    return-void
.end method

.method private s()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic sis(Lcom/android/server/am/cjf;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/cjf;->cjf()V

    return-void
.end method

.method static synthetic ssp(Lcom/android/server/am/cjf;)Landroid/telephony/TelephonyManager;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/cjf;->ibl:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method private t()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic tsu(Lcom/android/server/am/cjf;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/cjf;->ear()V

    return-void
.end method

.method private u()V
    .locals 4

    sget-boolean v0, Lcom/android/server/am/cjf;->hmo:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recoverOperatedImmediately isOperated:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/cjf;->rtg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnePlusDuallteManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/cjf;->rtg:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    const-string v0, "persist.radio.duallte.enable"

    const-string v2, "1"

    invoke-direct {p0, v0, v2}, Lcom/android/server/am/cjf;->C(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method

.method static synthetic ugm(Lcom/android/server/am/cjf;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/cjf;->zgw:Z

    return p1
.end method

.method private v(Lorg/json/JSONArray;)V
    .locals 7

    if-nez p1, :cond_0

    const-string p0, "OnePlusDuallteManager"

    const-string p1, "[OnlineConfig] resolveConfigFromJSON jsonArray is null, return"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/cjf;->gck:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/server/am/cjf;->wtn:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/server/am/cjf;->dma:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/server/am/cjf;->ywr:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_c

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "enable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/cjf;->o:Z

    goto/16 :goto_7

    :cond_1
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "delaytime"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    sput-wide v2, Lcom/android/server/am/cjf;->n:J

    goto/16 :goto_7

    :cond_2
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "nddsoperators"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v3, v0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_b

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/cjf;->gck:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ddsoperators"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v3, v0

    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_b

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/cjf;->wtn:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "nddsNoPagingOperators"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v3, v0

    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_b

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/cjf;->ywr:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ddsNopagingOperators"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v3, v0

    :goto_4
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_b

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/cjf;->dma:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mSpecialGameList"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/server/am/cjf;->bio:Ljava/util/List;

    monitor-enter v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/am/cjf;->bio:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    move v4, v0

    :goto_5
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_8

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/cjf;->bio:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/android/server/am/cjf;->bio:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_8
    monitor-exit v3

    goto :goto_7

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :cond_9
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mNoPagingGameList"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/cjf;->igw:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    move v3, v0

    :goto_6
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_b

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/cjf;->igw:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/android/server/am/cjf;->igw:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_b
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON sEnable:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/am/cjf;->o:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OnePlusDuallteManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON operateDelayTime:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/android/server/am/cjf;->n:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OnePlusDuallteManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON mDdsOperator:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/cjf;->wtn:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OnePlusDuallteManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON mNoneDdsOperator:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/cjf;->gck:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OnePlusDuallteManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_8
    const-string v0, "[OnlineConfig] resolveConfigFromJSON mSpecialGameList:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/cjf;->bio:Ljava/util/List;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OnePlusDuallteManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :catchall_1
    move-exception p1

    goto/16 :goto_a

    :catch_0
    move-exception p1

    :try_start_3
    const-string v0, "OnePlusDuallteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON sEnable:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/am/cjf;->o:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OnePlusDuallteManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON operateDelayTime:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/android/server/am/cjf;->n:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OnePlusDuallteManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON mDdsOperator:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/cjf;->wtn:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OnePlusDuallteManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON mNoneDdsOperator:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/cjf;->gck:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OnePlusDuallteManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_8

    :catch_1
    move-exception p1

    :try_start_4
    const-string v0, "OnePlusDuallteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] JSONException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON sEnable:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/am/cjf;->o:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OnePlusDuallteManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON operateDelayTime:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/android/server/am/cjf;->n:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OnePlusDuallteManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON mDdsOperator:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/cjf;->wtn:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OnePlusDuallteManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON mNoneDdsOperator:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/cjf;->gck:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OnePlusDuallteManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_8

    :goto_9
    return-void

    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] resolveConfigFromJSON sEnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/cjf;->o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnePlusDuallteManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] resolveConfigFromJSON operateDelayTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/am/cjf;->n:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnePlusDuallteManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] resolveConfigFromJSON mDdsOperator:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/cjf;->wtn:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnePlusDuallteManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] resolveConfigFromJSON mNoneDdsOperator:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/cjf;->gck:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnePlusDuallteManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] resolveConfigFromJSON mSpecialGameList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/cjf;->bio:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OnePlusDuallteManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw p1
.end method

.method static synthetic vdb(Lcom/android/server/am/cjf;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/cjf;->obl:Ljava/lang/String;

    return-object p0
.end method

.method private vdw(Ljava/lang/String;)V
    .locals 12

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-boolean v2, Lcom/android/server/am/cjf;->hmo:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlePkgChanged:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OnePlusDuallteManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v2, Lcom/android/server/am/cjf;->hmo:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isStateReady = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/am/cjf;->l()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",DDSChangeDone = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/am/cjf;->v:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",SingleSIMState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/am/cjf;->w:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OnePlusDuallteManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/cjf;->bio:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/cjf;->bio:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/android/server/am/cjf;->igw:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_1

    :cond_2
    iget p1, p0, Lcom/android/server/am/cjf;->zta:I

    if-eqz p1, :cond_3

    if-eq p1, v5, :cond_4

    if-eq p1, v8, :cond_3

    goto/16 :goto_4

    :cond_3
    iput v9, p0, Lcom/android/server/am/cjf;->zta:I

    goto/16 :goto_4

    :cond_4
    iput v8, p0, Lcom/android/server/am/cjf;->zta:I

    invoke-direct {p0}, Lcom/android/server/am/cjf;->l()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/android/server/am/cjf;->rtg:Z

    if-eqz p1, :cond_7

    iput-boolean v9, p0, Lcom/android/server/am/cjf;->rtg:Z

    const-string p1, "persist.radio.duallte.enable"

    const-string v1, "0"

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string p1, "persist.radio.duallte.enable"

    const-string v1, "1"

    invoke-direct {p0, p1, v1}, Lcom/android/server/am/cjf;->C(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    invoke-virtual {p1, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    invoke-virtual {p1, v8}, Landroid/os/Handler;->removeMessages(I)V

    :cond_5
    iget-object p1, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    invoke-static {p1, v8, v9, v9, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    sget-wide v10, Lcom/android/server/am/cjf;->n:J

    invoke-virtual {v1, p1, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_6
    const-string v1, "1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "persist.radio.duallte.operated"

    const-string v1, "0"

    invoke-direct {p0, p1, v1}, Lcom/android/server/am/cjf;->C(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_0
    iget-boolean p1, p0, Lcom/android/server/am/cjf;->ssp:Z

    if-eqz p1, :cond_8

    iput-boolean v9, p0, Lcom/android/server/am/cjf;->ssp:Z

    iget-object p1, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    invoke-static {p1, v4, v9, v9, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    sget-wide v3, Lcom/android/server/am/cjf;->n:J

    invoke-virtual {v1, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_8
    sget-boolean p1, Lcom/android/server/am/cjf;->v:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/server/am/cjf;->cno:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "in_top_list_game_op_telephony"

    invoke-static {p1, v1, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    invoke-virtual {p1, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    invoke-virtual {p1, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_9
    iget-object p1, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    invoke-static {p1, v6, v9, v9, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    sget-wide v3, Lcom/android/server/am/cjf;->n:J

    invoke-virtual {v1, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_a
    sget-boolean p1, Lcom/android/server/am/cjf;->w:Z

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    invoke-virtual {p1, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    invoke-virtual {p1, v7}, Landroid/os/Handler;->removeMessages(I)V

    :cond_b
    iget-object p1, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    invoke-static {p1, v7, v9, v9, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    sget-wide v0, Lcom/android/server/am/cjf;->n:J

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_4

    :cond_c
    :goto_1
    iput v5, p0, Lcom/android/server/am/cjf;->zta:I

    invoke-direct {p0}, Lcom/android/server/am/cjf;->l()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/am/cjf;->bio:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    invoke-virtual {p1, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    invoke-virtual {p1, v8}, Landroid/os/Handler;->removeMessages(I)V

    :cond_d
    const-string p1, "persist.radio.duallte.enable"

    const-string v0, "0"

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    iput-boolean v5, p0, Lcom/android/server/am/cjf;->rtg:Z

    const-string p1, "persist.radio.duallte.operated"

    const-string v0, "1"

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/cjf;->C(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "persist.radio.duallte.enable"

    const-string v0, "0"

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/cjf;->C(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    invoke-static {p1, v8, v9, v9, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    :goto_2
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    :cond_e
    iget-object p1, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_f
    iput-boolean v5, p0, Lcom/android/server/am/cjf;->ssp:Z

    iget-object p1, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    invoke-static {p1, v4, v9, v9, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    goto :goto_2

    :cond_10
    :goto_3
    sget-boolean p1, Lcom/android/server/am/cjf;->v:Z

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/android/server/am/cjf;->cno:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "in_top_list_game_op_telephony"

    invoke-static {p1, v0, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    invoke-virtual {p1, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    invoke-virtual {p1, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_11
    iget-object p1, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    invoke-static {p1, v6, v9, v9, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_12
    sget-boolean p1, Lcom/android/server/am/cjf;->w:Z

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    invoke-virtual {p1, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    invoke-virtual {p1, v7}, Landroid/os/Handler;->removeMessages(I)V

    :cond_13
    iget-object p1, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    invoke-static {p1, v7, v9, v9, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_14
    :goto_4
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private veq()Ljava/lang/reflect/Method;
    .locals 6

    sget-boolean v0, Lcom/android/server/am/cjf;->hmo:Z

    const-string v1, "OnePlusDuallteManager"

    if-eqz v0, :cond_0

    const-string v0, "getMethod()"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    const-string v0, "org.codeaurora.internal.IExtTelephony"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "generalSetter"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/os/Bundle;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/cjf;->oif:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMethod() exception: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private vju()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/am/cjf;->hmo()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/cjf;->hmo()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    sget-object v0, Lcom/android/server/am/cjf;->y:[Z

    invoke-direct {p0}, Lcom/android/server/am/cjf;->hmo()I

    move-result v2

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/am/cjf;->cgv(Z)V

    invoke-direct {p0}, Lcom/android/server/am/cjf;->les()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/cjf;->cgv(Z)V

    :goto_0
    return-void
.end method

.method static synthetic wtn(Lcom/android/server/am/cjf;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/cjf;->oxb:[Ljava/lang/String;

    return-object p0
.end method

.method private x(Z)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/cjf;->q()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    sget-boolean v1, Lcom/android/server/am/cjf;->hmo:Z

    const-string v2, "OnePlusDuallteManager"

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDuallte isRecover:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/cjf;->oif:Ljava/lang/reflect/Method;

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/server/am/cjf;->veq()Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/cjf;->oif:Ljava/lang/reflect/Method;

    :cond_2
    iget-object v1, p0, Lcom/android/server/am/cjf;->bvj:Ljava/lang/Object;

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/android/server/am/cjf;->fto()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/cjf;->bvj:Ljava/lang/Object;

    :cond_3
    iget-object v1, p0, Lcom/android/server/am/cjf;->oif:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/am/cjf;->bvj:Ljava/lang/Object;

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/server/am/cjf;->oif:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-boolean v1, p0, Lcom/android/server/am/cjf;->ugm:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/server/am/cjf;->oif:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/android/server/am/cjf;->bvj:Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "oemDualLteSwitch"

    aput-object v6, v5, v0

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    aput-object v6, v5, v3

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    if-eqz p1, :cond_6

    iput-boolean v0, p0, Lcom/android/server/am/cjf;->rtg:Z

    const-string p1, "persist.radio.duallte.operated"

    const-string v0, "0"

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/cjf;->C(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return v3

    :cond_7
    :goto_0
    :try_start_1
    const-string p1, "setDuallte method or iExtTelephony is null, return"

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/am/cjf;->veq()Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/cjf;->oif:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Lcom/android/server/am/cjf;->fto()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/cjf;->bvj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private y(Z)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/cjf;->o()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    sget-boolean v1, Lcom/android/server/am/cjf;->hmo:Z

    const-string v2, "OnePlusDuallteManager"

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDuallteFlag isRecover:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/cjf;->oif:Ljava/lang/reflect/Method;

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/server/am/cjf;->veq()Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/cjf;->oif:Ljava/lang/reflect/Method;

    :cond_2
    iget-object v1, p0, Lcom/android/server/am/cjf;->bvj:Ljava/lang/Object;

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/android/server/am/cjf;->fto()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/cjf;->bvj:Ljava/lang/Object;

    :cond_3
    iget-object v1, p0, Lcom/android/server/am/cjf;->oif:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/am/cjf;->bvj:Ljava/lang/Object;

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/server/am/cjf;->oif:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v4, "enable"

    if-nez p1, :cond_5

    move p1, v3

    goto :goto_0

    :cond_5
    move p1, v0

    :goto_0
    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean p1, p0, Lcom/android/server/am/cjf;->ugm:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/android/server/am/cjf;->oif:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/android/server/am/cjf;->bvj:Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "setDualLteFlag"

    aput-object v6, v5, v0

    aput-object v1, v5, v3

    invoke-virtual {p1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return v3

    :cond_7
    :goto_1
    const-string p1, "setDuallteFlag method or iExtTelephony is null, return"

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/am/cjf;->veq()Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/cjf;->oif:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Lcom/android/server/am/cjf;->fto()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/cjf;->bvj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method static synthetic you(Lcom/android/server/am/cjf;Z)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/cjf;->x(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic ywr(Lcom/android/server/am/cjf;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/cjf;->cno:Landroid/content/Context;

    return-object p0
.end method

.method private z()V
    .locals 9

    sget-boolean p0, Lcom/android/server/am/cjf;->hmo:Z

    const-string v0, "OnePlusDuallteManager"

    if-eqz p0, :cond_0

    const-string p0, "setDuallteTest"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    const-string p0, "org.codeaurora.internal.IExtTelephony"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const-string v5, ", "

    if-ge v4, v2, :cond_1

    :try_start_1
    aget-object v6, v1, v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getMethods:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_2

    aget-object v6, v1, v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDeclaredMethods:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const-string v1, "extphone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "org.codeaurora.internal.IExtTelephony$Stub"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "asInterface"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/os/IBinder;

    aput-object v7, v6, v3

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v1, v6, v3

    invoke-virtual {v2, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "generalSetter"

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v3

    const-class v7, Landroid/os/Bundle;

    aput-object v7, v6, v5

    invoke-virtual {p0, v2, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v4, [Ljava/lang/Object;

    const-string v4, "oemDualLteSwitch"

    aput-object v4, v2, v3

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDuallteTest() exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method static synthetic zgw(Lcom/android/server/am/cjf;Z)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/cjf;->B(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic zta(Lcom/android/server/am/cjf;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/cjf;->vdw(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public D(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/android/server/am/cjf;->hmo:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusDuallteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateEsportModeStatus  | sEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/cjf;->o:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " |inEsportMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/cjf;->ugm:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " |enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/cjf;->ugm:Z

    if-ne v0, p1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/android/server/am/cjf;->ugm:Z

    if-nez p1, :cond_2

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->rtg()Lcom/android/server/OnePlusUtil$zta;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/OnePlusUtil$zta;->sis()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/cjf;->ire(Ljava/lang/String;)V

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d()V
    .locals 5

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/am/cjf;->cno:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/am/cjf$you;

    invoke-direct {v3, p0}, Lcom/android/server/am/cjf$you;-><init>(Lcom/android/server/am/cjf;)V

    const-string v4, "Duallte"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/cjf;->qbh:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    iget-object p0, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public frontPackageChanged(Ljava/lang/String;IILjava/lang/String;II)V
    .locals 0

    sget-boolean p3, Lcom/android/server/am/cjf;->o:Z

    if-nez p3, :cond_0

    return-void

    :cond_0
    if-eq p2, p5, :cond_2

    sget-boolean p3, Lcom/android/server/am/cjf;->hmo:Z

    if-eqz p3, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "event frontPackageChanged packageName:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " |uid:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " |luid:"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "OnePlusDuallteManager"

    invoke-static {p3, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/cjf;->ire(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public ire(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/cjf;->o:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/am/cjf;->hmo:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "frontPkgChangedEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " |mCurFrontPkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/cjf;->sis:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnePlusDuallteManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object p1, p0, Lcom/android/server/am/cjf;->sis:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/android/server/am/cjf;->tsu:Z

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcom/android/server/am/cjf;->you:Ljava/lang/String;

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/android/server/am/cjf;->l()Z

    move-result v0

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/server/am/cjf;->v:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/server/am/cjf;->w:Z

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/cjf;->kth:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_5
    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 7

    const-string v0, "setLLMPackageName"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyFrontPkgToLlmController :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OnePlusDuallteManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/cjf;->oif:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/cjf;->veq()Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/cjf;->oif:Ljava/lang/reflect/Method;

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/cjf;->bvj:Ljava/lang/Object;

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/am/cjf;->fto()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/cjf;->bvj:Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/cjf;->oif:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/am/cjf;->bvj:Ljava/lang/Object;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/am/cjf;->oif:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyFrontPkgToLlmController setLLMPackageName :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/cjf;->oif:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/android/server/am/cjf;->bvj:Ljava/lang/Object;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    aput-object v1, v5, v3

    invoke-virtual {p1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    :goto_0
    const-string p1, "notifyFrontPkgChangedToLlmController method or iExtTelephony is null, return"

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/am/cjf;->veq()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/cjf;->oif:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Lcom/android/server/am/cjf;->fto()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/cjf;->bvj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public w(Z)V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/cjf;->o:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/am/cjf;->hmo:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screenStateChangedEvent done:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |offScreenPkgName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/cjf;->you:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " |mCurFrontPkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/cjf;->sis:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnePlusDuallteManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-boolean p1, p0, Lcom/android/server/am/cjf;->tsu:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/am/cjf;->you:Ljava/lang/String;

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/server/am/cjf;->you:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/am/cjf;->ire(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/cjf;->you:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/server/am/cjf;->sis:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/am/cjf;->you:Ljava/lang/String;

    :cond_3
    :goto_0
    return-void
.end method
