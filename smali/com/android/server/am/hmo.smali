.class public Lcom/android/server/am/hmo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/am/IOpStartAppControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/hmo$rtg;,
        Lcom/android/server/am/hmo$ssp;
    }
.end annotation


# static fields
.field protected static final a:Ljava/lang/String; = "SmartPowerControl: battery optimizing app"

.field protected static final b:Ljava/lang/String; = "StartAppControl: default pass"

.field public static final bud:Ljava/lang/String; = "StartAppControl"

.field protected static final c:Ljava/lang/String; = "StartAppControl: default block"

.field protected static final d:Ljava/lang/String; = "ConfigManager: not running"

.field protected static final e:Ljava/lang/String; = "ConfigManager: not foreground"

.field protected static final f:Ljava/lang/String; = "ConfigManager: always"

.field protected static final g:Ljava/lang/String; = "ConfigManager: always"

.field private static final h:Ljava/lang/String; = "Theme.Translucent.NoTitleBar"

.field protected static final i:Z

.field private static final irq:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field protected static final ivd:Ljava/lang/String; = "SmartPowerControl: whitelist app"

.field private static final j:I = 0x1

.field private static final k:I = 0x2

.field private static final l:I = 0x3

.field private static final les:Ljava/lang/String; = "gsm.sim.operator.iso-country"

.field private static final m:J = 0x1f4L

.field protected static n:Z = false

.field private static o:Lcom/android/server/am/hmo; = null

.field private static p:Landroid/os/HandlerThread; = null

.field private static q:Z = false

.field protected static final qeg:Ljava/lang/String; = "StartAppControl: callee is a system app"

.field public static r:Z = false

.field protected static s:Landroid/os/Handler; = null

.field private static t:Lcom/android/server/pm/PackageManagerService; = null

.field private static final u:Ljava/lang/String; = "com.haha.action.test"

.field private static final v:I = 0x0

.field private static final vdw:Ljava/lang/String; = "AppBoot"

.field private static final w:I = 0x55d4a80

.field private static final x:I = 0x5f5e100


# instance fields
.field private bio:Lcom/android/server/ire;

.field private bvj:Lcom/android/server/am/k;

.field private cgv:Landroid/content/BroadcastReceiver;

.field private cjf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cno:Lcom/android/server/am/ActivityManagerService;

.field protected dma:Z

.field protected ear:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private fto:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private gck:Landroid/content/Context;

.field private gwm:Lcom/android/server/am/ivd;

.field private hmo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ibl:Lcom/android/server/am/h;

.field private igw:Lcom/android/server/am/AppRecordManagerService;

.field protected ire:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private kth:Landroid/app/ActivityManager;

.field private lqr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private obl:Lcom/android/server/am/hmo$rtg;

.field private oif:Lcom/android/server/am/StartAppSpecialUidsPolicy;

.field private oxb:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private qbh:Lcom/android/server/am/StartAppConfigManager;

.field private rtg:Z

.field private sis:Z

.field private ssp:Z

.field private tsu:Z

.field private ugm:Lcom/android/server/am/m;

.field private vdb:J

.field private veq:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private vju:Landroid/content/BroadcastReceiver;

.field private wtn:Lcom/android/server/OnePlusUtil$you;

.field private you:Z

.field private ywr:Lcom/android/server/am/StartAppRecorder;

.field private zgw:Lcom/oneplus/config/ConfigObserver;

.field protected zta:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/hmo;->i:Z

    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v1, Lcom/android/server/am/hmo;->n:Z

    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/am/hmo;->p:Landroid/os/HandlerThread;

    sput-boolean v2, Lcom/android/server/am/hmo;->q:Z

    sput-boolean v0, Lcom/android/server/am/hmo;->r:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/hmo;->veq:Ljava/util/HashSet;

    new-instance v0, Lcom/android/server/am/hmo$zta;

    invoke-direct {v0, p0}, Lcom/android/server/am/hmo$zta;-><init>(Lcom/android/server/am/hmo;)V

    iput-object v0, p0, Lcom/android/server/am/hmo;->cgv:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/am/hmo$sis;

    invoke-direct {v0, p0}, Lcom/android/server/am/hmo$sis;-><init>(Lcom/android/server/am/hmo;)V

    iput-object v0, p0, Lcom/android/server/am/hmo;->vju:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/am/hmo;->gck:Landroid/content/Context;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/hmo;->cjf:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/hmo;->hmo:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/hmo;->fto:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/hmo;->lqr:Ljava/util/List;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/hmo;->ear:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/hmo;->ire:Ljava/util/List;

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/android/server/am/hmo;->vdb:J

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/hmo;->oxb:Ljava/util/Set;

    iget-object p1, p0, Lcom/android/server/am/hmo;->gck:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/android/server/am/hmo;->kth:Landroid/app/ActivityManager;

    invoke-direct {p0}, Lcom/android/server/am/hmo;->bud()V

    return-void
.end method

