.class public Lcom/android/server/am/OnePlusBGController;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OnePlusBGController$gwm;,
        Lcom/android/server/am/OnePlusBGController$qbh;,
        Lcom/android/server/am/OnePlusBGController$zgw;,
        Lcom/android/server/am/OnePlusBGController$oif;,
        Lcom/android/server/am/OnePlusBGController$PersistType;,
        Lcom/android/server/am/OnePlusBGController$OptType;,
        Lcom/android/server/am/OnePlusBGController$MySipperType;,
        Lcom/android/server/am/OnePlusBGController$dma;,
        Lcom/android/server/am/OnePlusBGController$ugm;,
        Lcom/android/server/am/OnePlusBGController$oxb;,
        Lcom/android/server/am/OnePlusBGController$vdb;,
        Lcom/android/server/am/OnePlusBGController$obl;,
        Lcom/android/server/am/OnePlusBGController$UidObserver;,
        Lcom/android/server/am/OnePlusBGController$ywr;,
        Lcom/android/server/am/OnePlusBGController$bvj;,
        Lcom/android/server/am/OnePlusBGController$ibl;,
        Lcom/android/server/am/OnePlusBGController$gck;,
        Lcom/android/server/am/OnePlusBGController$SnapshotType;,
        Lcom/android/server/am/OnePlusBGController$ProcType;,
        Lcom/android/server/am/OnePlusBGController$NetType;,
        Lcom/android/server/am/OnePlusBGController$AppBucketRanking;,
        Lcom/android/server/am/OnePlusBGController$CleanType;,
        Lcom/android/server/am/OnePlusBGController$MyDrainType;,
        Lcom/android/server/am/OnePlusBGController$RomType;
    }
.end annotation


# static fields
.field private static final A:I = 0x0

.field private static final B:I = 0x1

.field private static final C:I = 0x2

.field private static final D:I = 0x3

.field public static E:Z = false

.field private static final F:Z

.field private static G:Z = false

.field private static H:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType; = null

.field private static I:Z = false

.field private static J:Z = false

.field private static K:Z = false

.field public static final L:Ljava/lang/String; = "com.google.android.gms"

.field private static final M:I = -0x1

.field private static N:I = 0x0

.field private static final O:I = -0x1

.field private static final P:I = -0x1

.field private static final Q:J = 0x5265c00L

.field private static final R:Ljava/lang/String; = "BGC"

.field private static final S:Ljava/lang/String; = "BGC"

.field private static T:Landroid/content/Context; = null

.field private static U:Landroid/os/Handler; = null

.field private static final V:F = 999.0f

.field public static final W:I = 0x1

.field public static final X:I = 0x2

.field public static final Y:I = 0x4

.field static final Z:J = 0x19000L

.field static final a0:J = 0xbb8L

.field private static final b0:I = -0x1

.field private static c0:Ljava/lang/String; = null

.field private static d0:Ljava/lang/String; = null

.field private static e0:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final f0:Ljava/text/SimpleDateFormat;

.field private static final g0:Ljava/lang/String; = "/data/system/latest_daily_bgc.txt"

.field private static final h0:I = 0x2

.field private static final i0:I = 0xa

.field private static final j0:I = 0x32

.field private static final k0:Ljava/lang/String; = "/data/system/power-history"

.field private static final l0:Ljava/text/SimpleDateFormat;

.field private static final m0:I = 0x0

.field private static final n0:I = 0x1

.field private static final o0:Ljava/lang/String; = "com.test.bgc"

.field private static final p:Z

.field private static p0:Landroid/content/pm/PackageManager; = null

.field private static final q:J = 0x0L

.field private static final r:J = 0xbb8L

.field private static final s:J = 0x3a98L

.field private static final t:Ljava/lang/String; = "persist.sys.bgc_debug"

.field private static final u:Ljava/lang/String; = "persist.sys.bgc.keep"

.field private static final v:Ljava/lang/String; = "persist.sys.bgc.detail"

.field private static final w:Ljava/lang/String; = "net.oneplus.bgc.budget_reset"

.field private static final x:Ljava/lang/String; = "net.oneplus.powercontroller.intent.SLEEP_CHANGED"

.field private static final y:I = 0x15be

.field private static final z:I = 0x1e6c


# instance fields
.field private a:Z

.field private b:Z

.field private bio:Lcom/android/server/am/ActivityManagerService;

.field private bud:Lcom/android/internal/os/MyBatteryStatsHelper;

.field private final bvj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/OnePlusBGController$zgw;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private cgv:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/OnePlusBGController$ugm;",
            ">;"
        }
    .end annotation
.end field

.field private cjf:F

.field private cno:Lcom/android/server/vdb;

.field private d:J

.field private dma:Lcom/android/server/am/OnePlusBGController$bvj;

.field private e:I

.field private ear:F

.field private f:I

.field private fto:F

.field private g:Lcom/android/server/am/OnePlusBGController$RomType;

.field private gck:Lcom/oneplus/config/ConfigObserver;

.field private gwm:Lcom/android/server/am/OnePlusBGController$dma;

.field private h:Z

.field private hmo:F

.field private final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final ibl:Ljava/lang/StringBuilder;

.field private igw:Landroid/hardware/SensorManager;

.field private ire:I

.field private irq:Landroid/content/IntentFilter;

.field private ivd:Lcom/android/server/am/OnePlusBGController$gck;

.field private final j:Landroid/content/BroadcastReceiver;

.field k:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/am/OnePlusBGController$zgw;",
            ">;"
        }
    .end annotation
.end field

.field private kth:Lcom/android/server/am/BatteryStatsService;

.field l:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/am/OnePlusBGController$zgw;",
            ">;"
        }
    .end annotation
.end field

.field private les:Lcom/android/server/am/OnePlusBGController$ywr;

.field private lqr:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field m:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/am/OnePlusBGController$zgw;",
            ">;"
        }
    .end annotation
.end field

.field n:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/am/OnePlusBGController$zgw;",
            ">;"
        }
    .end annotation
.end field

.field o:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/am/OnePlusBGController$oif;",
            ">;"
        }
    .end annotation
.end field

.field private obl:F

.field private final oif:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/OnePlusBGController$zgw;",
            ">;"
        }
    .end annotation
.end field

.field private oxb:F

.field private final qbh:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/OnePlusBGController$obl;",
            ">;"
        }
    .end annotation
.end field

.field qeg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/OnePlusBGController$oif;",
            ">;"
        }
    .end annotation
.end field

.field private rtg:J

.field private sis:Z

.field private ssp:I

.field private tsu:Lcom/android/server/am/OnePlusBGController$NetType;

.field private ugm:F

.field private vdb:F

.field private vdw:Landroid/content/IntentFilter;

.field private veq:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private vju:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private wtn:Lcom/android/server/am/OnePlusBGController$ibl;

.field private you:Z

.field private final ywr:Lcom/android/server/am/OnePlusBGController$UidObserver;

.field private zgw:F