.method static synthetic bio(Lcom/android/server/am/hmo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/hmo;->p(Ljava/lang/String;)V

    return-void
.end method

.method private bud()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/hmo;->veq:Ljava/util/HashSet;

    const-string v1, "com.igexin.sdk.PushActivityTask"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/am/hmo;->veq:Ljava/util/HashSet;

    const-string v0, "jpush.custom"

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic bvj(Lcom/android/server/am/hmo;)Lcom/android/server/am/StartAppSpecialUidsPolicy;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/hmo;->oif:Lcom/android/server/am/StartAppSpecialUidsPolicy;

    return-object p0
.end method

.method private cgv(Ljava/lang/Integer;ILcom/android/server/am/StartAppRecorder$zta;)Ljava/lang/Boolean;
    .locals 4

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->zta:Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;

    iget v2, v2, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->policy:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/server/am/hmo;->c(I)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/android/server/am/StartAppRecorder$CanStart;->sis:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object p1, p3, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    const-string p1, "ConfigManager: not running"

    :goto_0
    iput-object p1, p3, Lcom/android/server/am/StartAppRecorder$zta;->you:Ljava/lang/String;

    :goto_1
    iget-object p0, p0, Lcom/android/server/am/hmo;->ywr:Lcom/android/server/am/StartAppRecorder;

    invoke-virtual {p0, p3}, Lcom/android/server/am/StartAppRecorder;->you(Lcom/android/server/am/StartAppRecorder$zta;)V

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->you:Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;

    iget v2, v2, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->policy:I

    const-string v3, "ConfigManager: always"

    if-ne v1, v2, :cond_2

    sget-object p1, Lcom/android/server/am/StartAppRecorder$CanStart;->you:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object p1, p3, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object v3, p3, Lcom/android/server/am/StartAppRecorder$zta;->you:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/server/am/hmo;->ywr:Lcom/android/server/am/StartAppRecorder;

    invoke-virtual {p1, p3}, Lcom/android/server/am/StartAppRecorder;->you(Lcom/android/server/am/StartAppRecorder$zta;)V

    invoke-virtual {p0, p2}, Lcom/android/server/am/hmo;->c(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/am/hmo;->oxb:Ljava/util/Set;

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->sis:Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;

    iget v2, v2, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->policy:I

    if-ne v1, v2, :cond_3

    sget-object p1, Lcom/android/server/am/StartAppRecorder$CanStart;->sis:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object p1, p3, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object v3, p3, Lcom/android/server/am/StartAppRecorder$zta;->you:Ljava/lang/String;

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v1, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->tsu:Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;

    iget v1, v1, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->policy:I

    if-ne p1, v1, :cond_4

    invoke-virtual {p0, p2}, Lcom/android/server/am/hmo;->b(I)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/android/server/am/StartAppRecorder$CanStart;->sis:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object p1, p3, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    const-string p1, "ConfigManager: not foreground"

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private cjf()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dump # mRestartServiceWhitelist:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/hmo;->cjf:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dump # mWidgets:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/hmo;->ear:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dump # mOnePixelWhitelist:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/hmo;->hmo:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dump # mUnnoticeableWhitelist:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/hmo;->fto:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dump # mExcludeSystemList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/hmo;->lqr:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dump # mBlackAffinityList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/hmo;->veq:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic cno(Lcom/android/server/am/hmo;)Lcom/android/server/am/ActivityManagerService;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/hmo;->cno:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method

.method static synthetic dma(Lcom/android/server/am/hmo;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/hmo;->tsu:Z

    return p0
.end method

.method private synthetic e(Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/hmo;->n(Lorg/json/JSONArray;)V

    return-void
.end method

.method private ear(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/hmo;->qbh:Lcom/android/server/am/StartAppConfigManager;

    invoke-virtual {v0, p1}, Lcom/android/server/am/StartAppConfigManager;->sis(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/hmo;->ywr:Lcom/android/server/am/StartAppRecorder;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/StartAppRecorder;->tsu(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-object v0
.end method

.method private g(Landroid/content/pm/ActivityInfo;I)Z
    .locals 3

    iget-boolean p2, p0, Lcom/android/server/am/hmo;->ssp:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/server/am/hmo;->fto:Ljava/util/List;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result p2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/hmo;->gck:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/android/server/am/hmo;->veq:Ljava/util/HashSet;

    monitor-enter v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v2, "Theme.Translucent.NoTitleBar"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/am/hmo;->veq:Ljava/util/HashSet;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    monitor-exit v1

    return p2

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Landroid/content/res/Resources$NotFoundException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/server/am/hmo;->ugm:Lcom/android/server/am/m;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, p1}, Lcom/android/server/am/m;->rtg(I)V

    :cond_2
    :goto_1
    return v0
.end method

.method static synthetic gck(II)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/am/hmo;->zgw(II)I

    move-result p0

    return p0
.end method

.method static synthetic gwm(Lcom/android/server/am/hmo;)Lcom/android/server/am/StartAppConfigManager;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/hmo;->qbh:Lcom/android/server/am/StartAppConfigManager;

    return-object p0
.end method

.method protected static h(Ljava/lang/String;)V
    .locals 1

    const-string v0, "StartAppControl"

    invoke-static {v0, p0}, Lcom/android/server/am/hmo;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static hmo(Landroid/content/Context;)Lcom/android/server/am/hmo;
    .locals 1

    sget-object v0, Lcom/android/server/am/hmo;->o:Lcom/android/server/am/hmo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/hmo;

    invoke-direct {v0, p0}, Lcom/android/server/am/hmo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/am/hmo;->o:Lcom/android/server/am/hmo;

    :cond_0
    sget-object p0, Lcom/android/server/am/hmo;->o:Lcom/android/server/am/hmo;

    return-object p0
.end method

.method protected static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/hmo;->n:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic ibl(Lcom/android/server/am/hmo;)Lcom/android/server/am/k;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/hmo;->bvj:Lcom/android/server/am/k;

    return-object p0
.end method

.method static synthetic igw(Lcom/android/server/am/hmo;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/hmo;->zta(I)V

    return-void
.end method

.method protected static ire()Lcom/android/server/am/hmo;
    .locals 1

    sget-object v0, Lcom/android/server/am/hmo;->o:Lcom/android/server/am/hmo;

    return-object v0
.end method

.method private j()V
    .locals 5

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "appbootThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/hmo;->p:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/am/hmo$ssp;

    sget-object v1, Lcom/android/server/am/hmo;->p:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/hmo$ssp;-><init>(Lcom/android/server/am/hmo;Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/am/hmo;->s:Landroid/os/Handler;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.haha.action.test"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/am/hmo;->i:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/hmo;->zta:Z

    iput-boolean v1, p0, Lcom/android/server/am/hmo;->you:Z

    iput-boolean v1, p0, Lcom/android/server/am/hmo;->sis:Z

    iput-boolean v1, p0, Lcom/android/server/am/hmo;->tsu:Z

    iput-boolean v1, p0, Lcom/android/server/am/hmo;->rtg:Z

    iput-boolean v1, p0, Lcom/android/server/am/hmo;->ssp:Z

    goto :goto_0

    :cond_0
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/hmo;->k()V

    :goto_0
    invoke-direct {p0}, Lcom/android/server/am/hmo;->vju()V

    iget-object v1, p0, Lcom/android/server/am/hmo;->gck:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/hmo;->cgv:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/server/am/hmo;->m()V

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/am/hmo;->gck:Landroid/content/Context;

    sget-object v2, Lcom/android/server/am/hmo;->s:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/am/hmo$you;

    invoke-direct {v3, p0}, Lcom/android/server/am/hmo$you;-><init>(Lcom/android/server/am/hmo;)V

    const-string v4, "AppBoot"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/hmo;->zgw:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/am/hmo;->gck:Landroid/content/Context;

    invoke-direct {v0, v1, v4}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/server/am/hmo;->s:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/sis;

    invoke-direct {v2, p0, v0}, Lcom/android/server/am/sis;-><init>(Lcom/android/server/am/hmo;Lorg/json/JSONArray;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private k()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/am/hmo;->zta:Z

    const-string v1, "gsm.sim.operator.iso-country"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2

    const-string v2, "cn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iput-boolean v3, p0, Lcom/android/server/am/hmo;->zta:Z

    iput-boolean v3, p0, Lcom/android/server/am/hmo;->you:Z

    iput-boolean v4, p0, Lcom/android/server/am/hmo;->sis:Z

    iput-boolean v4, p0, Lcom/android/server/am/hmo;->tsu:Z

    iput-boolean v3, p0, Lcom/android/server/am/hmo;->rtg:Z

    iput-boolean v3, p0, Lcom/android/server/am/hmo;->ssp:Z

    goto :goto_1

    :cond_0
    const-string v2, "in"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v3, p0, Lcom/android/server/am/hmo;->zta:Z

    goto :goto_0

    :cond_1
    iput-boolean v4, p0, Lcom/android/server/am/hmo;->zta:Z

    :goto_0
    iput-boolean v4, p0, Lcom/android/server/am/hmo;->you:Z

    iput-boolean v4, p0, Lcom/android/server/am/hmo;->sis:Z

    iput-boolean v4, p0, Lcom/android/server/am/hmo;->tsu:Z

    iput-boolean v4, p0, Lcom/android/server/am/hmo;->rtg:Z

    iput-boolean v4, p0, Lcom/android/server/am/hmo;->ssp:Z

    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "responseSIMStateChanged # mccCountry="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " # lastEnabled="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " # sEnable="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/am/hmo;->zta:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " # sProviderControlEnable="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/am/hmo;->you:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " # sServiceRestartControlEnable"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/am/hmo;->sis:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic kth(Lcom/android/server/am/hmo;)Landroid/app/ActivityManager;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/hmo;->kth:Landroid/app/ActivityManager;

    return-object p0
.end method

.method private m()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/hmo;->gck:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p0, "StartAppControl"

    const-string v0, "Fatal Exception # registerPackageReceiver # mContext=null"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v1, p0, Lcom/android/server/am/hmo;->gck:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/am/hmo;->vju:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private n(Lorg/json/JSONArray;)V
    .locals 14

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "update config"

    invoke-static {v0}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_10

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "unnoticeable"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x5

    goto :goto_1

    :sswitch_1
    const-string v5, "process_restart"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x6

    goto :goto_1

    :sswitch_2
    const-string v5, "one_pixel_whitelist"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x3

    goto :goto_1

    :sswitch_3
    const-string v5, "continuous_request"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x7

    goto :goto_1

    :sswitch_4
    const-string v5, "restart_service_whitelist"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x2

    goto :goto_1

    :sswitch_5
    const-string v5, "config"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_6
    const-string v5, "exclude_system"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v4, 0x8

    goto :goto_1

    :sswitch_7
    const-string v5, "affinity_task_blacklist"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x4

    goto :goto_1

    :sswitch_8
    const-string v5, "function_switch"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v4, v0

    :cond_1
    :goto_1
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_b

    :pswitch_0
    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/hmo;->lqr:Ljava/util/List;

    monitor-enter v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/hmo;->lqr:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    move v4, v0

    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/hmo;->lqr:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/server/am/hmo;->lqr:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    monitor-exit v3

    goto/16 :goto_b

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :pswitch_1
    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "enable"

    sget-boolean v4, Lcom/android/server/am/k;->veq:Z

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/am/k;->veq:Z

    const-string v3, "times"

    sget v4, Lcom/android/server/am/k;->fto:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/server/am/k;->fto:I

    const-string v3, "duration"

    sget-wide v4, Lcom/android/server/am/k;->lqr:J

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    sput-wide v3, Lcom/android/server/am/k;->lqr:J

    const-string v3, "enable_component"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-eqz v3, :cond_f

    sget-object v3, Lcom/android/server/am/k;->cgv:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    move v3, v0

    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_f

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;->zta(Ljava/lang/String;)Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;

    move-result-object v4

    if-eqz v4, :cond_4

    sget-object v5, Lcom/android/server/am/k;->cgv:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :pswitch_2
    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "timeout"

    sget-wide v4, Lcom/android/server/am/h;->wtn:J

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    sput-wide v3, Lcom/android/server/am/h;->wtn:J

    const-string v3, "max_count"

    sget v4, Lcom/android/server/am/h;->gck:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/server/am/h;->gck:I

    const-string v3, "threshold_adj"

    sget v4, Lcom/android/server/am/h;->dma:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/server/am/h;->dma:I

    const-string v3, "whitelist"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/hmo;->ibl:Lcom/android/server/am/h;

    iget-object v3, v3, Lcom/android/server/am/h;->you:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v4, p0, Lcom/android/server/am/hmo;->ibl:Lcom/android/server/am/h;

    iget-object v4, v4, Lcom/android/server/am/h;->you:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move v4, v0

    :goto_4
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_6

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/hmo;->ibl:Lcom/android/server/am/h;

    iget-object v6, v6, Lcom/android/server/am/h;->you:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/server/am/hmo;->ibl:Lcom/android/server/am/h;

    iget-object v6, v6, Lcom/android/server/am/h;->you:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    monitor-exit v3

    goto/16 :goto_b

    :catchall_1
    move-exception p0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :pswitch_3
    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "whitelist"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_9

    iget-object v4, p0, Lcom/android/server/am/hmo;->fto:Ljava/util/List;

    monitor-enter v4
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-object v5, p0, Lcom/android/server/am/hmo;->fto:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    move v5, v0

    :goto_5
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_8

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/hmo;->fto:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/android/server/am/hmo;->fto:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_8
    monitor-exit v4

    goto :goto_6

    :catchall_2
    move-exception p0

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw p0

    :cond_9
    :goto_6
    const-string v3, "delay"

    iget-wide v4, p0, Lcom/android/server/am/hmo;->vdb:J

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/hmo;->vdb:J

    goto/16 :goto_b

    :pswitch_4
    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/hmo;->veq:Ljava/util/HashSet;

    monitor-enter v3
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    iget-object v4, p0, Lcom/android/server/am/hmo;->veq:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    move v4, v0

    :goto_7
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_a

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/hmo;->veq:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_a
    monitor-exit v3

    goto/16 :goto_b

    :catchall_3
    move-exception p0

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    throw p0

    :pswitch_5
    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/hmo;->hmo:Ljava/util/List;

    monitor-enter v3
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    :try_start_9
    iget-object v4, p0, Lcom/android/server/am/hmo;->hmo:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    move v4, v0

    :goto_8
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_c

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/hmo;->hmo:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/android/server/am/hmo;->hmo:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_c
    monitor-exit v3

    goto/16 :goto_b

    :catchall_4
    move-exception p0

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    throw p0

    :pswitch_6
    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/hmo;->cjf:Ljava/util/List;

    monitor-enter v3
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_0

    :try_start_b
    iget-object v4, p0, Lcom/android/server/am/hmo;->cjf:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    move v4, v0

    :goto_9
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_e

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/hmo;->cjf:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, p0, Lcom/android/server/am/hmo;->cjf:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_e
    monitor-exit v3

    goto/16 :goto_b

    :catchall_5
    move-exception p0

    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :try_start_c
    throw p0

    :pswitch_7
    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/hmo;->qbh:Lcom/android/server/am/StartAppConfigManager;

    invoke-virtual {v3}, Lcom/android/server/am/StartAppConfigManager;->bio()V

    move v3, v0

    :goto_a
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_f

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "caller_package"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v5, "callee_package"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v5, "callee_component"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v5, "intent_action"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v5, "provider_auth"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v5, "policy"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    iget-object v7, p0, Lcom/android/server/am/hmo;->qbh:Lcom/android/server/am/StartAppConfigManager;

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/am/StartAppConfigManager;->zta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :pswitch_8
    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "enable"

    iget-boolean v4, p0, Lcom/android/server/am/hmo;->zta:Z

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/am/hmo;->zta:Z

    const-string v3, "provider_control"

    iget-boolean v4, p0, Lcom/android/server/am/hmo;->you:Z

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/am/hmo;->you:Z

    const-string v3, "process_restart_control"

    iget-boolean v4, p0, Lcom/android/server/am/hmo;->tsu:Z

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/am/hmo;->tsu:Z

    const-string v3, "service_restart_control"

    iget-boolean v4, p0, Lcom/android/server/am/hmo;->sis:Z

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/am/hmo;->sis:Z

    const-string v3, "debug"

    sget-boolean v4, Lcom/android/server/am/hmo;->n:Z

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/am/hmo;->n:Z

    const-string v3, "one_pixel_control"

    iget-boolean v4, p0, Lcom/android/server/am/hmo;->rtg:Z

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/am/hmo;->rtg:Z

    const-string v3, "unnoticeable_control"

    iget-boolean v4, p0, Lcom/android/server/am/hmo;->ssp:Z

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/am/hmo;->ssp:Z

    const-string v3, "canforcestop_control"

    sget-boolean v4, Lcom/android/server/am/hmo;->r:Z

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/hmo;->r:Z
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_0

    :cond_f
    :goto_b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StartAppControl"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const-string p0, "config update done"

    invoke-static {p0}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7f9d4285 -> :sswitch_8
        -0x61f93926 -> :sswitch_7
        -0x5336d7cc -> :sswitch_6
        -0x50c07cbe -> :sswitch_5
        -0x327e5af3 -> :sswitch_4
        -0x1c0912a1 -> :sswitch_3
        0xb5595f5 -> :sswitch_2
        0x2d35843f -> :sswitch_1
        0x32d3638b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private o(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v0

    if-eqz p0, :cond_c

    const-string v1, "android"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result p0

    if-nez p0, :cond_b

    const/4 p0, 0x0

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/parsing/component/ParsedActivity;

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/pm/parsing/component/ParsedActivity;->getIntents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/parsing/component/ParsedIntentInfo;

    if-eqz v3, :cond_4

    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 p0, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    if-nez p0, :cond_6

    const/4 p0, -0x1

    if-eq v0, p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# setPPPackage # parserPkg="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " # hide-laucher app"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/server/am/StartAppSpecialUidsPolicy;->rtg(I)V

    :cond_6
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/parsing/component/ParsedService;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedService;->getIntents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/parsing/component/ParsedIntentInfo;

    if-eqz v1, :cond_8

    const-string v2, "android.intent.action.TTS_SERVICE"

    invoke-virtual {v1, v2}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# setPPPackage # TTSService= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/k;->sis(Ljava/lang/String;)V

    :cond_9
    const-string v2, "android.content.SyncAdapter"

    invoke-virtual {v1, v2}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# setPPPackage # SyncAdapter= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/k;->you(Ljava/lang/String;)V

    :cond_a
    const-string v2, "android.service.textservice.SpellCheckerService"

    invoke-virtual {v1, v2}, Landroid/content/pm/parsing/component/ParsedIntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# setPPPackage # SpellCheckerService= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/k;->zta(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_b
    return-void

    :cond_c
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setPPPackage # packageName = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " , return"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    return-void
.end method

.method private obl(I)I
    .locals 0

    const p0, 0x55d4a80

    if-le p1, p0, :cond_0

    const p0, 0x5f5e100

    if-ge p1, p0, :cond_0

    const p0, 0x186a0

    rem-int/2addr p1, p0

    const p0, 0x5f45a60

    add-int/2addr p1, p0

    return p1

    :cond_0
    div-int/lit8 p1, p1, 0x64

    return p1
.end method

.method static synthetic oif(Lcom/android/server/am/hmo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/hmo;->cjf()V

    return-void
.end method

.method private oxb(I)I
    .locals 0

    const p0, 0x55d4a80

    if-le p1, p0, :cond_0

    const p0, 0x5f5e100

    if-ge p1, p0, :cond_0

    const p0, 0x186a0

    div-int/2addr p1, p0

    rsub-int p0, p1, 0x3e7

    return p0

    :cond_0
    rem-int/lit8 p1, p1, 0x64

    return p1
.end method

.method private p(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/am/hmo;->t:Lcom/android/server/pm/PackageManagerService;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageManagerService;->getPackageInfo(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/am/hmo;->o(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    :cond_1
    return-void
.end method

.method static synthetic qbh(Lcom/android/server/am/hmo;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/hmo;->ssp:Z

    return p0
.end method

.method private qeg(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/hmo;->a(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz p0, :cond_2

    iget p0, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v1, 0xc8

    if-gt p0, v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result p0

    const/16 p1, 0x10

    if-ge p0, p1, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic rtg(Lcom/android/server/am/hmo;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/hmo;->obl(I)I

    move-result p0

    return p0
.end method

.method static synthetic sis(Lcom/android/server/am/hmo;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/hmo;->sis:Z

    return p0
.end method

.method static synthetic ssp(Lcom/android/server/am/hmo;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/hmo;->oxb(I)I

    move-result p0

    return p0
.end method

.method static synthetic tsu(Lcom/android/server/am/hmo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/hmo;->k()V

    return-void
.end method

.method static synthetic ugm(Lcom/android/server/am/hmo;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/hmo;->veq:Ljava/util/HashSet;

    return-object p0
.end method

.method private vdb(Ljava/lang/String;ILcom/android/server/am/StartAppRecorder$zta;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/am/hmo;->irq(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/android/server/am/StartAppRecorder$CanStart;->you:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object p0, p3, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    const-string p0, "SmartPowerControl: whitelist app"

    :goto_0
    iput-object p0, p3, Lcom/android/server/am/StartAppRecorder$zta;->you:Ljava/lang/String;

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/hmo;->les(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/server/am/hmo;->c(I)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/android/server/am/StartAppRecorder$CanStart;->sis:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object p0, p3, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    const-string p0, "SmartPowerControl: battery optimizing app"

    goto :goto_0

    :cond_1
    return-void
.end method

.method private vju()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/hmo;->bio:Lcom/android/server/ire;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_smart_power_control:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ire;

    iput-object v0, p0, Lcom/android/server/am/hmo;->bio:Lcom/android/server/ire;

    :cond_0
    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/hmo;->igw:Lcom/android/server/am/AppRecordManagerService;

    invoke-static {}, Lcom/android/server/am/StartAppConfigManager;->tsu()Lcom/android/server/am/StartAppConfigManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/hmo;->qbh:Lcom/android/server/am/StartAppConfigManager;

    iget-object v0, p0, Lcom/android/server/am/hmo;->gck:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/am/StartAppSpecialUidsPolicy;->dma(Landroid/content/Context;)Lcom/android/server/am/StartAppSpecialUidsPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/hmo;->oif:Lcom/android/server/am/StartAppSpecialUidsPolicy;

    iget-object v0, p0, Lcom/android/server/am/hmo;->gck:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/am/k;->gck(Landroid/content/Context;)Lcom/android/server/am/k;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/hmo;->bvj:Lcom/android/server/am/k;

    iget-object v0, p0, Lcom/android/server/am/hmo;->cno:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/h;->zta(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/h;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/hmo;->ibl:Lcom/android/server/am/h;

    iget-object v0, p0, Lcom/android/server/am/hmo;->gck:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/am/ivd;->zgw(Landroid/content/Context;)Lcom/android/server/am/ivd;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/hmo;->gwm:Lcom/android/server/am/ivd;

    iget-object v0, p0, Lcom/android/server/am/hmo;->gck:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/am/m;->you(Landroid/content/Context;)Lcom/android/server/am/m;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/hmo;->ugm:Lcom/android/server/am/m;

    invoke-static {}, Lcom/android/server/OnePlusUtil$you;->tsu()Lcom/android/server/OnePlusUtil$you;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/hmo;->wtn:Lcom/android/server/OnePlusUtil$you;

    iget-object v0, p0, Lcom/android/server/am/hmo;->gck:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/hmo;->bvj:Lcom/android/server/am/k;

    invoke-static {v0, v1}, Lcom/android/server/am/StartAppRecorder;->zta(Landroid/content/Context;Lcom/android/server/am/k;)Lcom/android/server/am/StartAppRecorder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/hmo;->ywr:Lcom/android/server/am/StartAppRecorder;

    new-instance v0, Lcom/android/server/am/hmo$rtg;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/hmo$rtg;-><init>(Lcom/android/server/am/hmo;Lcom/android/server/am/hmo$zta;)V

    iput-object v0, p0, Lcom/android/server/am/hmo;->obl:Lcom/android/server/am/hmo$rtg;

    sget-object v1, Lcom/android/server/am/AppRecordManager$ListenerType;->wtn:Lcom/android/server/am/AppRecordManager$ListenerType;

    invoke-static {v1, v0}, Lcom/android/server/am/AppRecordManager;->vdb(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    sget-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->gwm:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v1, p0, Lcom/android/server/am/hmo;->obl:Lcom/android/server/am/hmo$rtg;

    invoke-static {v0, v1}, Lcom/android/server/am/AppRecordManager;->vdb(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    :try_start_0
    invoke-static {}, Lcom/android/server/am/oif;->zta()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/hmo;->dma:Z

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic wtn(Lcom/android/server/am/hmo;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/hmo;->n(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic you(Lcom/android/server/am/hmo;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/hmo;->you:Z

    return p0
.end method

.method static synthetic ywr(Lcom/android/server/am/hmo;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/hmo;->rtg:Z

    return p0
.end method

.method private static zgw(II)I
    .locals 1

    const v0, 0x55d4a80

    if-le p0, v0, :cond_0

    const v0, 0x186a0

    mul-int/2addr p1, v0

    sub-int/2addr p0, p1

    return p0

    :cond_0
    mul-int/lit8 p0, p0, 0x64

    add-int/2addr p0, p1

    return p0
.end method

.method private zta(I)V
    .locals 1

    sget-object p0, Lcom/android/server/am/hmo;->s:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/server/am/hmo;->zgw(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/hmo;->lqr:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/hmo;->igw:Lcom/android/server/am/AppRecordManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->isSystemApp(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public activityFinished(Landroid/content/pm/ActivityInfo;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/am/hmo;->zta:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/hmo;->ugm:Lcom/android/server/am/m;

    invoke-virtual {v2, v0}, Lcom/android/server/am/m;->tsu(I)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "find unnoticeable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    sget-object p1, Lcom/android/server/am/hmo;->s:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/server/am/hmo;->zgw(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const-string v2, "packageName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    sget-object v0, Lcom/android/server/am/hmo;->s:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/android/server/am/hmo;->vdb:J

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public addAccessibilityService(Landroid/content/ComponentName;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/hmo;->zta:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/hmo;->oif:Lcom/android/server/am/StartAppSpecialUidsPolicy;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/hmo;->lqr(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/hmo;->oif:Lcom/android/server/am/StartAppSpecialUidsPolicy;

    invoke-virtual {p0, p1}, Lcom/android/server/am/StartAppSpecialUidsPolicy;->tsu(I)V

    :cond_0
    return-void
.end method

.method public appBecomeVisible(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/hmo;->zta:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/am/hmo;->dma:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/hmo;->ugm:Lcom/android/server/am/m;

    invoke-virtual {p0, p1}, Lcom/android/server/am/m;->zta(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected b(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/hmo;->igw:Lcom/android/server/am/AppRecordManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getProcState(I)I

    move-result p0

    const/16 p1, 0x8

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected c(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/hmo;->igw:Lcom/android/server/am/AppRecordManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getProcState(I)I

    move-result p0

    const/16 p1, 0x14

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canActivityGo(Ljava/lang/String;ILandroid/content/Intent;Landroid/content/pm/ActivityInfo;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    iget-boolean v2, v0, Lcom/android/server/am/hmo;->zta:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_a

    iget-boolean v2, v0, Lcom/android/server/am/hmo;->dma:Z

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v11, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    new-instance v12, Lcom/android/server/am/StartAppRecorder$zta;

    invoke-direct {v12}, Lcom/android/server/am/StartAppRecorder$zta;-><init>()V

    move-object/from16 v13, p1

    iput-object v13, v12, Lcom/android/server/am/StartAppRecorder$zta;->rtg:Ljava/lang/String;

    iput-object v2, v12, Lcom/android/server/am/StartAppRecorder$zta;->ssp:Ljava/lang/String;

    iput-object v11, v12, Lcom/android/server/am/StartAppRecorder$zta;->cno:Ljava/lang/String;

    sget-object v4, Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;->zta:Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;

    iput-object v4, v12, Lcom/android/server/am/StartAppRecorder$zta;->sis:Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity: intent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; taskAffinity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v12, Lcom/android/server/am/StartAppRecorder$zta;->tsu:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v10, -0x1

    if-ne v14, v10, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not found uid for:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Lcom/android/server/am/StartAppRecorder$zta;->you:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/am/hmo;->ywr:Lcom/android/server/am/StartAppRecorder;

    invoke-virtual {v0, v12}, Lcom/android/server/am/StartAppRecorder;->you(Lcom/android/server/am/StartAppRecorder$zta;)V

    return v3

    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/server/am/hmo;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v1, Lcom/android/server/am/StartAppRecorder$CanStart;->you:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object v1, v12, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    const-string v1, "StartAppControl: callee is a system app"

    iput-object v1, v12, Lcom/android/server/am/StartAppRecorder$zta;->you:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/server/am/hmo;->oif:Lcom/android/server/am/StartAppSpecialUidsPolicy;

    invoke-virtual {v1, v14}, Lcom/android/server/am/StartAppSpecialUidsPolicy;->gwm(I)V

    iget-object v0, v0, Lcom/android/server/am/hmo;->ywr:Lcom/android/server/am/StartAppRecorder;

    invoke-virtual {v0, v12}, Lcom/android/server/am/StartAppRecorder;->you(Lcom/android/server/am/StartAppRecorder$zta;)V

    return v3

    :cond_2
    iget-object v4, v0, Lcom/android/server/am/hmo;->qbh:Lcom/android/server/am/StartAppConfigManager;

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v5, p1

    move-object v6, v2

    move-object v7, v11

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/StartAppConfigManager;->rtg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v10, :cond_3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, -0x2

    if-eq v5, v6, :cond_3

    invoke-direct {v0, v4, v14, v12}, Lcom/android/server/am/hmo;->cgv(Ljava/lang/Integer;ILcom/android/server/am/StartAppRecorder$zta;)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_3
    iget-object v4, v0, Lcom/android/server/am/hmo;->oif:Lcom/android/server/am/StartAppSpecialUidsPolicy;

    sget-object v9, Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;->zta:Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;

    move-object/from16 v5, p1

    move-object v6, v2

    move/from16 v7, p2

    move v8, v14

    move-object v10, v12

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/StartAppSpecialUidsPolicy;->cno(Ljava/lang/String;Ljava/lang/String;IILcom/android/server/am/StartAppSpecialUidsPolicy$StartType;Lcom/android/server/am/StartAppRecorder$zta;)V

    sget-object v4, Lcom/android/server/am/hmo$tsu;->zta:[I

    iget-object v5, v12, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v10, 0x0

    if-eq v4, v3, :cond_7

    const/4 v15, 0x2

    if-eq v4, v15, :cond_4

    iget-object v4, v0, Lcom/android/server/am/hmo;->bvj:Lcom/android/server/am/k;

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v5, p1

    move-object v6, v2

    move-object v7, v11

    move-object v9, v12

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/k;->rtg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/StartAppRecorder$zta;)V

    sget-object v2, Lcom/android/server/am/hmo$tsu;->zta:[I

    iget-object v4, v12, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v2, v2, v4

    if-eq v2, v3, :cond_6

    if-eq v2, v15, :cond_4

    invoke-virtual {v0, v14}, Lcom/android/server/am/hmo;->c(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {v0, v1, v14}, Lcom/android/server/am/hmo;->g(Landroid/content/pm/ActivityInfo;I)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/android/server/am/StartAppRecorder$CanStart;->sis:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object v1, v12, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    const-string v1, "Not Allowed Theme"

    iput-object v1, v12, Lcom/android/server/am/StartAppRecorder$zta;->you:Ljava/lang/String;

    :cond_4
    iget-object v0, v0, Lcom/android/server/am/hmo;->ywr:Lcom/android/server/am/StartAppRecorder;

    invoke-virtual {v0, v12}, Lcom/android/server/am/StartAppRecorder;->you(Lcom/android/server/am/StartAppRecorder$zta;)V

    return v10

    :cond_5
    sget-object v1, Lcom/android/server/am/StartAppRecorder$CanStart;->you:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object v1, v12, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    const-string v1, "StartAppControl: default pass"

    iput-object v1, v12, Lcom/android/server/am/StartAppRecorder$zta;->you:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/server/am/hmo;->ywr:Lcom/android/server/am/StartAppRecorder;

    invoke-virtual {v1, v12}, Lcom/android/server/am/StartAppRecorder;->you(Lcom/android/server/am/StartAppRecorder$zta;)V

    iget-object v0, v0, Lcom/android/server/am/hmo;->oif:Lcom/android/server/am/StartAppSpecialUidsPolicy;

    invoke-virtual {v0, v14}, Lcom/android/server/am/StartAppSpecialUidsPolicy;->gwm(I)V

    return v3

    :cond_6
    iget-object v1, v0, Lcom/android/server/am/hmo;->ywr:Lcom/android/server/am/StartAppRecorder;

    invoke-virtual {v1, v12}, Lcom/android/server/am/StartAppRecorder;->you(Lcom/android/server/am/StartAppRecorder$zta;)V

    iget-object v0, v0, Lcom/android/server/am/hmo;->oif:Lcom/android/server/am/StartAppSpecialUidsPolicy;

    invoke-virtual {v0, v14}, Lcom/android/server/am/StartAppSpecialUidsPolicy;->gwm(I)V

    return v3

    :cond_7
    iget-object v1, v0, Lcom/android/server/am/hmo;->oif:Lcom/android/server/am/StartAppSpecialUidsPolicy;

    invoke-virtual {v1, v14}, Lcom/android/server/am/StartAppSpecialUidsPolicy;->gwm(I)V

    iget-object v1, v12, Lcom/android/server/am/StartAppRecorder$zta;->you:Ljava/lang/String;

    const-string v2, "SpecialUidsPolicy: caller is a system app"

    if-eq v1, v2, :cond_8

    const-string v2, "SpecialUidsPolicy: callee has same uid as caller\'s"

    if-eq v1, v2, :cond_8

    move v10, v3

    :cond_8
    invoke-virtual {v0, v14}, Lcom/android/server/am/hmo;->c(I)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/android/server/am/hmo;->oxb:Ljava/util/Set;

    invoke-static {v14}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v10, v3

    :cond_9
    if-eqz v10, :cond_a

    iget-object v0, v0, Lcom/android/server/am/hmo;->ywr:Lcom/android/server/am/StartAppRecorder;

    invoke-virtual {v0, v12}, Lcom/android/server/am/StartAppRecorder;->you(Lcom/android/server/am/StartAppRecorder$zta;)V

    :cond_a
    :goto_0
    return v3
.end method

.method public canInstrumentationGo(Landroid/content/ComponentName;I)Z
    .locals 16

    move-object/from16 v0, p0

    move/from16 v4, p2

    iget-boolean v1, v0, Lcom/android/server/am/hmo;->zta:Z

    const/4 v8, 0x1

    if-eqz v1, :cond_d

    iget-boolean v1, v0, Lcom/android/server/am/hmo;->dma:Z

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, v0, Lcom/android/server/am/hmo;->igw:Lcom/android/server/am/AppRecordManagerService;

    invoke-virtual {v1, v4}, Lcom/android/server/am/AppRecordManagerService;->getPackageNameFromUid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    new-instance v7, Lcom/android/server/am/StartAppRecorder$zta;

    invoke-direct {v7}, Lcom/android/server/am/StartAppRecorder$zta;-><init>()V

    iput-object v2, v7, Lcom/android/server/am/StartAppRecorder$zta;->rtg:Ljava/lang/String;

    iput-object v15, v7, Lcom/android/server/am/StartAppRecorder$zta;->ssp:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Instrumentation: name="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; callerUid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/server/am/StartAppRecorder$zta;->tsu:Ljava/lang/String;

    invoke-virtual {v0, v15, v4}, Lcom/android/server/am/hmo;->veq(Ljava/lang/String;I)I

    move-result v6

    const/4 v5, -0x1

    if-ne v6, v5, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not found uid for:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/android/server/am/StartAppRecorder$zta;->you:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object v0, v0, Lcom/android/server/am/hmo;->ywr:Lcom/android/server/am/StartAppRecorder;

    invoke-virtual {v0, v7}, Lcom/android/server/am/StartAppRecorder;->you(Lcom/android/server/am/StartAppRecorder$zta;)V

    return v8

    :cond_2
    invoke-virtual {v0, v15}, Lcom/android/server/am/hmo;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/server/am/StartAppRecorder$CanStart;->you:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object v1, v7, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    const-string v1, "StartAppControl: callee is a system app"

    iput-object v1, v7, Lcom/android/server/am/StartAppRecorder$zta;->you:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/android/server/am/hmo;->c(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/server/am/hmo;->oxb:Ljava/util/Set;

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v9, v0, Lcom/android/server/am/hmo;->qbh:Lcom/android/server/am/StartAppConfigManager;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v10, v2

    move-object v11, v15

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/am/StartAppConfigManager;->rtg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, -0x2

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v5, :cond_4

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v10, :cond_4

    invoke-direct {v0, v9, v6, v7}, Lcom/android/server/am/hmo;->cgv(Ljava/lang/Integer;ILcom/android/server/am/StartAppRecorder$zta;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_4
    iget-object v1, v0, Lcom/android/server/am/hmo;->oif:Lcom/android/server/am/StartAppSpecialUidsPolicy;

    sget-object v11, Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;->tsu:Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;

    move-object v3, v15

    move/from16 v4, p2

    move v12, v5

    move v5, v6

    move v13, v6

    move-object v6, v11

    move-object v11, v7

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/StartAppSpecialUidsPolicy;->cno(Ljava/lang/String;Ljava/lang/String;IILcom/android/server/am/StartAppSpecialUidsPolicy$StartType;Lcom/android/server/am/StartAppRecorder$zta;)V

    sget-object v1, Lcom/android/server/am/hmo$tsu;->zta:[I

    iget-object v2, v11, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    if-eq v1, v8, :cond_a

    const/4 v3, 0x2

    if-eq v1, v3, :cond_7

    invoke-direct {v0, v15, v13, v11}, Lcom/android/server/am/hmo;->vdb(Ljava/lang/String;ILcom/android/server/am/StartAppRecorder$zta;)V

    sget-object v1, Lcom/android/server/am/hmo$tsu;->zta:[I

    iget-object v4, v11, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v1, v1, v4

    if-eq v1, v8, :cond_8

    if-eq v1, v3, :cond_7

    if-eqz v9, :cond_6

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v12, :cond_5

    sget-object v1, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->zta:Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;

    iget v1, v1, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->policy:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v13, v11}, Lcom/android/server/am/hmo;->cgv(Ljava/lang/Integer;ILcom/android/server/am/StartAppRecorder$zta;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_5
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v10, :cond_6

    sget-object v1, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->tsu:Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;

    iget v1, v1, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->policy:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v13, v11}, Lcom/android/server/am/hmo;->cgv(Ljava/lang/Integer;ILcom/android/server/am/StartAppRecorder$zta;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_6
    sget-object v1, Lcom/android/server/am/StartAppRecorder$CanStart;->sis:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object v1, v11, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    const-string v1, "StartAppControl: default block"

    iput-object v1, v11, Lcom/android/server/am/StartAppRecorder$zta;->you:Ljava/lang/String;

    :cond_7
    iget-object v0, v0, Lcom/android/server/am/hmo;->ywr:Lcom/android/server/am/StartAppRecorder;

    invoke-virtual {v0, v11}, Lcom/android/server/am/StartAppRecorder;->you(Lcom/android/server/am/StartAppRecorder$zta;)V

    return v2

    :cond_8
    iget-object v1, v0, Lcom/android/server/am/hmo;->ywr:Lcom/android/server/am/StartAppRecorder;

    invoke-virtual {v1, v11}, Lcom/android/server/am/StartAppRecorder;->you(Lcom/android/server/am/StartAppRecorder$zta;)V

    invoke-virtual {v0, v13}, Lcom/android/server/am/hmo;->c(I)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v0, v0, Lcom/android/server/am/hmo;->oxb:Ljava/util/Set;

    invoke-static {v13}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_9
    return v8

    :cond_a
    iget-object v1, v11, Lcom/android/server/am/StartAppRecorder$zta;->you:Ljava/lang/String;

    const-string v3, "SpecialUidsPolicy: caller is a system app"

    if-eq v1, v3, :cond_b

    const-string v3, "SpecialUidsPolicy: callee has same uid as caller\'s"

    if-eq v1, v3, :cond_b

    move v2, v8

    :cond_b
    invoke-virtual {v0, v13}, Lcom/android/server/am/hmo;->c(I)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/android/server/am/hmo;->oxb:Ljava/util/Set;

    invoke-static {v13}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v2, v8

    :cond_c
    if-eqz v2, :cond_d

    iget-object v0, v0, Lcom/android/server/am/hmo;->ywr:Lcom/android/server/am/StartAppRecorder;

    invoke-virtual {v0, v11}, Lcom/android/server/am/StartAppRecorder;->you(Lcom/android/server/am/StartAppRecorder$zta;)V

    :cond_d
    :goto_1
    return v8
.end method

.method public canJobSchedulerGo(Ljava/lang/Object;)Z
    .locals 17

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/am/hmo;->zta:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_d

    iget-boolean v1, v0, Lcom/android/server/am/hmo;->dma:Z

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v1, Lcom/android/server/am/ibl;

    move-object/from16 v3, p1

    invoke-direct {v1, v3}, Lcom/android/server/am/ibl;-><init>(Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/am/ibl;->sis()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/server/am/ibl;->you()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/server/am/ibl;->you()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Job: flags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/am/ibl;->zta()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/am/ibl;->tsu()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v11, Lcom/android/server/am/StartAppRecorder$zta;

    invoke-direct {v11}, Lcom/android/server/am/StartAppRecorder$zta;-><init>()V

    iput-object v9, v11, Lcom/android/server/am/StartAppRecorder$zta;->rtg:Ljava/lang/String;

    iput-object v10, v11, Lcom/android/server/am/StartAppRecorder$zta;->ssp:Ljava/lang/String;

    iput-object v3, v11, Lcom/android/server/am/StartAppRecorder$zta;->tsu:Ljava/lang/String;

    invoke-virtual {v0, v9}, Lcom/android/server/am/hmo;->a(Ljava/lang/String;)Z

    move-result v3

    const-string v12, "SpecialUidsPolicy: caller is a system app"

    if-eqz v3, :cond_1

    sget-object v1, Lcom/android/server/am/StartAppRecorder$CanStart;->you:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object v1, v11, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object v12, v11, Lcom/android/server/am/StartAppRecorder$zta;->you:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/am/hmo;->ywr:Lcom/android/server/am/StartAppRecorder;

    invoke-virtual {v0, v11}, Lcom/android/server/am/StartAppRecorder;->you(Lcom/android/server/am/StartAppRecorder$zta;)V

    return v2

    :cond_1
    invoke-virtual {v0, v10, v1}, Lcom/android/server/am/hmo;->veq(Ljava/lang/String;I)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not found uid for:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/android/server/am/StartAppRecorder$zta;->you:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/am/hmo;->ywr:Lcom/android/server/am/StartAppRecorder;

    invoke-virtual {v0, v11}, Lcom/android/server/am/StartAppRecorder;->you(Lcom/android/server/am/StartAppRecorder$zta;)V

    return v2

    :cond_2
    iget-object v3, v0, Lcom/android/server/am/hmo;->qbh:Lcom/android/server/am/StartAppConfigManager;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/StartAppConfigManager;->rtg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    const/4 v8, -0x2

    if-eqz v15, :cond_3

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v14, :cond_3

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v8, :cond_3

    invoke-direct {v0, v15, v13, v11}, Lcom/android/server/am/hmo;->cgv(Ljava/lang/Integer;ILcom/android/server/am/StartAppRecorder$zta;)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_3
    iget-object v3, v0, Lcom/android/server/am/hmo;->oif:Lcom/android/server/am/StartAppSpecialUidsPolicy;

    sget-object v16, Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;->rtg:Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;

    move-object v4, v9

    move-object v5, v10

    move v6, v1

    move v7, v13

    move v9, v8

    move-object/from16 v8, v16

    move-object v9, v11

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/StartAppSpecialUidsPolicy;->cno(Ljava/lang/String;Ljava/lang/String;IILcom/android/server/am/StartAppSpecialUidsPolicy$StartType;Lcom/android/server/am/StartAppRecorder$zta;)V

    sget-object v3, Lcom/android/server/am/hmo$tsu;->zta:[I

    iget-object v4, v11, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x0

    if-eq v3, v2, :cond_9

    const/4 v5, 0x2

    if-eq v3, v5, :cond_6

    invoke-direct {v0, v10, v13, v11}, Lcom/android/server/am/hmo;->vdb(Ljava/lang/String;ILcom/android/server/am/StartAppRecorder$zta;)V

    sget-object v3, Lcom/android/server/am/hmo$tsu;->zta:[I

    iget-object v6, v11, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v3, v3, v6

    if-eq v3, v2, :cond_8

    if-eq v3, v5, :cond_6

    if-eqz v15, :cond_5

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v14, :cond_4

    sget-object v3, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->zta:Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;

    iget v3, v3, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->policy:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v3, v13, v11}, Lcom/android/server/am/hmo;->cgv(Ljava/lang/Integer;ILcom/android/server/am/StartAppRecorder$zta;)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_4
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, -0x2

    if-ne v3, v5, :cond_5

    sget-object v3, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->tsu:Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;

    iget v3, v3, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->policy:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v3, v13, v11}, Lcom/android/server/am/hmo;->cgv(Ljava/lang/Integer;ILcom/android/server/am/StartAppRecorder$zta;)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_5
    invoke-virtual {v0, v1}, Lcom/android/server/am/hmo;->c(I)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/android/server/am/StartAppRecorder$CanStart;->sis:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object v1, v11, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    const-string v1, "StartAppControl: default block"

    iput-object v1, v11, Lcom/android/server/am/StartAppRecorder$zta;->you:Ljava/lang/String;

    :cond_6
    iget-object v0, v0, Lcom/android/server/am/hmo;->ywr:Lcom/android/server/am/StartAppRecorder;

    invoke-virtual {v0, v11}, Lcom/android/server/am/StartAppRecorder;->you(Lcom/android/server/am/StartAppRecorder$zta;)V

    return v4

    :cond_7
    sget-object v1, Lcom/android/server/am/StartAppRecorder$CanStart;->you:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object v1, v11, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    const-string v1, "StartAppControl: default pass"

    iput-object v1, v11, Lcom/android/server/am/StartAppRecorder$zta;->you:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/am/hmo;->ywr:Lcom/android/server/am/StartAppRecorder;

    invoke-virtual {v0, v11}, Lcom/android/server/am/StartAppRecorder;->you(Lcom/android/server/am/StartAppRecorder$zta;)V

    return v2

    :cond_8
    iget-object v0, v0, Lcom/android/server/am/hmo;->ywr:Lcom/android/server/am/StartAppRecorder;

    invoke-virtual {v0, v11}, Lcom/android/server/am/StartAppRecorder;->you(Lcom/android/server/am/StartAppRecorder$zta;)V

    return v2

    :cond_9
    iget-object v1, v11, Lcom/android/server/am/StartAppRecorder$zta;->you:Ljava/lang/String;

    if-eq v1, v12, :cond_a

    const-string v3, "SpecialUidsPolicy: callee has same uid as caller\'s"

    if-eq v1, v3, :cond_a

    move v4, v2

    :cond_a
    invoke-virtual {v0, v13}, Lcom/android/server/am/hmo;->c(I)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/android/server/am/hmo;->oxb:Ljava/util/Set;

    invoke-static {v13}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v4, v2

    :cond_b
    if-eqz v4, :cond_c

    iget-object v0, v0, Lcom/android/server/am/hmo;->ywr:Lcom/android/server/am/StartAppRecorder;

    invoke-virtual {v0, v11}, Lcom/android/server/am/StartAppRecorder;->you(Lcom/android/server/am/StartAppRecorder$zta;)V

    :cond_c
    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    :cond_d
    :goto_0
    return v2
.end method

.method public canNotificationListenerServiceGo(Landroid/content/ComponentName;)Z
    .locals 10

    iget-boolean v0, p0, Lcom/android/server/am/hmo;->zta:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/am/hmo;->dma:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Lcom/android/server/am/StartAppRecorder$zta;

    invoke-direct {v8}, Lcom/android/server/am/StartAppRecorder$zta;-><init>()V

    iput-object v0, v8, Lcom/android/server/am/StartAppRecorder$zta;->ssp:Ljava/lang/String;

    iput-object v5, v8, Lcom/android/server/am/StartAppRecorder$zta;->cno:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notification: compName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v8, Lcom/android/server/am/StartAppRecorder$zta;->tsu:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/hmo;->lqr(Ljava/lang/String;)I

    move-result p1

    const/4 v9, -0x1

    if-ne p1, v9, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not found uid for:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, v8, Lcom/android/server/am/StartAppRecorder$zta;->you:Ljava/lang/String;

    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/android/server/am/hmo;->ywr:Lcom/android/server/am/StartAppRecorder;

    invoke-virtual {p0, v8}, Lcom/android/server/am/StartAppRecorder;->you(Lcom/android/server/am/StartAppRecorder$zta;)V

    return v1

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/server/am/hmo;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v0, Lcom/android/server/am/StartAppRecorder$CanStart;->you:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object v0, v8, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    const-string v0, "StartAppControl: callee is a system app"

    iput-object v0, v8, Lcom/android/server/am/StartAppRecorder$zta;->you:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/am/hmo;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/hmo;->oxb:Ljava/util/Set;

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/server/am/hmo;->qbh:Lcom/android/server/am/StartAppConfigManager;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, v0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/StartAppConfigManager;->rtg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, -0x2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v9, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v3, :cond_4

    invoke-direct {p0, v2, p1, v8}, Lcom/android/server/am/hmo;->cgv(Ljava/lang/Integer;ILcom/android/server/am/StartAppRecorder$zta;)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_4
    invoke-direct {p0, v0, p1, v8}, Lcom/android/server/am/hmo;->vdb(Ljava/lang/String;ILcom/android/server/am/StartAppRecorder$zta;)V

    sget-object v0, Lcom/android/server/am/hmo$tsu;->zta:[I

    iget-object v4, v8, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v0, v0, v4

    if-eq v0, v1, :cond_9

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v0, v4, :cond_8

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v9, :cond_5

    sget-object v0, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->zta:Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;

    iget v0, v0, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->policy:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, p1, v8}, Lcom/android/server/am/hmo;->cgv(Ljava/lang/Integer;ILcom/android/server/am/StartAppRecorder$zta;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_6

    sget-object v0, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->tsu:Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;

    iget v0, v0, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->policy:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, p1, v8}, Lcom/android/server/am/hmo;->cgv(Ljava/lang/Integer;ILcom/android/server/am/StartAppRecorder$zta;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/am/hmo;->c(I)Z

    move-result p1

    if-nez p1, :cond_7

    sget-object p1, Lcom/android/server/am/StartAppRecorder$CanStart;->you:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object p1, v8, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    const-string p1, "application already running"

    goto/16 :goto_0

    :cond_7
    sget-object p1, Lcom/android/server/am/StartAppRecorder$CanStart;->sis:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object p1, v8, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    const-string p1, "StartAppControl: default block"

    iput-object p1, v8, Lcom/android/server/am/StartAppRecorder$zta;->you:Ljava/lang/String;

    :cond_8
    iget-object p0, p0, Lcom/android/server/am/hmo;->ywr:Lcom/android/server/am/StartAppRecorder;

    invoke-virtual {p0, v8}, Lcom/android/server/am/StartAppRecorder;->you(Lcom/android/server/am/StartAppRecorder$zta;)V

    return v5

    :cond_9
    iget-object v0, p0, Lcom/android/server/am/hmo;->ywr:Lcom/android/server/am/StartAppRecorder;

    invoke-virtual {v0, v8}, Lcom/android/server/am/StartAppRecorder;->you(Lcom/android/server/am/StartAppRecorder$zta;)V

    invoke-virtual {p0, p1}, Lcom/android/server/am/hmo;->c(I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/android/server/am/hmo;->oxb:Ljava/util/Set;

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_2
    return v1
.end method

.method public canProcGo(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/am/hmo;->zta:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/am/hmo;->dma:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/hmo;->you:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    const-string v0, "provider"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v2, Lcom/android/server/am/StartAppRecorder$zta;

    invoke-direct {v2}, Lcom/android/server/am/StartAppRecorder$zta;-><init>()V

    sget-object v3, Lcom/android/server/am/StartAppRecorder$CanStart;->you:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object v3, v2, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object v0, v2, Lcom/android/server/am/StartAppRecorder$zta;->ssp:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canProcessGo: package name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; hostingType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/am/StartAppRecorder$zta;->tsu:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v3, :cond_9

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v3}, Lcom/android/server/am/hmo;->c(I)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    const-string v3, "activity"

    if-eqz p2, :cond_8

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/android/server/am/hmo;->bio:Lcom/android/server/ire;

    invoke-virtual {p2, v0}, Lcom/android/server/ire;->cjf(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p1, "not optimized app"

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/am/hmo;->qeg(Lcom/android/server/am/ProcessRecord;)Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p1, "important app"

    goto :goto_0

    :cond_5
    iget-object p2, p0, Lcom/android/server/am/hmo;->ire:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/android/server/am/hmo;->ire:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string p1, "widget app"

    goto :goto_0

    :cond_6
    iget-object p2, p0, Lcom/android/server/am/hmo;->oxb:Ljava/util/Set;

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/android/server/am/hmo;->oxb:Ljava/util/Set;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-string p1, "already checked"

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    sget-object p1, Lcom/android/server/am/StartAppRecorder$CanStart;->sis:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object p1, v2, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    const-string p1, "default block"

    :goto_0
    iput-object p1, v2, Lcom/android/server/am/StartAppRecorder$zta;->you:Ljava/lang/String;

    goto :goto_3

    :cond_8
    :goto_1
    iput-object v3, v2, Lcom/android/server/am/StartAppRecorder$zta;->you:Ljava/lang/String;

    goto :goto_3

    :cond_9
    :goto_2
    const-string p1, "application already running"

    goto :goto_0

    :goto_3
    iget-object p0, p0, Lcom/android/server/am/hmo;->ywr:Lcom/android/server/am/StartAppRecorder;

    invoke-virtual {p0, v2}, Lcom/android/server/am/StartAppRecorder;->you(Lcom/android/server/am/StartAppRecorder$zta;)V

    :cond_a
    :goto_4
    return v1
.end method

.method public canProviderGo(Ljava/lang/String;ILjava/lang/String;Lcom/android/server/am/ContentProviderRecord;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    iget-boolean v2, v0, Lcom/android/server/am/hmo;->zta:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_10

    iget-boolean v2, v0, Lcom/android/server/am/hmo;->dma:Z

    if-eqz v2, :cond_10

    iget-boolean v2, v0, Lcom/android/server/am/hmo;->you:Z

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    if-nez p1, :cond_1

    iget-object v2, v0, Lcom/android/server/am/hmo;->igw:Lcom/android/server/am/AppRecordManagerService;

    move/from16 v7, p2

    invoke-virtual {v2, v7}, Lcom/android/server/am/AppRecordManagerService;->getPackageNameFromUid(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move/from16 v7, p2

    move-object/from16 v2, p1

    :goto_0
    iget-object v4, v1, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v15

    new-instance v6, Lcom/android/server/am/StartAppRecorder$zta;

    invoke-direct {v6}, Lcom/android/server/am/StartAppRecorder$zta;-><init>()V

    iput-object v2, v6, Lcom/android/server/am/StartAppRecorder$zta;->rtg:Ljava/lang/String;

    iput-object v14, v6, Lcom/android/server/am/StartAppRecorder$zta;->ssp:Ljava/lang/String;

    sget-object v4, Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;->tsu:Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;

    iput-object v4, v6, Lcom/android/server/am/StartAppRecorder$zta;->sis:Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;

    iput-object v15, v6, Lcom/android/server/am/StartAppRecorder$zta;->cno:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Provider: auth="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "; "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/android/server/am/StartAppRecorder$zta;->tsu:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not found uid for:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/android/server/am/StartAppRecorder$zta;->you:Ljava/lang/String;

    :cond_2
    :goto_1
    iget-object v0, v0, Lcom/android/server/am/hmo;->ywr:Lcom/android/server/am/StartAppRecorder;

    invoke-virtual {v0, v6}, Lcom/android/server/am/StartAppRecorder;->you(Lcom/android/server/am/StartAppRecorder$zta;)V

    return v3

    :cond_3
    invoke-virtual {v0, v14}, Lcom/android/server/am/hmo;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    sget-object v2, Lcom/android/server/am/StartAppRecorder$CanStart;->you:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object v2, v6, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    const-string v2, "StartAppControl: callee is a system app"

    iput-object v2, v6, Lcom/android/server/am/StartAppRecorder$zta;->you:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/am/hmo;->c(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/server/am/hmo;->oxb:Ljava/util/Set;

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v8, v0, Lcom/android/server/am/hmo;->qbh:Lcom/android/server/am/StartAppConfigManager;

    const/4 v12, 0x0

    move-object v9, v2

    move-object v10, v14

    move-object v11, v15

    move-object/from16 v13, p3

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/am/StartAppConfigManager;->rtg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, -0x2

    if-eqz v11, :cond_5

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v4, :cond_5

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v12, :cond_5

    invoke-direct {v0, v11, v1, v6}, Lcom/android/server/am/hmo;->cgv(Ljava/lang/Integer;ILcom/android/server/am/StartAppRecorder$zta;)Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_5
    iget-object v5, v0, Lcom/android/server/am/hmo;->oif:Lcom/android/server/am/StartAppSpecialUidsPolicy;

    sget-object v9, Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;->tsu:Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;

    move v13, v4

    move-object v4, v5

    move-object v5, v2

    move-object v10, v6

    move-object v6, v14

    move/from16 v7, p2

    move v8, v1

    move-object/from16 p1, v10

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/StartAppSpecialUidsPolicy;->cno(Ljava/lang/String;Ljava/lang/String;IILcom/android/server/am/StartAppSpecialUidsPolicy$StartType;Lcom/android/server/am/StartAppRecorder$zta;)V

    sget-object v4, Lcom/android/server/am/hmo$tsu;->zta:[I

    iget-object v5, v10, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/16 v16, 0x0

    if-eq v4, v3, :cond_d

    const/4 v9, 0x2

    if-eq v4, v9, :cond_8

    invoke-direct {v0, v14, v1, v10}, Lcom/android/server/am/hmo;->vdb(Ljava/lang/String;ILcom/android/server/am/StartAppRecorder$zta;)V

    sget-object v4, Lcom/android/server/am/hmo$tsu;->zta:[I

    iget-object v5, v10, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v3, :cond_b

    if-eq v4, v9, :cond_8

    if-eqz v11, :cond_7

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v13, :cond_6

    sget-object v4, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->zta:Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;

    iget v4, v4, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->policy:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v4, v1, v10}, Lcom/android/server/am/hmo;->cgv(Ljava/lang/Integer;ILcom/android/server/am/StartAppRecorder$zta;)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_6
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v12, :cond_7

    sget-object v4, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->tsu:Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;

    iget v4, v4, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->policy:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v4, v1, v10}, Lcom/android/server/am/hmo;->cgv(Ljava/lang/Integer;ILcom/android/server/am/StartAppRecorder$zta;)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_7
    iget-object v4, v0, Lcom/android/server/am/hmo;->bvj:Lcom/android/server/am/k;

    move-object v5, v2

    move-object v6, v14

    move-object v7, v15

    move v8, v1

    move v2, v9

    move-object v9, v10

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/k;->ssp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/server/am/StartAppRecorder$zta;)V

    sget-object v4, Lcom/android/server/am/hmo$tsu;->zta:[I

    iget-object v5, v10, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v3, :cond_9

    if-eq v4, v2, :cond_8

    sget-object v1, Lcom/android/server/am/StartAppRecorder$CanStart;->sis:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object v1, v10, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    const-string v1, "StartAppControl: default block"

    iput-object v1, v10, Lcom/android/server/am/StartAppRecorder$zta;->you:Ljava/lang/String;

    :cond_8
    iget-object v0, v0, Lcom/android/server/am/hmo;->ywr:Lcom/android/server/am/StartAppRecorder;

    invoke-virtual {v0, v10}, Lcom/android/server/am/StartAppRecorder;->you(Lcom/android/server/am/StartAppRecorder$zta;)V

    return v16

    :cond_9
    iget-object v2, v0, Lcom/android/server/am/hmo;->ywr:Lcom/android/server/am/StartAppRecorder;

    invoke-virtual {v2, v10}, Lcom/android/server/am/StartAppRecorder;->you(Lcom/android/server/am/StartAppRecorder$zta;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/hmo;->c(I)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v0, v0, Lcom/android/server/am/hmo;->oxb:Ljava/util/Set;

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_a
    return v3

    :cond_b
    iget-object v2, v0, Lcom/android/server/am/hmo;->ywr:Lcom/android/server/am/StartAppRecorder;

    invoke-virtual {v2, v10}, Lcom/android/server/am/StartAppRecorder;->you(Lcom/android/server/am/StartAppRecorder$zta;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/hmo;->c(I)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v0, v0, Lcom/android/server/am/hmo;->oxb:Ljava/util/Set;

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_c
    return v3

    :cond_d
    iget-object v2, v10, Lcom/android/server/am/StartAppRecorder$zta;->you:Ljava/lang/String;

    const-string v4, "SpecialUidsPolicy: caller is a system app"

    if-eq v2, v4, :cond_e

    const-string v4, "SpecialUidsPolicy: callee has same uid as caller\'s"

    if-eq v2, v4, :cond_e

    move/from16 v16, v3

    :cond_e
    invoke-virtual {v0, v1}, Lcom/android/server/am/hmo;->c(I)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, v0, Lcom/android/server/am/hmo;->oxb:Ljava/util/Set;

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move/from16 v16, v3

    :cond_f
    if-eqz v16, :cond_10

    iget-object v0, v0, Lcom/android/server/am/hmo;->ywr:Lcom/android/server/am/StartAppRecorder;

    invoke-virtual {v0, v10}, Lcom/android/server/am/StartAppRecorder;->you(Lcom/android/server/am/StartAppRecorder$zta;)V

    :cond_10
    :goto_2
    return v3
.end method

.method public canReceiverGo(Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/ProcessRecord;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p2

    iget-boolean v2, v0, Lcom/android/server/am/hmo;->zta:Z

    const/4 v9, 0x1

    if-eqz v2, :cond_13

    iget-boolean v2, v0, Lcom/android/server/am/hmo;->dma:Z

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    goto :goto_0

    :cond_1
    move-object v4, v3

    :goto_0
    if-eqz v5, :cond_2

    iget-object v2, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_2

    iget-object v2, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object v3, v2

    :cond_2
    new-instance v8, Lcom/android/server/am/StartAppRecorder$zta;

    invoke-direct {v8}, Lcom/android/server/am/StartAppRecorder$zta;-><init>()V

    iget-object v2, v1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iput-object v2, v8, Lcom/android/server/am/StartAppRecorder$zta;->rtg:Ljava/lang/String;

    iput-object v3, v8, Lcom/android/server/am/StartAppRecorder$zta;->ssp:Ljava/lang/String;

    iput-object v4, v8, Lcom/android/server/am/StartAppRecorder$zta;->cno:Ljava/lang/String;

    sget-object v2, Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;->sis:Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;

    iput-object v2, v8, Lcom/android/server/am/StartAppRecorder$zta;->sis:Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Receiver: intent="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "; "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/android/server/am/StartAppRecorder$zta;->tsu:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v2, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v3}, Lcom/android/server/am/hmo;->lqr(Ljava/lang/String;)I

    move-result v2

    :goto_1
    move v7, v2

    const/4 v2, -0x1

    if-ne v7, v2, :cond_5

    sget-object v1, Lcom/android/server/am/StartAppRecorder$CanStart;->you:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object v1, v8, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not found uid for:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/android/server/am/StartAppRecorder$zta;->you:Ljava/lang/String;

    :cond_4
    :goto_2
    iget-object v0, v0, Lcom/android/server/am/hmo;->ywr:Lcom/android/server/am/StartAppRecorder;

    invoke-virtual {v0, v8}, Lcom/android/server/am/StartAppRecorder;->you(Lcom/android/server/am/StartAppRecorder$zta;)V

    return v9

    :cond_5
    invoke-virtual {v0, v3}, Lcom/android/server/am/hmo;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    sget-object v1, Lcom/android/server/am/StartAppRecorder$CanStart;->you:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object v1, v8, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    const-string v1, "StartAppControl: callee is a system app"

    iput-object v1, v8, Lcom/android/server/am/StartAppRecorder$zta;->you:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/android/server/am/hmo;->c(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/android/server/am/hmo;->oxb:Ljava/util/Set;

    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    iget-object v10, v0, Lcom/android/server/am/hmo;->qbh:Lcom/android/server/am/StartAppConfigManager;

    iget-object v11, v1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    move-object v12, v3

    move-object v13, v4

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/am/StartAppConfigManager;->rtg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    const/4 v15, -0x2

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eq v10, v2, :cond_7

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eq v10, v15, :cond_7

    invoke-direct {v0, v6, v7, v8}, Lcom/android/server/am/hmo;->cgv(Ljava/lang/Integer;ILcom/android/server/am/StartAppRecorder$zta;)Ljava/lang/Boolean;

    move-result-object v10

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_7
    iget-object v10, v0, Lcom/android/server/am/hmo;->oif:Lcom/android/server/am/StartAppSpecialUidsPolicy;

    iget-object v11, v1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iget v13, v1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    sget-object v16, Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;->sis:Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;

    move-object v12, v3

    move v14, v7

    move-object/from16 v15, v16

    move-object/from16 v16, v8

    invoke-virtual/range {v10 .. v16}, Lcom/android/server/am/StartAppSpecialUidsPolicy;->cno(Ljava/lang/String;Ljava/lang/String;IILcom/android/server/am/StartAppSpecialUidsPolicy$StartType;Lcom/android/server/am/StartAppRecorder$zta;)V

    sget-object v10, Lcom/android/server/am/hmo$tsu;->zta:[I

    iget-object v11, v8, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v10, v10, v11

    const/4 v11, 0x0

    if-eq v10, v9, :cond_10

    const/4 v12, 0x2

    if-eq v10, v12, :cond_d

    invoke-direct {v0, v3, v7, v8}, Lcom/android/server/am/hmo;->vdb(Ljava/lang/String;ILcom/android/server/am/StartAppRecorder$zta;)V

    sget-object v10, Lcom/android/server/am/hmo$tsu;->zta:[I

    iget-object v13, v8, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aget v10, v10, v13

    if-eq v10, v9, :cond_e

    if-eq v10, v12, :cond_d

    if-eqz v6, :cond_9

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v2, :cond_8

    sget-object v2, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->zta:Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;

    iget v2, v2, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->policy:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v2, v7, v8}, Lcom/android/server/am/hmo;->cgv(Ljava/lang/Integer;ILcom/android/server/am/StartAppRecorder$zta;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_8
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v6, -0x2

    if-ne v2, v6, :cond_9

    sget-object v2, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->tsu:Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;

    iget v2, v2, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->policy:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v2, v7, v8}, Lcom/android/server/am/hmo;->cgv(Ljava/lang/Integer;ILcom/android/server/am/StartAppRecorder$zta;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_9
    iget-object v2, v0, Lcom/android/server/am/hmo;->bvj:Lcom/android/server/am/k;

    iget-object v6, v1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    move-object v1, v2

    move-object v2, v6

    move-object/from16 v5, p2

    move v6, v7

    move v13, v7

    move-object v7, v10

    move-object v10, v8

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/k;->cno(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Lcom/android/server/am/StartAppRecorder$zta;)V

    sget-object v1, Lcom/android/server/am/hmo$tsu;->zta:[I

    iget-object v2, v10, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v9, :cond_b

    if-eq v1, v12, :cond_a

    sget-object v1, Lcom/android/server/am/StartAppRecorder$CanStart;->sis:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object v1, v10, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    const-string v1, "StartAppControl: default block"

    iput-object v1, v10, Lcom/android/server/am/StartAppRecorder$zta;->you:Ljava/lang/String;

    :cond_a
    :goto_3
    iget-object v0, v0, Lcom/android/server/am/hmo;->ywr:Lcom/android/server/am/StartAppRecorder;

    invoke-virtual {v0, v10}, Lcom/android/server/am/StartAppRecorder;->you(Lcom/android/server/am/StartAppRecorder$zta;)V

    return v11

    :cond_b
    iget-object v1, v0, Lcom/android/server/am/hmo;->ywr:Lcom/android/server/am/StartAppRecorder;

    invoke-virtual {v1, v10}, Lcom/android/server/am/StartAppRecorder;->you(Lcom/android/server/am/StartAppRecorder$zta;)V

    invoke-virtual {v0, v13}, Lcom/android/server/am/hmo;->c(I)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v0, v0, Lcom/android/server/am/hmo;->oxb:Ljava/util/Set;

    invoke-static {v13}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_c
    return v9

    :cond_d
    move-object v10, v8

    goto :goto_3

    :cond_e
    move v13, v7

    move-object v10, v8

    iget-object v1, v0, Lcom/android/server/am/hmo;->ywr:Lcom/android/server/am/StartAppRecorder;

    invoke-virtual {v1, v10}, Lcom/android/server/am/StartAppRecorder;->you(Lcom/android/server/am/StartAppRecorder$zta;)V

    invoke-virtual {v0, v13}, Lcom/android/server/am/hmo;->c(I)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v0, v0, Lcom/android/server/am/hmo;->oxb:Ljava/util/Set;

    invoke-static {v13}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_f
    return v9

    :cond_10
    move v13, v7

    move-object v10, v8

    iget-object v1, v10, Lcom/android/server/am/StartAppRecorder$zta;->you:Ljava/lang/String;

    const-string v2, "SpecialUidsPolicy: caller is a system app"

    if-eq v1, v2, :cond_11

    const-string v2, "SpecialUidsPolicy: callee has same uid as caller\'s"

    if-eq v1, v2, :cond_11

    move v11, v9

    :cond_11
    invoke-virtual {v0, v13}, Lcom/android/server/am/hmo;->c(I)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, v0, Lcom/android/server/am/hmo;->oxb:Ljava/util/Set;

    invoke-static {v13}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v11, v9

    :cond_12
    if-eqz v11, :cond_13

    iget-object v0, v0, Lcom/android/server/am/hmo;->ywr:Lcom/android/server/am/StartAppRecorder;

    invoke-virtual {v0, v10}, Lcom/android/server/am/StartAppRecorder;->you(Lcom/android/server/am/StartAppRecorder$zta;)V

    :cond_13
    :goto_4
    return v9
.end method

.method public canScheduleServiceRestart(Lcom/android/server/am/ProcessRecord;)Z
    .locals 10

    iget-boolean v0, p0, Lcom/android/server/am/hmo;->zta:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/am/hmo;->dma:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/am/hmo;->sis:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v3, Lcom/android/server/am/StartAppRecorder$zta;

    invoke-direct {v3}, Lcom/android/server/am/StartAppRecorder$zta;-><init>()V

    iput-object v6, v3, Lcom/android/server/am/StartAppRecorder$zta;->ssp:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scheduleServiceRestart: processName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; curProcState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/android/server/am/StartAppRecorder$zta;->tsu:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/server/am/hmo;->qeg(Lcom/android/server/am/ProcessRecord;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "process state is important"

    :goto_0
    iput-object p1, v3, Lcom/android/server/am/StartAppRecorder$zta;->you:Ljava/lang/String;

    sget-object p1, Lcom/android/server/am/StartAppRecorder$CanStart;->you:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object p1, v3, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    iget-object p0, p0, Lcom/android/server/am/hmo;->ywr:Lcom/android/server/am/StartAppRecorder;

    invoke-virtual {p0, v3}, Lcom/android/server/am/StartAppRecorder;->you(Lcom/android/server/am/StartAppRecorder$zta;)V

    return v1

    :cond_1
    iget-object p1, p0, Lcom/android/server/am/hmo;->cjf:Ljava/util/List;

    invoke-interface {p1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "white list"

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/server/am/hmo;->bio:Lcom/android/server/ire;

    invoke-virtual {p1, v6}, Lcom/android/server/ire;->cjf(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "SmartPowerControl: whitelist app"

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/server/am/hmo;->qbh:Lcom/android/server/am/StartAppConfigManager;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/StartAppConfigManager;->rtg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/am/hmo;->cgv(Ljava/lang/Integer;ILcom/android/server/am/StartAppRecorder$zta;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_4
    const-string p1, "default block"

    iput-object p1, v3, Lcom/android/server/am/StartAppRecorder$zta;->you:Ljava/lang/String;

    sget-object p1, Lcom/android/server/am/StartAppRecorder$CanStart;->sis:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object p1, v3, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    iget-object p0, p0, Lcom/android/server/am/hmo;->ywr:Lcom/android/server/am/StartAppRecorder;

    invoke-virtual {p0, v3}, Lcom/android/server/am/StartAppRecorder;->you(Lcom/android/server/am/StartAppRecorder$zta;)V

    const/4 p0, 0x0

    return p0

    :cond_5
    :goto_1
    return v1
.end method

.method public canServiceGo(Ljava/lang/String;ILandroid/content/Intent;Lcom/android/server/am/ServiceRecord;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v9, p4

    iget-boolean v1, v0, Lcom/android/server/am/hmo;->zta:Z

    const/4 v10, 0x1

    if-eqz v1, :cond_f

    iget-boolean v1, v0, Lcom/android/server/am/hmo;->dma:Z

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, v9, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, v9, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/android/server/am/StartAppRecorder$zta;

    invoke-direct {v13}, Lcom/android/server/am/StartAppRecorder$zta;-><init>()V

    move-object/from16 v14, p1

    iput-object v14, v13, Lcom/android/server/am/StartAppRecorder$zta;->rtg:Ljava/lang/String;

    iput-object v11, v13, Lcom/android/server/am/StartAppRecorder$zta;->ssp:Ljava/lang/String;

    sget-object v1, Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;->you:Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;

    iput-object v1, v13, Lcom/android/server/am/StartAppRecorder$zta;->sis:Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;

    iput-object v12, v13, Lcom/android/server/am/StartAppRecorder$zta;->cno:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service: intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/android/server/am/StartAppRecorder$zta;->tsu:Ljava/lang/String;

    iget-object v1, v9, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v8, -0x1

    if-ne v15, v8, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not found uid for:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/android/server/am/StartAppRecorder$zta;->you:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object v0, v0, Lcom/android/server/am/hmo;->ywr:Lcom/android/server/am/StartAppRecorder;

    invoke-virtual {v0, v13}, Lcom/android/server/am/StartAppRecorder;->you(Lcom/android/server/am/StartAppRecorder$zta;)V

    return v10

    :cond_2
    invoke-virtual {v0, v11}, Lcom/android/server/am/hmo;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/server/am/StartAppRecorder$CanStart;->you:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object v1, v13, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    const-string v1, "StartAppControl: callee is a system app"

    iput-object v1, v13, Lcom/android/server/am/StartAppRecorder$zta;->you:Ljava/lang/String;

    invoke-virtual {v0, v15}, Lcom/android/server/am/hmo;->c(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/server/am/hmo;->oxb:Ljava/util/Set;

    invoke-static {v15}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v2, v0, Lcom/android/server/am/hmo;->qbh:Lcom/android/server/am/StartAppConfigManager;

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v3, p1

    move-object v4, v11

    move-object v5, v12

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/StartAppConfigManager;->rtg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    const/4 v6, -0x2

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v8, :cond_4

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v6, :cond_4

    invoke-direct {v0, v7, v15, v13}, Lcom/android/server/am/hmo;->cgv(Ljava/lang/Integer;ILcom/android/server/am/StartAppRecorder$zta;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_4
    iget-object v1, v0, Lcom/android/server/am/hmo;->oif:Lcom/android/server/am/StartAppSpecialUidsPolicy;

    sget-object v16, Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;->you:Lcom/android/server/am/StartAppSpecialUidsPolicy$StartType;

    move-object/from16 v2, p1

    move-object v3, v11

    move/from16 v4, p2

    move v5, v15

    move-object/from16 v6, v16

    move-object/from16 v16, v7

    move-object v7, v13

    move-object/from16 v8, p4

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/StartAppSpecialUidsPolicy;->kth(Ljava/lang/String;Ljava/lang/String;IILcom/android/server/am/StartAppSpecialUidsPolicy$StartType;Lcom/android/server/am/StartAppRecorder$zta;Lcom/android/server/am/ServiceRecord;)V

    sget-object v1, Lcom/android/server/am/hmo$tsu;->zta:[I

    iget-object v2, v13, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v17, 0x0

    if-eq v1, v10, :cond_c

    const/4 v8, 0x2

    if-eq v1, v8, :cond_7

    invoke-direct {v0, v11, v15, v13}, Lcom/android/server/am/hmo;->vdb(Ljava/lang/String;ILcom/android/server/am/StartAppRecorder$zta;)V

    sget-object v1, Lcom/android/server/am/hmo$tsu;->zta:[I

    iget-object v2, v13, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v10, :cond_a

    if-eq v1, v8, :cond_7

    if-eqz v16, :cond_6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    sget-object v1, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->zta:Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;

    iget v1, v1, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->policy:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v15, v13}, Lcom/android/server/am/hmo;->cgv(Ljava/lang/Integer;ILcom/android/server/am/StartAppRecorder$zta;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_5
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_6

    sget-object v1, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->tsu:Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;

    iget v1, v1, Lcom/android/server/am/StartAppConfigManager$ConfigPolicy;->policy:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v15, v13}, Lcom/android/server/am/hmo;->cgv(Ljava/lang/Integer;ILcom/android/server/am/StartAppRecorder$zta;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_6
    iget-object v1, v0, Lcom/android/server/am/hmo;->bvj:Lcom/android/server/am/k;

    move-object/from16 v2, p1

    move-object v3, v11

    move-object v4, v12

    move-object/from16 v5, p4

    move v6, v15

    move-object/from16 v7, p3

    move v9, v8

    move-object v8, v13

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/k;->bio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/ServiceRecord;ILandroid/content/Intent;Lcom/android/server/am/StartAppRecorder$zta;)V

    sget-object v1, Lcom/android/server/am/hmo$tsu;->zta:[I

    iget-object v2, v13, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v10, :cond_8

    if-eq v1, v9, :cond_7

    sget-object v1, Lcom/android/server/am/StartAppRecorder$CanStart;->sis:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object v1, v13, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    const-string v1, "StartAppControl: default block"

    iput-object v1, v13, Lcom/android/server/am/StartAppRecorder$zta;->you:Ljava/lang/String;

    :cond_7
    iget-object v0, v0, Lcom/android/server/am/hmo;->ywr:Lcom/android/server/am/StartAppRecorder;

    invoke-virtual {v0, v13}, Lcom/android/server/am/StartAppRecorder;->you(Lcom/android/server/am/StartAppRecorder$zta;)V

    return v17

    :cond_8
    iget-object v1, v0, Lcom/android/server/am/hmo;->ywr:Lcom/android/server/am/StartAppRecorder;

    invoke-virtual {v1, v13}, Lcom/android/server/am/StartAppRecorder;->you(Lcom/android/server/am/StartAppRecorder$zta;)V

    invoke-virtual {v0, v15}, Lcom/android/server/am/hmo;->c(I)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v0, v0, Lcom/android/server/am/hmo;->oxb:Ljava/util/Set;

    invoke-static {v15}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_9
    return v10

    :cond_a
    iget-object v1, v0, Lcom/android/server/am/hmo;->ywr:Lcom/android/server/am/StartAppRecorder;

    invoke-virtual {v1, v13}, Lcom/android/server/am/StartAppRecorder;->you(Lcom/android/server/am/StartAppRecorder$zta;)V

    invoke-virtual {v0, v15}, Lcom/android/server/am/hmo;->c(I)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v0, v0, Lcom/android/server/am/hmo;->oxb:Ljava/util/Set;

    invoke-static {v15}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_b
    return v10

    :cond_c
    iget-object v1, v13, Lcom/android/server/am/StartAppRecorder$zta;->you:Ljava/lang/String;

    const-string v2, "SpecialUidsPolicy: caller is a system app"

    if-eq v1, v2, :cond_d

    const-string v2, "SpecialUidsPolicy: callee has same uid as caller\'s"

    if-eq v1, v2, :cond_d

    move/from16 v17, v10

    :cond_d
    invoke-virtual {v0, v15}, Lcom/android/server/am/hmo;->c(I)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/android/server/am/hmo;->oxb:Ljava/util/Set;

    invoke-static {v15}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move/from16 v17, v10

    :cond_e
    if-eqz v17, :cond_f

    iget-object v0, v0, Lcom/android/server/am/hmo;->ywr:Lcom/android/server/am/StartAppRecorder;

    invoke-virtual {v0, v13}, Lcom/android/server/am/StartAppRecorder;->you(Lcom/android/server/am/StartAppRecorder$zta;)V

    :cond_f
    :goto_1
    return v10
.end method

.method protected d(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/hmo;->ear:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public dispatchBlockedAuthes(Landroid/app/IApplicationThread;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/hmo;->zta:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/am/hmo;->dma:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/am/hmo;->ear(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/app/IApplicationThread;->dispatchBlockedProviderAuthes(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "dispatchBlockedAuthes error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic f(Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/hmo;->e(Lorg/json/JSONArray;)V

    return-void
.end method

.method protected fto(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/hmo;->igw:Lcom/android/server/am/AppRecordManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getProcState(I)I

    move-result p0

    return p0
.end method

.method public getJobTimeout()J
    .locals 2

    iget-boolean p0, p0, Lcom/android/server/am/hmo;->zta:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/server/am/ivd;->obl()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public handleAppKilledLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/am/hmo;->zta:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/am/hmo;->tsu:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/hmo;->ibl:Lcom/android/server/am/h;

    invoke-virtual {v0, p1}, Lcom/android/server/am/h;->tsu(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleAppKilledLocked packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " processName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/hmo;->ibl:Lcom/android/server/am/h;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/server/am/h;->kth(Lcom/android/server/am/ProcessRecord;J)V

    iget-object p0, p0, Lcom/android/server/am/hmo;->ibl:Lcom/android/server/am/h;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/h;->cno(Lcom/android/server/am/ProcessRecord;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public initAms(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/hmo;->cno:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Lcom/android/server/am/hmo;->j()V

    return-void
.end method

.method public initPackages(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArrayMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;)V"
        }
    .end annotation

    const-string v0, "initPackages #"

    invoke-static {v0}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/am/hmo;->q:Z

    if-eqz v0, :cond_0

    const-string p0, "initPackages # inited , return"

    invoke-static {p0}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    return-void

    :cond_0
    sput-object p1, Lcom/android/server/am/hmo;->t:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    invoke-direct {p0, p2}, Lcom/android/server/am/hmo;->o(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/server/am/hmo;->q:Z

    return-void
.end method

.method protected irq(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/hmo;->bio:Lcom/android/server/ire;

    invoke-virtual {p0, p1}, Lcom/android/server/ire;->cjf(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isJobRestrict(Ljava/lang/Object;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/hmo;->zta:Z

    if-eqz p0, :cond_0

    new-instance p0, Lcom/android/server/am/ibl;

    invoke-direct {p0, p1}, Lcom/android/server/am/ibl;-><init>(Ljava/lang/Object;)V

    :try_start_0
    invoke-static {p0}, Lcom/android/server/am/ivd;->irq(Lcom/android/server/am/ibl;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isOnePixelWindow(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/am/hmo;->zta:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/am/hmo;->dma:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/am/hmo;->rtg:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/hmo;->hmo:Ljava/util/List;

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/hmo;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/am/hmo;->ugm:Lcom/android/server/am/m;

    invoke-virtual {v0, p1}, Lcom/android/server/am/m;->sis(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/hmo;->lqr(Ljava/lang/String;)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "one pixel window:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " uid:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/server/am/hmo;->ivd(I)Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " running on top, allow add OnePixelWindow"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    return v1
.end method

.method protected ivd(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/hmo;->igw:Lcom/android/server/am/AppRecordManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getProcState(I)I

    move-result p0

    const/4 p1, 0x2

    if-gt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected l(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/hmo;->ire:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected les(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/hmo;->bio:Lcom/android/server/ire;

    invoke-virtual {p0, p1}, Lcom/android/server/ire;->isOptApp(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected lqr(Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/hmo;->igw:Lcom/android/server/am/AppRecordManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getUidFromPackageName(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public removeAccessibilityService(Landroid/content/ComponentName;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/hmo;->zta:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/hmo;->oif:Lcom/android/server/am/StartAppSpecialUidsPolicy;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/hmo;->lqr(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/hmo;->oif:Lcom/android/server/am/StartAppSpecialUidsPolicy;

    invoke-virtual {p0, p1}, Lcom/android/server/am/StartAppSpecialUidsPolicy;->ibl(I)V

    :cond_0
    return-void
.end method

.method public reportRestrictJob(Ljava/lang/Object;J)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/hmo;->zta:Z

    if-eqz p0, :cond_0

    new-instance p0, Lcom/android/server/am/ibl;

    invoke-direct {p0, p1}, Lcom/android/server/am/ibl;-><init>(Ljava/lang/Object;)V

    :try_start_0
    invoke-static {p0, p2, p3}, Lcom/android/server/am/ivd;->ivd(Lcom/android/server/am/ibl;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setCurrentIME(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/hmo;->zta:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/hmo;->bvj:Lcom/android/server/am/k;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/am/k;->gwm(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setCurrentWallpaper(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/hmo;->zta:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/hmo;->bvj:Lcom/android/server/am/k;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/am/k;->ugm(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public skipBroadcast(Ljava/lang/String;ILandroid/content/Intent;)Z
    .locals 9

    iget-boolean v0, p0, Lcom/android/server/am/hmo;->zta:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/am/hmo;->dma:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/server/am/StartAppRecorder$zta;

    invoke-direct {v0}, Lcom/android/server/am/StartAppRecorder$zta;-><init>()V

    iput-object p1, v0, Lcom/android/server/am/StartAppRecorder$zta;->rtg:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcast: callerPackage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/am/StartAppRecorder$zta;->tsu:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/hmo;->qbh:Lcom/android/server/am/StartAppConfigManager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/StartAppConfigManager;->rtg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/hmo;->cgv(Ljava/lang/Integer;ILcom/android/server/am/StartAppRecorder$zta;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    sget-object p1, Lcom/android/server/am/StartAppRecorder$CanStart;->you:Lcom/android/server/am/StartAppRecorder$CanStart;

    iput-object p1, v0, Lcom/android/server/am/StartAppRecorder$zta;->zta:Lcom/android/server/am/StartAppRecorder$CanStart;

    const-string p1, "StartAppControl: default pass"

    iput-object p1, v0, Lcom/android/server/am/StartAppRecorder$zta;->you:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/am/hmo;->ywr:Lcom/android/server/am/StartAppRecorder;

    invoke-virtual {p0, v0}, Lcom/android/server/am/StartAppRecorder;->you(Lcom/android/server/am/StartAppRecorder$zta;)V

    :cond_2
    :goto_0
    return v1
.end method

.method public startJobMonitoring(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/hmo;->zta:Z

    if-eqz p0, :cond_0

    new-instance p0, Lcom/android/server/am/bvj;

    invoke-direct {p0, p1}, Lcom/android/server/am/bvj;-><init>(Ljava/lang/Object;)V

    new-instance p1, Lcom/android/server/am/ibl;

    invoke-direct {p1, p2}, Lcom/android/server/am/ibl;-><init>(Ljava/lang/Object;)V

    :try_start_0
    invoke-static {p0, p1}, Lcom/android/server/am/ivd;->b(Lcom/android/server/am/bvj;Lcom/android/server/am/ibl;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public stopJobMonitoring(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/hmo;->zta:Z

    if-eqz p0, :cond_0

    new-instance p0, Lcom/android/server/am/bvj;

    invoke-direct {p0, p1}, Lcom/android/server/am/bvj;-><init>(Ljava/lang/Object;)V

    new-instance p1, Lcom/android/server/am/ibl;

    invoke-direct {p1, p2}, Lcom/android/server/am/ibl;-><init>(Ljava/lang/Object;)V

    :try_start_0
    invoke-static {p0, p1}, Lcom/android/server/am/ivd;->c(Lcom/android/server/am/bvj;Lcom/android/server/am/ibl;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/hmo;->h(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public updateAccessibilityService(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/server/am/hmo;->zta:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/hmo;->oif:Lcom/android/server/am/StartAppSpecialUidsPolicy;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/hmo;->lqr(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/hmo;->oif:Lcom/android/server/am/StartAppSpecialUidsPolicy;

    invoke-virtual {p0, v0}, Lcom/android/server/am/StartAppSpecialUidsPolicy;->vdb(Ljava/util/Set;)V

    :cond_2
    return-void
.end method

.method public updateGMSActionSet(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/server/am/hmo;->zta:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/hmo;->bvj:Lcom/android/server/am/k;

    invoke-virtual {p0, p1}, Lcom/android/server/am/k;->obl(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public updateGMSRestrict(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/hmo;->zta:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/hmo;->bvj:Lcom/android/server/am/k;

    invoke-virtual {p0, p1}, Lcom/android/server/am/k;->oxb(Z)V

    :cond_0
    return-void
.end method

.method public updateHighPowerUsagePackage(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/hmo;->zta:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/hmo;->oif:Lcom/android/server/am/StartAppSpecialUidsPolicy;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/am/hmo;->lqr(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/hmo;->oif:Lcom/android/server/am/StartAppSpecialUidsPolicy;

    invoke-virtual {p0, p1}, Lcom/android/server/am/StartAppSpecialUidsPolicy;->ssp(I)V

    :cond_0
    return-void
.end method

.method public updateHighPowerUsagePackages(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/server/am/hmo;->zta:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/hmo;->oif:Lcom/android/server/am/StartAppSpecialUidsPolicy;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/hmo;->updateHighPowerUsagePackage(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateWidgetComponent(Landroid/content/ComponentName;Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/am/hmo;->zta:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/server/am/hmo;->ear:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    :goto_0
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/am/hmo;->ear:Ljava/util/Map;

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/server/am/hmo;->ear:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public vdw(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lcom/android/server/am/k;->oif(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected veq(Ljava/lang/String;I)I
    .locals 0

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    iget-object p0, p0, Lcom/android/server/am/hmo;->igw:Lcom/android/server/am/AppRecordManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getUidFromPackageName(Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    const p1, 0x186a0

    mul-int/2addr p2, p1

    add-int/2addr p2, p0

    return p2

    :cond_0
    return p1
.end method