.field private zta:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusBGController;->p:Z

    const-string v0, "persist.sys.bgc_debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusBGController;->E:Z

    const-string v0, "persist.sys.bgc.keep"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusBGController;->F:Z

    const-string v0, "persist.sys.bgc.detail"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusBGController;->G:Z

    sget-object v0, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;->BG:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;

    sput-object v0, Lcom/android/server/am/OnePlusBGController;->H:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;

    sput-boolean v1, Lcom/android/server/am/OnePlusBGController;->I:Z

    sput-boolean v1, Lcom/android/server/am/OnePlusBGController;->J:Z

    sput-boolean v1, Lcom/android/server/am/OnePlusBGController;->K:Z

    const/4 v0, -0x1

    sput v0, Lcom/android/server/am/OnePlusBGController;->N:I

    const-string v0, "/sys/class/power_supply/bms/remaining_capacity"

    sput-object v0, Lcom/android/server/am/OnePlusBGController;->c0:Ljava/lang/String;

    const-string v0, "/sys/class/power_supply/bms/charge_full"

    sput-object v0, Lcom/android/server/am/OnePlusBGController;->d0:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusBGController;->e0:Ljava/util/HashSet;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController;->f0:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/OnePlusBGController;->l0:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OnePlusBGController;->p0:Landroid/content/pm/PackageManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BatteryStatsService;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusBGController;->zta:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusBGController;->you:Z

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusBGController;->sis:Z

    sget-object v2, Lcom/android/server/am/OnePlusBGController$NetType;->zta:Lcom/android/server/am/OnePlusBGController$NetType;

    iput-object v2, p0, Lcom/android/server/am/OnePlusBGController;->tsu:Lcom/android/server/am/OnePlusBGController$NetType;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/am/OnePlusBGController;->rtg:J

    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/am/OnePlusBGController;->ssp:I

    new-instance v4, Lcom/android/server/am/OnePlusBGController$UidObserver;

    invoke-direct {v4, p0}, Lcom/android/server/am/OnePlusBGController$UidObserver;-><init>(Lcom/android/server/am/OnePlusBGController;)V

    iput-object v4, p0, Lcom/android/server/am/OnePlusBGController;->ywr:Lcom/android/server/am/OnePlusBGController$UidObserver;

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/OnePlusBGController;->qbh:Landroid/util/SparseArray;

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/OnePlusBGController;->oif:Landroid/util/SparseArray;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/OnePlusBGController;->bvj:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/OnePlusBGController;->ibl:Ljava/lang/StringBuilder;

    const/high16 v4, 0x41200000    # 10.0f

    iput v4, p0, Lcom/android/server/am/OnePlusBGController;->ugm:F

    const/high16 v5, 0x40a00000    # 5.0f

    iput v5, p0, Lcom/android/server/am/OnePlusBGController;->vdb:F

    const/high16 v5, 0x40400000    # 3.0f

    iput v5, p0, Lcom/android/server/am/OnePlusBGController;->zgw:F

    const/high16 v5, -0x40800000    # -1.0f

    iput v5, p0, Lcom/android/server/am/OnePlusBGController;->obl:F

    iput v5, p0, Lcom/android/server/am/OnePlusBGController;->oxb:F

    iput v5, p0, Lcom/android/server/am/OnePlusBGController;->cjf:F

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, p0, Lcom/android/server/am/OnePlusBGController;->ear:F

    const/4 v5, 0x4

    iput v5, p0, Lcom/android/server/am/OnePlusBGController;->ire:I

    iput v4, p0, Lcom/android/server/am/OnePlusBGController;->hmo:F

    const/high16 v4, 0x40000000    # 2.0f

    iput v4, p0, Lcom/android/server/am/OnePlusBGController;->fto:F

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/OnePlusBGController;->lqr:Ljava/util/HashSet;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/OnePlusBGController;->veq:Ljava/util/HashSet;

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/OnePlusBGController;->cgv:Landroid/util/ArrayMap;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/OnePlusBGController;->vju:Ljava/util/HashSet;

    new-instance v4, Lcom/android/server/am/OnePlusBGController$gck;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/server/am/OnePlusBGController$gck;-><init>(Lcom/android/server/am/OnePlusBGController;Lcom/android/server/am/OnePlusBGController$sis;)V

    iput-object v4, p0, Lcom/android/server/am/OnePlusBGController;->ivd:Lcom/android/server/am/OnePlusBGController$gck;

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusBGController;->a:Z

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusBGController;->b:Z

    iput-wide v2, p0, Lcom/android/server/am/OnePlusBGController;->c:J

    iput-wide v2, p0, Lcom/android/server/am/OnePlusBGController;->d:J

    const/16 v2, 0xa

    iput v2, p0, Lcom/android/server/am/OnePlusBGController;->e:I

    const/16 v2, 0x32

    iput v2, p0, Lcom/android/server/am/OnePlusBGController;->f:I

    sget-object v2, Lcom/android/server/am/OnePlusBGController$RomType;->sis:Lcom/android/server/am/OnePlusBGController$RomType;

    iput-object v2, p0, Lcom/android/server/am/OnePlusBGController;->g:Lcom/android/server/am/OnePlusBGController$RomType;

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusBGController;->h:Z

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusBGController;->i:Ljava/util/HashMap;

    new-instance v2, Lcom/android/server/am/OnePlusBGController$sis;

    invoke-direct {v2, p0}, Lcom/android/server/am/OnePlusBGController$sis;-><init>(Lcom/android/server/am/OnePlusBGController;)V

    iput-object v2, p0, Lcom/android/server/am/OnePlusBGController;->j:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/server/am/OnePlusBGController$kth;

    invoke-direct {v2, p0}, Lcom/android/server/am/OnePlusBGController$kth;-><init>(Lcom/android/server/am/OnePlusBGController;)V

    iput-object v2, p0, Lcom/android/server/am/OnePlusBGController;->k:Ljava/util/Comparator;

    new-instance v2, Lcom/android/server/am/OnePlusBGController$bio;

    invoke-direct {v2, p0}, Lcom/android/server/am/OnePlusBGController$bio;-><init>(Lcom/android/server/am/OnePlusBGController;)V

    iput-object v2, p0, Lcom/android/server/am/OnePlusBGController;->l:Ljava/util/Comparator;

    new-instance v2, Lcom/android/server/am/OnePlusBGController$igw;

    invoke-direct {v2, p0}, Lcom/android/server/am/OnePlusBGController$igw;-><init>(Lcom/android/server/am/OnePlusBGController;)V

    iput-object v2, p0, Lcom/android/server/am/OnePlusBGController;->m:Ljava/util/Comparator;

    new-instance v2, Lcom/android/server/am/OnePlusBGController$wtn;

    invoke-direct {v2, p0}, Lcom/android/server/am/OnePlusBGController$wtn;-><init>(Lcom/android/server/am/OnePlusBGController;)V

    iput-object v2, p0, Lcom/android/server/am/OnePlusBGController;->n:Ljava/util/Comparator;

    new-instance v2, Lcom/android/server/am/OnePlusBGController$zta;

    invoke-direct {v2, p0}, Lcom/android/server/am/OnePlusBGController$zta;-><init>(Lcom/android/server/am/OnePlusBGController;)V

    iput-object v2, p0, Lcom/android/server/am/OnePlusBGController;->o:Ljava/util/Comparator;

    sput-object p2, Lcom/android/server/am/OnePlusBGController;->U:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/am/OnePlusBGController;->bio:Lcom/android/server/am/ActivityManagerService;

    sput-object p1, Lcom/android/server/am/OnePlusBGController;->T:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/server/am/OnePlusBGController;->kth:Lcom/android/server/am/BatteryStatsService;

    new-instance p1, Lcom/android/internal/os/MyBatteryStatsHelper;

    sget-object p2, Lcom/android/server/am/OnePlusBGController;->T:Landroid/content/Context;

    invoke-direct {p1, p2, v1, v1}, Lcom/android/internal/os/MyBatteryStatsHelper;-><init>(Landroid/content/Context;ZZ)V

    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController;->bud:Lcom/android/internal/os/MyBatteryStatsHelper;

    sget-object p1, Lcom/android/server/am/OnePlusBGController;->T:Landroid/content/Context;

    const-string p2, "sensor"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController;->igw:Landroid/hardware/SensorManager;

    new-instance p1, Lcom/android/server/am/OnePlusBGController$ywr;

    invoke-direct {p1, p0, v5}, Lcom/android/server/am/OnePlusBGController$ywr;-><init>(Lcom/android/server/am/OnePlusBGController;Lcom/android/server/am/OnePlusBGController$sis;)V

    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController;->les:Lcom/android/server/am/OnePlusBGController$ywr;

    new-instance p1, Lcom/android/server/am/OnePlusBGController$bvj;

    invoke-direct {p1, p0, v5}, Lcom/android/server/am/OnePlusBGController$bvj;-><init>(Lcom/android/server/am/OnePlusBGController;Lcom/android/server/am/OnePlusBGController$sis;)V

    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController;->dma:Lcom/android/server/am/OnePlusBGController$bvj;

    new-instance p1, Lcom/android/server/am/OnePlusBGController$dma;

    invoke-direct {p1}, Lcom/android/server/am/OnePlusBGController$dma;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController;->gwm:Lcom/android/server/am/OnePlusBGController$dma;

    new-array p1, v0, [I

    aput v1, p1, v1

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "Treat fg-service as foreground"

    invoke-static {p1}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusBGController;->zta:Z

    :cond_0
    const-string p1, "ro.build.alpha"

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/android/server/am/OnePlusBGController$RomType;->zta:Lcom/android/server/am/OnePlusBGController$RomType;

    :goto_0
    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController;->g:Lcom/android/server/am/OnePlusBGController$RomType;

    goto :goto_1

    :cond_1
    const-string p1, "ro.build.beta"

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_2

    sget-object p1, Lcom/android/server/am/OnePlusBGController$RomType;->you:Lcom/android/server/am/OnePlusBGController$RomType;

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/server/am/OnePlusBGController;->g:Lcom/android/server/am/OnePlusBGController$RomType;

    sget-object p2, Lcom/android/server/am/OnePlusBGController$RomType;->sis:Lcom/android/server/am/OnePlusBGController$RomType;

    if-ne p1, p2, :cond_3

    move p1, v0

    goto :goto_2

    :cond_3
    move p1, v1

    :goto_2
    iput-boolean p1, p0, Lcom/android/server/am/OnePlusBGController;->h:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mRomType: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/am/OnePlusBGController;->g:Lcom/android/server/am/OnePlusBGController$RomType;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mDailyReportEnabled: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/server/am/OnePlusBGController;->a:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mUnderListOnly: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/server/am/OnePlusBGController;->h:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    new-array p1, v0, [I

    const/16 p2, 0x75

    aput p2, p1, v1

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "OP_FEATURE_RESRTICT_PKG_BASE_ON_NETWORK enabled, update mNetWorkType to DOMESTIC by default"

    invoke-static {p1}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    sget-object p1, Lcom/android/server/am/OnePlusBGController$NetType;->you:Lcom/android/server/am/OnePlusBGController$NetType;

    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController;->tsu:Lcom/android/server/am/OnePlusBGController$NetType;

    :cond_4
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController;->irq:Landroid/content/IntentFilter;

    const-string p2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/OnePlusBGController;->irq:Landroid/content/IntentFilter;

    const-string p2, "net.oneplus.powercontroller.intent.SLEEP_CHANGED"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object p1, Lcom/android/server/am/OnePlusBGController;->T:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/server/am/OnePlusBGController;->les:Lcom/android/server/am/OnePlusBGController$ywr;

    iget-object p3, p0, Lcom/android/server/am/OnePlusBGController;->irq:Landroid/content/IntentFilter;

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController;->vdw:Landroid/content/IntentFilter;

    const-string p2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/OnePlusBGController;->vdw:Landroid/content/IntentFilter;

    const-string p2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/OnePlusBGController;->vdw:Landroid/content/IntentFilter;

    const-string p2, "package"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    sget-object p1, Lcom/android/server/am/OnePlusBGController;->T:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/server/am/OnePlusBGController;->les:Lcom/android/server/am/OnePlusBGController$ywr;

    iget-object p3, p0, Lcom/android/server/am/OnePlusBGController;->vdw:Landroid/content/IntentFilter;

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-boolean p1, Lcom/android/server/am/OnePlusBGController;->p:Z

    if-eqz p1, :cond_5

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "com.test.bgc"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object p2, Lcom/android/server/am/OnePlusBGController;->T:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/server/am/OnePlusBGController;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, p3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_5
    new-instance p1, Lcom/android/server/am/OnePlusBGController$ibl;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/server/am/OnePlusBGController$ibl;-><init>(Lcom/android/server/am/OnePlusBGController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController;->wtn:Lcom/android/server/am/OnePlusBGController$ibl;

    sget-object p1, Lcom/android/server/am/AppRecordManager$ListenerType;->sis:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object p2, p0, Lcom/android/server/am/OnePlusBGController;->ivd:Lcom/android/server/am/OnePlusBGController$gck;

    invoke-static {p1, p2}, Lcom/android/server/am/AppRecordManager;->vdb(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/bvj;)V

    const p1, 0x101d0

    const-wide/16 p2, 0x4e20

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OnePlusBGController;->S0(IJ)V

    return-void
.end method

.method static synthetic A(Lcom/android/server/am/OnePlusBGController;IZ)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusBGController;->R(IZ)Z

    move-result p0

    return p0
.end method

.method private A0(ILcom/android/server/am/OnePlusBGController$ProcType;ILcom/android/server/am/OnePlusBGController$oif;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->oif:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->oif:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/OnePlusBGController$zgw;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/am/OnePlusBGController$zgw;->oif(Lcom/android/server/am/OnePlusBGController$ProcType;ILcom/android/server/am/OnePlusBGController$oif;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/server/am/OnePlusBGController;->T:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ":"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v3, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    const/4 v1, 0x0

    aget-object v1, v2, v1

    :cond_1
    move-object v3, v1

    invoke-direct {p0, v3}, Lcom/android/server/am/OnePlusBGController;->q0(Ljava/lang/String;)I

    move-result v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init new UidSippermAhInfo for uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", versionCode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController;->oif:Landroid/util/SparseArray;

    new-instance v8, Lcom/android/server/am/OnePlusBGController$zgw;

    move-object v1, v8

    move v2, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/OnePlusBGController$zgw;-><init>(ILjava/lang/String;ILcom/android/server/am/OnePlusBGController$ProcType;ILcom/android/server/am/OnePlusBGController$oif;)V

    invoke-virtual {p0, p1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

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

.method static synthetic B(I)Z
    .locals 0

    invoke-static {p0}, Lcom/android/server/am/OnePlusBGController;->B0(I)Z

    move-result p0

    return p0
.end method

.method private static B0(I)Z
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusBGController;->e0:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic C()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusBGController;->F:Z

    return v0
.end method

.method private C0()Z
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController;->rtg:J

    sub-long/2addr v0, v2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1, p0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Time Away From Budget Reset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    const-wide/32 v2, 0x5265c00

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic D()Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusBGController;->H:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;

    return-object v0
.end method

.method private D0(ZI)Z
    .locals 1

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    if-le p2, p1, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    return p0

    :cond_1
    const/4 p1, 0x4

    if-le p2, p1, :cond_2

    goto :goto_1

    :cond_2
    move p0, v0

    :goto_1
    return p0
.end method

.method static synthetic E(Lcom/android/server/am/OnePlusBGController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBGController;->v0()V

    return-void
.end method

.method private E0(Lcom/android/server/am/OnePlusBGController$zgw;)Z
    .locals 7

    iget v0, p0, Lcom/android/server/am/OnePlusBGController;->obl:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x1

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/OnePlusBGController$zgw;->igw()D

    move-result-wide v3

    iget v0, p0, Lcom/android/server/am/OnePlusBGController;->obl:F

    float-to-double v5, v0

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/server/am/OnePlusBGController;->oxb:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    sget-object v0, Lcom/android/server/am/OnePlusBGController$MySipperType;->zta:Lcom/android/server/am/OnePlusBGController$MySipperType;

    invoke-virtual {p1, v0}, Lcom/android/server/am/OnePlusBGController$zgw;->rtg(Lcom/android/server/am/OnePlusBGController$MySipperType;)D

    move-result-wide v3

    iget v0, p0, Lcom/android/server/am/OnePlusBGController;->oxb:F

    float-to-double v5, v0

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_2

    and-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    and-int/lit8 v2, v2, 0x0

    :cond_3
    :goto_1
    iget v0, p0, Lcom/android/server/am/OnePlusBGController;->cjf:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5

    sget-object v0, Lcom/android/server/am/OnePlusBGController$MySipperType;->you:Lcom/android/server/am/OnePlusBGController$MySipperType;

    invoke-virtual {p1, v0}, Lcom/android/server/am/OnePlusBGController$zgw;->rtg(Lcom/android/server/am/OnePlusBGController$MySipperType;)D

    move-result-wide v3

    iget v0, p0, Lcom/android/server/am/OnePlusBGController;->cjf:F

    float-to-double v5, v0

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_4

    and-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    and-int/lit8 v2, v2, 0x0

    :cond_5
    :goto_2
    iget v0, p0, Lcom/android/server/am/OnePlusBGController;->ear:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_7

    sget-object v0, Lcom/android/server/am/OnePlusBGController$MySipperType;->sis:Lcom/android/server/am/OnePlusBGController$MySipperType;

    invoke-virtual {p1, v0}, Lcom/android/server/am/OnePlusBGController$zgw;->rtg(Lcom/android/server/am/OnePlusBGController$MySipperType;)D

    move-result-wide v0

    iget p0, p0, Lcom/android/server/am/OnePlusBGController;->ear:F

    float-to-double p0, p0

    cmpl-double p0, v0, p0

    if-ltz p0, :cond_6

    and-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    and-int/lit8 v2, v2, 0x0

    :cond_7
    :goto_3
    return v2
.end method

.method static synthetic F(Lcom/android/server/am/OnePlusBGController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBGController;->w0()V

    return-void
.end method

.method static synthetic G(Lcom/android/server/am/OnePlusBGController;)Lcom/android/server/am/OnePlusBGController$ibl;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController;->wtn:Lcom/android/server/am/OnePlusBGController$ibl;

    return-object p0
.end method

.method private G0(Lcom/android/server/am/OnePlusBGController$zgw;Z)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/server/am/OnePlusBGController;->i:Ljava/util/HashMap;

    monitor-enter p2

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->i:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/android/server/am/OnePlusBGController$zgw;->zta:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p1, Lcom/android/server/am/OnePlusBGController$zgw;->you:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    monitor-exit p2

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBGController;->E0(Lcom/android/server/am/OnePlusBGController$zgw;)Z

    move-result p0

    if-nez p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[MDM] skip target due to non-satisfied accumulated value on pkg: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/OnePlusBGController$zgw;->zta:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_2
    return v1
.end method

.method static synthetic H(Lcom/android/server/am/OnePlusBGController;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBGController;->b1(Ljava/util/List;)V

    return-void
.end method

.method public static H0(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusBGController;->p:Z

    if-eqz v0, :cond_0

    const-string v0, "BGC"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic I(Lcom/android/server/am/OnePlusBGController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/OnePlusBGController;->sis:Z

    return p0
.end method

.method static synthetic J(Lcom/android/server/am/OnePlusBGController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusBGController;->sis:Z

    return p1
.end method

.method private J0(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController;->wtn:Lcom/android/server/am/OnePlusBGController$ibl;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic K(Lcom/android/server/am/OnePlusBGController;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusBGController;->U(ZZ)V

    return-void
.end method

.method private K0(Ljava/lang/Runnable;J)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController;->wtn:Lcom/android/server/am/OnePlusBGController$ibl;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic L(Lcom/android/server/am/OnePlusBGController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBGController;->P()V

    return-void
.end method

.method static synthetic M(Lcom/android/server/am/OnePlusBGController;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBGController;->O0(Ljava/util/List;)V

    return-void
.end method

.method static synthetic N()I
    .locals 1

    sget v0, Lcom/android/server/am/OnePlusBGController;->N:I

    return v0
.end method

.method private N0()V
    .locals 4

    const-string v0, "## RESET resetAllBudget RESET ##"

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->oif:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->oif:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->oif:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusBGController$zgw;

    sget-object v3, Lcom/android/server/am/OnePlusBGController$CleanType;->zta:Lcom/android/server/am/OnePlusBGController$CleanType;

    invoke-virtual {v2, v3}, Lcom/android/server/am/OnePlusBGController$zgw;->you(Lcom/android/server/am/OnePlusBGController$CleanType;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController;->rtg:J

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static synthetic O(Lcom/android/server/am/OnePlusBGController;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController;->oif:Landroid/util/SparseArray;

    return-object p0
.end method

.method private O0(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "## RESET resetBudgetByUids RESET ##, killedUids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->oif:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->oif:Landroid/util/SparseArray;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusBGController$zgw;

    if-eqz v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/am/OnePlusBGController;->k0(I)Lcom/android/server/am/OnePlusBGController$oif;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4, v3}, Lcom/android/server/am/OnePlusBGController;->Z0(ILcom/android/server/am/OnePlusBGController$oif;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "## RESET resetBudgetByUids RESET ##, reset budget of uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController$zgw;->gck()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/am/OnePlusBGController$CleanType;->you:Lcom/android/server/am/OnePlusBGController$CleanType;

    invoke-virtual {v2, v3}, Lcom/android/server/am/OnePlusBGController$zgw;->you(Lcom/android/server/am/OnePlusBGController$CleanType;)V

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController$zgw;->zta()V

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "myBs == null, uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_2
    return-void
.end method

.method private P()V
    .locals 39

    move-object/from16 v0, p0

    const-string v1, "======checkAbnBgmAh======"

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusBGController;->X()V

    iget-object v3, v0, Lcom/android/server/am/OnePlusBGController;->gwm:Lcom/android/server/am/OnePlusBGController$dma;

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusBGController$dma;->zta()V

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/server/am/OpRestartProcessManagerInjector;->doGetHighUsedPackageList(Z)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v3}, Lcom/android/server/am/OpRestartProcessManagerInjector;->doGetGeneralUsedPackageList(Z)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v3}, Lcom/android/server/am/OpRestartProcessManagerInjector;->doGetLowUsedPackageList(Z)Ljava/util/ArrayList;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@@@@[get usage] in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v1

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusBGController;->T()V

    sget-boolean v2, Lcom/android/server/am/OnePlusBGController;->E:Z

    if-eqz v2, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusBGController;->c0()V

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x1

    new-array v11, v10, [I

    const/16 v12, 0x4c

    aput v12, v11, v3

    invoke-static {v11}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, v0, Lcom/android/server/am/OnePlusBGController;->cno:Lcom/android/server/vdb;

    if-nez v11, :cond_1

    sget-object v11, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_smart_power_control:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v11}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/vdb;

    iput-object v11, v0, Lcom/android/server/am/OnePlusBGController;->cno:Lcom/android/server/vdb;

    :cond_1
    iget-object v11, v0, Lcom/android/server/am/OnePlusBGController;->cno:Lcom/android/server/vdb;

    if-eqz v11, :cond_3

    invoke-virtual {v11}, Lcom/android/server/vdb;->gck()[I

    move-result-object v11

    invoke-virtual {v11}, [I->clone()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [I

    if-eqz v11, :cond_2

    array-length v12, v11

    if-lez v12, :cond_2

    move v12, v3

    :goto_0
    array-length v13, v11

    if-ge v12, v13, :cond_2

    aget v13, v11, v12

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    iget-object v11, v0, Lcom/android/server/am/OnePlusBGController;->cno:Lcom/android/server/vdb;

    invoke-virtual {v11}, Lcom/android/server/vdb;->dma()[I

    move-result-object v11

    invoke-virtual {v11}, [I->clone()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [I

    if-eqz v11, :cond_3

    array-length v12, v11

    if-lez v12, :cond_3

    move v12, v3

    :goto_1
    array-length v13, v11

    if-ge v12, v13, :cond_3

    aget v13, v11, v12

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "notOptAppIdList: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "optAppIdList: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mUidSippermAhList\'s size = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/android/server/am/OnePlusBGController;->bvj:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    move v11, v3

    :goto_2
    iget-object v12, v0, Lcom/android/server/am/OnePlusBGController;->bvj:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_11

    iget-object v12, v0, Lcom/android/server/am/OnePlusBGController;->bvj:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/OnePlusBGController$zgw;

    iget-object v14, v12, Lcom/android/server/am/OnePlusBGController$zgw;->zta:Ljava/lang/String;

    invoke-virtual {v12}, Lcom/android/server/am/OnePlusBGController$zgw;->ywr()Z

    move-result v13

    invoke-virtual {v12}, Lcom/android/server/am/OnePlusBGController$zgw;->dma()Z

    move-result v15

    iget-boolean v3, v12, Lcom/android/server/am/OnePlusBGController$zgw;->oif:Z

    sget-object v16, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;->zta:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    iget v10, v12, Lcom/android/server/am/OnePlusBGController$zgw;->sis:I

    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    sget-object v10, Lcom/android/server/am/OnePlusBGController$OptType;->you:Lcom/android/server/am/OnePlusBGController$OptType;

    :goto_3
    invoke-virtual {v12, v10}, Lcom/android/server/am/OnePlusBGController$zgw;->bvj(Lcom/android/server/am/OnePlusBGController$OptType;)V

    goto :goto_4

    :cond_4
    iget v10, v12, Lcom/android/server/am/OnePlusBGController$zgw;->sis:I

    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    sget-object v10, Lcom/android/server/am/OnePlusBGController$OptType;->sis:Lcom/android/server/am/OnePlusBGController$OptType;

    goto :goto_3

    :cond_5
    sget-object v10, Lcom/android/server/am/OnePlusBGController$OptType;->zta:Lcom/android/server/am/OnePlusBGController$OptType;

    goto :goto_3

    :goto_4
    if-eqz v4, :cond_6

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    sget-object v16, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;->you:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    iget v10, v0, Lcom/android/server/am/OnePlusBGController;->ugm:F

    move-object/from16 v29, v2

    move-object/from16 v30, v4

    move-object/from16 v2, v16

    goto :goto_5

    :cond_6
    if-eqz v5, :cond_7

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    sget-object v10, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;->sis:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    move-object/from16 v29, v2

    iget v2, v0, Lcom/android/server/am/OnePlusBGController;->vdb:F

    move-object/from16 v30, v4

    move-object/from16 v38, v10

    move v10, v2

    move-object/from16 v2, v38

    goto :goto_5

    :cond_7
    move-object/from16 v29, v2

    if-eqz v6, :cond_8

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;->tsu:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    iget v10, v0, Lcom/android/server/am/OnePlusBGController;->zgw:F

    move-object/from16 v30, v4

    goto :goto_5

    :cond_8
    move-object/from16 v30, v4

    move-object/from16 v2, v16

    const v10, 0x4479c000    # 999.0f

    :goto_5
    invoke-virtual {v12}, Lcom/android/server/am/OnePlusBGController$zgw;->bio()Lcom/android/server/am/OnePlusBGController$OptType;

    move-result-object v4

    move-object/from16 v31, v5

    sget-object v5, Lcom/android/server/am/OnePlusBGController$OptType;->sis:Lcom/android/server/am/OnePlusBGController$OptType;

    if-ne v4, v5, :cond_9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Forced lock down uid "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/server/am/OnePlusBGController$zgw;->gck()I

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", pkg "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " to Low-Used criteria due to Optimizated"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    iget v10, v0, Lcom/android/server/am/OnePlusBGController;->zgw:F

    :cond_9
    const v16, 0x4479c000    # 999.0f

    cmpl-float v16, v10, v16

    const-string v5, ", pkg="

    if-eqz v16, :cond_c

    invoke-virtual {v12, v2}, Lcom/android/server/am/OnePlusBGController$zgw;->gwm(Lcom/android/server/am/OnePlusBGController$AppBucketRanking;)V

    move-object/from16 v32, v6

    if-eqz v15, :cond_a

    iget v6, v0, Lcom/android/server/am/OnePlusBGController;->fto:F

    goto :goto_6

    :cond_a
    const/4 v6, 0x0

    :goto_6
    invoke-virtual {v12}, Lcom/android/server/am/OnePlusBGController$zgw;->ssp()D

    move-result-wide v16

    move-wide/from16 v33, v7

    float-to-double v7, v6

    sub-double v16, v16, v7

    float-to-double v7, v10

    cmpl-double v7, v16, v7

    move-object/from16 v35, v1

    move/from16 v17, v6

    move v0, v15

    if-lez v7, :cond_b

    const/4 v1, 0x1

    goto :goto_8

    :cond_b
    const/4 v1, 0x0

    goto :goto_8

    :cond_c
    move-object/from16 v32, v6

    move-wide/from16 v33, v7

    const/4 v6, 0x1

    if-ne v3, v6, :cond_d

    invoke-virtual {v12}, Lcom/android/server/am/OnePlusBGController$zgw;->ssp()D

    move-result-wide v7

    iget v6, v0, Lcom/android/server/am/OnePlusBGController;->hmo:F

    move-object/from16 v35, v1

    float-to-double v0, v6

    cmpl-double v0, v7, v0

    if-lez v0, :cond_e

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v13, 0x1

    goto :goto_7

    :cond_d
    move-object/from16 v35, v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "oops, can\'t find which category of uid :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/server/am/OnePlusBGController$zgw;->gck()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", just skip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    :cond_e
    move v0, v15

    const/4 v1, 0x0

    :goto_7
    const/16 v17, 0x0

    :goto_8
    const-string v6, ", DBgmAh="

    const-string v7, ", RfBgt="

    const-string v8, ", Noto="

    const-string v15, ", cri="

    move-object/from16 v36, v9

    const-string v9, ", gRanking="

    if-eqz v1, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v37, v11

    const-string v11, "[E] uid:"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/server/am/OnePlusBGController$zgw;->gck()I

    move-result v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", Spec="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", Opt="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", Relief="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p0

    iget v5, v11, Lcom/android/server/am/OnePlusBGController;->fto:F

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/server/am/OnePlusBGController$zgw;->ssp()D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    iget-object v13, v11, Lcom/android/server/am/OnePlusBGController;->gwm:Lcom/android/server/am/OnePlusBGController$dma;

    invoke-virtual {v12}, Lcom/android/server/am/OnePlusBGController$zgw;->gck()I

    move-result v15

    invoke-virtual {v12}, Lcom/android/server/am/OnePlusBGController$zgw;->kth()D

    move-result-wide v5

    invoke-virtual {v12}, Lcom/android/server/am/OnePlusBGController$zgw;->cno()D

    move-result-wide v18

    invoke-virtual {v12}, Lcom/android/server/am/OnePlusBGController$zgw;->ssp()D

    move-result-wide v20

    add-float v10, v10, v17

    float-to-double v7, v10

    sget-object v25, Lcom/android/server/am/OnePlusBGController$MyDrainType;->zta:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    move-wide/from16 v16, v5

    move-wide/from16 v22, v7

    move-object/from16 v24, v2

    move/from16 v26, v0

    move/from16 v27, v3

    move-object/from16 v28, v4

    invoke-virtual/range {v13 .. v28}, Lcom/android/server/am/OnePlusBGController$dma;->tsu(Ljava/lang/String;IDDDDLcom/android/server/am/OnePlusBGController$AppBucketRanking;Lcom/android/server/am/OnePlusBGController$MyDrainType;ZZLcom/android/server/am/OnePlusBGController$OptType;)V

    goto :goto_9

    :cond_f
    move/from16 v37, v11

    move-object/from16 v11, p0

    sget-boolean v1, Lcom/android/server/am/OnePlusBGController;->E:Z

    if-eqz v1, :cond_10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[N-E] uid:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/server/am/OnePlusBGController$zgw;->gck()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", Rf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v11, Lcom/android/server/am/OnePlusBGController;->fto:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/server/am/OnePlusBGController$zgw;->ssp()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    :cond_10
    :goto_9
    add-int/lit8 v0, v37, 0x1

    move-object/from16 v2, v29

    move-object/from16 v4, v30

    move-object/from16 v5, v31

    move-object/from16 v6, v32

    move-wide/from16 v7, v33

    move-object/from16 v1, v35

    move-object/from16 v9, v36

    const/4 v3, 0x0

    const/4 v10, 0x1

    move-object/from16 v38, v11

    move v11, v0

    move-object/from16 v0, v38

    goto/16 :goto_2

    :cond_11
    move-object v11, v0

    move-object/from16 v35, v1

    move-wide/from16 v33, v7

    sget-boolean v0, Lcom/android/server/am/OnePlusBGController;->p:Z

    if-eqz v0, :cond_12

    iget-object v0, v11, Lcom/android/server/am/OnePlusBGController;->gwm:Lcom/android/server/am/OnePlusBGController$dma;

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusBGController$dma;->you()V

    :cond_12
    sget-object v0, Lcom/android/server/am/OnePlusBGController;->U:Landroid/os/Handler;

    const v1, 0x101d4

    iget-object v2, v11, Lcom/android/server/am/OnePlusBGController;->gwm:Lcom/android/server/am/OnePlusBGController$dma;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/OnePlusBGController;->U:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@@@@[checkAbnBgmAh] in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long v1, v1, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    return-void
.end method

.method private Q(I)Z
    .locals 10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController;->cgv:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/OnePlusBGController$ugm;

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return v2

    :cond_0
    invoke-static {p1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v3

    invoke-static {p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/server/am/OnePlusBGController$ugm;->you:J

    sub-long/2addr v0, v7

    const-wide/16 v7, 0x3e8

    div-long/2addr v0, v7

    const-wide/16 v7, 0x1

    cmp-long v9, v0, v7

    if-gtz v9, :cond_1

    move-wide v0, v7

    :cond_1
    iget-wide v7, p0, Lcom/android/server/am/OnePlusBGController$ugm;->tsu:J

    sub-long/2addr v5, v7

    div-long/2addr v5, v0

    iget-wide v7, p0, Lcom/android/server/am/OnePlusBGController$ugm;->sis:J

    sub-long/2addr v3, v7

    div-long/2addr v3, v0

    const-wide/32 v0, 0x19000

    cmp-long p0, v0, v5

    const/4 v7, 0x1

    const-string v8, " Byte/s"

    const-string v9, "Uid "

    if-gez p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " rxSpeed="

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    return v7

    :cond_2
    cmp-long p0, v0, v3

    if-gez p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " txSpeed="

    goto :goto_0

    :cond_3
    return v2
.end method

.method private R(IZ)Z
    .locals 9

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->qbh:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController;->qbh:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/OnePlusBGController$obl;

    if-eqz p0, :cond_4

    if-eqz p2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {p1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v3

    invoke-static {p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "now Traffic [uid:"

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "], ["

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/OnePlusBGController$obl;->rtg()Lcom/android/server/am/OnePlusBGController$ugm;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/am/OnePlusBGController$ugm;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusBGController$obl;->rtg()Lcom/android/server/am/OnePlusBGController$ugm;

    move-result-object p0

    if-eqz p0, :cond_3

    iget-wide v1, p0, Lcom/android/server/am/OnePlusBGController$ugm;->you:J

    const-wide/16 v3, -0x1

    cmp-long p2, v1, v3

    if-eqz p2, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {p1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v3

    invoke-static {p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/server/am/OnePlusBGController$ugm;->you:J

    sub-long/2addr v1, v7

    const-wide/16 v7, 0x3e8

    div-long/2addr v1, v7

    const-wide/16 v7, 0x1

    cmp-long p2, v1, v7

    if-gtz p2, :cond_1

    move-wide v1, v7

    :cond_1
    iget-wide v7, p0, Lcom/android/server/am/OnePlusBGController$ugm;->tsu:J

    sub-long/2addr v5, v7

    div-long/2addr v5, v1

    iget-wide v7, p0, Lcom/android/server/am/OnePlusBGController$ugm;->sis:J

    sub-long/2addr v3, v7

    div-long/2addr v3, v1

    const-wide/32 v1, 0x19000

    cmp-long p0, v1, v5

    const/4 p2, 0x1

    if-gez p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uid "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " rxSpeed="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " Byte/s"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    monitor-exit v0

    return p2

    :cond_2
    cmp-long p0, v1, v3

    if-gez p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uid "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " txSpeed="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " Byte/s"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    monitor-exit v0

    return p2

    :cond_3
    const-string p0, "baseTraffic is invalid"

    :goto_0
    invoke-static {p0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ustats == null, uid: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_5
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Uid "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t use network"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private S(I)Z
    .locals 12

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->cgv:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->cgv:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBGController;->Q(I)Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    new-instance v11, Lcom/android/server/am/OnePlusBGController$ugm;

    invoke-static {p1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v7

    invoke-static {p1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v9

    move-object v2, v11

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/OnePlusBGController$ugm;-><init>(Lcom/android/server/am/OnePlusBGController;IJJJ)V

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController;->cgv:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private S0(IJ)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->wtn:Lcom/android/server/am/OnePlusBGController$ibl;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController;->wtn:Lcom/android/server/am/OnePlusBGController$ibl;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private T()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->bvj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->oif:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->oif:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->oif:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusBGController$zgw;

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController$zgw;->gck()I

    move-result v3

    const/16 v4, 0x2710

    if-lt v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController;->bvj:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->bvj:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController;->k:Ljava/util/Comparator;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private T0(IJ)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->wtn:Lcom/android/server/am/OnePlusBGController$ibl;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->wtn:Lcom/android/server/am/OnePlusBGController$ibl;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController;->wtn:Lcom/android/server/am/OnePlusBGController$ibl;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private U(ZZ)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->ibl:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/android/server/am/OnePlusBGController;->b:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/server/am/OnePlusBGController;->ibl:Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/server/am/OnePlusBGController;->T:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "doze_mode_policy"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->bvj:Ljava/util/List;

    monitor-enter v0

    move v2, v1

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController;->bvj:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController;->bvj:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusBGController$zgw;

    if-eqz v3, :cond_2

    iget-boolean v4, p0, Lcom/android/server/am/OnePlusBGController;->h:Z

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/OnePlusBGController;->G0(Lcom/android/server/am/OnePlusBGController$zgw;Z)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/android/server/am/OnePlusBGController;->ibl:Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget v4, p0, Lcom/android/server/am/OnePlusBGController;->ire:I

    invoke-virtual {v3, v2, p1, v4}, Lcom/android/server/am/OnePlusBGController$zgw;->ibl(III)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/OnePlusBGController;->ibl:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BGC_DAILY]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/android/server/am/OnePlusBGController;->ibl:Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_4
    :goto_2
    iget-boolean p1, p0, Lcom/android/server/am/OnePlusBGController;->b:Z

    if-nez p1, :cond_5

    const/4 p1, 0x0

    sget-object v0, Lcom/android/server/am/OnePlusBGController$PersistType;->sis:Lcom/android/server/am/OnePlusBGController$PersistType;

    sget-object v1, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;->ACC_BG:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/OnePlusBGController;->d0(Ljava/io/PrintWriter;Lcom/android/server/am/OnePlusBGController$PersistType;Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;)V

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController;->ibl:Ljava/lang/StringBuilder;

    invoke-static {p0, p2}, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->notifyBGCMDMReady(Ljava/lang/StringBuilder;Z)V

    :cond_5
    return-void
.end method

.method private U0(IJII)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->wtn:Lcom/android/server/am/OnePlusBGController$ibl;

    invoke-virtual {v0, p1, p4, p5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController;->wtn:Lcom/android/server/am/OnePlusBGController$ibl;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private V()V
    .locals 3

    sget-object p0, Lcom/android/server/am/OnePlusBGController;->e0:Ljava/util/HashSet;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/am/OnePlusBGController;->e0:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Cmd] Audio-Active Uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private V0(IJLcom/android/server/am/OnePlusBGController$obl;Lcom/android/server/am/OnePlusBGController$ProcType;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->wtn:Lcom/android/server/am/OnePlusBGController$ibl;

    invoke-virtual {v0, p1, p4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->wtn:Lcom/android/server/am/OnePlusBGController$ibl;

    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p5

    invoke-virtual {v0, p1, p5, p6, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController;->wtn:Lcom/android/server/am/OnePlusBGController$ibl;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private W(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] sippers size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    move-wide v3, v2

    move v2, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatterySipper;

    iget-wide v6, v5, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    add-double/2addr v3, v6

    if-eqz p3, :cond_0

    if-eqz p3, :cond_1

    const/16 v6, 0xa

    if-ge v2, v6, :cond_1

    :cond_0
    invoke-direct {p0, p1, v5}, Lcom/android/server/am/OnePlusBGController;->l0(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], accumulated sum-up of "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " totalPowerMah="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    const-string p0, "sippers == null or sippers.size() == 0"

    :goto_1
    invoke-static {p0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    return-void
.end method

.method private W0()V
    .locals 2

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController;->igw:Landroid/hardware/SensorManager;

    invoke-virtual {p0}, Landroid/hardware/SensorManager;->getActiveSensorList()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "activeSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    return-void
.end method

.method private X()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BGC Criteria : H:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusBGController;->ugm:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "] / G:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusBGController;->vdb:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "] / L:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusBGController;->zgw:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "] / [S: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusBGController;->hmo:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", R: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusBGController;->fto:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reporting Criteria : Total:["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OnePlusBGController;->obl:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "], Top:["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OnePlusBGController;->oxb:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "], Mid:["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OnePlusBGController;->cjf:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "], Bg:["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OnePlusBGController;->ear:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRomType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->g:Lcom/android/server/am/OnePlusBGController$RomType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDailyReportEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/OnePlusBGController;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mUnderListOnly: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/OnePlusBGController;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDetailType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/OnePlusBGController;->ire:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    return-void
.end method

.method private X0(I)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController;->igw:Landroid/hardware/SensorManager;

    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getActiveSensorListByHandle(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "activeSensor of handle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    return-void
.end method

.method private Z()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->i:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController;->i:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pkg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    const-string v1, "  ver: ALL"

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  ver: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private Z0(ILcom/android/server/am/OnePlusBGController$oif;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "## Insert handled uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p2, Lcom/android/server/am/OnePlusBGController$oif;->sis:D

    invoke-static {v1, v2}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mAh"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->qbh:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OnePlusBGController$obl;

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "skip handled-snapshot uid: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " due to no-exist on Stats"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/am/OnePlusBGController$obl;->igw:Lcom/android/server/am/OnePlusBGController$ProcType;

    goto :goto_0

    :cond_1
    const/16 v1, 0x2710

    if-lt p1, v1, :cond_2

    sget-object v1, Lcom/android/server/am/OnePlusBGController$ProcType;->zta:Lcom/android/server/am/OnePlusBGController$ProcType;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/server/am/OnePlusBGController$ProcType;->you:Lcom/android/server/am/OnePlusBGController$ProcType;

    :goto_0
    sget-object v2, Lcom/android/server/am/OnePlusBGController$ProcType;->sis:Lcom/android/server/am/OnePlusBGController$ProcType;

    if-ne v1, v2, :cond_3

    sget-object v1, Lcom/android/server/am/OnePlusBGController$ProcType;->zta:Lcom/android/server/am/OnePlusBGController$ProcType;

    :cond_3
    iget v0, v0, Lcom/android/server/am/OnePlusBGController$obl;->sis:I

    invoke-direct {p0, p1, v1, v0, p2}, Lcom/android/server/am/OnePlusBGController;->A0(ILcom/android/server/am/OnePlusBGController$ProcType;ILcom/android/server/am/OnePlusBGController$oif;)V

    return-void
.end method

.method static synthetic a(Lcom/android/server/am/OnePlusBGController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBGController;->V()V

    return-void
.end method

.method private a0(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/am/OnePlusBGController$oif;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] mySippers size="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    const/4 p0, 0x0

    move-wide v2, v1

    move v1, p0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge p0, v4, :cond_2

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/OnePlusBGController$oif;

    iget-wide v5, v4, Lcom/android/server/am/OnePlusBGController$oif;->bvj:D

    add-double/2addr v2, v5

    if-eqz p3, :cond_0

    if-eqz p3, :cond_1

    const/16 v5, 0xa

    if-ge v1, v5, :cond_1

    :cond_0
    invoke-virtual {v4}, Lcom/android/server/am/OnePlusBGController$oif;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], accumulated sum-up of "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " totalPowerMah="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    const-string p0, "mySippers == null or mySippers.size() == 0"

    :goto_1
    invoke-static {p0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    return-void
.end method

.method private a1(ILcom/android/server/am/OnePlusBGController$ProcType;ILcom/android/server/am/OnePlusBGController$oif;)V
    .locals 11

    iget-wide v0, p4, Lcom/android/server/am/OnePlusBGController$oif;->sis:D

    sget v2, Lcom/android/server/am/OnePlusBGController;->N:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p1, v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "## Insert "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_1

    const-string v6, "(S)uid "

    goto :goto_1

    :cond_1
    const-string v6, "uid "

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " mAh"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    sget-object v5, Lcom/android/server/am/OnePlusBGController$ProcType;->sis:Lcom/android/server/am/OnePlusBGController$ProcType;

    if-ne p2, v5, :cond_5

    invoke-static {p1}, Lcom/android/server/am/OnePlusBGController;->B0(I)Z

    move-result p2

    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusBGController;->F0(I)Z

    move-result v5

    invoke-direct {p0, p1, v4}, Lcom/android/server/am/OnePlusBGController;->R(IZ)Z

    move-result v8

    invoke-static {}, Lcom/android/server/wm/OpWmInjector;->getSysAlertWindowUids()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move v4, v3

    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "#### re-check uid:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " [Audio: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", Sensor: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", Network: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", AlertWindow: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    if-nez p2, :cond_4

    if-nez v5, :cond_4

    if-nez v8, :cond_4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    sget-object p2, Lcom/android/server/am/OnePlusBGController$ProcType;->zta:Lcom/android/server/am/OnePlusBGController$ProcType;

    goto :goto_3

    :cond_4
    :goto_2
    sget-object p2, Lcom/android/server/am/OnePlusBGController$ProcType;->you:Lcom/android/server/am/OnePlusBGController$ProcType;

    :goto_3
    move v4, v3

    :cond_5
    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#### Insert confirmed uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    :cond_6
    if-eqz v2, :cond_8

    sget-object v2, Lcom/android/server/am/OnePlusBGController$ProcType;->zta:Lcom/android/server/am/OnePlusBGController$ProcType;

    if-ne p2, v2, :cond_8

    sget-object v2, Lcom/android/server/am/OnePlusBGController$you;->rtg:[I

    iget-object v4, p0, Lcom/android/server/am/OnePlusBGController;->tsu:Lcom/android/server/am/OnePlusBGController$NetType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v2, v2, v4

    if-eq v2, v3, :cond_7

    goto :goto_4

    :cond_7
    sget-object p2, Lcom/android/server/am/OnePlusBGController$ProcType;->you:Lcom/android/server/am/OnePlusBGController$ProcType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#### Revise special uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    :cond_8
    :goto_4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/OnePlusBGController;->A0(ILcom/android/server/am/OnePlusBGController$ProcType;ILcom/android/server/am/OnePlusBGController$oif;)V

    return-void
.end method

.method static synthetic b(Lcom/android/server/am/OnePlusBGController;)F
    .locals 0

    iget p0, p0, Lcom/android/server/am/OnePlusBGController;->ugm:F

    return p0
.end method

.method private b0(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->oif:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController;->oif:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/OnePlusBGController$zgw;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/OnePlusBGController$zgw;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

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

.method private b1(Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/am/OnePlusBGController$oif;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusBGController;->h0()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lcom/android/server/wm/OpWmInjector;->getSysAlertWindowUids()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x0

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_10

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/OnePlusBGController$oif;

    iget-object v7, v6, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v8, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v7, v8, :cond_e

    invoke-virtual {v6}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v7

    iget-object v8, v0, Lcom/android/server/am/OnePlusBGController;->qbh:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/OnePlusBGController$obl;

    const/16 v9, 0x2710

    if-nez v8, :cond_0

    if-lt v7, v9, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "skip flush uid: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " due to no-exist on Stats"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_0
    if-eqz v8, :cond_1

    iget-object v9, v8, Lcom/android/server/am/OnePlusBGController$obl;->igw:Lcom/android/server/am/OnePlusBGController$ProcType;

    goto :goto_1

    :cond_1
    if-lt v7, v9, :cond_2

    sget-object v9, Lcom/android/server/am/OnePlusBGController$ProcType;->zta:Lcom/android/server/am/OnePlusBGController$ProcType;

    goto :goto_1

    :cond_2
    sget-object v9, Lcom/android/server/am/OnePlusBGController$ProcType;->you:Lcom/android/server/am/OnePlusBGController$ProcType;

    :goto_1
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusBGController$obl;->bio()Z

    move-result v10

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    :goto_2
    iget-wide v11, v6, Lcom/android/server/am/OnePlusBGController$oif;->sis:D

    sget-boolean v13, Lcom/android/server/am/OnePlusBGController;->E:Z

    const-string v14, " mAh"

    const-string v15, " "

    if-eqz v13, :cond_5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "## Insert uid "

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_4

    iget v4, v8, Lcom/android/server/am/OnePlusBGController$obl;->sis:I

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Sus="

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v12}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    :cond_5
    sget-object v4, Lcom/android/server/am/OnePlusBGController$you;->you:[I

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v4, v4, v10

    const/4 v10, 0x2

    if-eq v4, v10, :cond_6

    move-object/from16 v16, v2

    const/4 v1, 0x0

    goto :goto_7

    :cond_6
    invoke-static {v7}, Lcom/android/server/am/OnePlusBGController;->B0(I)Z

    move-result v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x0

    invoke-direct {v0, v7, v10}, Lcom/android/server/am/OnePlusBGController;->R(IZ)Z

    move-result v13

    if-eqz v3, :cond_7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v10, 0x1

    goto :goto_4

    :cond_7
    const/4 v10, 0x0

    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v2

    const-string v2, "#### re-check uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " [Audio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", Sensor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", Network: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", AlertWindow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    if-nez v4, :cond_9

    if-nez v9, :cond_9

    if-nez v13, :cond_9

    if-eqz v10, :cond_8

    goto :goto_5

    :cond_8
    sget-object v9, Lcom/android/server/am/OnePlusBGController$ProcType;->zta:Lcom/android/server/am/OnePlusBGController$ProcType;

    goto :goto_6

    :cond_9
    :goto_5
    sget-object v9, Lcom/android/server/am/OnePlusBGController$ProcType;->you:Lcom/android/server/am/OnePlusBGController$ProcType;

    :goto_6
    const/4 v1, 0x1

    :goto_7
    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### Insert confirmed uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v12}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    :cond_a
    if-eqz v8, :cond_c

    iget-boolean v1, v8, Lcom/android/server/am/OnePlusBGController$obl;->bio:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    sget-object v1, Lcom/android/server/am/OnePlusBGController$ProcType;->zta:Lcom/android/server/am/OnePlusBGController$ProcType;

    if-ne v9, v1, :cond_c

    sget-object v1, Lcom/android/server/am/OnePlusBGController$you;->rtg:[I

    iget-object v4, v0, Lcom/android/server/am/OnePlusBGController;->tsu:Lcom/android/server/am/OnePlusBGController$NetType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v1, v1, v4

    if-eq v1, v2, :cond_b

    goto :goto_8

    :cond_b
    sget-object v9, Lcom/android/server/am/OnePlusBGController$ProcType;->you:Lcom/android/server/am/OnePlusBGController$ProcType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### Revise special uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v12}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    :cond_c
    :goto_8
    if-eqz v8, :cond_d

    iget v1, v8, Lcom/android/server/am/OnePlusBGController$obl;->sis:I

    goto :goto_9

    :cond_d
    const/4 v1, 0x0

    :goto_9
    invoke-direct {v0, v7, v9, v1, v6}, Lcom/android/server/am/OnePlusBGController;->A0(ILcom/android/server/am/OnePlusBGController$ProcType;ILcom/android/server/am/OnePlusBGController$oif;)V

    goto :goto_b

    :cond_e
    :goto_a
    move-object/from16 v16, v2

    :goto_b
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    goto/16 :goto_0

    :cond_f
    const-string v0, "## fetal error, sippers == null"

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method static synthetic bio()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusBGController;->I:Z

    return v0
.end method

.method static synthetic bud(Lcom/android/server/am/OnePlusBGController;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/am/OnePlusBGController;->oxb:F

    return p1
.end method

.method static synthetic bvj()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusBGController;->T:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/android/server/am/OnePlusBGController;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/am/OnePlusBGController;->ugm:F

    return p1
.end method

.method private c0()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->bvj:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->bvj:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->bvj:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusBGController$zgw;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController$zgw;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private c1(Ljava/util/HashSet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->veq:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->veq:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v3, Lcom/android/server/am/OnePlusBGController;->p0:Landroid/content/pm/PackageManager;

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/server/am/OnePlusBGController;->T:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    sput-object v3, Lcom/android/server/am/OnePlusBGController;->p0:Landroid/content/pm/PackageManager;

    :cond_0
    sget-object v3, Lcom/android/server/am/OnePlusBGController;->p0:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController;->veq:Ljava/util/HashSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oops, cant find Fg_Black pkg :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \'s uid"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_1
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->qbh:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge p1, v1, :cond_3

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->qbh:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/OnePlusBGController$obl;

    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController;->veq:Ljava/util/HashSet;

    invoke-virtual {v1}, Lcom/android/server/am/OnePlusBGController$obl;->ssp()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/am/OnePlusBGController$obl;->gck(Z)V

    goto :goto_2

    :cond_2
    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusBGController$obl;->gck(Z)V

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method static synthetic cgv(Lcom/android/server/am/OnePlusBGController;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/am/OnePlusBGController;->obl:F

    return p1
.end method

.method static synthetic cjf(Lcom/android/server/am/OnePlusBGController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusBGController;->a:Z

    return p1
.end method

.method static synthetic cno(Lcom/android/server/am/OnePlusBGController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBGController;->X()V

    return-void
.end method

.method static synthetic d(Lcom/android/server/am/OnePlusBGController;ILcom/android/server/am/OnePlusBGController$ProcType;ILcom/android/server/am/OnePlusBGController$oif;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/OnePlusBGController;->a1(ILcom/android/server/am/OnePlusBGController$ProcType;ILcom/android/server/am/OnePlusBGController$oif;)V

    return-void
.end method

.method static synthetic dma(Lcom/android/server/am/OnePlusBGController;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController;->qbh:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic e(Lcom/android/server/am/OnePlusBGController;)F
    .locals 0

    iget p0, p0, Lcom/android/server/am/OnePlusBGController;->vdb:F

    return p0
.end method

.method static synthetic ear(Lcom/android/server/am/OnePlusBGController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/OnePlusBGController;->h:Z

    return p0
.end method

.method static synthetic f(Lcom/android/server/am/OnePlusBGController;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/am/OnePlusBGController;->vdb:F

    return p1
.end method

.method public static final f0(J)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v1, 0x3e8

    div-long v3, p0, v1

    invoke-static {v0, v3, v4}, Lcom/android/server/am/OnePlusBGController;->g0(Ljava/lang/StringBuilder;J)V

    mul-long/2addr v3, v1

    sub-long/2addr p0, v3

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic fto(Lcom/android/server/am/OnePlusBGController;)I
    .locals 0

    iget p0, p0, Lcom/android/server/am/OnePlusBGController;->ire:I

    return p0
.end method

.method static synthetic g(Lcom/android/server/am/OnePlusBGController;)F
    .locals 0

    iget p0, p0, Lcom/android/server/am/OnePlusBGController;->zgw:F

    return p0
.end method

.method private static final g0(Ljava/lang/StringBuilder;J)V
    .locals 10

    const-wide/32 v0, 0x15180

    div-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "d "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-wide/16 v4, 0x3c

    mul-long/2addr v0, v4

    mul-long/2addr v0, v4

    const-wide/16 v6, 0x18

    mul-long/2addr v0, v6

    sub-long v6, p1, v0

    const-wide/16 v8, 0xe10

    div-long/2addr v6, v8

    cmp-long v8, v6, v2

    if-nez v8, :cond_1

    cmp-long v8, v0, v2

    if-eqz v8, :cond_2

    :cond_1
    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "h "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    mul-long/2addr v6, v4

    mul-long/2addr v6, v4

    add-long/2addr v0, v6

    sub-long v6, p1, v0

    div-long/2addr v6, v4

    cmp-long v8, v6, v2

    if-nez v8, :cond_3

    cmp-long v8, v0, v2

    if-eqz v8, :cond_4

    :cond_3
    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "m "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    mul-long/2addr v6, v4

    add-long/2addr v0, v6

    cmp-long v4, p1, v2

    if-nez v4, :cond_5

    cmp-long v2, v0, v2

    if-eqz v2, :cond_6

    :cond_5
    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "s "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    return-void
.end method

.method static synthetic gck(Lcom/android/server/am/OnePlusBGController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBGController;->X0(I)V

    return-void
.end method

.method static synthetic gwm(Lcom/android/server/am/OnePlusBGController;)Lcom/android/internal/os/MyBatteryStatsHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController;->bud:Lcom/android/internal/os/MyBatteryStatsHelper;

    return-object p0
.end method

.method static synthetic h(Lcom/android/server/am/OnePlusBGController;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/am/OnePlusBGController;->zgw:F

    return p1
.end method

.method private h0()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lcom/android/server/am/OnePlusBGController;->ssp:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController;->igw:Landroid/hardware/SensorManager;

    invoke-virtual {p0, v1}, Landroid/hardware/SensorManager;->getActiveSensorListByHandle(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static synthetic hmo(Lcom/android/server/am/OnePlusBGController;I)Lcom/android/server/am/OnePlusBGController$oif;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBGController;->k0(I)Lcom/android/server/am/OnePlusBGController$oif;

    move-result-object p0

    return-object p0
.end method

.method static synthetic i(Lcom/android/server/am/OnePlusBGController;)F
    .locals 0

    iget p0, p0, Lcom/android/server/am/OnePlusBGController;->fto:F

    return p0
.end method

.method private i0()Ljava/lang/String;
    .locals 8

    sget-object v0, Lcom/android/server/am/OnePlusBGController;->l0:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bgc_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".txt"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/power-history"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_0
    new-instance v2, Lcom/android/server/am/OnePlusBGController$tsu;

    invoke-direct {v2, p0}, Lcom/android/server/am/OnePlusBGController$tsu;-><init>(Lcom/android/server/am/OnePlusBGController;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_7

    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    new-instance v2, Lcom/android/server/am/OnePlusBGController$rtg;

    invoke-direct {v2, p0}, Lcom/android/server/am/OnePlusBGController$rtg;-><init>(Lcom/android/server/am/OnePlusBGController;)V

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_1
    const/4 v2, 0x0

    move v4, v2

    move v5, v4

    :goto_0
    array-length v6, v1

    if-ge v4, v6, :cond_3

    if-nez v5, :cond_2

    aget-object v6, v1, v4

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v5, v3

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v1, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sameDayFlag: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    array-length v4, v1

    if-lez v4, :cond_7

    array-length v4, v1

    iget v6, p0, Lcom/android/server/am/OnePlusBGController;->e:I

    if-lt v4, v6, :cond_7

    array-length v4, v1

    if-eqz v6, :cond_4

    sub-int/2addr v4, v6

    if-ne v5, v3, :cond_5

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_4
    sub-int/2addr v4, v3

    :cond_5
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteCount: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    :goto_2
    if-gt v2, v4, :cond_7

    aget-object v3, v1, v2

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    iget p0, p0, Lcom/android/server/am/OnePlusBGController;->e:I

    if-eqz p0, :cond_8

    return-object v0

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic ibl(Lcom/android/server/am/OnePlusBGController;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController;->i:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic igw(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/am/OnePlusBGController;->I:Z

    return p0
.end method

.method static synthetic ire(Lcom/android/server/am/OnePlusBGController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusBGController;->h:Z

    return p1
.end method

.method static synthetic irq(Lcom/android/server/am/OnePlusBGController;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/am/OnePlusBGController;->cjf:F

    return p1
.end method

.method static synthetic ivd(Lcom/android/server/am/OnePlusBGController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBGController;->Z()V

    return-void
.end method

.method static synthetic j(Lcom/android/server/am/OnePlusBGController;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/am/OnePlusBGController;->fto:F

    return p1
.end method

.method private j0(Lcom/android/server/am/OnePlusBGController$ProcType;)J
    .locals 0

    sget-object p0, Lcom/android/server/am/OnePlusBGController$you;->you:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    const-wide/16 p0, 0xbb8

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0

    :cond_1
    const-wide/16 p0, 0x3a98

    return-wide p0
.end method

.method static synthetic k(Lcom/android/server/am/OnePlusBGController;)F
    .locals 0

    iget p0, p0, Lcom/android/server/am/OnePlusBGController;->hmo:F

    return p0
.end method

.method private k0(I)Lcom/android/server/am/OnePlusBGController$oif;
    .locals 6

    invoke-static {}, Lcom/android/server/am/BatteryStatsServiceInjector;->flushExternal()V

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->kth:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->bud:Lcom/android/internal/os/MyBatteryStatsHelper;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/MyBatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController;->bud:Lcom/android/internal/os/MyBatteryStatsHelper;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/os/MyBatteryStatsHelper;->genSingleBatterySipper(II)Lcom/android/internal/os/BatterySipper;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    new-instance p1, Lcom/android/server/am/OnePlusBGController$oif;

    invoke-direct {p1, p0, v2, v3, v1}, Lcom/android/server/am/OnePlusBGController$oif;-><init>(Lcom/android/internal/os/BatterySipper;JI)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic kth(Lcom/android/server/am/OnePlusBGController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBGController;->N0()V

    return-void
.end method

.method static synthetic l(Lcom/android/server/am/OnePlusBGController;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/am/OnePlusBGController;->hmo:F

    return p1
.end method

.method private l0(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;
    .locals 5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "T="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " |uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |sPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " |pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/am/OnePlusBGController;->T:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v3, p2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v2

    :cond_1
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " |pkgWHD="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " |wLTMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " |TPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->bud:Lcom/android/internal/os/MyBatteryStatsHelper;

    invoke-virtual {v1}, Lcom/android/internal/os/MyBatteryStatsHelper;->getTotalPower()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " |pt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController;->bud:Lcom/android/internal/os/MyBatteryStatsHelper;

    invoke-virtual {p0}, Lcom/android/internal/os/MyBatteryStatsHelper;->getTotalPower()D

    move-result-wide v3

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic les(Lcom/android/server/am/OnePlusBGController;)F
    .locals 0

    iget p0, p0, Lcom/android/server/am/OnePlusBGController;->cjf:F

    return p0
.end method

.method static synthetic lqr(Lcom/android/server/am/OnePlusBGController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/am/OnePlusBGController;->ire:I

    return p1
.end method

.method static synthetic m(Lcom/android/server/am/OnePlusBGController;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController;->lqr:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic n(Lcom/android/server/am/OnePlusBGController;Ljava/util/HashSet;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBGController;->c1(Ljava/util/HashSet;)V

    return-void
.end method

.method public static n0(Ljava/lang/String;)I
    .locals 6

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    const/16 v1, 0xa

    :try_start_0
    new-array v2, v1, [C

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v3, v2, v4, v1}, Ljava/io/FileReader;->read([CII)I

    move-result v1

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2, v4, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v1

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    goto :goto_0

    :catch_0
    :try_start_4
    const-string v1, "BGC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t read node value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/4 p0, -0x1

    return p0

    :goto_0
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p0
.end method

.method static synthetic o(Lcom/android/server/am/OnePlusBGController;)I
    .locals 0

    iget p0, p0, Lcom/android/server/am/OnePlusBGController;->e:I

    return p0
.end method

.method static synthetic obl(Lcom/android/server/am/OnePlusBGController;)Lcom/android/server/am/OnePlusBGController$RomType;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController;->g:Lcom/android/server/am/OnePlusBGController$RomType;

    return-object p0
.end method

.method static synthetic oif(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/am/OnePlusBGController;->G:Z

    return p0
.end method

.method static synthetic oxb(Lcom/android/server/am/OnePlusBGController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/OnePlusBGController;->a:Z

    return p0
.end method

.method static synthetic p(Lcom/android/server/am/OnePlusBGController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/am/OnePlusBGController;->e:I

    return p1
.end method

.method static synthetic q(Lcom/android/server/am/OnePlusBGController;)I
    .locals 0

    iget p0, p0, Lcom/android/server/am/OnePlusBGController;->f:I

    return p0
.end method

.method private q0(Ljava/lang/String;)I
    .locals 3

    const-string p0, "BGC"

    const/4 v0, -0x1

    if-eqz p1, :cond_1

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aget-object p1, p1, v1

    :try_start_0
    sget-object v2, Lcom/android/server/am/OnePlusBGController;->T:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p0, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    move v0, p0

    goto :goto_0

    :cond_0
    const-string p1, "oops, pkgInfo is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get NameNotFoundException error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0
.end method

.method static synthetic qbh()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusBGController;->G:Z

    return v0
.end method

.method static synthetic qeg(Lcom/android/server/am/OnePlusBGController;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/am/OnePlusBGController;->ear:F

    return p1
.end method

.method static synthetic r(Lcom/android/server/am/OnePlusBGController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/am/OnePlusBGController;->f:I

    return p1
.end method

.method static synthetic rtg(Lcom/android/server/am/OnePlusBGController;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OnePlusBGController;->a0(Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic s(Lcom/android/server/am/OnePlusBGController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/OnePlusBGController;->you:Z

    return p0
.end method

.method static synthetic sis()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusBGController;->c0:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ssp(Lcom/android/server/am/OnePlusBGController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBGController;->c0()V

    return-void
.end method

.method static synthetic t(Lcom/android/server/am/OnePlusBGController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusBGController;->you:Z

    return p1
.end method

.method static synthetic tsu()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusBGController;->d0:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic u(Lcom/android/server/am/OnePlusBGController;IJII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/OnePlusBGController;->U0(IJII)V

    return-void
.end method

.method static synthetic ugm(Lcom/android/server/am/OnePlusBGController;Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusBGController;->l0(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic v()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusBGController;->K:Z

    return v0
.end method

.method private v0()V
    .locals 3

    const-string p0, "BGC"

    :try_start_0
    sget-object v0, Lcom/android/server/am/OnePlusBGController;->T:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.google.android.gms"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    sput v0, Lcom/android/server/am/OnePlusBGController;->N:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get GMS Uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/OnePlusBGController;->N:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Can\'t get GMS Uid"

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get NameNotFoundException error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic vdb(Lcom/android/server/am/OnePlusBGController;)Lcom/android/server/vdb;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController;->cno:Lcom/android/server/vdb;

    return-object p0
.end method

.method static synthetic vdw(Lcom/android/server/am/OnePlusBGController;)F
    .locals 0

    iget p0, p0, Lcom/android/server/am/OnePlusBGController;->ear:F

    return p0
.end method

.method static synthetic veq(Lcom/android/server/am/OnePlusBGController;)F
    .locals 0

    iget p0, p0, Lcom/android/server/am/OnePlusBGController;->obl:F

    return p0
.end method

.method static synthetic vju(Lcom/android/server/am/OnePlusBGController;)F
    .locals 0

    iget p0, p0, Lcom/android/server/am/OnePlusBGController;->oxb:F

    return p0
.end method

.method static synthetic w(Lcom/android/server/am/OnePlusBGController;ZI)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusBGController;->D0(ZI)Z

    move-result p0

    return p0
.end method

.method private w0()V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/OnePlusBGController;->K:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/OnePlusBGController;->K:Z

    const-string v1, "==initObservingUid=="

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/OnePlusBGController;->x0()V

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->ywr:Lcom/android/server/am/OnePlusBGController$UidObserver;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/OnePlusBGController;->y0(Landroid/app/IUidObserver;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/OnePlusBGController;->e0(Z)V

    :cond_0
    return-void
.end method

.method static synthetic wtn(Lcom/android/server/am/OnePlusBGController;)Lcom/android/server/am/BatteryStatsService;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController;->kth:Lcom/android/server/am/BatteryStatsService;

    return-object p0
.end method

.method static synthetic x()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusBGController;->J:Z

    return v0
.end method

.method static synthetic y(Lcom/android/server/am/OnePlusBGController;Lcom/android/server/am/OnePlusBGController$ProcType;)J
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBGController;->j0(Lcom/android/server/am/OnePlusBGController$ProcType;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic you(Lcom/android/server/am/OnePlusBGController;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBGController;->q0(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic ywr(Lcom/android/server/am/OnePlusBGController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBGController;->W0()V

    return-void
.end method

.method static synthetic z(Lcom/android/server/am/OnePlusBGController;IJLcom/android/server/am/OnePlusBGController$obl;Lcom/android/server/am/OnePlusBGController$ProcType;I)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/OnePlusBGController;->V0(IJLcom/android/server/am/OnePlusBGController$obl;Lcom/android/server/am/OnePlusBGController$ProcType;I)V

    return-void
.end method

.method static synthetic zgw(Lcom/android/server/am/OnePlusBGController;Lcom/android/server/vdb;)Lcom/android/server/vdb;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController;->cno:Lcom/android/server/vdb;

    return-object p1
.end method

.method static synthetic zta()Ljava/util/HashSet;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusBGController;->e0:Ljava/util/HashSet;

    return-object v0
.end method


# virtual methods
.method public F0(I)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/android/server/am/OnePlusBGController;->ssp:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController;->igw:Landroid/hardware/SensorManager;

    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getActiveSensorListByHandle(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public I0(II)Z
    .locals 0

    iget-boolean p1, p0, Lcom/android/server/am/OnePlusBGController;->zta:Z

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusBGController;->D0(ZI)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xc

    if-eq p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method L0()V
    .locals 5

    const-string v0, "[OnlineConfig] registerOnlineConfig"

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    sget-object v1, Lcom/android/server/am/OnePlusBGController;->T:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->wtn:Lcom/android/server/am/OnePlusBGController$ibl;

    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController;->dma:Lcom/android/server/am/OnePlusBGController$bvj;

    const-string v4, "BGC"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusBGController;->gck:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    return-void
.end method

.method public M0(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "===removeUidStats "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "=== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->wtn:Lcom/android/server/am/OnePlusBGController$ibl;

    const v1, 0x101dc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController;->wtn:Lcom/android/server/am/OnePlusBGController$ibl;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public P0(Ljava/io/PrintWriter;)V
    .locals 5

    const-string v0, "===resetClean==="

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/am/OnePlusBGController;->K:Z

    if-nez v0, :cond_0

    const-string p0, "BGC not yet init well(wait 5min after booting), just return"

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusBGController;->b:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/am/OnePlusBGController;->c:J

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController;->c:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetClean at: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/OnePlusBGController;->c:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/am/OnePlusBGController;->f0:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/am/OnePlusBGController;->d:J

    invoke-virtual {p0, v0}, Lcom/android/server/am/OnePlusBGController;->t0(Z)V

    const-string p0, "Enable BGC testing procedure mode, start skipping any MDM data reporting on 03:00AM"

    :goto_0
    invoke-static {p0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public Q0(Ljava/util/HashSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->wtn:Lcom/android/server/am/OnePlusBGController$ibl;

    const v1, 0x101d6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->wtn:Lcom/android/server/am/OnePlusBGController$ibl;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController;->wtn:Lcom/android/server/am/OnePlusBGController$ibl;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method R0()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->igw:Landroid/hardware/SensorManager;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->isWakeUpSensor()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v2

    iput v2, p0, Lcom/android/server/am/OnePlusBGController;->ssp:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update StepCounterHandle to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/OnePlusBGController;->ssp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public Y(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 8

    const-string v0, "get IOException error: "

    const-string v1, "BGC"

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/power-history"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Lcom/android/server/am/OnePlusBGController$ssp;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusBGController$ssp;-><init>(Lcom/android/server/am/OnePlusBGController;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_4

    array-length v3, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    new-instance v3, Lcom/android/server/am/OnePlusBGController$cno;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusBGController$cno;-><init>(Lcom/android/server/am/OnePlusBGController;)V

    invoke-static {v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_0
    const/4 p0, 0x0

    :goto_0
    array-length v3, v2

    if-ge p0, v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v2, p0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v2, p0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    aget-object v6, v2, p0

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_1
    move-exception v3

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_2
    move-exception v4

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    :goto_3
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_2

    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :cond_2
    :goto_4
    add-int/lit8 p0, p0, 0x1

    goto/16 :goto_0

    :catchall_1
    move-exception p0

    move-object v3, v4

    :goto_5
    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    :catch_4
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_6
    throw p0

    :cond_4
    return-void
.end method

.method public Y0(Lcom/android/server/am/OnePlusBGController$SnapshotType;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->wtn:Lcom/android/server/am/OnePlusBGController$ibl;

    new-instance v1, Lcom/android/server/am/OnePlusBGController$gwm;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/OnePlusBGController$gwm;-><init>(Lcom/android/server/am/OnePlusBGController;Lcom/android/server/am/OnePlusBGController$SnapshotType;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d0(Ljava/io/PrintWriter;Lcom/android/server/am/OnePlusBGController$PersistType;Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;)V
    .locals 11

    sput-object p3, Lcom/android/server/am/OnePlusBGController;->H:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;

    sget-object v0, Lcom/android/server/am/OnePlusBGController$you;->sis:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    move-object v0, v1

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusBGController$PersistType;->you:Lcom/android/server/am/OnePlusBGController$PersistType;

    if-ne p2, v0, :cond_1

    new-instance v0, Ljava/io/File;

    const-string v5, "/data/system/latest_daily_bgc.txt"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/OnePlusBGController;->i0()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/File;

    const-string v5, "/data/system/power-history"

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBGController;->i0()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v5

    goto :goto_1

    :catch_0
    move-exception v5

    const-string v6, "BGC"

    const-string v7, "FileNotFoundException, error = "

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    :cond_2
    :try_start_2
    const-string p0, "BGC"

    const-string p1, "history-saving is disabled, do nothing"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Prepare History-File Exception:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BGC"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :cond_3
    move-object v0, v1

    move-object v1, p1

    :goto_1
    if-eqz v1, :cond_f

    const-string v5, "BGC_Version: 2"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    iget-wide v6, p0, Lcom/android/server/am/OnePlusBGController;->c:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resetClean at: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/android/server/am/OnePlusBGController;->c:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/server/am/OnePlusBGController;->f0:Ljava/text/SimpleDateFormat;

    invoke-virtual {v7, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    iget-wide v6, p0, Lcom/android/server/am/OnePlusBGController;->d:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getResult at: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/android/server/am/OnePlusBGController;->d:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/server/am/OnePlusBGController;->f0:Ljava/text/SimpleDateFormat;

    invoke-virtual {v7, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "Time Away From Budget Reset="

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/server/am/OnePlusBGController;->rtg:J

    sub-long/2addr v5, v7

    invoke-static {v5, v6, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BGC Criteria : H:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/am/OnePlusBGController;->ugm:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "] / G:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/am/OnePlusBGController;->vdb:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "] / L:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/am/OnePlusBGController;->zgw:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "] / [S: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/am/OnePlusBGController;->hmo:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", R: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/am/OnePlusBGController;->fto:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reporting Criteria : Total:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/am/OnePlusBGController;->obl:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "] / Top:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/am/OnePlusBGController;->oxb:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "] / Mid:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/am/OnePlusBGController;->cjf:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "] / Bg:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/am/OnePlusBGController;->ear:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mRomType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/OnePlusBGController;->g:Lcom/android/server/am/OnePlusBGController$RomType;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", mDailyReportEnabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/am/OnePlusBGController;->a:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mUnderListOnly: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/am/OnePlusBGController;->h:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mDetailType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/am/OnePlusBGController;->ire:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/android/server/am/OnePlusBGController;->oif:Landroid/util/SparseArray;

    monitor-enter v6

    const/4 v7, 0x0

    move v8, v7

    :goto_2
    :try_start_3
    iget-object v9, p0, Lcom/android/server/am/OnePlusBGController;->oif:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_5

    iget-object v9, p0, Lcom/android/server/am/OnePlusBGController;->oif:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    iget-object v10, p0, Lcom/android/server/am/OnePlusBGController;->oif:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/OnePlusBGController$zgw;

    if-eqz v9, :cond_4

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sget-object v6, Lcom/android/server/am/OnePlusBGController$you;->tsu:[I

    invoke-virtual {p3}, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;->ordinal()I

    move-result p3

    aget p3, v6, p3

    if-eq p3, v4, :cond_9

    if-eq p3, v3, :cond_8

    if-eq p3, v2, :cond_7

    const/4 v6, 0x4

    if-eq p3, v6, :cond_6

    goto :goto_4

    :cond_6
    sget-object p3, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;->ACC_TOP:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;

    sput-object p3, Lcom/android/server/am/OnePlusBGController;->H:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;

    iget-object p3, p0, Lcom/android/server/am/OnePlusBGController;->n:Ljava/util/Comparator;

    goto :goto_3

    :cond_7
    sget-object p3, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;->ACC_BG:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;

    sput-object p3, Lcom/android/server/am/OnePlusBGController;->H:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;

    iget-object p3, p0, Lcom/android/server/am/OnePlusBGController;->m:Ljava/util/Comparator;

    goto :goto_3

    :cond_8
    sget-object p3, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;->TOP:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;

    sput-object p3, Lcom/android/server/am/OnePlusBGController;->H:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;

    iget-object p3, p0, Lcom/android/server/am/OnePlusBGController;->l:Ljava/util/Comparator;

    goto :goto_3

    :cond_9
    sget-object p3, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;->BG:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;

    sput-object p3, Lcom/android/server/am/OnePlusBGController;->H:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;

    iget-object p3, p0, Lcom/android/server/am/OnePlusBGController;->k:Ljava/util/Comparator;

    :goto_3
    invoke-static {v5, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_4
    sget-object p3, Lcom/android/server/am/OnePlusBGController$PersistType;->sis:Lcom/android/server/am/OnePlusBGController$PersistType;

    if-ne p2, p3, :cond_b

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p3

    iget v6, p0, Lcom/android/server/am/OnePlusBGController;->f:I

    if-le p3, v6, :cond_a

    goto :goto_5

    :cond_a
    move v4, v7

    :goto_5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OrderType: "

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/server/am/OnePlusBGController;->H:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", MaxDay: "

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/am/OnePlusBGController;->e:I

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", MaxCount: "

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/am/OnePlusBGController;->f:I

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", TotalSize: "

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", Overflow: "

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_b
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OrderType: "

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/am/OnePlusBGController;->H:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", MaxDay: "

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/am/OnePlusBGController;->e:I

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", MaxCount: "

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/am/OnePlusBGController;->f:I

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", TotalSize: "

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_6
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_7
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p3

    if-ge v7, p3, :cond_d

    sget-object p3, Lcom/android/server/am/OnePlusBGController$PersistType;->sis:Lcom/android/server/am/OnePlusBGController$PersistType;

    if-ne p2, p3, :cond_c

    iget p3, p0, Lcom/android/server/am/OnePlusBGController;->f:I

    if-lt v7, p3, :cond_c

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reach up the maximum record-size of day: "

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/OnePlusBGController;->f:I

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    goto :goto_8

    :cond_c
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/am/OnePlusBGController$zgw;

    invoke-virtual {p3}, Lcom/android/server/am/OnePlusBGController$zgw;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_d
    :goto_8
    sget-object p0, Lcom/android/server/am/OnePlusBGController$you;->sis:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p0, p0, p2

    if-eq p0, v3, :cond_e

    if-eq p0, v2, :cond_e

    goto :goto_9

    :cond_e
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "BGC result is ready on "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", order by "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/android/server/am/OnePlusBGController;->H:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    if-eqz p1, :cond_f

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9

    :catchall_0
    move-exception p0

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :cond_f
    :goto_9
    return-void
.end method

.method public d1(Lcom/android/server/am/OnePlusBGController$NetType;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==updateNetworkReachability== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController;->tsu:Lcom/android/server/am/OnePlusBGController$NetType;

    const p1, 0x101d9

    const-wide/16 v0, 0xbb8

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/am/OnePlusBGController;->T0(IJ)V

    return-void
.end method

.method public e0(Z)V
    .locals 0

    sput-boolean p1, Lcom/android/server/am/OnePlusBGController;->J:Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "mbEnableDispatch set to "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/android/server/am/OnePlusBGController;->J:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    return-void
.end method

.method public e1()Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->oif:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController;->vju:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->oif:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->oif:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusBGController$zgw;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController$zgw;->gck()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/am/OnePlusBGController;->S(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController;->vju:Ljava/util/HashSet;

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController$zgw;->gck()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController;->vju:Ljava/util/HashSet;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public m0()I
    .locals 0

    sget p0, Lcom/android/server/am/OnePlusBGController;->N:I

    return p0
.end method

.method public o0(Ljava/io/PrintWriter;Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=== getResult === order by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/am/OnePlusBGController;->K:Z

    if-nez v0, :cond_0

    const-string p0, "BGC not yet init well(wait 5min after booting), just return"

    invoke-static {p0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController;->d:J

    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusBGController;->d:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getResult at: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/am/OnePlusBGController;->f0:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/am/OnePlusBGController$PersistType;->you:Lcom/android/server/am/OnePlusBGController$PersistType;

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/am/OnePlusBGController;->d0(Ljava/io/PrintWriter;Lcom/android/server/am/OnePlusBGController$PersistType;Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;)V

    :goto_0
    return-void
.end method

.method public p0()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/android/server/am/OnePlusBGController;->ssp:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController;->igw:Landroid/hardware/SensorManager;

    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getActiveSensorListByHandle(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method r0()V
    .locals 3

    const-string v0, "[OnlineConfig] grabOnlineConfig"

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    sget-object v1, Lcom/android/server/am/OnePlusBGController;->T:Landroid/content/Context;

    const-string v2, "BGC"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController;->dma:Lcom/android/server/am/OnePlusBGController$bvj;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/OnePlusBGController$bvj;->zta(Lorg/json/JSONArray;)V

    return-void
.end method

.method s0(II)V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/OnePlusBGController;->E:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUidStateChanged: uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->qbh:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_2

    new-instance v0, Lcom/android/server/am/OnePlusBGController$obl;

    iget-boolean v1, p0, Lcom/android/server/am/OnePlusBGController;->zta:Z

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/android/server/am/OnePlusBGController$obl;-><init>(Lcom/android/server/am/OnePlusBGController;IZI)V

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController;->qbh:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->qbh:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OnePlusBGController$obl;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/android/server/am/OnePlusBGController$obl;->wtn(IZ)V

    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    iget-object p2, p0, Lcom/android/server/am/OnePlusBGController;->oif:Landroid/util/SparseArray;

    monitor-enter p2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController;->oif:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/OnePlusBGController$zgw;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/am/OnePlusBGController$zgw;->qbh()V

    :cond_3
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    :goto_0
    return-void
.end method

.method public t0(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "===informBGCDailyReporting=== forQuickDebug: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->wtn:Lcom/android/server/am/OnePlusBGController$ibl;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const v1, 0x101db

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController;->wtn:Lcom/android/server/am/OnePlusBGController$ibl;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public u0()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "===informBatteryStatReset=== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->H0(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->oif:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->oif:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController;->oif:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusBGController$zgw;

    sget-object v3, Lcom/android/server/am/OnePlusBGController$CleanType;->tsu:Lcom/android/server/am/OnePlusBGController$CleanType;

    invoke-virtual {v2, v3}, Lcom/android/server/am/OnePlusBGController$zgw;->you(Lcom/android/server/am/OnePlusBGController$CleanType;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

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

.method x0()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController;->qbh:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    iget v4, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v6, v4, :cond_1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_1
    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/android/server/am/OnePlusBGController;->s0(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_3
    return-void
.end method

.method y0(Landroid/app/IUidObserver;I)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController;->bio:Lcom/android/server/am/ActivityManagerService;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/am/ActivityManagerService;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    return-void
.end method

.method z0(Landroid/app/IUidObserver;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController;->bio:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    return-void
.end method
