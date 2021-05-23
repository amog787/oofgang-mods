.class public Lcom/android/server/am/OnePlusHighPowerDetector;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OnePlusHighPowerDetector$cno;,
        Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;,
        Lcom/android/server/am/OnePlusHighPowerDetector$ssp;,
        Lcom/android/server/am/OnePlusHighPowerDetector$bio;,
        Lcom/android/server/am/OnePlusHighPowerDetector$igw;,
        Lcom/android/server/am/OnePlusHighPowerDetector$wtn;,
        Lcom/android/server/am/OnePlusHighPowerDetector$dma;,
        Lcom/android/server/am/OnePlusHighPowerDetector$gck;,
        Lcom/android/server/am/OnePlusHighPowerDetector$kth;
    }
.end annotation


# static fields
.field static final A0:I

.field private static final A1:I = 0x0

.field public static final A2:Ljava/lang/String; = "bucket_rank"

.field static final B0:J

.field private static final B1:I = 0x1

.field public static final B2:Ljava/lang/String; = "criteria"

.field static final C0:I

.field private static final C1:I = 0x0

.field public static final C2:Ljava/lang/String; = "relief"

.field static final D0:J

.field private static final D1:I = 0x1

.field private static D2:Ljava/lang/Object; = null

.field static final E0:Z

.field static E1:I = 0x0

.field private static final E2:Ljava/lang/String; = "BackgroundDetection"

.field private static final F0:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field static F1:I = 0x0

.field private static final F2:Ljava/lang/String; = "ohpd.action.test"

.field private static final G0:Ljava/lang/String; = "com.oem.intent.action.force_stop_pkg"

.field static final G1:I

.field private static final H0:Ljava/lang/String; = "com.oem.intent.action.force_stop_high_pkg"

.field static H1:I = 0x0

.field private static final I0:Ljava/lang/String; = "com.oem.intent.action.enable_force_stop_feature"

.field static I1:I = 0x0

.field private static final J0:Ljava/lang/String; = "com.oem.intent.action.ignore_pkg"

.field static J1:I = 0x0

.field private static final K0:Ljava/lang/String; = "com.oem.intent.action.ignore_high_pkg"

.field static K1:I = 0x0

.field private static final L0:Ljava/lang/String; = "ohpd_notification_rules_apps"

.field static L1:Z = false

.field private static final M0:Ljava/lang/String; = "ohpd_suggestion_info"

.field static M1:Z = false

.field private static final N0:Ljava/lang/String; = "|"

.field static final N1:[I

.field private static final O0:Ljava/lang/String; = "\\|"

.field static final O1:[I

.field private static final P0:Ljava/lang/String; = "com.oem.intent.action.ignore_bgc_pkg"

.field public static final P1:I = 0x4

.field private static final Q0:Ljava/lang/String; = "bgc_notification_rules_apps"

.field static final Q1:[I

.field private static final R0:Ljava/lang/String; = "com.oem.intent.action.bgc_clean_noti"

.field static final R1:[I

.field private static final S0:Ljava/lang/String; = "android.settings.APP_BATTERY_SETTINGS"

.field static S1:I = 0x0

.field public static final T:I = 0x103b975

.field private static final T0:Ljava/lang/String; = "com.oem.intent.action.ignore_bgc_pkg"

.field static T1:I = 0x0

.field public static U:Z = true

.field private static final U0:I = 0x0

.field static U1:I = 0x0

.field public static V:Z = false

.field private static final V0:I = 0x1

.field static V1:I = 0x0

.field static final W:J = 0x5265c00L

.field private static final W0:I = 0x2

.field static W1:I = 0x0

.field static final X:J = 0x36ee80L

.field private static final X0:I = 0x3

.field private static X1:Ljava/lang/String; = null

.field public static final Y:Ljava/lang/String; = "OHPD"

.field private static final Y0:Ljava/lang/String; = "com.oem.intent.action.POWER_NOTIFICATION_CANCEL"

.field private static final Y1:Ljava/lang/String; = "com_oneplus_systemui_recent_task_lockd_list"

.field private static final Z:Ljava/lang/String; = "persist.sys.ohpd.enable"

.field private static Z0:Lcom/android/server/am/OnePlusHighPowerDetector; = null

.field public static final Z1:I = 0x1

.field private static final a0:Ljava/lang/String; = "persist.sys.ohpd.debug"

.field private static final a1:Ljava/lang/String; = "com.oneplus:string/config_overheat_thermal_zone_path"

.field private static final a2:I = 0x3e7

.field private static final b0:Ljava/lang/String; = "persist.sys.ohpd.debug.bg"

.field public static final b1:I = 0xd6d8

.field private static b2:Z = false

.field private static final c0:Ljava/lang/String; = "persist.sys.ohpd.threshold"

.field public static final c1:I = 0xd6d9

.field static c2:Ljava/lang/Object; = null

.field private static final d0:Ljava/lang/String; = "persist.sys.ohpd.notify"

.field public static final d1:I = 0xd6da

.field static d2:Ljava/lang/Object; = null

.field private static final e0:Ljava/lang/String; = "persist.sys.bgc.notify"

.field public static final e1:I = 0xd6db

.field private static e2:Lcom/android/server/am/BatteryStatsService; = null

.field private static final f0:Ljava/lang/String; = "persist.sys.bgc.multiply"

.field public static final f1:I = 0xd6dc

.field private static f2:Lcom/android/server/am/ActivityManagerService; = null

.field private static final g0:Ljava/lang/String; = "persist.sys.sug.notify"

.field public static final g1:I = 0xd6dd

.field private static g2:Landroid/content/Context; = null

.field private static final h0:Ljava/lang/String; = "persist.sys.sug.multiply"

.field public static final h1:I = 0xd6de

.field private static h2:Lcom/android/server/am/OnePlusHighPowerDetector$igw; = null

.field private static final i0:Ljava/lang/String; = "persist.sys.ohpd.pd.temp.thold"

.field public static final i1:I = 0xd6df

.field private static i2:Z = false

.field private static final j0:Ljava/lang/String; = "persist.sys.ohpd.pd.usg.thold"

.field public static final j1:I = 0xd6e0

.field private static final j2:I = 0x417

.field private static final k0:Ljava/lang/String; = "persist.sys.ohpd.rnk.med.usg"

.field public static final k1:I = 0xd6e1

.field private static k2:Z = false

.field private static final l0:Ljava/lang/String; = "persist.sys.ohpd.pd.on.lastfg"

.field public static final l1:I = 0xd6e2

.field private static l2:Z = false

.field private static final m0:Ljava/lang/String; = "persist.sys.ohpd.pd.off.lastfg"

.field public static final m1:I = 0xd6e3

.field private static m2:Ljava/lang/Object; = null

.field private static final n0:Ljava/lang/String; = "persist.sys.ohpd.onlineconfig"

.field public static final n1:I = 0xd6e4

.field private static final n2:I = -0x1

.field private static final o0:Ljava/lang/String; = "persist.sys.ohpd.flags"

.field public static final o1:I = 0xd6e5

.field private static o2:Ljava/lang/String; = null

.field private static final p0:Ljava/lang/String; = "gsm.sim.operator.iso-country"

.field public static final p1:I = 0xd6e6

.field private static p2:I = 0x0

.field private static final q0:Ljava/lang/String; = "persist.sys.ohpd.kcheck"

.field public static final q1:I = 0xd6e7

.field private static q2:Z = false

.field private static final r0:Ljava/lang/String; = "persist.sys.ohpd.skip.on"

.field public static final r1:I = 0xd6e8

.field private static r2:Z = false

.field private static final s0:Ljava/lang/String; = "persist.sys.ohpd.idle_debug"

.field public static final s1:I = 0xd6e9

.field private static s2:Z = false

.field static final t0:Z

.field public static final t1:I = 0xd6ea

.field private static t2:Z = false

.field private static final u0:Ljava/lang/String; = "persist.sys.ohpd.bgc_debug"

.field public static final u1:Ljava/lang/String; = "camera_proc_busy"

.field private static u2:Z = false

.field private static final v0:Ljava/lang/String; = "persist.sys.bgc"

.field public static final v1:Ljava/lang/String; = "proc"

.field public static final v2:Ljava/lang/String; = "NYNCG4I0TI"

.field private static final w0:Ljava/lang/String; = "persist.sys.ohpd.isolated"

.field public static final w1:Ljava/lang/String; = "cpu_usage"

.field public static final w2:Ljava/lang/String; = "native_proc_busy"

.field static final x0:Z

.field public static final x1:Ljava/lang/String; = "handled"

.field public static final x2:Ljava/lang/String; = "BGC"

.field static final y0:Z

.field public static final y1:J = 0x7530L

.field public static final y2:Ljava/lang/String; = "pkg"

.field static final z0:J

.field public static final z1:J = 0x2710L

.field public static final z2:Ljava/lang/String; = "drain_type"


# instance fields
.field A:I

.field B:I

.field C:I

.field D:I

.field E:I

.field F:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final G:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusHighPowerDetector$ssp;",
            ">;"
        }
    .end annotation
.end field

.field H:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field I:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field J:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field K:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field L:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private M:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private N:Landroid/os/PowerManager;

.field O:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusHighPowerDetector$gck;",
            ">;"
        }
    .end annotation
.end field

.field private P:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private Q:Lcom/android/server/am/OnePlusHighPowerDetector$kth;

.field private R:Lcom/oneplus/config/ConfigObserver;

.field private S:Landroid/content/BroadcastReceiver;

.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bio:Z

.field private bud:J

.field bvj:J

.field c:Ljava/lang/String;

.field private cgv:I

.field private cjf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field cno:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field dma:[J

.field e:Ljava/lang/String;

.field private ear:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field f:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fto:Z

.field g:Lcom/android/internal/statusbar/IStatusBarService;

.field gck:I

.field private gwm:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/lang/String;

.field private hmo:J

.field i:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field ibl:Z

.field private igw:Lcom/android/server/ire;

.field private ire:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private irq:Z

.field private ivd:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field j:I

.field k:Landroid/content/ContentResolver;

.field private kth:Z

.field l:Landroid/database/ContentObserver;

.field private les:Lnet/oneplus/odm/OpDeviceManagerInjector;

.field private lqr:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:Lcom/android/server/am/OnePlusHighPowerDetector$dma;

.field o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusHighPowerDetector$wtn;",
            ">;"
        }
    .end annotation
.end field

.field private obl:Z

.field oif:I

.field private final oxb:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field p:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusHighPowerDetector$wtn;",
            ">;"
        }
    .end annotation
.end field

.field final q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/highpower/HighPowerApp;",
            ">;"
        }
    .end annotation
.end field

.field qbh:Z

.field private qeg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final r:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/highpower/HighPowerApp;",
            ">;"
        }
    .end annotation
.end field

.field private rtg:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;

.field final s:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/highpower/HighPowerApp;",
            ">;"
        }
    .end annotation
.end field

.field private sis:Z

.field private ssp:Z

.field final t:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/highpower/HighPowerApp;",
            ">;"
        }
    .end annotation
.end field

.field private tsu:Z

.field final u:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/highpower/HighPowerApp;",
            ">;"
        }
    .end annotation
.end field

.field private ugm:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final v:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/highpower/HighPowerApp;",
            ">;"
        }
    .end annotation
.end field

.field private vdb:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private vdw:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private veq:J

.field private vju:Lcom/android/server/am/OnePlusHighPowerDetector$ssp;

.field final w:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/highpower/HighPowerApp;",
            ">;"
        }
    .end annotation
.end field

.field wtn:J

.field final x:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusHighPowerDetector$ssp;",
            ">;"
        }
    .end annotation
.end field

.field y:Z

.field you:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/OnePlusBGController$vdb;",
            ">;"
        }
    .end annotation
.end field

.field private ywr:Lcom/android/server/AppStateTracker;

.field z:Z

.field private zgw:Landroid/location/LocationManager;

.field private zta:Lcom/android/server/am/OnePlusBGController;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    const-string v0, "persist.sys.ohpd.idle_debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->t0:Z

    const-string v0, "persist.sys.ohpd.isolated"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->x0:Z

    const-string v0, "persist.sys.ohpd.debug.bg"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->y0:Z

    const-string v0, "persist.sys.ohpd.notify"

    const-wide/32 v2, 0x36ee80

    invoke-static {v0, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lcom/android/server/am/OnePlusHighPowerDetector;->z0:J

    const-string v0, "persist.sys.bgc.multiply"

    const/4 v2, 0x7

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->A0:I

    const-string v0, "persist.sys.bgc.notify"

    const-wide/32 v3, 0x5265c00

    invoke-static {v0, v3, v4}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    sput-wide v5, Lcom/android/server/am/OnePlusHighPowerDetector;->B0:J

    const-string v0, "persist.sys.sug.multiply"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->C0:I

    const-string v0, "persist.sys.sug.notify"

    invoke-static {v0, v3, v4}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lcom/android/server/am/OnePlusHighPowerDetector;->D0:J

    const-string v0, "persist.sys.ohpd.onlineconfig"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->E0:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->Z0:Lcom/android/server/am/OnePlusHighPowerDetector;

    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->y0:Z

    const/16 v3, 0x3c

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    const/16 v0, 0xb4

    :goto_0
    mul-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->E1:I

    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->y0:Z

    const/16 v4, 0x12c

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    mul-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->F1:I

    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->y0:Z

    const/16 v5, 0xa

    if-eqz v0, :cond_2

    move v0, v5

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_2
    mul-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->G1:I

    const v0, 0x1b7740

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->H1:I

    const v0, 0x493e0

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->I1:I

    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->y0:Z

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_3

    :cond_3
    move v0, v4

    :goto_3
    mul-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->J1:I

    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->y0:Z

    const/4 v6, 0x2

    if-eqz v0, :cond_4

    move v0, v6

    goto :goto_4

    :cond_4
    const/16 v0, 0x14

    :goto_4
    mul-int/2addr v0, v3

    mul-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->K1:I

    sput-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->L1:Z

    sput-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->M1:Z

    const/4 v0, 0x4

    new-array v7, v0, [I

    sget-boolean v8, Lcom/android/server/am/OnePlusHighPowerDetector;->y0:Z

    if-eqz v8, :cond_5

    move v8, v3

    goto :goto_5

    :cond_5
    move v8, v4

    :goto_5
    mul-int/lit16 v8, v8, 0x3e8

    aput v8, v7, v1

    sget-boolean v8, Lcom/android/server/am/OnePlusHighPowerDetector;->y0:Z

    if-eqz v8, :cond_6

    goto :goto_6

    :cond_6
    move v3, v4

    :goto_6
    mul-int/lit16 v3, v3, 0x3e8

    aput v3, v7, v2

    sget-boolean v3, Lcom/android/server/am/OnePlusHighPowerDetector;->y0:Z

    const/16 v4, 0x78

    if-eqz v3, :cond_7

    move v3, v4

    goto :goto_7

    :cond_7
    const/16 v3, 0x258

    :goto_7
    mul-int/lit16 v3, v3, 0x3e8

    aput v3, v7, v6

    const/4 v3, 0x3

    sget-boolean v8, Lcom/android/server/am/OnePlusHighPowerDetector;->y0:Z

    if-eqz v8, :cond_8

    goto :goto_8

    :cond_8
    const/16 v4, 0x4b0

    :goto_8
    mul-int/lit16 v4, v4, 0x3e8

    aput v4, v7, v3

    sput-object v7, Lcom/android/server/am/OnePlusHighPowerDetector;->N1:[I

    new-array v3, v0, [I

    fill-array-data v3, :array_0

    sput-object v3, Lcom/android/server/am/OnePlusHighPowerDetector;->O1:[I

    new-array v3, v0, [I

    fill-array-data v3, :array_1

    sput-object v3, Lcom/android/server/am/OnePlusHighPowerDetector;->Q1:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->R1:[I

    sput v5, Lcom/android/server/am/OnePlusHighPowerDetector;->S1:I

    const/high16 v0, 0x1400000

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->T1:I

    sput v5, Lcom/android/server/am/OnePlusHighPowerDetector;->U1:I

    sput v6, Lcom/android/server/am/OnePlusHighPowerDetector;->V1:I

    const/16 v0, 0x2c

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->W1:I

    const-string v0, "/sys/class/thermal/thermal_zone27/temp"

    sput-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->X1:Ljava/lang/String;

    sput-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->b2:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->c2:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->d2:Ljava/lang/Object;

    sput-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->i2:Z

    sput-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->k2:Z

    sput-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->l2:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->m2:Ljava/lang/Object;

    const-string v0, ""

    sput-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->o2:Ljava/lang/String;

    sput v1, Lcom/android/server/am/OnePlusHighPowerDetector;->p2:I

    sput-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->q2:Z

    sput-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->r2:Z

    sput-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->s2:Z

    sput-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->t2:Z

    sput-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->u2:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->D2:Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 4
        0xd6d8
        0xd6d9
        0xd6da
        0xd6de
    .end array-data

    :array_1
    .array-data 4
        0x3e8
        0x14
        0xf
        0x3e8
    .end array-data

    :array_2
    .array-data 4
        0x14
        0xf
        0xa
        0x14
    .end array-data
.end method

.method private constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/BatteryStatsService;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->you:Landroid/util/SparseArray;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->sis:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->tsu:Z

    sget-object v2, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;->NA:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->rtg:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ssp:Z

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->cno:Ljava/util/HashSet;

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->kth:Z

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->bio:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->wtn:J

    iput v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->gck:I

    const/4 v4, 0x4

    new-array v4, v4, [J

    iput-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->dma:[J

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->qbh:Z

    iput v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->oif:I

    iput-wide v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->bvj:J

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ibl:Z

    const-string v4, "persist.sys.bgc"

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->obl:Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->oxb:Ljava/util/ArrayList;

    iput-wide v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->hmo:J

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->fto:Z

    const-string v4, "android.hardware.camera.provider@2.4-service"

    iput-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->lqr:Ljava/lang/String;

    iput-wide v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->veq:J

    const/16 v4, 0x50

    iput v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->cgv:I

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vju:Lcom/android/server/am/OnePlusHighPowerDetector$ssp;

    iput-wide v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->bud:J

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->irq:Z

    iput-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->c:Ljava/lang/String;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->d:Ljava/util/HashSet;

    iput-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->e:Ljava/lang/String;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->f:Ljava/util/HashSet;

    iput-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->h:Ljava/lang/String;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->i:Ljava/util/HashSet;

    iput v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->j:I

    iput-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->m:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->n:Lcom/android/server/am/OnePlusHighPowerDetector$dma;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->o:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->p:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->q:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->r:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->s:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->t:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->u:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->v:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->w:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->x:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->y:Z

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->z:Z

    iput v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->A:I

    iput v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->B:I

    const/4 v2, 0x6

    iput v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->C:I

    const/16 v2, 0x3c

    iput v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->D:I

    const/4 v2, 0x7

    iput v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->E:I

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->F:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->G:Ljava/util/HashMap;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->H:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->I:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->J:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->K:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->L:Ljava/util/List;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->M:Ljava/util/HashSet;

    iput-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->N:Landroid/os/PowerManager;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->O:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->P:Ljava/util/HashSet;

    new-instance v2, Lcom/android/server/am/OnePlusHighPowerDetector$kth;

    invoke-direct {v2, p0, v5}, Lcom/android/server/am/OnePlusHighPowerDetector$kth;-><init>(Lcom/android/server/am/OnePlusHighPowerDetector;Lcom/android/server/am/OnePlusHighPowerDetector$zta;)V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Q:Lcom/android/server/am/OnePlusHighPowerDetector$kth;

    new-instance v2, Lcom/android/server/am/OnePlusHighPowerDetector$zta;

    invoke-direct {v2, p0}, Lcom/android/server/am/OnePlusHighPowerDetector$zta;-><init>(Lcom/android/server/am/OnePlusHighPowerDetector;)V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->S:Landroid/content/BroadcastReceiver;

    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->U:Z

    const-string v3, "persist.sys.ohpd.enable"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->U:Z

    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    const-string v3, "persist.sys.ohpd.debug"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    const-string v2, "ro.build.beta"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    sput-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->i2:Z

    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->U:Z

    const-string v3, "OHPD"

    if-nez v2, :cond_1

    const-string p0, "disabled"

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v2, "OnePlusHighPowerDetector--constructor"

    invoke-static {v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->B0(Ljava/lang/String;)V

    sput-object p1, Lcom/android/server/am/OnePlusHighPowerDetector;->f2:Lcom/android/server/am/ActivityManagerService;

    sput-object p2, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    new-instance p2, Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector$igw;-><init>(Lcom/android/server/am/OnePlusHighPowerDetector;Landroid/os/Looper;)V

    sput-object p2, Lcom/android/server/am/OnePlusHighPowerDetector;->h2:Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    sput-object p3, Lcom/android/server/am/OnePlusHighPowerDetector;->e2:Lcom/android/server/am/BatteryStatsService;

    const-class p1, Lcom/android/server/AppStateTracker;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/AppStateTracker;

    iput-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ywr:Lcom/android/server/AppStateTracker;

    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->les:Lnet/oneplus/odm/OpDeviceManagerInjector;

    new-instance p1, Lcom/android/server/am/OnePlusBGController;

    sget-object p2, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    sget-object p3, Lcom/android/server/am/OnePlusHighPowerDetector;->h2:Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->f2:Lcom/android/server/am/ActivityManagerService;

    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->e2:Lcom/android/server/am/BatteryStatsService;

    invoke-direct {p1, p2, p3, v2, v5}, Lcom/android/server/am/OnePlusBGController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BatteryStatsService;)V

    iput-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->zta:Lcom/android/server/am/OnePlusBGController;

    new-array p1, v0, [I

    aput v4, p1, v1

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "OP_FEATURE_BGC enabled, disable RNK_ON"

    invoke-static {p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->B0(Ljava/lang/String;)V

    sput-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->L1:Z

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->obl:Z

    goto :goto_1

    :cond_2
    const-string p1, "OP_FEATURE_BGC disabled, enable RNK_ON"

    invoke-static {p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->B0(Ljava/lang/String;)V

    sput-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->L1:Z

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->obl:Z

    :goto_1
    invoke-direct {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->L()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->g:Lcom/android/internal/statusbar/IStatusBarService;

    sget-boolean p1, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[BGC] BGC_NOTIFY_MULTIPLY="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/android/server/am/OnePlusHighPowerDetector;->A0:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", BGC_NOTIFY_INTERVAL="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide p2, Lcom/android/server/am/OnePlusHighPowerDetector;->B0:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-array p1, v0, [I

    const/16 p2, 0x75

    aput p2, p1, v1

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "OP_FEATURE_RESRTICT_PKG_BASE_ON_NETWORK enabled, update mIsAggressive to true by default"

    invoke-static {p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->B0(Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->tsu:Z

    :cond_4
    sget-object p1, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    if-eqz p1, :cond_5

    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->N:Landroid/os/PowerManager;

    sget-object p1, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    const-string p2, "location"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->zgw:Landroid/location/LocationManager;

    :cond_5
    invoke-direct {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->W()V

    return-void
.end method

.method public static B0(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "OHPD"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private D0(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 2

    const-string p0, "OHPD"

    :try_start_0
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyBgDetectIfNecessary # "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", userId="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", reason="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", type="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object p2, Lcom/android/server/am/OnePlusHighPowerDetector;->h2:Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    const p4, 0xd6e5

    invoke-virtual {p2, p4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p5, p2, Landroid/os/Message;->arg1:I

    iput p3, p2, Landroid/os/Message;->arg2:I

    sget-object p3, Lcom/android/server/am/OnePlusHighPowerDetector;->h2:Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    invoke-virtual {p3, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Error when notifyBgDetectIfNecessary "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private E0(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0
.end method

.method private F()Ljava/lang/String;
    .locals 3

    sget-object p0, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_input_method"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private F0(Ljava/lang/String;)Ljava/util/List;
    .locals 6
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

    const-string p0, "OHPD"

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    const-string v1, "\\}"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    array-length v1, p1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    aget-object v3, p1, v2

    const-string v4, "{"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "#"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BgDetect]pkgUser #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p1

    const-string v1, "Exception while parsing recent task locked info"

    invoke-static {p0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static G()I
    .locals 6

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    :try_start_0
    new-array v3, v1, [C

    new-instance v4, Ljava/io/FileReader;

    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->X1:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v4, v3, v2, v1}, Ljava/io/FileReader;->read([CII)I

    move-result v1

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3, v2, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sget-boolean v3, Lcom/android/server/am/OnePlusHighPowerDetector;->t2:Z

    if-eqz v3, :cond_0

    div-int/lit16 v1, v1, 0x3e8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v1

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    goto :goto_0

    :catch_0
    :try_start_4
    const-string v1, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t get device temp w "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->X1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v2

    :goto_0
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method

.method public static final H()Lcom/android/server/am/OnePlusHighPowerDetector;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->I(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/BatteryStatsService;)Lcom/android/server/am/OnePlusHighPowerDetector;

    move-result-object v0

    return-object v0
.end method

.method private H0()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.oem.intent.action.POWER_NOTIFICATION_CANCEL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/OnePlusHighPowerDetector$you;

    invoke-direct {v2, p0}, Lcom/android/server/am/OnePlusHighPowerDetector$you;-><init>(Lcom/android/server/am/OnePlusHighPowerDetector;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static final I(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/BatteryStatsService;)Lcom/android/server/am/OnePlusHighPowerDetector;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->Z0:Lcom/android/server/am/OnePlusHighPowerDetector;

    if-nez v0, :cond_2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/am/OnePlusHighPowerDetector;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/BatteryStatsService;)V

    sput-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->Z0:Lcom/android/server/am/OnePlusHighPowerDetector;

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "OHPD"

    const-string p1, "Fatal Exception : param is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    sget-object p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Z0:Lcom/android/server/am/OnePlusHighPowerDetector;

    return-object p0
.end method

.method private I0()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/OnePlusHighPowerDetector$sis;

    invoke-direct {v2, p0}, Lcom/android/server/am/OnePlusHighPowerDetector$sis;-><init>(Lcom/android/server/am/OnePlusHighPowerDetector;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->o2:Ljava/lang/String;

    const-string v2, "CN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    sget v1, Lcom/android/server/am/OnePlusHighPowerDetector;->p2:I

    and-int/2addr v1, v2

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->M0()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->Q0(Z)V

    :cond_1
    :goto_0
    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v1, :cond_2

    const-string v1, "ohpd.action.test"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_2
    const-string v1, "com.oem.intent.action.force_stop_pkg"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.oem.intent.action.force_stop_high_pkg"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.oem.intent.action.enable_force_stop_feature"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.oem.intent.action.ignore_pkg"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.oem.intent.action.ignore_high_pkg"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.oem.intent.action.bgc_clean_noti"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.oem.intent.action.ignore_bgc_pkg"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->S:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private J()I
    .locals 0

    sget-boolean p0, Lcom/android/server/am/OnePlusHighPowerDetector;->r2:Z

    if-eqz p0, :cond_0

    sget p0, Lcom/android/server/am/OnePlusHighPowerDetector;->H1:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/android/server/am/OnePlusHighPowerDetector;->I1:I

    :goto_0
    return p0
.end method

.method private L()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 0

    const-string p0, "statusbar"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p0

    return-object p0
.end method

.method private L0(Lorg/json/JSONArray;)V
    .locals 12

    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->E0:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    :try_start_0
    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->c2:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->m()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_39

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "navigating_app_list"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ugm:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_d

    :try_start_2
    iget-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ugm:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    move v6, v1

    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_2

    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ugm:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    const-string v4, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[OnlineConfig] navigatingAppList:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ugm:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0

    :cond_3
    :goto_2
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "backgroundprocess_detection_app_whitelist"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->gwm:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_d

    :try_start_4
    iget-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->gwm:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    move v6, v1

    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_4

    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->gwm:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->gwm:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->gwm:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ugm:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_5
    const-string v4, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[OnlineConfig] whiteAppListSet:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->gwm:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    goto :goto_4

    :catchall_1
    move-exception p0

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p0

    :cond_6
    :goto_4
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "black_list"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->cjf:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_d

    :try_start_6
    iget-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->cjf:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    move v6, v1

    :goto_5
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_7

    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->cjf:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_7
    const-string v4, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[OnlineConfig] blackAppListSet:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->cjf:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    goto :goto_6

    :catchall_2
    move-exception p0

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw p0

    :cond_8
    :goto_6
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "transient_list"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ire:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_d

    :try_start_8
    iget-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ire:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    move v6, v1

    :goto_7
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_9

    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ire:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_9
    const-string v4, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[OnlineConfig] transientAppListSet:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ire:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    goto :goto_8

    :catchall_3
    move-exception p0

    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw p0

    :cond_a
    :goto_8
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "black_ex_list"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ear:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_d

    :try_start_a
    iget-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ear:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    move v6, v1

    :goto_9
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_b

    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ear:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_b
    const-string v4, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[OnlineConfig] blackExAppListSet:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ear:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    goto :goto_a

    :catchall_4
    move-exception p0

    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :try_start_b
    throw p0

    :cond_c
    :goto_a
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "gps_black_list"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vdb:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_d

    :try_start_c
    iget-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vdb:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    move v6, v1

    :goto_b
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_d

    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vdb:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_d
    const-string v4, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[OnlineConfig] gpsBlackListSet:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vdb:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    goto :goto_c

    :catchall_5
    move-exception p0

    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :try_start_d
    throw p0

    :cond_e
    :goto_c
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "kill_proc_list"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vdw:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    :try_start_e
    iget-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vdw:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    move v6, v1

    :goto_d
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_f

    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vdw:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_f
    monitor-exit v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :try_start_f
    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] killProcList:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vdw:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_d

    goto :goto_e

    :catchall_6
    move-exception p0

    :try_start_10
    monitor-exit v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :try_start_11
    throw p0

    :cond_10
    :goto_e
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "quick_kill_proc_list"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->qeg:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_d

    :try_start_12
    iget-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->qeg:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    move v6, v1

    :goto_f
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_11

    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->qeg:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_11
    monitor-exit v5
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    :try_start_13
    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] quickKillProcList:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->qeg:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_d

    goto :goto_10

    :catchall_7
    move-exception p0

    :try_start_14
    monitor-exit v5
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    :try_start_15
    throw p0

    :cond_12
    :goto_10
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "need_handle_system_flag_list"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ivd:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_d

    :try_start_16
    iget-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ivd:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    move v6, v1

    :goto_11
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_13

    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ivd:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    :cond_13
    monitor-exit v5
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    :try_start_17
    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] needHandleSystemFlagList:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ivd:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_d

    goto :goto_12

    :catchall_8
    move-exception p0

    :try_start_18
    monitor-exit v5
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    :try_start_19
    throw p0

    :cond_14
    :goto_12
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "level0_kill_proc_list"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->a:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_d

    :try_start_1a
    iget-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    move v6, v1

    :goto_13
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_15

    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    :cond_15
    monitor-exit v5
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    :try_start_1b
    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] level0KillList:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_d

    goto :goto_14

    :catchall_9
    move-exception p0

    :try_start_1c
    monitor-exit v5
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    :try_start_1d
    throw p0

    :cond_16
    :goto_14
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "prebuilt_gms_proc_list"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->b:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_d

    :try_start_1e
    iget-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->b:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    move v6, v1

    :goto_15
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_17

    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    :cond_17
    const-string v4, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[OnlineConfig] gmsMonitorList:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    goto :goto_16

    :catchall_a
    move-exception p0

    monitor-exit v5
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_a

    :try_start_1f
    throw p0

    :cond_18
    :goto_16
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bg_detection_cpu_usage_threshold"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_19

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move v6, v1

    :goto_17
    if-ge v6, v5, :cond_19

    sget-object v7, Lcom/android/server/am/OnePlusHighPowerDetector;->R1:[I

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v7, v6

    const-string v7, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig]BG_DETECTION_CPU_USAGE_THRESHOLD_MIN["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "]:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/android/server/am/OnePlusHighPowerDetector;->R1:[I

    aget v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    :cond_19
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "bg_detection_cpu_usage_threshold_max"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move v6, v1

    :goto_18
    if-ge v6, v5, :cond_1a

    sget-object v7, Lcom/android/server/am/OnePlusHighPowerDetector;->Q1:[I

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v7, v6

    const-string v7, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig]BG_DETECTION_CPU_USAGE_THRESHOLD_MAX["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "]:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/android/server/am/OnePlusHighPowerDetector;->Q1:[I

    aget v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    :cond_1a
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "bg_detection_network_usage_threshold"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sput v4, Lcom/android/server/am/OnePlusHighPowerDetector;->T1:I

    const-string v4, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[OnlineConfig]BG_DETECTION_NETWORK_USAGE_THRESHOLD:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/android/server/am/OnePlusHighPowerDetector;->T1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "bg_detection_cpu_usage_threshold_optimizated"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sput v4, Lcom/android/server/am/OnePlusHighPowerDetector;->S1:I

    const-string v4, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[OnlineConfig]BG_DETECTION_CPU_USAGE_THRESHOLD_OPTIMIZAITON:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v7, Lcom/android/server/am/OnePlusHighPowerDetector;->S1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "cpu_check_delay"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move v6, v1

    :goto_19
    if-ge v6, v5, :cond_1d

    sget-object v7, Lcom/android/server/am/OnePlusHighPowerDetector;->N1:[I

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v7, v6

    const-string v7, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig]CPU_CHECK_DELAY["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "]:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/android/server/am/OnePlusHighPowerDetector;->N1:[I

    aget v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    :cond_1d
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "cpu_min_check_duration"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sput v4, Lcom/android/server/am/OnePlusHighPowerDetector;->E1:I

    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig]CPU_MIN_CHECK_DURATION:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/android/server/am/OnePlusHighPowerDetector;->E1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bg_detection_input_kill_enable"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->M1:Z

    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig]mInputAppKillOn: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/android/server/am/OnePlusHighPowerDetector;->M1:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bg_detection_last_fg_threshold"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sput v4, Lcom/android/server/am/OnePlusHighPowerDetector;->F1:I

    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig]APP_LAST_FOREGROUND_TIME_THRESHOLD: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/android/server/am/OnePlusHighPowerDetector;->F1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bg_detection_last_provider_threshold"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sput v4, Lcom/android/server/am/OnePlusHighPowerDetector;->J1:I

    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig]APP_LAST_CONTACT_PROVIDER_TIME_THRESHOLD: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/android/server/am/OnePlusHighPowerDetector;->J1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bg_detection_pd_usage_threshold"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sput v4, Lcom/android/server/am/OnePlusHighPowerDetector;->U1:I

    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig]POWER_DRAIN_USG_THOLD: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/android/server/am/OnePlusHighPowerDetector;->U1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bg_detection_rnk_usage_threshold_medium"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sput v4, Lcom/android/server/am/OnePlusHighPowerDetector;->V1:I

    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig]RNK_USG_THOLD_MEDIUM: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/android/server/am/OnePlusHighPowerDetector;->V1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bg_detection_rnk_enable"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->L1:Z

    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig]RNK_ON: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/android/server/am/OnePlusHighPowerDetector;->L1:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bg_detection_pd_tempature_threshold"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sput v4, Lcom/android/server/am/OnePlusHighPowerDetector;->W1:I

    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig]POWER_DRAIN_TEMP_THOLD: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/android/server/am/OnePlusHighPowerDetector;->W1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bg_detection_pd_last_fg_threshold"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sput v4, Lcom/android/server/am/OnePlusHighPowerDetector;->H1:I

    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig]S_ON_PD_LAST_FG_TIME_THOLD: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/android/server/am/OnePlusHighPowerDetector;->H1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bg_detection_s_off_pd_last_fg_threshold"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sput v4, Lcom/android/server/am/OnePlusHighPowerDetector;->I1:I

    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig]S_OFF_PD_LAST_FG_TIME_THOLD: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/android/server/am/OnePlusHighPowerDetector;->I1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bg_detection_app_cont_busy_time_thold"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sput v4, Lcom/android/server/am/OnePlusHighPowerDetector;->K1:I

    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] APP_CONT_BUSY_TIME_THOLD: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/android/server/am/OnePlusHighPowerDetector;->K1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bg_detection_enable_skip_handle"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->s2:Z

    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] ENABLE_SKIP_HANDLE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/android/server/am/OnePlusHighPowerDetector;->s2:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "native_detection_list"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->N0(Lorg/json/JSONArray;)V

    :cond_2a
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "sepical_native_detection_list"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_2c

    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->O:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_d

    :try_start_20
    iget-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->O:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    move v6, v1

    :goto_1a
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_2b

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "process"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "count"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string v10, "batteryDrop"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v10, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->O:Ljava/util/HashMap;

    new-instance v11, Lcom/android/server/am/OnePlusHighPowerDetector$gck;

    invoke-direct {v11, p0, v8, v9, v7}, Lcom/android/server/am/OnePlusHighPowerDetector$gck;-><init>(Lcom/android/server/am/OnePlusHighPowerDetector;Ljava/lang/String;II)V

    invoke-virtual {v10, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "OHPD"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[OnlineConfig]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->O:Ljava/util/HashMap;

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    :cond_2b
    monitor-exit v5

    goto :goto_1b

    :catchall_b
    move-exception p0

    monitor-exit v5
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_b

    :try_start_21
    throw p0

    :cond_2c
    :goto_1b
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bg_detection_enable_kill_busy_gms"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->u2:Z

    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] ENABLE_KILL_BUSY_GMS_PROCESS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/android/server/am/OnePlusHighPowerDetector;->u2:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bg_detection_enable_agg_kill_busy_gms"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ssp:Z

    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] ENABLE_AGG_KILL_BUSY_GMS_PROCESS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ssp:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bg_detection_enable_monitor_camera"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->k2:Z

    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig]BG_DETECTION_ENABLE_MONITOR_CAMERA_PROCESS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/android/server/am/OnePlusHighPowerDetector;->k2:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bg_detection_enable_kill_busy_camera"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->l2:Z

    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig]BG_DETECTION_ENABLE_KILL_BUSY_CAMERA_PROCESS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/android/server/am/OnePlusHighPowerDetector;->l2:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bg_detection_camera_cpu_threshold"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->cgv:I

    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig]BG_DETECTION_CAMERA_CPU_USAGE_THRESHOLD: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->cgv:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bg_detection_camera_proc_name"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->lqr:Ljava/lang/String;

    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig]BG_DETECTION_CAMERA_PROC_NAME: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->lqr:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bg_detection_native_cpu_threshold"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->D:I

    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig]BG_DETECTION_NATIVE_CPU_USAGE_THRESHOLD: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->D:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bgc_whitelist"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->oxb:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_d

    :try_start_22
    iget-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->oxb:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    move v6, v1

    :goto_1c
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_34

    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->oxb:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    :cond_34
    monitor-exit v5

    goto :goto_1d

    :catchall_c
    move-exception p0

    monitor-exit v5
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_c

    :try_start_23
    throw p0

    :cond_35
    :goto_1d
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bgc_mdm_enable"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->sis:Z

    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] mBgcMdmEnabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->sis:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bgc_feature"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->obl:Z

    const-string v3, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig]BGC_FEATURE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->obl:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->obl:Z

    if-eqz v3, :cond_37

    sput-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->L1:Z

    goto :goto_1e

    :cond_37
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/server/am/OnePlusHighPowerDetector;->L1:Z

    :goto_1e
    const-string v3, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig]RNK_ON: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/am/OnePlusHighPowerDetector;->L1:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_39
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_d

    :try_start_24
    const-string p0, "OHPD"

    const-string p1, "[OnlineConfig] BackgroundDetection updated complete"

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_24 .. :try_end_24} :catch_1
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_0

    goto :goto_20

    :catchall_d
    move-exception p0

    :try_start_25
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_d

    :try_start_26
    throw p0
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_26} :catch_1
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON, error message:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    goto :goto_1f

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON, error message:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    :goto_1f
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OHPD"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_20
    return-void
.end method

.method private M()V
    .locals 11

    const-string v0, "OHPD"

    const-string v1, "[BgDetect] Enable force-stop feature"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ohpd_force_stop_enabled"

    const/4 v3, 0x1

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :try_start_0
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v5

    const-string v6, "android"

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const v9, 0x33954c1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-interface/range {v5 .. v10}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->m:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "[BgDetect] Error when cancel suggestion notification"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private M0()Z
    .locals 5

    sget v0, Lcom/android/server/am/OnePlusHighPowerDetector;->p2:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "gsm.sim.operator.iso-country"

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-lt v2, v3, :cond_3

    const-string v2, "in"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "cn"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->Q0(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->Q0(Z)V

    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BgDetect] responseSIMStateChanged # mccCountry="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ret="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OHPD"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    move v1, v4

    :goto_2
    return v1
.end method

.method private N(Landroid/content/Intent;)V
    .locals 10

    const-string v0, "pkg"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "userid"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "type"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "|"

    const/4 v2, 0x1

    const-string v3, "OHPD"

    const-string v4, ","

    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->p:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->p:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusHighPowerDetector$wtn;

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusHighPowerDetector$wtn;->sis()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/android/server/am/OnePlusHighPowerDetector$wtn;->tsu(J)V

    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->p:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->p:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/OnePlusHighPowerDetector$wtn;

    invoke-virtual {v6}, Lcom/android/server/am/OnePlusHighPowerDetector$wtn;->you()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusHighPowerDetector$wtn;

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusHighPowerDetector$wtn;->zta()Z

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bgc_notification_rules_apps"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :try_start_0
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v4

    const-string v5, "android"

    sget-object p0, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const v8, 0x33954bc

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-interface/range {v4 .. v9}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[BgDetect] BGC ACTION_IGNORE_PKG Type:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    const-string p0, "[BgDetect] BGC Error when cancel notification"

    :goto_1
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_3
    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->o:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->o:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/OnePlusHighPowerDetector$wtn;

    invoke-virtual {v5}, Lcom/android/server/am/OnePlusHighPowerDetector$wtn;->sis()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/android/server/am/OnePlusHighPowerDetector$wtn;->tsu(J)V

    iget-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->o:Ljava/util/HashMap;

    invoke-virtual {v6, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->o:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/OnePlusHighPowerDetector$wtn;

    invoke-virtual {v7}, Lcom/android/server/am/OnePlusHighPowerDetector$wtn;->you()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/OnePlusHighPowerDetector$wtn;

    invoke-virtual {v5}, Lcom/android/server/am/OnePlusHighPowerDetector$wtn;->zta()Z

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    sget-object p0, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ohpd_notification_rules_apps"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :try_start_1
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v4

    const-string v5, "android"

    sget-object p0, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    if-ne p1, v2, :cond_6

    const p0, 0x33954b8

    goto :goto_3

    :cond_6
    const p0, 0x33954b9

    :goto_3
    move v8, p0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-interface/range {v4 .. v9}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[BgDetect] ACTION_IGNORE_PKG Type:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    const-string p0, "[BgDetect] Error when cancel notification"

    goto/16 :goto_1

    :cond_7
    :goto_4
    return-void
.end method

.method private N0(Lorg/json/JSONArray;)V
    .locals 7

    const-string v0, "OHPD"

    const-string v1, "ro.board.platform"

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "sdm845"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v4, "/data/system/nativeproc/proclist"

    if-eqz v3, :cond_0

    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v3, "msmnile"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v3, "/cache/nativeproc/proclist"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_4

    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x0

    :goto_1
    :try_start_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "daemon"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "thold"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->F:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] start monitoring native process:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", thold="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move-object v2, v3

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_6

    :catch_0
    move-exception p0

    move-object v2, v3

    goto :goto_4

    :cond_4
    :goto_2
    if-eqz v2, :cond_5

    :goto_3
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_6

    :catch_1
    move-exception p0

    :goto_4
    :try_start_4
    const-string p1, "fail to save native monitor list to file "

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_5

    goto :goto_3

    :catch_2
    :cond_5
    :goto_5
    return-void

    :goto_6
    if-eqz v2, :cond_6

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    :cond_6
    throw p0
.end method

.method private O(Landroid/content/Intent;)V
    .locals 8

    const-string v0, "pkg"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "userid"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    const-string v1, "type"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "OHPD"

    if-nez v0, :cond_0

    const-string p0, "[BGC] oops, pkgName is null, can\'t handleJumpToSettingAction"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v2

    const-string v3, "android"

    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x33954bc

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-interface/range {v2 .. v7}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect] BGC ACTION_BGC_SELF_CLEAN_NOTI Type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "[BgDetect] BGC Error when cancel notification"

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->g:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz p0, :cond_1

    :try_start_1
    invoke-interface {p0}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanels()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    const/4 p0, 0x0

    const-string p1, "package"

    invoke-static {p1, v0, p0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.APP_BATTERY_SETTINGS"

    invoke-direct {p1, v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x14000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v0, :cond_2

    const-string v0, "[BGC] action: android.settings.APP_BATTERY_SETTINGS"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BGC] uri: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object p0, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private O0(Ljava/lang/String;II)V
    .locals 2

    const-string p0, "OHPD"

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[BgDetect] scheduleForceStopPkg # "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " user id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->h2:Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    const v1, 0xd6e0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput p3, v0, Landroid/os/Message;->arg2:I

    sget-object p2, Lcom/android/server/am/OnePlusHighPowerDetector;->h2:Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error when scheduleForceStopPkg "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private P(Ljava/util/HashSet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->you:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OnePlusBGController$vdb;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, v0, Lcom/android/server/am/OnePlusBGController$vdb;->cno:Ljava/lang/String;

    const-string v3, "pkg"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/am/OnePlusBGController$vdb;->you:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "drain_type"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/am/OnePlusBGController$vdb;->zta:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "bucket_rank"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v2, v0, Lcom/android/server/am/OnePlusBGController$vdb;->tsu:D

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    const-string v3, "criteria"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, v0, Lcom/android/server/am/OnePlusBGController$vdb;->sis:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "relief"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "appid"

    const-string v3, "NYNCG4I0TI"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->les:Lnet/oneplus/odm/OpDeviceManagerInjector;

    if-eqz v2, :cond_0

    sget-object v3, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    const-string v4, "BGC"

    invoke-virtual {v2, v3, v4, v1, v0}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private Q0(Z)V
    .locals 0

    sput-boolean p1, Lcom/android/server/am/OnePlusHighPowerDetector;->q2:Z

    if-eqz p1, :cond_0

    const-string p0, "true"

    goto :goto_0

    :cond_0
    const-string p0, "false"

    :goto_0
    const-string p1, "persist.sys.ohpd.kcheck"

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[BgDetect] mKillMechanism "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/android/server/am/OnePlusHighPowerDetector;->q2:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OHPD"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget p0, Lcom/android/server/am/OnePlusHighPowerDetector;->p2:I

    and-int/lit8 p1, p0, 0x1

    if-nez p1, :cond_1

    or-int/lit8 p0, p0, 0x1

    sput p0, Lcom/android/server/am/OnePlusHighPowerDetector;->p2:I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget p1, Lcom/android/server/am/OnePlusHighPowerDetector;->p2:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "persist.sys.ohpd.flags"

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private S0(Lcom/android/server/am/ProcessRecord;JILjava/lang/StringBuffer;ZI)Z
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/server/am/OnePlusHighPowerDetector;->U0(Lcom/android/server/am/ProcessRecord;JILjava/lang/StringBuffer;ZILjava/util/List;Z)Z

    move-result v0

    return v0
.end method

.method private T0(Lcom/android/server/am/ProcessRecord;JLjava/lang/StringBuffer;I)Z
    .locals 10

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->e0(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->t0(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->p0(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "white list pkg "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-virtual {p4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->j(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->f0(Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "important proc"

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    iget-wide v2, p0, Lcom/android/server/wm/WindowProcessController;->lastFgTime:J

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    const-string v0, "("

    const-string v2, "app "

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    iget-wide v6, p0, Lcom/android/server/wm/WindowProcessController;->lastFgTime:J

    sub-long v6, p2, v6

    int-to-long v8, p5

    cmp-long p0, v6, v8

    if-gez p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") due to just switch to bg "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p1

    iget-wide v2, p1, Lcom/android/server/wm/WindowProcessController;->lastFgTime:J

    sub-long/2addr p2, v2

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ms ago , thold "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    iget-wide v6, p1, Lcom/android/server/am/ProcessRecord;->lastContactProviderTime:J

    cmp-long p0, v6, v4

    if-eqz p0, :cond_4

    sub-long v3, p2, v6

    sget p0, Lcom/android/server/am/OnePlusHighPowerDetector;->J1:I

    int-to-long v5, p0

    cmp-long p0, v3, v5

    if-gez p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p5, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, ") due to just access contacts provider "

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/server/am/ProcessRecord;->lastContactProviderTime:J

    sub-long/2addr p2, v2

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ms ago"

    goto/16 :goto_0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private U0(Lcom/android/server/am/ProcessRecord;JILjava/lang/StringBuffer;ZILjava/util/List;Z)Z
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ProcessRecord;",
            "JI",
            "Ljava/lang/StringBuffer;",
            "ZI",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p4

    move-object/from16 v2, p5

    move/from16 v3, p7

    move-object/from16 v4, p8

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->b0(Lcom/android/server/am/ProcessRecord;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "white list pkg "

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return v6

    :cond_0
    const-string v5, "small adj "

    const-string v7, "important proc"

    const/16 v8, 0xc8

    const/16 v9, 0x190

    const/4 v10, 0x0

    if-eqz p9, :cond_3

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v11, :cond_1

    if-eqz v4, :cond_1

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "highUsed list pkg "

    goto :goto_0

    :cond_1
    iget v4, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-gt v4, v9, :cond_2

    if-eq v4, v8, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->l0(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return v6

    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->q0(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_4

    return v10

    :cond_4
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->j(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->r0(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v4, 0x2

    if-gt v1, v4, :cond_5

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-gt v4, v9, :cond_5

    if-eq v4, v8, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    :cond_5
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->j(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->l0(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return v6

    :cond_6
    const-wide/16 v4, 0x0

    const-string v7, "app "

    const-string v8, "("

    if-nez p9, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v9

    iget-wide v11, v9, Lcom/android/server/wm/WindowProcessController;->lastFgTime:J

    cmp-long v9, v11, v4

    if-eqz v9, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v9

    iget-wide v11, v9, Lcom/android/server/wm/WindowProcessController;->lastFgTime:J

    sub-long v11, p2, v11

    int-to-long v13, v3

    cmp-long v9, v11, v13

    if-gez v9, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") due to just switch to bg "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    iget-wide v4, v0, Lcom/android/server/wm/WindowProcessController;->lastFgTime:J

    sub-long v4, p2, v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms ago , thold "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_7
    if-nez p9, :cond_8

    if-nez v1, :cond_8

    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->d0(Lcom/android/server/am/ProcessRecord;)Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BgDetect] skip provider/network check on app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OHPD"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_8
    if-nez p9, :cond_9

    iget-wide v11, v0, Lcom/android/server/am/ProcessRecord;->lastContactProviderTime:J

    cmp-long v3, v11, v4

    if-eqz v3, :cond_9

    sub-long v3, p2, v11

    sget v5, Lcom/android/server/am/OnePlusHighPowerDetector;->J1:I

    int-to-long v11, v5

    cmp-long v3, v3, v11

    if-gez v3, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") due to just access contacts provider "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/android/server/am/ProcessRecord;->lastContactProviderTime:J

    sub-long v3, p2, v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms ago"

    goto/16 :goto_1

    :cond_9
    iget v3, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v3

    if-eqz p9, :cond_a

    iget-wide v11, v0, Lcom/android/server/am/ProcessRecord;->lastLightIdleRxBytes:J

    goto :goto_4

    :cond_a
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->lastRxBytes:[J

    aget-wide v11, v5, v1

    :goto_4
    sub-long/2addr v3, v11

    sget v5, Lcom/android/server/am/OnePlusHighPowerDetector;->T1:I

    int-to-long v11, v5

    cmp-long v5, v3, v11

    const-string v9, " bytes"

    if-lez v5, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") due to net rx usage is "

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_b
    iget v3, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v3

    if-eqz p9, :cond_c

    iget-wide v11, v0, Lcom/android/server/am/ProcessRecord;->lastLightIdleTxBytes:J

    goto :goto_6

    :cond_c
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->lastTxBytes:[J

    aget-wide v11, v5, v1

    :goto_6
    sub-long/2addr v3, v11

    sget v1, Lcom/android/server/am/OnePlusHighPowerDetector;->T1:I

    int-to-long v11, v1

    cmp-long v1, v3, v11

    if-lez v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") due to net tx usage is "

    goto :goto_5

    :cond_d
    return v10
.end method

.method private W()V
    .locals 6

    sget-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->sis:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->Q:Lcom/android/server/am/OnePlusHighPowerDetector$kth;

    invoke-static {v0, v1}, Lcom/android/server/am/AppRecordManager;->vdb(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x502000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->gwm:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.baidu.BaiduMap"

    const-string v2, "com.tencent.map"

    const-string v3, "com.mapbar.android.mapbarmap"

    const-string v4, "com.autonavi.minimap"

    const-string v5, "cld.navi.mainframe"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ugm:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vdb:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ire:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x5020006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->cjf:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x5020005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ear:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x5020008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vdw:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->qeg:Ljava/util/ArrayList;

    const-string v1, "com.google.android.gms.persistent"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ivd:Ljava/util/ArrayList;

    const-string v1, "com.nearme.atlas"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x5020009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x5020007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->b:Ljava/util/ArrayList;

    sget-object v0, Landroid/os/Build;->REGION:Ljava/lang/String;

    sput-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->o2:Ljava/lang/String;

    const-string v0, "persist.sys.ohpd.flags"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->p2:I

    const-string v0, "persist.sys.ohpd.kcheck"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->q2:Z

    const-string v0, "ro.board.platform"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BgDetect] platform: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->B0(Ljava/lang/String;)V

    const-string v1, "msm8996"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "msm8998"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "/sys/class/thermal/thermal_zone5/temp"

    sput-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->X1:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v1, "sdm845"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const-string v0, "/sys/class/thermal/thermal_zone68/temp"

    sput-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->X1:Ljava/lang/String;

    sput-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->t2:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect] sIsPreciseDevTemp : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/am/OnePlusHighPowerDetector;->t2:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->B0(Ljava/lang/String;)V

    sput-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->k2:Z

    const-string v0, "[BgDetect] sdm845 platform, enabled monitoring camera process"

    :goto_0
    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->B0(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v3, "com.oneplus:string/config_overheat_thermal_zone_path"

    invoke-virtual {v0, v3, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->X1:Ljava/lang/String;

    sput-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->t2:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[BgDetect] Update temp_path to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->X1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    :goto_1
    invoke-static {v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->a1(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->I0()V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->H0()V

    invoke-virtual {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->X()V

    invoke-virtual {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->Z()V

    invoke-virtual {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->a0()V

    const-string v0, "OHPD"

    const-string v1, "Enable guiding feature both on H2 & O2"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->Y()V

    sget-boolean p0, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz p0, :cond_4

    sget p0, Lcom/android/server/am/OnePlusHighPowerDetector;->U1:I

    const-string v0, "persist.sys.ohpd.pd.usg.thold"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/android/server/am/OnePlusHighPowerDetector;->U1:I

    sget p0, Lcom/android/server/am/OnePlusHighPowerDetector;->W1:I

    const-string v0, "persist.sys.ohpd.pd.temp.thold"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/android/server/am/OnePlusHighPowerDetector;->W1:I

    sget p0, Lcom/android/server/am/OnePlusHighPowerDetector;->V1:I

    const-string v0, "persist.sys.ohpd.rnk.med.usg"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/android/server/am/OnePlusHighPowerDetector;->V1:I

    sget p0, Lcom/android/server/am/OnePlusHighPowerDetector;->H1:I

    const-string v0, "persist.sys.ohpd.pd.on.lastfg"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/android/server/am/OnePlusHighPowerDetector;->H1:I

    sget p0, Lcom/android/server/am/OnePlusHighPowerDetector;->I1:I

    const-string v0, "persist.sys.ohpd.pd.off.lastfg"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/android/server/am/OnePlusHighPowerDetector;->I1:I

    sget-boolean p0, Lcom/android/server/am/OnePlusHighPowerDetector;->b2:Z

    const-string v0, "persist.sys.ohpd.skip.on"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/android/server/am/OnePlusHighPowerDetector;->b2:Z

    :cond_4
    return-void
.end method

.method private X0(Ljava/lang/String;IZ)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopBgPowerHungryApp +# pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", powerLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remove="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/server/am/OnePlusHighPowerDetector;->B0(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p3

    const/16 v2, 0x3e8

    if-ne p3, v2, :cond_0

    const/4 p3, -0x2

    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/android/server/am/OnePlusHighPowerDetector;->z(Ljava/lang/String;I)V

    const-string p0, "OHPD"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BgDetect]- stopBgPowerHungryApp : pkg "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " level "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private Y()V
    .locals 4

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->k:Landroid/content/ContentResolver;

    const-string v1, "ohpd_force_stop_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->j:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mForceStopFetureEnabled: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->j:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "OHPD"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/am/OnePlusHighPowerDetector$tsu;

    sget-object v3, Lcom/android/server/am/OnePlusHighPowerDetector;->h2:Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    invoke-direct {v0, p0, v3}, Lcom/android/server/am/OnePlusHighPowerDetector$tsu;-><init>(Lcom/android/server/am/OnePlusHighPowerDetector;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->l:Landroid/database/ContentObserver;

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->k:Landroid/content/ContentResolver;

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->l:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private Y0(Lcom/android/server/am/OnePlusBGController$dma;)V
    .locals 13

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->you:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/am/OnePlusBGController$dma;->sis()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[BGC] list.size()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->B0(Ljava/lang/String;)V

    monitor-enter p1

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->you:Landroid/util/SparseArray;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusBGController$oxb;

    iget v2, v2, Lcom/android/server/am/OnePlusBGController$oxb;->you:I

    new-instance v12, Lcom/android/server/am/OnePlusBGController$vdb;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusBGController$oxb;

    iget-object v4, v3, Lcom/android/server/am/OnePlusBGController$oxb;->zta:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusBGController$oxb;

    iget-object v5, v3, Lcom/android/server/am/OnePlusBGController$oxb;->kth:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusBGController$oxb;

    iget-object v6, v3, Lcom/android/server/am/OnePlusBGController$oxb;->bio:Lcom/android/server/am/OnePlusBGController$MyDrainType;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusBGController$oxb;

    iget-boolean v7, v3, Lcom/android/server/am/OnePlusBGController$oxb;->igw:Z

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusBGController$oxb;

    iget-wide v8, v3, Lcom/android/server/am/OnePlusBGController$oxb;->cno:D

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusBGController$oxb;

    iget-boolean v10, v3, Lcom/android/server/am/OnePlusBGController$oxb;->wtn:Z

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusBGController$oxb;

    iget-object v11, v3, Lcom/android/server/am/OnePlusBGController$oxb;->gck:Lcom/android/server/am/OnePlusBGController$OptType;

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Lcom/android/server/am/OnePlusBGController$vdb;-><init>(Ljava/lang/String;Lcom/android/server/am/OnePlusBGController$AppBucketRanking;Lcom/android/server/am/OnePlusBGController$MyDrainType;ZDZLcom/android/server/am/OnePlusBGController$OptType;)V

    invoke-virtual {v1, v2, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BGC] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusBGController$oxb;

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController$oxb;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->B0(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p1

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    const-string p0, "[BGC] list == null"

    goto :goto_1

    :cond_2
    const-string p0, "[BGC] info == null"

    :goto_1
    invoke-static {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->B0(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private Z0(Ljava/util/HashSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->cno:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    if-eqz p1, :cond_1

    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BGC] mark uid :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is under using network"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->B0(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->cno:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method private static a1(Ljava/lang/String;)V
    .locals 8

    if-nez p0, :cond_0

    const/4 v0, 0x0

    const-string v1, "persist.sys.ohpd.threshold"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCpuThreshold # thresh="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", threshold="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->B0(Ljava/lang/String;)V

    if-eqz v0, :cond_4

    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->c2:Ljava/lang/Object;

    monitor-enter v1

    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->Q1:[I

    const/high16 v5, 0x200000

    aput v5, v4, v3

    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->R1:[I

    aget-object v5, p0, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v3

    const/4 v4, 0x1

    :goto_1
    if-ge v4, v2, :cond_1

    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->R1:[I

    aget-object v6, p0, v4

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v4

    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->Q1:[I

    sget-object v6, Lcom/android/server/am/OnePlusHighPowerDetector;->R1:[I

    add-int/lit8 v7, v4, -0x1

    aget v6, v6, v7

    aput v6, v5, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    :try_start_1
    const-string p0, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCpuThreshold # NumberFormatException : threshold="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-boolean p0, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz p0, :cond_3

    const-string p0, ""

    const-string v0, ""

    :goto_2
    if-ge v3, v2, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/android/server/am/OnePlusHighPowerDetector;->R1:[I

    aget p0, p0, v3

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->Q1:[I

    aget v0, v0, v3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    const-string v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCpuThreshold # min="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " max="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    monitor-exit v1

    goto :goto_4

    :goto_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_4
    :goto_4
    return-void
.end method

.method private b1(Ljava/util/HashSet;Ljava/util/HashSet;Lcom/android/server/am/ProcessRecord;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/server/am/ProcessRecord;",
            ")V"
        }
    .end annotation

    iget-object p0, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object p0, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic bio(Lcom/android/server/am/OnePlusHighPowerDetector;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->u()V

    return-void
.end method

.method static synthetic bvj(Lcom/android/server/am/OnePlusHighPowerDetector;)Landroid/os/PowerManager;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->N:Landroid/os/PowerManager;

    return-object p0
.end method

.method private cgv(Z)V
    .locals 32

    move-object/from16 v9, p0

    move/from16 v10, p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BGC] checkAbnBgKillLocked, doExecution: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OHPD"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->you:Landroid/util/SparseArray;

    if-eqz v1, :cond_3d

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_21

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-static {}, Lcom/android/server/wm/OpWmInjector;->getSysAlertWindowUidsForScreenOff()Ljava/util/List;

    move-result-object v13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BGC] alertWindowUidsSoff :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OHPD"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/wm/OpWmInjector;->getVisibleWindowUids()Ljava/util/List;

    move-result-object v14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BGC] visibleUids :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OHPD"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->r()V

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-virtual {v1}, Lcom/android/server/am/OnePlusBGController;->p0()Ljava/lang/String;

    move-result-object v15

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BGC] active step counter uids :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OHPD"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x2

    const-string v3, "com_oneplus_systemui_recent_task_lockd_list"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->F0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BGC] locked :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OHPD"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->you:Landroid/util/SparseArray;

    const/16 v16, 0x0

    if-eqz v1, :cond_5

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    move/from16 v4, v16

    move/from16 v17, v4

    :goto_0
    iget-object v3, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->you:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v4, v3, :cond_4

    iget-object v3, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->you:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    move-wide/from16 v19, v11

    iget-object v11, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->you:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/OnePlusBGController$vdb;

    iget-boolean v11, v11, Lcom/android/server/am/OnePlusBGController$vdb;->rtg:Z

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, ", Spe"

    goto :goto_1

    :cond_1
    const-string v10, ""

    :goto_1
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "], "

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x1

    new-array v12, v10, [I

    const/16 v18, 0x75

    aput v18, v12, v16

    invoke-static {v12}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v12, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-virtual {v12}, Lcom/android/server/am/OnePlusBGController;->m0()I

    move-result v12

    if-ne v3, v12, :cond_3

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-boolean v3, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v3, :cond_2

    const-string v3, "OHPD"

    const-string v11, "[BGC][GMS] Observe GMS abnormal, start to review"

    invoke-static {v3, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move/from16 v17, v10

    :cond_3
    add-int/lit8 v4, v4, 0x1

    move/from16 v10, p1

    move-wide/from16 v11, v19

    goto :goto_0

    :cond_4
    move-wide/from16 v19, v11

    const/4 v10, 0x1

    const-string v3, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[BGC] mBGCUidArray :"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_5
    move-wide/from16 v19, v11

    const/4 v10, 0x1

    move/from16 v17, v16

    :goto_2
    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->cno:Ljava/util/HashSet;

    if-eqz v1, :cond_7

    monitor-enter v1

    :try_start_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->cno:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_6
    const-string v3, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[BGC] mBGCUsingTrafficUidSet :"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v2, v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    :cond_7
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->F()Ljava/lang/String;

    move-result-object v11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BGC] currentIME :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OHPD"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sget-object v12, Lcom/android/server/am/OnePlusHighPowerDetector;->f2:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v12

    :try_start_2
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v21, v1

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->q:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-object/from16 v22, v2

    :try_start_3
    iget-object v2, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->q:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->f2:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_5
    if-lez v1, :cond_24

    add-int/lit8 v2, v1, -0x1

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->f2:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    sget-boolean v23, Lcom/android/server/am/OnePlusBGController;->E:Z

    if-eqz v23, :cond_8

    move-object/from16 v23, v4

    const-string v4, "OHPD"

    move-object/from16 v24, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v25, v7

    const-string v7, "[BGC] i="

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", pid="

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", uid="

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", iso="

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", userId="

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", pkg="

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", app.info.uid="

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", f=0x"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", isSys="

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-virtual {v9, v7}, Lcom/android/server/am/OnePlusHighPowerDetector;->R(I)Z

    move-result v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", curAdj="

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", isMulti="

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-virtual {v9, v7}, Lcom/android/server/am/OnePlusHighPowerDetector;->n0(I)Z

    move-result v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", sN="

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_8
    move-object/from16 v23, v4

    move-wide/from16 v25, v7

    move-object/from16 v24, v10

    :goto_6
    if-eqz v17, :cond_a

    iget-object v4, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->P:Ljava/util/HashSet;

    const-string v7, "com.google.android.gms"

    invoke-direct {v9, v1, v4, v7}, Lcom/android/server/am/OnePlusHighPowerDetector;->m0(Lcom/android/server/am/ProcessRecord;Ljava/util/HashSet;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    sget-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v4, :cond_9

    const-string v4, "OHPD"

    const-string v7, "[BGC][GMS] Skip due to important client\'s dependency"

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move/from16 v17, v16

    :cond_a
    iget-object v4, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->you:Landroid/util/SparseArray;

    iget-object v7, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_c

    :cond_b
    :goto_7
    move-object v10, v5

    move-object/from16 v29, v6

    move-object/from16 v27, v13

    move-object/from16 v18, v14

    :goto_8
    move-object/from16 v28, v21

    move-object/from16 v14, v23

    move-object v13, v3

    move-object/from16 v21, v11

    move-object/from16 v23, v15

    move-object/from16 v11, v22

    move/from16 v22, v2

    goto/16 :goto_e

    :cond_c
    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget v4, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v4

    if-nez v4, :cond_d

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-virtual {v9, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->R(I)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v9, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->j(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-nez v4, :cond_d

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->irq(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "proc "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "(pid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") sys pkg"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_9
    invoke-virtual {v9, v3, v4, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->e1(Landroid/util/ArrayMap;ILjava/lang/String;)V

    goto :goto_7

    :cond_d
    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "proc "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "(pid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") locked"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v3, v4, v7}, Lcom/android/server/am/OnePlusHighPowerDetector;->e1(Landroid/util/ArrayMap;ILjava/lang/String;)V

    if-eqz v17, :cond_b

    iget-object v4, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-virtual {v4}, Lcom/android/server/am/OnePlusBGController;->m0()I

    move-result v4

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, v1, :cond_b

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v1, :cond_e

    const-string v1, "OHPD"

    const-string v4, "[BGC][GMS] Skip due to locked"

    :goto_a
    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    move v1, v2

    move/from16 v17, v16

    move-object/from16 v4, v23

    move-object/from16 v10, v24

    move-wide/from16 v7, v25

    goto/16 :goto_5

    :cond_f
    iget-object v4, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->P:Ljava/util/HashSet;

    iget-object v7, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "proc "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "(pid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") active audio"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v3, v4, v7}, Lcom/android/server/am/OnePlusHighPowerDetector;->e1(Landroid/util/ArrayMap;ILjava/lang/String;)V

    if-eqz v17, :cond_b

    iget-object v4, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-virtual {v4}, Lcom/android/server/am/OnePlusBGController;->m0()I

    move-result v4

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, v1, :cond_b

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v1, :cond_e

    const-string v1, "OHPD"

    const-string v4, "[BGC][GMS] Skip due to have audio"

    goto :goto_a

    :cond_10
    if-eqz v15, :cond_11

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ":"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11

    iget v4, v1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/16 v7, 0xc

    if-gt v4, v7, :cond_11

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "proc "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "(pid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") active pedometer sensor. Procstat "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_9

    :cond_11
    if-eqz v13, :cond_13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_12
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v10, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v8, v10, :cond_12

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v8, "has alert window"

    invoke-virtual {v9, v3, v7, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->e1(Landroid/util/ArrayMap;ILjava/lang/String;)V

    goto :goto_b

    :cond_13
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_15

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_14
    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v10, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v8, v10, :cond_14

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v8, "has visible window"

    invoke-virtual {v9, v3, v7, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->e1(Landroid/util/ArrayMap;ILjava/lang/String;)V

    goto :goto_c

    :cond_15
    if-eqz v11, :cond_16

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "proc "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "(pid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") current IME"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_9

    :cond_16
    iget-object v4, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->cno:Ljava/util/HashSet;

    if-eqz v4, :cond_17

    iget-object v4, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->cno:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_17

    iget-object v4, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->cno:Ljava/util/HashSet;

    iget-object v7, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "proc "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "(pid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") current using network"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_9

    :cond_17
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->zta:Lcom/android/server/am/OnePlusBGController;

    iget-object v8, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v10, v1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v4, v8, v10}, Lcom/android/server/am/OnePlusBGController;->I0(II)Z

    move-result v4

    if-nez v4, :cond_1c

    invoke-virtual {v9, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->bud(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-nez v4, :cond_1c

    invoke-virtual {v9, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->j(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-nez v4, :cond_1c

    invoke-virtual {v9, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->vju(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_18

    goto/16 :goto_d

    :cond_18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "proc "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "(pid : "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") stat "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v3, v4, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->e1(Landroid/util/ArrayMap;ILjava/lang/String;)V

    sget-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v4, :cond_19

    const-string v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[BGC] 2. Skip due to "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    if-eqz v17, :cond_1b

    iget-object v4, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-virtual {v4}, Lcom/android/server/am/OnePlusBGController;->m0()I

    move-result v4

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, v1, :cond_1b

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v1, :cond_1a

    const-string v1, "OHPD"

    const-string v4, "[BGC][GMS] Skip due to 2"

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    move-object v10, v5

    move-object/from16 v29, v6

    move-object/from16 v27, v13

    move-object/from16 v18, v14

    move/from16 v17, v16

    goto/16 :goto_8

    :cond_1b
    move-object v10, v5

    move-object/from16 v29, v6

    move-object/from16 v27, v13

    move-object/from16 v18, v14

    goto/16 :goto_8

    :cond_1c
    :goto_d
    sget v8, Lcom/android/server/am/OnePlusHighPowerDetector;->G1:I

    move-object v4, v1

    move-object/from16 v10, v21

    move-object/from16 v1, p0

    move-object/from16 v21, v11

    move-object/from16 v11, v22

    move/from16 v22, v2

    move-object v2, v4

    move-object/from16 v27, v13

    move-object/from16 v18, v14

    move-object/from16 v14, v23

    move-object v13, v3

    move-object/from16 v23, v15

    move-object v15, v4

    move-wide/from16 v3, v25

    move-object/from16 v28, v10

    move-object v10, v5

    move-object v5, v7

    move-object/from16 v29, v6

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->T0(Lcom/android/server/am/ProcessRecord;JLjava/lang/StringBuffer;I)Z

    move-result v1

    if-eqz v1, :cond_1f

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v1, :cond_1d

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BGC] 1. Skip due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v13, v1, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->e1(Landroid/util/ArrayMap;ILjava/lang/String;)V

    if-eqz v17, :cond_22

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-virtual {v1}, Lcom/android/server/am/OnePlusBGController;->m0()I

    move-result v1

    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v1, v2, :cond_22

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v1, :cond_1e

    const-string v1, "OHPD"

    const-string v2, "[BGC][GMS] Skip due to 1"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    move-object v5, v10

    move-object v3, v13

    move-object v4, v14

    move/from16 v17, v16

    goto/16 :goto_f

    :cond_1f
    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->qeg(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doze user white list pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", app.info.uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v1, :cond_20

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BGC] 3. Skip due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x2710

    if-lt v1, v2, :cond_21

    const/16 v2, 0x4e1f

    if-gt v1, v2, :cond_21

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v1, :cond_21

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BGC] Mark it for adding pkg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", app.info.uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v13, v1, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->e1(Landroid/util/ArrayMap;ILjava/lang/String;)V

    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v14, v1, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->e1(Landroid/util/ArrayMap;ILjava/lang/String;)V

    :cond_22
    :goto_e
    move-object v5, v10

    move-object v3, v13

    move-object v4, v14

    :goto_f
    move-object/from16 v14, v18

    move/from16 v1, v22

    move-object/from16 v15, v23

    move-object/from16 v10, v24

    move-wide/from16 v7, v25

    move-object/from16 v13, v27

    move-object/from16 v6, v29

    move-object/from16 v22, v11

    move-object/from16 v11, v21

    move-object/from16 v21, v28

    goto/16 :goto_5

    :cond_23
    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_24
    move-object v13, v3

    move-object v14, v4

    move-object/from16 v24, v10

    move-object/from16 v28, v21

    move-object/from16 v11, v22

    move-object v10, v5

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->x:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_29

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->x:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    iget-object v2, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->x:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;

    iget-object v4, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->you:Landroid/util/SparseArray;

    iget v5, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->zta:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_25

    goto :goto_10

    :cond_25
    iget v4, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->zta:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget v4, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->sis:I

    invoke-virtual {v9, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->R(I)Z

    move-result v4

    if-eqz v4, :cond_26

    goto :goto_10

    :cond_26
    invoke-virtual {v9, v3}, Lcom/android/server/am/OnePlusHighPowerDetector;->g0(Lcom/android/server/am/OnePlusHighPowerDetector$ssp;)Z

    move-result v4

    if-eqz v4, :cond_27

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BGC] skip forked fproc "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->rtg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "(uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->zta:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), reason= white list"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusHighPowerDetector;->B0(Ljava/lang/String;)V

    goto :goto_10

    :cond_27
    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_28
    monitor-exit v1

    goto :goto_11

    :catchall_2
    move-exception v0

    move-object v2, v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v2

    :cond_29
    :goto_11
    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v1, :cond_2c

    move/from16 v1, v16

    :goto_12
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_2a

    invoke-virtual {v13, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v13, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[BGC] skipUidMap, uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", skipped reason="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_2a
    move/from16 v1, v16

    :goto_13
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_2b

    invoke-virtual {v14, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v14, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[BGC] skipUserWhiteUidMap, uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", skipped reason="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_2b
    invoke-virtual {v10}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const-string v3, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BGC] uid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", skipped reason=no running proc"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :cond_2c
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move/from16 v10, v16

    :goto_15
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-ge v10, v1, :cond_31

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    iget-object v1, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    if-nez p1, :cond_2d

    move-object/from16 v22, v11

    move-object/from16 v30, v24

    move-object/from16 v31, v28

    :goto_16
    const/16 v24, 0x1

    goto/16 :goto_18

    :cond_2d
    iget-object v1, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v7, v28

    invoke-virtual {v7, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v6, v24

    invoke-virtual {v6, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->you:Landroid/util/SparseArray;

    iget-object v2, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BGC] kill "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    const/4 v5, 0x1

    invoke-virtual {v8, v1, v2, v5}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;IZ)V

    goto/16 :goto_17

    :cond_2e
    move-object/from16 v30, v6

    move-object/from16 v31, v7

    move-object/from16 v22, v11

    goto :goto_16

    :cond_2f
    move-object/from16 v6, v24

    move-object/from16 v7, v28

    const/4 v5, 0x1

    iget-object v1, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BGC] it\'s time to notifyBgDetectIfNecessary for uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->q:Ljava/util/HashMap;

    iget-object v1, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x2

    const/16 v18, 0x0

    const/16 v21, 0x0

    iget v1, v8, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v5, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v22, v1

    move-object/from16 v1, p0

    move/from16 v23, v5

    const/16 v24, 0x1

    move/from16 v5, v18

    move-object/from16 v30, v6

    move/from16 v6, v21

    move-object/from16 v31, v7

    move/from16 v7, v22

    move-object/from16 v22, v11

    move-object v11, v8

    move/from16 v8, v23

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->fto(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    iget-object v1, v11, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v11, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v1, v11, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const-string v5, "doze_user_white"

    const/4 v6, 0x2

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->D0(Ljava/lang/String;IILjava/lang/String;I)V

    goto :goto_18

    :cond_30
    :goto_17
    move/from16 v24, v5

    move-object/from16 v30, v6

    move-object/from16 v31, v7

    move-object/from16 v22, v11

    :goto_18
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v11, v22

    move-object/from16 v24, v30

    move-object/from16 v28, v31

    goto/16 :goto_15

    :cond_31
    move-object/from16 v30, v24

    move-object/from16 v31, v28

    move/from16 v1, v16

    :goto_19
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_35

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;

    iget v3, v2, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->zta:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    iget v4, v2, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->zta:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_34

    if-nez p1, :cond_32

    goto :goto_1b

    :cond_32
    iget v4, v2, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->zta:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v5, v31

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v4, v2, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->ssp:Ljava/lang/String;

    if-eqz v4, :cond_33

    iget-object v4, v2, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->ssp:Ljava/lang/String;

    move-object/from16 v6, v30

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_33
    move-object/from16 v6, v30

    :goto_1a
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->f2:Lcom/android/server/am/ActivityManagerService;

    iget v7, v2, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->zta:I

    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[BGC] kill forked "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v2, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->ssp:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " (uid "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->zta:I

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v7, v3, v2}, Lcom/android/server/am/ActivityManagerService;->killUid(IILjava/lang/String;)V

    goto :goto_1c

    :cond_34
    :goto_1b
    move-object/from16 v6, v30

    move-object/from16 v5, v31

    :goto_1c
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v31, v5

    move-object/from16 v30, v6

    goto :goto_19

    :cond_35
    move-object/from16 v6, v30

    move-object/from16 v5, v31

    if-eqz p1, :cond_38

    if-eqz v17, :cond_38

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v1, :cond_36

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BGC] mIsAggressive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->tsu:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mRestrictType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->rtg:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    iget-boolean v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->tsu:Z

    if-eqz v1, :cond_37

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->rtg:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;

    sget-object v2, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;->FULLY:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;

    if-ne v1, v2, :cond_37

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-virtual {v1}, Lcom/android/server/am/OnePlusBGController;->m0()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->f2:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusBGController;->m0()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const-string v4, "[BGC][GMS] Special kill com.google.android.gms in domestic domain"

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/server/am/ActivityManagerService;->killUid(IILjava/lang/String;)V

    const-string v1, "OHPD"

    const-string v2, "[BGC][GMS] Special kill com.google.android.gms in domestic domain"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-virtual {v1}, Lcom/android/server/am/OnePlusBGController;->m0()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "com.google.android.gms"

    invoke-virtual {v6, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_37
    const-string v1, "OHPD"

    const-string v2, "[BGC][GMS] In public domain, skip handling"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    :goto_1d
    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_3b

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-boolean v3, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v3, :cond_39

    const-string v3, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[BGC] notify killed pkg :"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    invoke-static {v2}, Lcom/android/server/am/OpStartAppControlInjector;->updateHighPowerUsagePackage(Ljava/lang/String;)V

    goto :goto_1e

    :cond_3a
    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-virtual {v1, v5}, Lcom/android/server/am/OnePlusBGController;->Q0(Ljava/util/HashSet;)V

    iget-boolean v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->sis:Z

    if-eqz v1, :cond_3b

    invoke-direct {v9, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->P(Ljava/util/HashSet;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_1f

    :catchall_3
    move-exception v0

    move-object v2, v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    throw v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v0

    move-object v1, v0

    goto :goto_20

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_9
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BGC] got exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    :goto_1f
    monitor-exit v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v1, :cond_3c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BGC] checkAbnBgKillLocked in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v19

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OHPD"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    return-void

    :goto_20
    :try_start_a
    monitor-exit v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v1

    :cond_3d
    :goto_21
    return-void
.end method

.method static synthetic cjf(Lcom/android/server/am/OnePlusHighPowerDetector;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->bud:J

    return-wide p1
.end method

.method static synthetic cno(Lcom/android/server/am/OnePlusHighPowerDetector;)Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->rtg:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;

    return-object p0
.end method

.method private d0(Lcom/android/server/am/ProcessRecord;)Z
    .locals 4

    sget-object p0, Lcom/android/server/am/OnePlusHighPowerDetector;->c2:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-wide v0, p1, Lcom/android/server/am/ProcessRecord;->lastSkipTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/server/am/ProcessRecord;->lastSkipTime:J

    sub-long/2addr v0, v2

    sget p1, Lcom/android/server/am/OnePlusHighPowerDetector;->K1:I

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic dma(Lcom/android/server/am/OnePlusHighPowerDetector;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OnePlusHighPowerDetector;->O0(Ljava/lang/String;II)V

    return-void
.end method

.method private e()V
    .locals 10

    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "OHPD"

    const-string v1, "[LightIdle] checkLightIdleCameraProcessKillLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->m2:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vju:Lcom/android/server/am/OnePlusHighPowerDetector$ssp;

    if-eqz v3, :cond_5

    sget-boolean v3, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v3, :cond_1

    const-string v3, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LightIdle] Try to judge camera pid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vju:Lcom/android/server/am/OnePlusHighPowerDetector$ssp;

    iget v5, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->you:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mLastCameraProcUsage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->veq:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", threshold="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->cgv:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mEnableMonitorCameraProc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/am/OnePlusHighPowerDetector;->k2:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mEnableKillBusyCameraProc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/am/OnePlusHighPowerDetector;->l2:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vju:Lcom/android/server/am/OnePlusHighPowerDetector$ssp;

    iget v3, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->you:I

    if-eqz v3, :cond_5

    iget-wide v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->veq:J

    iget v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->cgv:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_5

    iget-wide v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->veq:J

    sget-boolean v5, Lcom/android/server/am/OnePlusHighPowerDetector;->l2:Z

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_3

    sget-boolean v5, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v5, :cond_2

    const-string v5, "OHPD"

    const-string v8, "[LightIdle] Killing it !"

    invoke-static {v5, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vju:Lcom/android/server/am/OnePlusHighPowerDetector$ssp;

    iget v5, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->you:I

    invoke-static {v5}, Lcom/android/server/am/SocketTransition;->recordProcesskillbyhighpower(I)V

    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vju:Lcom/android/server/am/OnePlusHighPowerDetector$ssp;

    iget v5, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->you:I

    invoke-static {v5}, Landroid/os/Process;->killProcess(I)V

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vju:Lcom/android/server/am/OnePlusHighPowerDetector$ssp;

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->veq:J

    move v5, v6

    goto :goto_0

    :cond_3
    move v5, v7

    :goto_0
    sget-object v8, Lcom/android/server/am/OnePlusHighPowerDetector;->h2:Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    const v9, 0xd6e6

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->lqr:Ljava/lang/String;

    iput-object p0, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    long-to-int p0, v3

    iput p0, v8, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    move v6, v7

    :goto_1
    iput v6, v8, Landroid/os/Message;->arg2:I

    sget-object p0, Lcom/android/server/am/OnePlusHighPowerDetector;->h2:Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    invoke-virtual {p0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean p0, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LightIdle] checkLightIdleCameraProcessKillLocked in "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OHPD"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static synthetic ear(Lcom/android/server/am/OnePlusHighPowerDetector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->bio:Z

    return p1
.end method

.method private f()V
    .locals 29

    move-object/from16 v0, p0

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v1, :cond_0

    const-string v1, "OHPD"

    const-string v2, "[LightIdle] checkLightIdleProcessKillLocked"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x2

    const-string v3, "com_oneplus_systemui_recent_task_lockd_list"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->F0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    sget-object v16, Lcom/android/server/am/OnePlusHighPowerDetector;->f2:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v16

    :try_start_0
    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->f2:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-lez v1, :cond_b

    add-int/lit8 v3, v1, -0x1

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->f2:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->t0:Z

    if-eqz v1, :cond_1

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v6

    const-string v6, "[LightIdle] i="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", pid="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", uid="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", userId="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", app.info.packageName="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", app.info.uid="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", app.info.flags=0x"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v19, v3

    const/16 v3, 0x10

    invoke-static {v6, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", shortName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    move/from16 v19, v3

    move-object/from16 v18, v6

    :goto_1
    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->u2:Z

    if-eqz v1, :cond_3

    iget-object v1, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v2, "com.google.android.gms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-wide v1, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->hmo:J

    sget-object v3, Lcom/android/server/am/OnePlusHighPowerDetector;->R1:[I

    const/4 v6, 0x0

    aget v3, v3, v6

    move-object/from16 v21, v9

    move-object/from16 v20, v10

    int-to-long v9, v3

    cmp-long v1, v1, v9

    if-ltz v1, :cond_4

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v1, :cond_2

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LightIdle] Observe GMS process-["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], Uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " busy("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->hmo:J

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "%)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v1, "[LightIdle] Kill GMS Busy ProcessRecord"

    const/16 v2, 0x9

    const/4 v3, 0x1

    invoke-virtual {v4, v1, v2, v3}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;IZ)V

    :goto_2
    move-object v2, v5

    move-object/from16 v26, v7

    move-object/from16 v28, v8

    move-object/from16 v3, v18

    move-object/from16 v4, v21

    move-wide/from16 v17, v13

    move-object/from16 v13, v20

    goto/16 :goto_4

    :cond_3
    move-object/from16 v21, v9

    move-object/from16 v20, v10

    :cond_4
    iget-object v1, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->R(I)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->irq(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->t0:Z

    if-eqz v1, :cond_5

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LightIdle] skip uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " due to system packages"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v1, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-direct {v0, v8, v7, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->b1(Ljava/util/HashSet;Ljava/util/HashSet;Lcom/android/server/am/ProcessRecord;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->C0(Lcom/android/server/am/ProcessRecord;I)Z

    move-result v1

    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->t0:Z

    if-eqz v2, :cond_7

    const-string v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[LightIdle] needCheckProc:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-eqz v1, :cond_a

    new-instance v10, Ljava/lang/StringBuffer;

    const-string v1, "[LightIdle] "

    invoke-direct {v10, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v9, 0x0

    sget v17, Lcom/android/server/am/OnePlusHighPowerDetector;->F1:I

    const/16 v22, 0x1

    move-object/from16 v1, p0

    move-object v2, v4

    move-object/from16 v23, v4

    move-wide v3, v13

    move-object/from16 v24, v5

    move v5, v6

    move-object/from16 v25, v18

    move-object v6, v10

    move-object/from16 v26, v7

    move v7, v9

    move-object v9, v8

    move/from16 v8, v17

    move-object/from16 v28, v9

    move-object/from16 v27, v21

    move-object v9, v15

    move-wide/from16 v17, v13

    move-object/from16 v13, v20

    move-object v14, v10

    move/from16 v10, v22

    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/OnePlusHighPowerDetector;->U0(Lcom/android/server/am/ProcessRecord;JILjava/lang/StringBuffer;ZILjava/util/List;Z)Z

    move-result v1

    if-nez v1, :cond_8

    move-object/from16 v1, v23

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v3, v25

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget v2, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v4, v27

    invoke-virtual {v4, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v2, v24

    goto :goto_4

    :cond_8
    move-object/from16 v1, v23

    move-object/from16 v3, v25

    move-object/from16 v4, v27

    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->t0:Z

    if-eqz v2, :cond_9

    const-string v2, "OHPD"

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v24

    :goto_3
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    move-object v1, v4

    move-object v2, v5

    move-object/from16 v26, v7

    move-object/from16 v28, v8

    move-object/from16 v3, v18

    move-object/from16 v4, v21

    move-wide/from16 v17, v13

    move-object/from16 v13, v20

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_3

    :goto_4
    move-object v5, v2

    move-object v6, v3

    move-object v9, v4

    move-object v10, v13

    move-wide/from16 v13, v17

    move/from16 v1, v19

    move-object/from16 v7, v26

    move-object/from16 v8, v28

    goto/16 :goto_0

    :cond_b
    move-object v2, v5

    move-object v3, v6

    move-object/from16 v26, v7

    move-object/from16 v28, v8

    move-object v4, v9

    move-object v13, v10

    const/4 v1, 0x0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->P:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    const-string v6, "OHPD"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[LightIdle] skip uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " due to audio active"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_c
    if-eqz v13, :cond_e

    :goto_6
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_e

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v13, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const-string v6, "OHPD"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[LightIdle] skip uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " due to locked ap : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_e
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v0, :cond_f

    const-string v0, "OHPD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LightIdle] needKillUidsSet: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OHPD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LightIdle] needSkipUidsSet: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OHPD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LightIdle] allFinishingUidsSet: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v28

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OHPD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LightIdle] nonFinishingUidsSet: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v26

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_f
    move-object/from16 v5, v26

    move-object/from16 v4, v28

    :goto_7
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {v5, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    sget-object v3, Lcom/android/server/am/OnePlusHighPowerDetector;->f2:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[LightIdle][All finishing] kill (uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v6, v7, v1}, Lcom/android/server/am/ActivityManagerService;->killUid(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception v0

    goto :goto_9

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LightIdle] got exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[LightIdle] checkLightIdleProcessKillLocked in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v11

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OHPD"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    return-void

    :goto_9
    :try_start_2
    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private f0(Lcom/android/server/am/ProcessRecord;)Z
    .locals 1

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->irq(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v0, "com.android"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v0, "com.android.chrome:sandboxed_process"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v0, "com.google.android.gms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v0, "com.google.android.gsf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v0, "com.google.android.packageinstaller"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v0, "com.google.android.webview"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string p1, "android.process"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private g(Ljava/lang/String;Ljava/util/HashSet;Ljava/util/HashSet;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->r:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/am/OnePlusHighPowerDetector;->h(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->s:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/am/OnePlusHighPowerDetector;->h(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->t:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/am/OnePlusHighPowerDetector;->h(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->q:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/am/OnePlusHighPowerDetector;->h(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->u:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/am/OnePlusHighPowerDetector;->h(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->v:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/am/OnePlusHighPowerDetector;->h(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->w:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/am/OnePlusHighPowerDetector;->h(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;)Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    :cond_6
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    const-string p1, "android"

    invoke-interface {v0, p1}, Landroid/app/INotificationManager;->getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    const-string p2, "OHPD"

    if-eqz p1, :cond_1a

    array-length p3, p1

    const/4 v6, 0x1

    if-ge p3, v6, :cond_7

    goto/16 :goto_8

    :cond_7
    const/4 p3, 0x3

    const/4 v7, 0x2

    const/4 v1, 0x0

    if-eqz p4, :cond_b

    if-eq p4, v6, :cond_a

    if-eq p4, v7, :cond_9

    if-eq p4, p3, :cond_8

    move v4, v1

    goto :goto_1

    :cond_8
    const v2, 0x33954c1

    goto :goto_0

    :cond_9
    const v2, 0x33954bc

    goto :goto_0

    :cond_a
    const v2, 0x33954b8

    goto :goto_0

    :cond_b
    const v2, 0x33954b9

    :goto_0
    move v4, v2

    :goto_1
    array-length v2, p1

    :goto_2
    if-ge v1, v2, :cond_d

    aget-object v3, p1, v1

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    if-ne v3, v4, :cond_c

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[BgDetect][Notification] notification exists, cancel it, targetId: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    const-string v1, "android"

    invoke-interface/range {v0 .. v5}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_3

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_d
    :goto_3
    const/4 p1, 0x0

    if-nez p4, :cond_10

    iget-object p2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->f:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_e
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iget-object p4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->o:Ljava/util/HashMap;

    invoke-virtual {p4, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_e

    iget-object p4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->o:Ljava/util/HashMap;

    invoke-virtual {p4, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/am/OnePlusHighPowerDetector$wtn;

    sget-wide v0, Lcom/android/server/am/OnePlusHighPowerDetector;->z0:J

    neg-long v0, v0

    invoke-virtual {p4, v0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector$wtn;->tsu(J)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->o:Ljava/util/HashMap;

    invoke-virtual {v0, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_f
    iget-object p2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->f:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->clear()V

    iput-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->e:Ljava/lang/String;

    goto/16 :goto_7

    :cond_10
    if-ne p4, v6, :cond_13

    iget-object p2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->d:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_11
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_12

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iget-object p4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->o:Ljava/util/HashMap;

    invoke-virtual {p4, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_11

    iget-object p4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->o:Ljava/util/HashMap;

    invoke-virtual {p4, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/am/OnePlusHighPowerDetector$wtn;

    sget-wide v0, Lcom/android/server/am/OnePlusHighPowerDetector;->z0:J

    neg-long v0, v0

    invoke-virtual {p4, v0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector$wtn;->tsu(J)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->o:Ljava/util/HashMap;

    invoke-virtual {v0, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_12
    iget-object p2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->d:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->clear()V

    iput-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->c:Ljava/lang/String;

    goto :goto_7

    :cond_13
    if-ne p4, v7, :cond_17

    iget-object p3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->i:Ljava/util/HashSet;

    invoke-virtual {p3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_14
    :goto_6
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_16

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->p:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->p:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OnePlusHighPowerDetector$wtn;

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v1, :cond_15

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BgDetect] BGC Update key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " CurentTime to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/am/OnePlusHighPowerDetector;->B0:J

    neg-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    sget-wide v1, Lcom/android/server/am/OnePlusHighPowerDetector;->B0:J

    neg-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/OnePlusHighPowerDetector$wtn;->tsu(J)V

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->p:Ljava/util/HashMap;

    invoke-virtual {v1, p4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_16
    iget-object p2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->i:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->clear()V

    iput-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->h:Ljava/lang/String;

    goto :goto_7

    :cond_17
    if-ne p4, p3, :cond_19

    iget-object p3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->n:Lcom/android/server/am/OnePlusHighPowerDetector$dma;

    if-eqz p3, :cond_18

    const-string p3, "[BgDetect] set mSuggestionInterval\'s curentTime to negative"

    invoke-static {p2, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->n:Lcom/android/server/am/OnePlusHighPowerDetector$dma;

    sget-wide p3, Lcom/android/server/am/OnePlusHighPowerDetector;->D0:J

    neg-long p3, p3

    invoke-virtual {p2, p3, p4}, Lcom/android/server/am/OnePlusHighPowerDetector$dma;->sis(J)V

    :cond_18
    iput-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->m:Ljava/lang/String;

    :cond_19
    :goto_7
    return-void

    :cond_1a
    :goto_8
    sget-boolean p0, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz p0, :cond_1b

    const-string p0, "[BgDetect][Notification] activeList null"

    invoke-static {p2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    return-void
.end method

.method static synthetic gck()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic gwm(Lcom/android/server/am/OnePlusHighPowerDetector;II)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusHighPowerDetector;->les(II)I

    move-result p0

    return p0
.end method

.method static synthetic hmo(Lcom/android/server/am/OnePlusHighPowerDetector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->fto:Z

    return p1
.end method

.method static synthetic ibl(Lcom/android/server/am/OnePlusHighPowerDetector;Landroid/os/PowerManager;)Landroid/os/PowerManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->N:Landroid/os/PowerManager;

    return-object p1
.end method

.method static synthetic igw()Lcom/android/server/am/ActivityManagerService;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->f2:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic ire(Lcom/android/server/am/OnePlusHighPowerDetector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->kth:Z

    return p1
.end method

.method private ivd(I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object p0

    const-string v0, "android"

    invoke-interface {p0, v0}, Landroid/app/INotificationManager;->getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    const-string v0, "OHPD"

    const/4 v1, 0x0

    if-eqz p0, :cond_9

    array-length v2, p0

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    goto :goto_4

    :cond_0
    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    const v2, 0x33954c1

    goto :goto_0

    :cond_2
    const v2, 0x33954bc

    goto :goto_0

    :cond_3
    const v2, 0x33954b8

    goto :goto_0

    :cond_4
    const v2, 0x33954b9

    :goto_0
    array-length v4, p0

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_6

    aget-object v6, p0, v5

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    if-ne v6, v2, :cond_5

    move v1, v3

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    sget-boolean p0, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz p0, :cond_8

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BgDetect][Notification] notification"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_7

    const-string v2, " exists,"

    goto :goto_3

    :cond_7
    const-string v2, " does NOT exists,"

    :goto_3
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " type: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return v1

    :cond_9
    :goto_4
    sget-boolean p0, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz p0, :cond_a

    const-string p0, "[BgDetect][Notification] activeList null"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return v1
.end method

.method static synthetic kth(Lcom/android/server/am/OnePlusHighPowerDetector;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusHighPowerDetector;->z(Ljava/lang/String;I)V

    return-void
.end method

.method private l(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->D2:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->M:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

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

.method private l0(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->irq(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v0, "com.android"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v0, "com.android.chrome"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v0, "com.google.android.gms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v0, "com.google.android.gsf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v0, "com.google.android.packageinstaller"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string p1, "android.process"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method private les(II)I
    .locals 80

    move-object/from16 v9, p0

    move/from16 v10, p1

    move/from16 v1, p2

    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkExcessiveCpuUsageLocked # level="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", minCheckDuration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OHPD"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->f2:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->f2:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/android/server/am/OnePlusHighPowerDetector;->e2:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v3}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v23

    iget-object v3, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->dma:[J

    aget-wide v3, v3, v10

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    new-array v3, v5, [I

    const/16 v6, 0xd

    aput v6, v3, v4

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move v6, v5

    goto :goto_1

    :cond_2
    :goto_0
    move v6, v4

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    iget-object v3, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->dma:[J

    aget-wide v18, v3, v10

    move/from16 v21, v6

    sub-long v5, v24, v18

    move-wide/from16 v18, v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-wide/from16 v26, v4

    iget-wide v3, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->wtn:J

    const-wide/16 v16, 0x0

    cmp-long v3, v3, v16

    if-nez v3, :cond_3

    move-wide/from16 v3, v26

    iput-wide v3, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->wtn:J

    move-object/from16 v22, v7

    goto :goto_2

    :cond_3
    move-object/from16 v22, v7

    move-wide/from16 v3, v26

    iget-wide v6, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->wtn:J

    sub-long v6, v3, v6

    const-wide/32 v26, 0x5265c00

    cmp-long v6, v6, v26

    if-lez v6, :cond_4

    iput-wide v3, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->wtn:J

    :cond_4
    :goto_2
    int-to-long v3, v1

    cmp-long v1, v18, v3

    const-wide/16 v6, 0x3e8

    if-gez v1, :cond_5

    const-string v1, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[BgDetect]sample period is less than min check duration of level "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v6, v18, v6

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " secs critical "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->O1:[I

    aget v1, v1, v10

    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->h2:Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->h2:Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->h2:Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    sub-long v3, v3, v18

    const-wide/16 v6, 0xbb8

    add-long/2addr v3, v6

    invoke-virtual {v5, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit v2

    const/4 v1, -0x1

    return v1

    :cond_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    invoke-static {}, Lcom/android/server/wm/OpWmInjector;->getVisibleWindowUids()Ljava/util/List;

    move-result-object v5

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->zgw:Landroid/location/LocationManager;

    if-nez v1, :cond_6

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->zgw:Landroid/location/LocationManager;

    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->zgw:Landroid/location/LocationManager;

    if-eqz v2, :cond_7

    const-string v1, "gps"

    invoke-virtual {v2, v1}, Landroid/location/LocationManager;->getCurrentProviderPackageListsForInteger(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    goto :goto_3

    :cond_7
    const-string v2, "OHPD"

    const-string v4, "checkExcessiveCpuUsageLocked mLocationManager is null, return"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move-object v4, v1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->F()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurrentGpsUidList:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", currentIME:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "OHPD"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, -0x2

    const-string v6, "com_oneplus_systemui_recent_task_lockd_list"

    invoke-static {v1, v6, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->F0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/16 v28, 0x1e

    const/4 v3, 0x3

    if-ne v10, v3, :cond_a

    const/4 v3, 0x1

    new-array v6, v3, [I

    const/4 v3, 0x0

    aput v28, v6, v3

    move-wide/from16 v30, v11

    const/4 v11, 0x3

    invoke-static {v6}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v32

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect] get app rank in "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v34

    move-object/from16 v29, v1

    move-object v3, v2

    sub-long v1, v34, v32

    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->B0(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/wm/OpWmInjector;->getSysAlertWindowUidsForScreenOff()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v33, v1

    const-string v1, "[BgDetect] alertWindowUid "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->B0(Ljava/lang/String;)V

    move-object/from16 v1, v33

    const/4 v11, 0x3

    goto :goto_4

    :cond_8
    move-object/from16 v33, v1

    move-object/from16 v11, v29

    move-object/from16 v12, v33

    goto :goto_6

    :cond_9
    move-object v3, v2

    goto :goto_5

    :cond_a
    move-object v3, v2

    move-wide/from16 v30, v11

    :goto_5
    move-object v12, v1

    const/4 v6, 0x0

    const/4 v11, 0x0

    :goto_6
    if-nez v10, :cond_11

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->d2:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->G()I

    move-result v2

    sget-boolean v29, Lcom/android/server/am/OnePlusHighPowerDetector;->s2:Z

    if-eqz v29, :cond_b

    move-object/from16 v29, v3

    sget v3, Lcom/android/server/am/OnePlusHighPowerDetector;->W1:I

    if-lt v2, v3, :cond_c

    iget v3, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->gck:I

    move-object/from16 v33, v4

    sget v4, Lcom/android/server/am/OnePlusHighPowerDetector;->W1:I

    if-lt v3, v4, :cond_d

    const-string v3, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v34, v5

    const-string v5, "[BgDetect] Update needHandleSkipApps to true, curr temp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", thold "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/am/OnePlusHighPowerDetector;->W1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    goto :goto_7

    :cond_b
    move-object/from16 v29, v3

    :cond_c
    move-object/from16 v33, v4

    :cond_d
    move-object/from16 v34, v5

    const/4 v3, 0x0

    :goto_7
    iput v2, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->gck:I

    sget-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v4, :cond_e

    sget-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->s2:Z

    if-eqz v4, :cond_e

    sget-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->b2:Z

    if-eqz v4, :cond_e

    const-string v3, "OHPD"

    const-string v4, "[BgDetect] Update needHandleSkipApps to true"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    :cond_e
    iget-boolean v4, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->ibl:Z

    if-nez v4, :cond_10

    sget v4, Lcom/android/server/am/OnePlusHighPowerDetector;->W1:I

    if-lt v2, v4, :cond_f

    goto :goto_8

    :cond_f
    move/from16 v35, v3

    const/4 v2, 0x0

    goto :goto_9

    :cond_10
    :goto_8
    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v35, v3

    const-string v3, "[BgDetect] Batt drain triggered, curr temp "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", thold "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/OnePlusHighPowerDetector;->W1:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :goto_9
    monitor-exit v1

    move v5, v2

    goto :goto_a

    :catchall_0
    move-exception v0

    move-object v2, v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_11
    move-object/from16 v29, v3

    move-object/from16 v33, v4

    move-object/from16 v34, v5

    const/4 v5, 0x0

    const/16 v35, 0x0

    :goto_a
    sget-object v36, Lcom/android/server/am/OnePlusHighPowerDetector;->f2:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v36

    :try_start_2
    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->dma:[J

    aput-wide v24, v1, v10

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect]chkExcessCpu level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " doKills: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v21

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " critical "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " uptime: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v37, v6

    move-object/from16 v21, v7

    move-wide/from16 v6, v18

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v38, v12

    new-instance v12, Landroid/util/ArrayMap;

    invoke-direct {v12}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v39, v11

    new-instance v11, Landroid/util/ArrayMap;

    invoke-direct {v11}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v40, v12

    new-instance v12, Landroid/util/ArrayMap;

    invoke-direct {v12}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v41, v12

    new-instance v12, Landroid/util/ArrayMap;

    invoke-direct {v12}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v42, v14

    new-instance v14, Landroid/util/ArrayMap;

    invoke-direct {v14}, Landroid/util/ArrayMap;-><init>()V

    if-nez v10, :cond_12

    move-object/from16 v18, v4

    iget-object v4, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->r:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_b

    move-object/from16 v19, v8

    :try_start_3
    iget-object v8, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->r:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    iget-object v8, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->u:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    monitor-exit v4

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object v1, v0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1

    :cond_12
    move-object/from16 v18, v4

    move-object/from16 v19, v8

    :goto_b
    const/4 v4, 0x1

    if-ne v10, v4, :cond_13

    iget-object v4, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->s:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_b

    :try_start_5
    iget-object v8, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->s:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    iget-object v8, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->v:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    monitor-exit v4

    goto :goto_c

    :catchall_2
    move-exception v0

    move-object v1, v0

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v1

    :cond_13
    :goto_c
    const/4 v8, 0x2

    if-ne v10, v8, :cond_14

    iget-object v4, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->t:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_b

    :try_start_7
    iget-object v8, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->t:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    iget-object v8, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->w:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    monitor-exit v4

    goto :goto_d

    :catchall_3
    move-exception v0

    move-object v1, v0

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_b

    :cond_14
    :goto_d
    :try_start_9
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->f2:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v4, v4, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_f
    .catchall {:try_start_9 .. :try_end_9} :catchall_b

    :goto_e
    const-wide/16 v43, 0x64

    if-lez v4, :cond_4e

    add-int/lit8 v4, v4, -0x1

    :try_start_a
    sget-object v8, Lcom/android/server/am/OnePlusHighPowerDetector;->f2:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v8, v8, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    move/from16 v46, v4

    iget-object v4, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->a(Ljava/lang/String;)Z

    move-result v4
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_b

    move-object/from16 v47, v14

    if-eqz v4, :cond_16

    const/4 v14, 0x1

    if-eq v10, v14, :cond_15

    const/4 v14, 0x2

    if-ne v10, v14, :cond_16

    goto :goto_f

    :cond_15
    const/4 v14, 0x2

    :goto_f
    :try_start_b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[BgDetect] level:"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " disabledLevel:"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->B0(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    move/from16 v26, v3

    move/from16 v51, v5

    move-wide/from16 v55, v6

    move-object/from16 v48, v13

    :goto_10
    move-object/from16 v59, v21

    move-object/from16 v58, v22

    move-object/from16 v61, v29

    move-object/from16 v50, v34

    move-object/from16 v57, v37

    move-object/from16 v7, v41

    move/from16 v49, v46

    move-object/from16 v8, v47

    const-wide/16 v16, 0x0

    move-object/from16 v34, v11

    move-object/from16 v46, v12

    move-object/from16 v29, v15

    move-object v15, v1

    move-object v12, v2

    move v11, v10

    move-object/from16 v1, v19

    goto/16 :goto_2e

    :catch_0
    move-exception v0

    move-object v1, v0

    move/from16 v26, v3

    move/from16 v51, v5

    :goto_11
    move v11, v10

    goto/16 :goto_30

    :cond_16
    :try_start_c
    invoke-virtual {v9, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->j(Lcom/android/server/am/ProcessRecord;)Z

    move-result v14
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    if-nez v14, :cond_1c

    :try_start_d
    iget-object v14, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v14}, Lcom/android/server/am/OnePlusHighPowerDetector;->irq(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1c

    invoke-virtual {v9, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->S(Lcom/android/server/am/ProcessRecord;)Z

    move-result v14

    if-eqz v14, :cond_1c

    iget v4, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v48, v13

    const-string v13, "proc "

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "(pid : "

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v8, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ") sys pkg"

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v2, v4, v13}, Lcom/android/server/am/OnePlusHighPowerDetector;->e1(Landroid/util/ArrayMap;ILjava/lang/String;)V

    if-eqz v5, :cond_17

    iget v4, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "proc "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "(pid : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v8, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ") sys pkg"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v1, v4, v13}, Lcom/android/server/am/OnePlusHighPowerDetector;->e1(Landroid/util/ArrayMap;ILjava/lang/String;)V

    :cond_17
    if-nez v10, :cond_1b

    iget-object v4, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v13, "com.google.android.gms"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    if-eqz v3, :cond_18

    iget-object v4, v8, Lcom/android/server/am/ProcessRecord;->lastCpuTimeBgMonitor:[J

    aget-wide v13, v4, v10

    const-wide/16 v16, 0x0

    cmp-long v4, v13, v16

    if-lez v4, :cond_18

    iget-wide v13, v8, Lcom/android/server/am/ProcessRecord;->curCpuTimeBgMonitor:J

    iget-object v4, v8, Lcom/android/server/am/ProcessRecord;->lastCpuTimeBgMonitor:[J

    aget-wide v49, v4, v10

    sub-long v13, v13, v49

    mul-long v43, v43, v13

    move-object/from16 v50, v1

    move-object/from16 v49, v2

    div-long v1, v43, v6

    iput-wide v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->hmo:J

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v1, :cond_19

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BgDetect] gms usage : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v51, v6

    iget-wide v6, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->hmo:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " cputimeUsed "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " curr "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v8, Lcom/android/server/am/ProcessRecord;->curCpuTimeBgMonitor:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " last "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcom/android/server/am/ProcessRecord;->lastCpuTimeBgMonitor:[J

    aget-wide v6, v4, v10

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_18
    move-object/from16 v50, v1

    move-object/from16 v49, v2

    :cond_19
    move-wide/from16 v51, v6

    :goto_12
    invoke-virtual {v9, v8, v10}, Lcom/android/server/am/OnePlusHighPowerDetector;->d1(Lcom/android/server/am/ProcessRecord;I)V

    iget-boolean v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->ssp:Z

    if-eqz v1, :cond_1d

    iget-boolean v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->tsu:Z

    if-eqz v1, :cond_1d

    iget-wide v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->hmo:J

    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->R1:[I

    const/4 v6, 0x0

    aget v4, v4, v6

    int-to-long v13, v4

    cmp-long v1, v1, v13

    if-ltz v1, :cond_1d

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v1, :cond_1a

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BgDetect] Observe GMS process-["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "], Uid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " busy("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->hmo:J

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "%) and kill"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    iget v1, v8, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v1}, Lcom/android/server/am/SocketTransition;->recordProcesskillbyhighpower(I)V

    const-string v1, "[BgDetect] Kill GMS Busy ProcessRecord"

    const/4 v7, 0x1

    const/16 v13, 0x9

    invoke-virtual {v8, v1, v13, v7}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;IZ)V

    goto :goto_13

    :cond_1b
    move/from16 v26, v3

    move/from16 v51, v5

    move-wide/from16 v55, v6

    goto/16 :goto_10

    :cond_1c
    move-object/from16 v50, v1

    move-object/from16 v49, v2

    move-wide/from16 v51, v6

    move-object/from16 v48, v13

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v3, :cond_1e

    invoke-virtual {v9, v8, v10}, Lcom/android/server/am/OnePlusHighPowerDetector;->d1(Lcom/android/server/am/ProcessRecord;I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    :cond_1d
    :goto_13
    move/from16 v26, v3

    move-object/from16 v1, v19

    move-object/from16 v59, v21

    move-object/from16 v58, v22

    move-object/from16 v61, v29

    move-object/from16 v57, v37

    move-object/from16 v7, v41

    move-object/from16 v8, v47

    move-wide/from16 v55, v51

    const-wide/16 v16, 0x0

    move/from16 v51, v5

    move-object/from16 v29, v15

    move-object/from16 v15, v50

    move-object/from16 v50, v34

    move-object/from16 v34, v11

    move v11, v10

    move/from16 v77, v46

    move-object/from16 v46, v12

    move-object/from16 v12, v49

    move/from16 v49, v77

    goto/16 :goto_2e

    :cond_1e
    :try_start_e
    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/server/wm/WindowProcessController;->lastFgTime:J
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    const-wide/16 v13, 0x0

    cmp-long v1, v1, v13

    if-lez v1, :cond_1f

    :try_start_f
    iget v1, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    iget-wide v13, v2, Lcom/android/server/wm/WindowProcessController;->lastFgTime:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_b

    :cond_1f
    :try_start_10
    iget-wide v1, v8, Lcom/android/server/am/ProcessRecord;->curCpuTimeBgMonitor:J

    iget-object v13, v8, Lcom/android/server/am/ProcessRecord;->lastCpuTimeBgMonitor:[J

    aget-wide v13, v13, v10
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_b

    sub-long v13, v1, v13

    const/4 v1, 0x3

    if-ne v10, v1, :cond_20

    :try_start_11
    invoke-virtual {v9, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->v0(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    :cond_20
    :try_start_12
    iget-object v1, v8, Lcom/android/server/am/ProcessRecord;->lastCpuTimeBgMonitor:[J

    aget-wide v1, v1, v10
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    const-wide/16 v16, 0x0

    cmp-long v1, v1, v16

    if-gtz v1, :cond_27

    :try_start_13
    invoke-virtual {v9, v8, v10}, Lcom/android/server/am/OnePlusHighPowerDetector;->d1(Lcom/android/server/am/ProcessRecord;I)V

    iget-wide v1, v8, Lcom/android/server/am/ProcessRecord;->forkTime:J
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    sub-long v1, v24, v1

    const-wide/32 v53, 0xea60

    cmp-long v1, v1, v53

    if-lez v1, :cond_21

    :try_start_14
    iget-wide v1, v8, Lcom/android/server/am/ProcessRecord;->curCpuTimeBgMonitor:J

    mul-long v1, v1, v43

    iget-wide v6, v8, Lcom/android/server/am/ProcessRecord;->forkTime:J

    sub-long v6, v24, v6

    div-long/2addr v1, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "(pid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v8, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") level "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " usage "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " app.forkTime "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v43, v1

    iget-wide v1, v8, Lcom/android/server/am/ProcessRecord;->forkTime:J

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->B0(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    move/from16 v26, v3

    move v7, v10

    move-object/from16 v60, v19

    move-object/from16 v59, v21

    move-object/from16 v58, v22

    move-object/from16 v27, v29

    move-object/from16 v57, v37

    move-wide/from16 v2, v43

    move-object v10, v8

    move-object v8, v11

    move-object/from16 v29, v15

    move-object/from16 v15, v50

    const/4 v11, 0x2

    move-object/from16 v50, v34

    move-wide/from16 v77, v51

    move/from16 v51, v5

    move-object/from16 v52, v18

    move-wide/from16 v5, v77

    move/from16 v79, v46

    move-object/from16 v46, v12

    move-object/from16 v12, v49

    move/from16 v49, v79

    goto/16 :goto_17

    :cond_21
    :try_start_15
    new-instance v45, Ljava/lang/StringBuffer;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_3
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    if-eqz v5, :cond_22

    :try_start_16
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->J()I

    move-result v53
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_1
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    move-object/from16 v7, v50

    move-object/from16 v1, p0

    move-object/from16 v6, v29

    move-object/from16 v4, v49

    move-object v2, v8

    move-object/from16 v29, v15

    move-object/from16 v15, v18

    move/from16 v49, v46

    move/from16 v18, v3

    move-object/from16 v46, v12

    move-object v12, v4

    move-wide/from16 v3, v24

    move-object/from16 v50, v34

    move-object/from16 v34, v11

    move-wide/from16 v10, v51

    move/from16 v51, v5

    move/from16 v5, p1

    move-object/from16 v52, v15

    move/from16 v26, v18

    move-object/from16 v57, v37

    move-object v15, v6

    move-object/from16 v6, v45

    move-object/from16 v27, v15

    move-object/from16 v59, v21

    move-object/from16 v58, v22

    move-object v15, v7

    move/from16 v7, v51

    move-object/from16 v60, v19

    move-wide/from16 v18, v10

    const/4 v11, 0x2

    move-object v10, v8

    move/from16 v8, v53

    :try_start_17
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->S0(Lcom/android/server/am/ProcessRecord;JILjava/lang/StringBuffer;ZI)Z

    move-result v1

    if-eqz v1, :cond_23

    iget v1, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v15, v1, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->e1(Landroid/util/ArrayMap;ILjava/lang/String;)V

    goto :goto_14

    :catch_1
    move-exception v0

    move/from16 v26, v3

    move/from16 v51, v5

    goto/16 :goto_16

    :cond_22
    move/from16 v26, v3

    move-object v10, v8

    move-object/from16 v60, v19

    move-object/from16 v59, v21

    move-object/from16 v58, v22

    move-object/from16 v27, v29

    move-object/from16 v57, v37

    move-object/from16 v29, v15

    move-object/from16 v15, v50

    move-object/from16 v50, v34

    move-object/from16 v34, v11

    const/4 v11, 0x2

    move-wide/from16 v77, v51

    move/from16 v51, v5

    move-object/from16 v52, v18

    move-wide/from16 v18, v77

    move/from16 v79, v46

    move-object/from16 v46, v12

    move-object/from16 v12, v49

    move/from16 v49, v79

    :cond_23
    :goto_14
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    sget v8, Lcom/android/server/am/OnePlusHighPowerDetector;->F1:I

    move-object/from16 v1, p0

    move-object v2, v10

    move-wide/from16 v3, v24

    move/from16 v5, p1

    move-object/from16 v6, v16

    move/from16 v7, v51

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->S0(Lcom/android/server/am/ProcessRecord;JILjava/lang/StringBuffer;ZI)Z

    move-result v1

    if-eqz v1, :cond_25

    iget v1, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v12, v1, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->e1(Landroid/util/ArrayMap;ILjava/lang/String;)V

    mul-long v13, v13, v43

    div-long v13, v13, v18

    iget v1, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v8, v34

    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    iget v1, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    long-to-int v2, v13

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :cond_24
    iget v1, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    long-to-int v2, v13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_2
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    goto :goto_15

    :cond_25
    move-object/from16 v8, v34

    :goto_15
    move/from16 v7, p1

    move-wide/from16 v5, v18

    if-nez v7, :cond_26

    const-wide/16 v2, 0x0

    :try_start_18
    iput-wide v2, v10, Lcom/android/server/am/ProcessRecord;->lastSkipTime:J
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_4
    .catchall {:try_start_18 .. :try_end_18} :catchall_b

    move-wide/from16 v16, v2

    move-wide/from16 v55, v5

    move v11, v7

    move-object/from16 v34, v8

    move-object/from16 v61, v27

    move-object/from16 v7, v41

    move-object/from16 v8, v47

    move-object/from16 v18, v52

    move-object/from16 v1, v60

    goto/16 :goto_2e

    :cond_26
    move-wide/from16 v55, v5

    move v11, v7

    move-object/from16 v34, v8

    move-object/from16 v61, v27

    move-object/from16 v7, v41

    move-object/from16 v8, v47

    move-object/from16 v18, v52

    move-object/from16 v1, v60

    const-wide/16 v16, 0x0

    goto/16 :goto_2e

    :catch_2
    move-exception v0

    :goto_16
    move/from16 v11, p1

    goto/16 :goto_2f

    :catch_3
    move-exception v0

    move/from16 v26, v3

    move/from16 v51, v5

    move-object v1, v0

    goto/16 :goto_11

    :cond_27
    move/from16 v26, v3

    move v7, v10

    move-wide/from16 v2, v16

    move-object/from16 v60, v19

    move-object/from16 v59, v21

    move-object/from16 v58, v22

    move-object/from16 v27, v29

    move-object/from16 v57, v37

    move-object v10, v8

    move-object v8, v11

    move-object/from16 v29, v15

    move-object/from16 v15, v50

    const/4 v11, 0x2

    move-object/from16 v50, v34

    move-wide/from16 v77, v51

    move/from16 v51, v5

    move-object/from16 v52, v18

    move-wide/from16 v5, v77

    move/from16 v79, v46

    move-object/from16 v46, v12

    move-object/from16 v12, v49

    move/from16 v49, v79

    mul-long v43, v43, v13

    :try_start_19
    div-long v16, v43, v5

    move-wide/from16 v2, v16

    :goto_17
    iget-object v1, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v11, "com.google.android.gms.persistent"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_6
    .catchall {:try_start_19 .. :try_end_19} :catchall_b

    if-eqz v1, :cond_28

    :try_start_1a
    iget v1, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v11, "add gms-persistent to sys pkg"

    invoke-virtual {v9, v12, v1, v11}, Lcom/android/server/am/OnePlusHighPowerDetector;->e1(Landroid/util/ArrayMap;ILjava/lang/String;)V

    if-eqz v51, :cond_28

    iget v1, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v11, "add gms-persistent to sys pkg"

    invoke-virtual {v9, v15, v1, v11}, Lcom/android/server/am/OnePlusHighPowerDetector;->e1(Landroid/util/ArrayMap;ILjava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_4
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    goto :goto_18

    :catch_4
    move-exception v0

    move-object v1, v0

    move v11, v7

    goto/16 :goto_30

    :cond_28
    :goto_18
    :try_start_1b
    invoke-virtual {v9, v10}, Lcom/android/server/am/OnePlusHighPowerDetector;->q0(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_6
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    if-eqz v1, :cond_29

    :try_start_1c
    iget v1, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v11, v48

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_4
    .catchall {:try_start_1c .. :try_end_1c} :catchall_b

    goto :goto_19

    :cond_29
    move-object/from16 v11, v48

    :goto_19
    :try_start_1d
    invoke-virtual {v9, v10}, Lcom/android/server/am/OnePlusHighPowerDetector;->k0(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_6
    .catchall {:try_start_1d .. :try_end_1d} :catchall_b

    if-eqz v1, :cond_2a

    :try_start_1e
    iget-object v1, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v48, v11

    move-object/from16 v11, v42

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_2a
    move-object/from16 v48, v11

    move-object/from16 v11, v42

    :goto_1a
    const-wide/16 v16, 0xa

    cmp-long v1, v2, v16

    if-gtz v1, :cond_2c

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->x0:Z

    if-eqz v1, :cond_2b

    iget-object v1, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-wide/from16 v18, v5

    const-string v5, "com.moblie.bestapps.webviewtest"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_4
    .catchall {:try_start_1e .. :try_end_1e} :catchall_b

    if-eqz v1, :cond_2d

    goto :goto_1b

    :cond_2b
    move-wide/from16 v18, v5

    goto :goto_1c

    :cond_2c
    move-wide/from16 v18, v5

    :goto_1b
    :try_start_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "(pid : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v10, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") level "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " usage "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " bgtime: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v10, Lcom/android/server/am/ProcessRecord;->lastCpuTimeBgMonitor:[J

    aget-wide v5, v5, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->B0(Ljava/lang/String;)V

    :cond_2d
    :goto_1c
    invoke-virtual {v9, v10, v7}, Lcom/android/server/am/OnePlusHighPowerDetector;->C0(Lcom/android/server/am/ProcessRecord;I)Z

    move-result v1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_6
    .catchall {:try_start_1f .. :try_end_1f} :catchall_b

    if-nez v1, :cond_34

    :try_start_20
    invoke-virtual {v9, v10}, Lcom/android/server/am/OnePlusHighPowerDetector;->bud(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-nez v1, :cond_34

    invoke-virtual {v9, v10}, Lcom/android/server/am/OnePlusHighPowerDetector;->j(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-nez v1, :cond_34

    invoke-virtual {v9, v10}, Lcom/android/server/am/OnePlusHighPowerDetector;->vju(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-nez v1, :cond_34

    move-object/from16 v6, v27

    invoke-virtual {v9, v10, v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->b(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_35

    invoke-virtual {v9, v10}, Lcom/android/server/am/OnePlusHighPowerDetector;->k(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-eqz v1, :cond_2e

    goto/16 :goto_21

    :cond_2e
    if-nez v7, :cond_30

    if-eqz v4, :cond_2f

    sget v1, Lcom/android/server/am/OnePlusHighPowerDetector;->S1:I

    goto :goto_1d

    :cond_2f
    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->R1:[I

    aget v1, v1, v7

    :goto_1d
    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_30

    move-object/from16 v5, v60

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_30
    move-object/from16 v5, v60

    :goto_1e
    iget v1, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "proc "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "(pid : "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v10, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ") stat "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v10, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v12, v1, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->e1(Landroid/util/ArrayMap;ILjava/lang/String;)V

    if-eqz v51, :cond_31

    iget v1, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "proc "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "(pid : "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v10, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ") stat "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v10, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v15, v1, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->e1(Landroid/util/ArrayMap;ILjava/lang/String;)V

    :cond_31
    iget v1, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    iget v1, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    long-to-int v2, v2

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    :cond_32
    iget v1, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1f
    if-nez v7, :cond_33

    const-wide/16 v1, 0x0

    iput-wide v1, v10, Lcom/android/server/am/ProcessRecord;->lastSkipTime:J
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_4
    .catchall {:try_start_20 .. :try_end_20} :catchall_b

    move-wide/from16 v16, v1

    move-object v1, v5

    move-object/from16 v61, v6

    move-object/from16 v34, v8

    move-object/from16 v42, v11

    move-wide/from16 v55, v18

    move-object/from16 v8, v47

    move-object/from16 v18, v52

    goto :goto_20

    :cond_33
    move-object v1, v5

    move-object/from16 v61, v6

    move-object/from16 v34, v8

    move-object/from16 v42, v11

    move-wide/from16 v55, v18

    move-object/from16 v8, v47

    move-object/from16 v18, v52

    const-wide/16 v16, 0x0

    :goto_20
    move v11, v7

    move-object/from16 v7, v41

    goto/16 :goto_2d

    :cond_34
    move-object/from16 v6, v27

    :cond_35
    :goto_21
    move-object/from16 v5, v60

    const-wide/16 v16, 0x0

    :try_start_21
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz v51, :cond_36

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->J()I

    move-result v21
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_6
    .catchall {:try_start_21 .. :try_end_21} :catchall_b

    move-object/from16 v1, p0

    move-wide/from16 v53, v13

    move-wide v13, v2

    move-object v2, v10

    move/from16 v16, v4

    move-wide/from16 v3, v24

    move-object/from16 v42, v11

    move-wide/from16 v55, v18

    move-object v11, v5

    move/from16 v5, p1

    move-object/from16 v61, v6

    move-object/from16 v6, v20

    move-object/from16 v60, v11

    move v11, v7

    move/from16 v7, v51

    move-object/from16 v62, v8

    move/from16 v8, v21

    :try_start_22
    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->S0(Lcom/android/server/am/ProcessRecord;JILjava/lang/StringBuffer;ZI)Z

    move-result v1

    if-eqz v1, :cond_37

    iget v1, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v15, v1, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->e1(Landroid/util/ArrayMap;ILjava/lang/String;)V

    goto :goto_22

    :cond_36
    move/from16 v16, v4

    move-object/from16 v60, v5

    move-object/from16 v61, v6

    move-object/from16 v62, v8

    move-object/from16 v42, v11

    move-wide/from16 v53, v13

    move-wide/from16 v55, v18

    move-wide v13, v2

    move v11, v7

    :cond_37
    :goto_22
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    sget v8, Lcom/android/server/am/OnePlusHighPowerDetector;->F1:I

    move-object/from16 v1, p0

    move-object v2, v10

    move-wide/from16 v3, v24

    move/from16 v5, p1

    move-object/from16 v6, v17

    move/from16 v7, v51

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->S0(Lcom/android/server/am/ProcessRecord;JILjava/lang/StringBuffer;ZI)Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-virtual {v9, v10, v11}, Lcom/android/server/am/OnePlusHighPowerDetector;->d1(Lcom/android/server/am/ProcessRecord;I)V

    iget v1, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v12, v1, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->e1(Landroid/util/ArrayMap;ILjava/lang/String;)V

    if-eqz v16, :cond_38

    sget v1, Lcom/android/server/am/OnePlusHighPowerDetector;->S1:I

    goto :goto_23

    :cond_38
    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->R1:[I

    aget v1, v1, v11

    :goto_23
    int-to-long v1, v1

    cmp-long v1, v13, v1

    if-ltz v1, :cond_3b

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect] skip proc "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "(uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), reason= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v11, :cond_39

    iget v1, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_5
    .catchall {:try_start_22 .. :try_end_22} :catchall_b

    move-object/from16 v8, v47

    :try_start_23
    invoke-virtual {v9, v8, v1, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->e1(Landroid/util/ArrayMap;ILjava/lang/String;)V

    goto :goto_24

    :cond_39
    move-object/from16 v8, v47

    :goto_24
    if-nez v11, :cond_3a

    move-object/from16 v1, v60

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_3a
    move-object/from16 v1, v60

    :goto_25
    if-nez v11, :cond_3c

    iget-wide v2, v10, Lcom/android/server/am/ProcessRecord;->lastSkipTime:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_3d

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v10, Lcom/android/server/am/ProcessRecord;->lastSkipTime:J

    const-string v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BgDetect] set lastSkipTime for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "(uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    :cond_3b
    move-object/from16 v8, v47

    move-object/from16 v1, v60

    :cond_3c
    const-wide/16 v6, 0x0

    :cond_3d
    :goto_26
    iget v2, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v5, v62

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    iget v2, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    long-to-int v3, v13

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    :cond_3e
    iget v2, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    long-to-int v3, v13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_27
    move-object/from16 v34, v5

    move-wide/from16 v16, v6

    move-object/from16 v7, v41

    move-object/from16 v18, v52

    goto/16 :goto_2e

    :cond_3f
    move-object/from16 v8, v47

    move-object/from16 v1, v60

    move-object/from16 v5, v62

    const-wide/16 v6, 0x0

    if-nez v11, :cond_40

    iput-wide v6, v10, Lcom/android/server/am/ProcessRecord;->lastSkipTime:J

    :cond_40
    if-eqz v16, :cond_41

    sget v2, Lcom/android/server/am/OnePlusHighPowerDetector;->S1:I

    goto :goto_28

    :cond_41
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->R1:[I

    aget v2, v2, v11

    :goto_28
    int-to-long v2, v2

    cmp-long v2, v13, v2

    if-ltz v2, :cond_42

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->Q1:[I

    aget v2, v2, v11

    int-to-long v2, v2

    cmp-long v2, v13, v2

    if-ltz v2, :cond_44

    :cond_42
    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->x0:Z

    if-eqz v2, :cond_43

    iget-object v2, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string v3, "com.android.chrome"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    :cond_43
    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->x0:Z

    if-eqz v2, :cond_4b

    iget-object v2, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string v3, "com.moblie.bestapps.webviewtest"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    :cond_44
    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v2, :cond_46

    const-string v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "catch level="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v16, :cond_45

    sget v4, Lcom/android/server/am/OnePlusHighPowerDetector;->S1:I

    goto :goto_29

    :cond_45
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->R1:[I

    aget v4, v4, v11

    :goto_29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "<="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->Q1:[I

    aget v4, v4, v11

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    if-nez v11, :cond_47

    monitor-enter v23
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_9
    .catchall {:try_start_23 .. :try_end_23} :catchall_b

    :try_start_24
    iget-object v2, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v16, v23

    move/from16 v17, v2

    move-object/from16 v18, v3

    move-wide/from16 v19, v55

    move-wide/from16 v21, v53

    invoke-virtual/range {v16 .. v22}, Lcom/android/internal/os/BatteryStatsImpl;->reportExcessiveCpuLocked(ILjava/lang/String;JJ)V

    monitor-exit v23

    goto :goto_2a

    :catchall_4
    move-exception v0

    move-object v1, v0

    monitor-exit v23
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_4

    :try_start_25
    throw v1

    :cond_47
    :goto_2a
    iget-object v2, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_48

    iget-object v2, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_48

    iget-object v2, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v4, v52

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    const-string v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[BgDetect]detect excessive cpu on process "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "(pid : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v10, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") level "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " usage "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    :cond_48
    move-object/from16 v4, v52

    :cond_49
    :goto_2b
    if-nez v11, :cond_4a

    if-eqz v10, :cond_4a

    iget-object v2, v10, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v2, :cond_4a

    iget-object v2, v10, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v3, v10, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord$PackageList;->mPkgList:Landroid/util/ArrayMap;

    invoke-virtual {v2, v3}, Lcom/android/internal/app/procstats/ProcessState;->reportExcessiveCpu(Landroid/util/ArrayMap;)V

    :cond_4a
    move-object/from16 v18, v4

    move-object/from16 v34, v5

    move-object/from16 v7, v41

    const-wide/16 v16, 0x0

    goto/16 :goto_2d

    :cond_4b
    move-object/from16 v4, v52

    iget v2, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v7, v40

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    iget v2, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    long-to-int v3, v13

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c

    :cond_4c
    iget v2, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    long-to-int v3, v13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2c
    iget v2, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/server/am/OnePlusHighPowerDetector$cno;

    iget v6, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    move-object/from16 v18, v4

    iget v4, v10, Lcom/android/server/am/ProcessRecord;->pid:I

    move-object/from16 v34, v5

    iget-object v5, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v40, v7

    iget-object v7, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v3, v6, v4, v5, v7}, Lcom/android/server/am/OnePlusHighPowerDetector$cno;-><init>(IILjava/lang/String;I)V

    move-object/from16 v7, v41

    invoke-virtual {v7, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v16, 0x0

    cmp-long v2, v13, v16

    if-lez v2, :cond_4d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect]accumulate usage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " from procName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->B0(Ljava/lang/String;)V

    :cond_4d
    :goto_2d
    invoke-virtual {v9, v10, v11}, Lcom/android/server/am/OnePlusHighPowerDetector;->d1(Lcom/android/server/am/ProcessRecord;I)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_9
    .catchall {:try_start_25 .. :try_end_25} :catchall_b

    :goto_2e
    move-object/from16 v19, v1

    move-object/from16 v41, v7

    move-object v14, v8

    move v10, v11

    move-object v2, v12

    move-object v1, v15

    move/from16 v3, v26

    move-object/from16 v15, v29

    move-object/from16 v11, v34

    move-object/from16 v12, v46

    move-object/from16 v13, v48

    move/from16 v4, v49

    move-object/from16 v34, v50

    move/from16 v5, v51

    move-wide/from16 v6, v55

    move-object/from16 v37, v57

    move-object/from16 v22, v58

    move-object/from16 v21, v59

    move-object/from16 v29, v61

    goto/16 :goto_e

    :catch_5
    move-exception v0

    goto :goto_2f

    :catch_6
    move-exception v0

    move v11, v7

    goto :goto_2f

    :catch_7
    move-exception v0

    move/from16 v26, v3

    move/from16 v51, v5

    move v11, v10

    :goto_2f
    move-object v1, v0

    :goto_30
    move-object/from16 v18, v47

    goto/16 :goto_8e

    :catch_8
    move-exception v0

    move/from16 v26, v3

    move/from16 v51, v5

    move v11, v10

    move-object v1, v0

    move-object/from16 v18, v14

    goto/16 :goto_8e

    :cond_4e
    move/from16 v26, v3

    move/from16 v51, v5

    move-wide/from16 v55, v6

    move-object/from16 v46, v12

    move-object/from16 v48, v13

    move-object v8, v14

    move-object/from16 v59, v21

    move-object/from16 v58, v22

    move-object/from16 v61, v29

    move-object/from16 v50, v34

    move-object/from16 v57, v37

    move-object/from16 v7, v41

    const/16 v13, 0x9

    const-wide/16 v16, 0x0

    move-object v12, v2

    move-object/from16 v34, v11

    move-object/from16 v29, v15

    move-object v15, v1

    move v11, v10

    move-object/from16 v1, v19

    if-eqz v26, :cond_e8

    :try_start_26
    invoke-interface/range {v50 .. v50}, Ljava/util/List;->size()I

    move-result v2
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_d
    .catchall {:try_start_26 .. :try_end_26} :catchall_b

    if-lez v2, :cond_50

    :try_start_27
    invoke-interface/range {v50 .. v50}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    move-object/from16 v4, v48

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4f

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "has visible window"

    invoke-virtual {v9, v12, v5, v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->e1(Landroid/util/ArrayMap;ILjava/lang/String;)V

    if-eqz v51, :cond_4f

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v5, "has visible window"

    invoke-virtual {v9, v15, v3, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->e1(Landroid/util/ArrayMap;ILjava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_9
    .catchall {:try_start_27 .. :try_end_27} :catchall_b

    :cond_4f
    move-object/from16 v48, v4

    goto :goto_31

    :catch_9
    move-exception v0

    move-object v1, v0

    move-object/from16 v18, v8

    goto/16 :goto_8e

    :cond_50
    move-object/from16 v4, v48

    :try_start_28
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v2
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_d
    .catchall {:try_start_28 .. :try_end_28} :catchall_b

    if-lez v2, :cond_52

    :try_start_29
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v6, v42

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_51

    const-string v5, "has gps request"

    invoke-virtual {v9, v12, v3, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->e1(Landroid/util/ArrayMap;ILjava/lang/String;)V

    if-eqz v51, :cond_51

    const-string v5, "has gps request"

    invoke-virtual {v9, v15, v3, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->e1(Landroid/util/ArrayMap;ILjava/lang/String;)V

    :cond_51
    move-object/from16 v42, v6

    goto :goto_32

    :cond_52
    if-nez v11, :cond_55

    iget-object v2, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->L:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_53
    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v6, "audio active in last sample"

    invoke-virtual {v9, v12, v5, v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->e1(Landroid/util/ArrayMap;ILjava/lang/String;)V

    if-eqz v51, :cond_53

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v5, "audio active in last sample"

    invoke-virtual {v9, v15, v3, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->e1(Landroid/util/ArrayMap;ILjava/lang/String;)V

    goto :goto_33

    :cond_54
    iget-object v2, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->L:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_9
    .catchall {:try_start_29 .. :try_end_29} :catchall_b

    :cond_55
    :try_start_2a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->P:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_34
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_d
    .catchall {:try_start_2a .. :try_end_2a} :catchall_b

    if-eqz v5, :cond_5b

    :try_start_2b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_58

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v10, "audio active"

    invoke-virtual {v9, v12, v6, v10}, Lcom/android/server/am/OnePlusHighPowerDetector;->e1(Landroid/util/ArrayMap;ILjava/lang/String;)V

    if-eqz v51, :cond_56

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v10, "audio active"

    invoke-virtual {v9, v15, v6, v10}, Lcom/android/server/am/OnePlusHighPowerDetector;->e1(Landroid/util/ArrayMap;ILjava/lang/String;)V

    :cond_56
    if-nez v11, :cond_57

    iget-object v6, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->L:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_57
    move-object/from16 v6, v50

    goto :goto_35

    :cond_58
    move-object/from16 v6, v50

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5a

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const-string v14, "has visible window & audio active"

    invoke-virtual {v9, v12, v10, v14}, Lcom/android/server/am/OnePlusHighPowerDetector;->e1(Landroid/util/ArrayMap;ILjava/lang/String;)V

    if-eqz v51, :cond_59

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const-string v14, "has visible window & audio active"

    invoke-virtual {v9, v15, v10, v14}, Lcom/android/server/am/OnePlusHighPowerDetector;->e1(Landroid/util/ArrayMap;ILjava/lang/String;)V

    :cond_59
    if-nez v11, :cond_5a

    iget-object v10, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->L:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5a
    :goto_35
    move-object/from16 v50, v6

    goto :goto_34

    :cond_5b
    move-object/from16 v6, v50

    const/16 v10, 0x3e7

    if-nez v11, :cond_63

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_63

    if-eqz v35, :cond_63

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/android/server/am/ProcessRecord;

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->rtg()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/OnePlusUtil$zta;->tsu()I

    move-result v1

    if-eqz v14, :cond_63

    iget v3, v14, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_63

    iget v3, v14, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_63

    invoke-direct {v9, v14}, Lcom/android/server/am/OnePlusHighPowerDetector;->l0(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-nez v2, :cond_63

    iget-object v2, v14, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v1, v2, :cond_63

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->r2:Z

    if-eqz v1, :cond_5f

    iget v1, v14, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v46

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_5c

    if-eqz v1, :cond_63

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long v24, v24, v1

    sget v1, Lcom/android/server/am/OnePlusHighPowerDetector;->F1:I

    int-to-long v1, v1

    cmp-long v1, v24, v1

    if-ltz v1, :cond_63

    :cond_5c
    iget-object v1, v14, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, v10, :cond_5d

    const/4 v4, 0x1

    goto :goto_36

    :cond_5d
    const/4 v4, 0x0

    :goto_36
    if-eqz v4, :cond_5e

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->u:Ljava/util/HashMap;

    goto :goto_37

    :cond_5e
    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->r:Ljava/util/HashMap;

    :goto_37
    move-object v2, v1

    iget-object v1, v14, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v1, v14, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v13, v14, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_9
    .catchall {:try_start_2b .. :try_end_2b} :catchall_b

    move/from16 v19, v1

    move-object/from16 v1, p0

    move-object/from16 v63, v34

    move-object/from16 v65, v7

    move-object/from16 v64, v40

    move/from16 v7, v19

    move-object/from16 v66, v8

    move v8, v13

    :try_start_2c
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->fto(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    iget-object v1, v14, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v14, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v1, v14, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const-string v5, "skip lru_huge"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->D0(Ljava/lang/String;IILjava/lang/String;I)V

    goto/16 :goto_3a

    :cond_5f
    move-object/from16 v65, v7

    move-object/from16 v66, v8

    move-object/from16 v63, v34

    move-object/from16 v64, v40

    move-object/from16 v13, v59

    invoke-virtual {v9, v14, v13}, Lcom/android/server/am/OnePlusHighPowerDetector;->c(Lcom/android/server/am/ProcessRecord;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_60

    iget-object v1, v14, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v33

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->f2:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v14, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    iget-object v3, v14, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BgDetect][Skip] kill "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v14, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " due to abnormally busy, proc state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v14, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->killUid(IILjava/lang/String;)V

    goto :goto_3b

    :cond_60
    iget-object v1, v14, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, v10, :cond_61

    const/4 v4, 0x1

    goto :goto_38

    :cond_61
    const/4 v4, 0x0

    :goto_38
    if-eqz v4, :cond_62

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->u:Ljava/util/HashMap;

    goto :goto_39

    :cond_62
    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->r:Ljava/util/HashMap;

    :goto_39
    move-object v2, v1

    iget-object v1, v14, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, v14, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v1, v14, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->fto(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    iget-object v1, v14, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v14, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v1, v14, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const-string v5, "skip lru_huge"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->D0(Ljava/lang/String;IILjava/lang/String;I)V

    goto :goto_3b

    :cond_63
    move-object/from16 v65, v7

    move-object/from16 v66, v8

    move-object/from16 v63, v34

    move-object/from16 v64, v40

    :goto_3a
    move-object/from16 v13, v59

    :goto_3b
    if-nez v11, :cond_7c

    iget-boolean v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->y:Z

    if-eqz v1, :cond_67

    iget v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->B:I

    const/4 v14, 0x1

    add-int/2addr v1, v14

    iput v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->B:I

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v1, :cond_64

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect] mNativeMonitorCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->B:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_64
    iget v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->B:I

    iget v2, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->E:I

    if-ne v1, v2, :cond_68

    const/4 v1, 0x0

    iput-boolean v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->y:Z

    iput v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->B:I

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v1, :cond_65

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect] mLastBatteryPercent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->oif:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mBatteryLevelOfStart="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->A:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_65
    iget v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->A:I

    iget v2, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->oif:I

    sub-int/2addr v1, v2

    iget v2, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->C:I

    if-le v1, v2, :cond_66

    move v4, v14

    goto :goto_3c

    :cond_66
    const/4 v4, 0x0

    :goto_3c
    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect] stop native process monitoring, start to judge, doKill="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    :cond_67
    const/4 v14, 0x1

    :cond_68
    const/4 v4, 0x0

    :goto_3d
    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->G:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_a
    .catchall {:try_start_2c .. :try_end_2c} :catchall_b

    :try_start_2d
    iget-object v2, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->G:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_7b

    iget-object v2, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->G:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;

    iget v5, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->B:I

    if-ne v5, v14, :cond_69

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->ssp()V

    :cond_69
    iget-object v5, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->kth:[J

    aget-wide v5, v5, v11

    cmp-long v5, v5, v16

    if-lez v5, :cond_79

    iget-wide v5, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->cno:J

    iget-object v7, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->kth:[J

    aget-wide v7, v7, v11

    sub-long/2addr v5, v7

    mul-long v5, v5, v43

    move-wide/from16 v7, v55

    div-long/2addr v5, v7

    iget-object v10, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->F:Ljava/util/HashMap;

    iget-object v14, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->rtg:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6d

    iget-object v10, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->F:Ljava/util/HashMap;

    iget-object v14, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->rtg:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object/from16 v50, v15

    int-to-long v14, v10

    cmp-long v10, v5, v14

    if-ltz v10, :cond_6b

    iget-boolean v10, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->y:Z

    if-eqz v10, :cond_6a

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->zta()V

    const-string v10, "OHPD"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[BgDetect]native process "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->rtg:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " HighCpuUsedCount add 1, now HighCpuUsedCount = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->sis()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6a
    const/4 v10, 0x1

    goto :goto_3f

    :cond_6b
    iget-boolean v10, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->y:Z

    if-eqz v10, :cond_6c

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->rtg()V

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->sis()I

    move-result v10

    if-gtz v10, :cond_6c

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->cno()V

    const-string v10, "OHPD"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[BgDetect]native process "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->rtg:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " HighCpuUsedCount reduce 1, now HighCpuUsedCount = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->sis()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6c
    const/4 v10, 0x0

    :goto_3f
    const/4 v14, 0x1

    goto :goto_41

    :cond_6d
    move-object/from16 v50, v15

    iget v10, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->D:I

    int-to-long v14, v10

    cmp-long v10, v5, v14

    if-ltz v10, :cond_6e

    const/4 v10, 0x1

    goto :goto_40

    :cond_6e
    const/4 v10, 0x0

    :goto_40
    const/4 v14, 0x0

    :goto_41
    if-eqz v10, :cond_6f

    iget v15, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->B:I

    move-object/from16 v59, v13

    const/4 v13, 0x2

    if-gt v15, v13, :cond_70

    const/4 v13, 0x1

    iput-boolean v13, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->z:Z

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->kth()V

    goto :goto_42

    :cond_6f
    move-object/from16 v59, v13

    :cond_70
    :goto_42
    if-eqz v10, :cond_78

    const-string v10, "OHPD"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[BgDetect]detect excessive cpu on native process "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->rtg:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "(pid : "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->you:I

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ") level "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " usage "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, " monitor="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v15, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->y:Z

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, " round="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->B:I

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " doKill="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v10, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->y:Z

    if-eqz v10, :cond_73

    iget-object v10, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->O:Ljava/util/HashMap;

    iget-object v13, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->rtg:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_73

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->sis()I

    move-result v10

    iget-object v13, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->O:Ljava/util/HashMap;

    iget-object v15, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->rtg:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/OnePlusHighPowerDetector$gck;

    invoke-virtual {v13}, Lcom/android/server/am/OnePlusHighPowerDetector$gck;->you()I

    move-result v13

    if-ne v10, v13, :cond_72

    iget v10, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->A:I

    iget v13, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->oif:I

    sub-int/2addr v10, v13

    iget-object v13, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->O:Ljava/util/HashMap;

    iget-object v15, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->rtg:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/OnePlusHighPowerDetector$gck;

    invoke-virtual {v13}, Lcom/android/server/am/OnePlusHighPowerDetector$gck;->zta()I

    move-result v13

    if-le v10, v13, :cond_71

    const-string v10, "OHPD"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[BgDetect]native process "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->rtg:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "drop "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->O:Ljava/util/HashMap;

    move-wide/from16 v55, v7

    iget-object v7, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->rtg:Ljava/lang/String;

    invoke-virtual {v15, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/OnePlusHighPowerDetector$gck;

    invoke-virtual {v7}, Lcom/android/server/am/OnePlusHighPowerDetector$gck;->zta()I

    move-result v7

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " in "

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->O:Ljava/util/HashMap;

    iget-object v8, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->rtg:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/OnePlusHighPowerDetector$gck;

    invoke-virtual {v7}, Lcom/android/server/am/OnePlusHighPowerDetector$gck;->you()I

    move-result v7

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "counts, dokillSpecial is "

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    goto/16 :goto_45

    :cond_71
    move-wide/from16 v55, v7

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->cno()V

    const-string v7, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[BgDetect]native process "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->rtg:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is reset HighCpuUsedCount because batteryDrop < "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->O:Ljava/util/HashMap;

    iget-object v13, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->rtg:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/OnePlusHighPowerDetector$gck;

    invoke-virtual {v10}, Lcom/android/server/am/OnePlusHighPowerDetector$gck;->zta()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_43
    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    :cond_72
    move-wide/from16 v55, v7

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->sis()I

    move-result v7

    iget-object v8, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->O:Ljava/util/HashMap;

    iget-object v10, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->rtg:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/OnePlusHighPowerDetector$gck;

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusHighPowerDetector$gck;->you()I

    move-result v8

    if-le v7, v8, :cond_74

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->cno()V

    const-string v7, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[BgDetect]native process "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->rtg:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is reset HighCpuUsedCount because HighCpuUsedCount higher than "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->O:Ljava/util/HashMap;

    iget-object v13, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->rtg:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/OnePlusHighPowerDetector$gck;

    invoke-virtual {v10}, Lcom/android/server/am/OnePlusHighPowerDetector$gck;->you()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_43

    :cond_73
    move-wide/from16 v55, v7

    :cond_74
    :goto_44
    const/4 v7, 0x0

    :goto_45
    if-nez v4, :cond_75

    if-eqz v7, :cond_7a

    :cond_75
    invoke-virtual {v3}, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->tsu()Z

    move-result v7

    if-eqz v7, :cond_7a

    if-eqz v14, :cond_76

    const-string v7, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[BgDetect] kill native process "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->rtg:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "(pid : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->you:I

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->you:I

    invoke-static {v7}, Lcom/android/server/am/SocketTransition;->recordProcesskillbyhighpower(I)V

    iget v7, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->you:I

    invoke-static {v7}, Landroid/os/Process;->killProcess(I)V

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    const/4 v7, 0x1

    goto :goto_46

    :cond_76
    const/4 v7, 0x0

    :goto_46
    sget-object v8, Lcom/android/server/am/OnePlusHighPowerDetector;->h2:Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    const v10, 0xd6e8

    invoke-virtual {v8, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    iget-object v10, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->rtg:Ljava/lang/String;

    iput-object v10, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    long-to-int v5, v5

    iput v5, v8, Landroid/os/Message;->arg1:I

    if-eqz v7, :cond_77

    const/4 v5, 0x1

    goto :goto_47

    :cond_77
    const/4 v5, 0x0

    :goto_47
    iput v5, v8, Landroid/os/Message;->arg2:I

    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->h2:Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_48

    :cond_78
    move-wide/from16 v55, v7

    goto :goto_48

    :cond_79
    move-object/from16 v59, v13

    move-object/from16 v50, v15

    :cond_7a
    :goto_48
    iget-object v5, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->kth:[J

    iget-wide v6, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->cno:J

    aput-wide v6, v5, v11

    move-object/from16 v15, v50

    move-object/from16 v13, v59

    const/16 v10, 0x3e7

    const/4 v14, 0x1

    goto/16 :goto_3e

    :cond_7b
    move-object/from16 v59, v13

    move-object/from16 v50, v15

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_5

    :try_start_2e
    iget v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->B:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7d

    iget-boolean v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->z:Z

    if-nez v1, :cond_7d

    const/4 v1, 0x0

    iput-boolean v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->y:Z

    iput v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->B:I

    const-string v1, "OHPD"

    const-string v2, "[BgDetect] stop native process monitoring due to no abnormal so far"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_a
    .catchall {:try_start_2e .. :try_end_2e} :catchall_b

    goto :goto_49

    :catchall_5
    move-exception v0

    move-object v2, v0

    :try_start_2f
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_5

    :try_start_30
    throw v2
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_a
    .catchall {:try_start_30 .. :try_end_30} :catchall_b

    :catch_a
    move-exception v0

    move-object v1, v0

    move-object/from16 v18, v66

    goto/16 :goto_8e

    :cond_7c
    move-object/from16 v59, v13

    move-object/from16 v50, v15

    :cond_7d
    :goto_49
    :try_start_31
    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->x:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_c
    .catchall {:try_start_31 .. :try_end_31} :catchall_b

    if-lez v1, :cond_8d

    :try_start_32
    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->x:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_a
    .catchall {:try_start_32 .. :try_end_32} :catchall_b

    :try_start_33
    iget-object v2, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->x:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7e
    :goto_4a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;

    iget-object v4, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->ssp:Ljava/lang/String;

    invoke-virtual {v9, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7f

    const/4 v5, 0x1

    if-eq v11, v5, :cond_7e

    const/4 v5, 0x2

    if-ne v11, v5, :cond_7f

    goto :goto_4a

    :cond_7f
    iget v5, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->sis:I

    invoke-virtual {v9, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->R(I)Z

    move-result v5

    if-eqz v5, :cond_80

    goto :goto_4a

    :cond_80
    iget-wide v5, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->cno:J

    iget-object v7, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->kth:[J

    aget-wide v7, v7, v11

    sub-long/2addr v5, v7

    iget v7, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->zta:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v12, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_7

    if-nez v7, :cond_89

    :try_start_34
    iget-object v7, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->rtg:Ljava/lang/String;

    const-string v8, "dex2oat"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_89

    invoke-virtual {v9, v3}, Lcom/android/server/am/OnePlusHighPowerDetector;->h0(Lcom/android/server/am/OnePlusHighPowerDetector$ssp;)Z

    move-result v7

    if-eqz v7, :cond_81

    goto/16 :goto_4f

    :cond_81
    iget-object v7, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->kth:[J

    aget-wide v7, v7, v11

    cmp-long v7, v7, v16

    if-lez v7, :cond_87

    mul-long v7, v5, v43

    div-long v7, v7, v55

    if-eqz v4, :cond_82

    sget v4, Lcom/android/server/am/OnePlusHighPowerDetector;->S1:I

    goto :goto_4b

    :cond_82
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->R1:[I

    aget v4, v4, v11

    :goto_4b
    int-to-long v13, v4

    cmp-long v4, v7, v13

    if-ltz v4, :cond_84

    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->Q1:[I

    aget v4, v4, v11

    int-to-long v13, v4

    cmp-long v4, v7, v13

    if-gez v4, :cond_84

    iget v4, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->zta:I

    const/4 v13, 0x0

    invoke-virtual {v10, v4, v13}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_83

    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[BgDetect]detect excessive cpu on forked process "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->rtg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "(pid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->you:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") level "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " usage "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->zta:I

    invoke-virtual {v10, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_83
    move-object/from16 v20, v2

    move-object/from16 v14, v64

    move-object/from16 v13, v65

    goto/16 :goto_4d

    :cond_84
    const/4 v13, 0x0

    const-string v4, "OHPD"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[BgDetect]forked proc "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->rtg:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "(pid : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->you:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " uid: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->zta:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ") "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " during "

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v5, v55

    invoke-virtual {v14, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->zta:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v14, v64

    invoke-virtual {v14, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_85

    iget v4, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->zta:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v14, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    long-to-int v15, v7

    add-int/2addr v4, v15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v15, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->zta:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4c

    :cond_85
    iget v4, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->zta:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    long-to-int v15, v7

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v4, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4c
    iget v4, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->zta:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v15, Lcom/android/server/am/OnePlusHighPowerDetector$cno;

    iget v13, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->zta:I

    move-object/from16 v20, v2

    iget v2, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->you:I

    move-wide/from16 v55, v5

    iget-object v5, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->ssp:Ljava/lang/String;

    iget v6, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->zta:I

    invoke-direct {v15, v13, v2, v5, v6}, Lcom/android/server/am/OnePlusHighPowerDetector$cno;-><init>(IILjava/lang/String;I)V

    move-object/from16 v13, v65

    invoke-virtual {v13, v4, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    cmp-long v2, v7, v16

    if-lez v2, :cond_86

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BgDetect]accumulate usage "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " from procName "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->rtg:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->zta:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->B0(Ljava/lang/String;)V

    :cond_86
    :goto_4d
    iget v2, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->zta:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v15, v63

    invoke-virtual {v15, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    iget v2, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->zta:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    long-to-int v4, v7

    add-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v4, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->zta:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4e

    :cond_87
    move-object/from16 v20, v2

    move-object/from16 v15, v63

    move-object/from16 v14, v64

    move-object/from16 v13, v65

    :cond_88
    :goto_4e
    iget-object v2, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->kth:[J

    iget-wide v3, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->cno:J

    aput-wide v3, v2, v11
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_6

    move-object/from16 v65, v13

    move-object/from16 v64, v14

    move-object/from16 v63, v15

    move-object/from16 v2, v20

    goto/16 :goto_4a

    :catchall_6
    move-exception v0

    move-object v2, v0

    move-object/from16 v8, v66

    goto/16 :goto_52

    :cond_89
    :goto_4f
    move-object/from16 v20, v2

    move-wide/from16 v24, v55

    move-object/from16 v15, v63

    move-object/from16 v14, v64

    move-object/from16 v13, v65

    :try_start_35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BgDetect] skip fproc "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->rtg:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "(uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->zta:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "), reason= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->zta:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->B0(Ljava/lang/String;)V

    if-nez v11, :cond_8a

    iget v2, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->zta:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v4, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->zta:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_7

    move-object/from16 v8, v66

    :try_start_36
    invoke-virtual {v8, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_50

    :cond_8a
    move-object/from16 v8, v66

    :goto_50
    iget-object v2, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->kth:[J

    move-object/from16 v41, v13

    move-object/from16 v40, v14

    iget-wide v13, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->cno:J

    aput-wide v13, v2, v11

    iget v2, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->zta:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    mul-long v5, v5, v43

    div-long v5, v5, v24

    iget v2, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->zta:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    long-to-int v4, v5

    add-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->zta:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8b
    move-object/from16 v66, v8

    move-object/from16 v63, v15

    move-object/from16 v2, v20

    move-wide/from16 v55, v24

    move-object/from16 v64, v40

    move-object/from16 v65, v41

    goto/16 :goto_4a

    :cond_8c
    move-object/from16 v15, v63

    move-object/from16 v40, v64

    move-object/from16 v41, v65

    move-object/from16 v8, v66

    monitor-exit v1

    goto :goto_53

    :catchall_7
    move-exception v0

    move-object/from16 v8, v66

    :goto_51
    move-object v2, v0

    :goto_52
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_8

    :try_start_37
    throw v2
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_37} :catch_9
    .catchall {:try_start_37 .. :try_end_37} :catchall_b

    :catchall_8
    move-exception v0

    goto :goto_51

    :cond_8d
    move-object/from16 v15, v63

    move-object/from16 v40, v64

    move-object/from16 v41, v65

    move-object/from16 v8, v66

    :goto_53
    :try_start_38
    invoke-virtual/range {v18 .. v18}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_b1

    invoke-virtual/range {v18 .. v18}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v14, 0x0

    :goto_54
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    iget-object v1, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_d
    .catchall {:try_start_38 .. :try_end_38} :catchall_b

    if-eqz v1, :cond_9e

    :try_start_39
    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->q2:Z

    if-eqz v1, :cond_9b

    const/4 v1, 0x3

    if-ne v11, v1, :cond_8e

    invoke-virtual {v9, v7}, Lcom/android/server/am/OnePlusHighPowerDetector;->j(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-nez v1, :cond_8f

    :cond_8e
    if-nez v11, :cond_9b

    invoke-virtual {v9, v7}, Lcom/android/server/am/OnePlusHighPowerDetector;->i(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-eqz v1, :cond_9b

    :cond_8f
    iget-object v1, v7, Lcom/android/server/am/ProcessRecord;->mServices:Landroid/util/ArraySet;

    if-eqz v1, :cond_98

    iget-object v1, v7, Lcom/android/server/am/ProcessRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_98

    iget-object v1, v7, Lcom/android/server/am/ProcessRecord;->mServices:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    :goto_55
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_9
    .catchall {:try_start_39 .. :try_end_39} :catchall_b

    if-eqz v2, :cond_99

    :try_start_3a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_b
    .catchall {:try_start_3a .. :try_end_3a} :catchall_b

    if-eqz v2, :cond_97

    :try_start_3b
    iget-object v3, v2, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    if-eqz v3, :cond_97

    move v3, v4

    const/4 v4, 0x0

    :goto_56
    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_96

    iget-object v5, v2, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    move-object/from16 v16, v1

    const/4 v6, 0x0

    :goto_57
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v6, v1, :cond_95

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ConnectionRecord;

    if-eqz v1, :cond_92

    move-object/from16 v17, v2

    iget-object v2, v1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    if-eqz v2, :cond_93

    iget-object v1, v1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget v2, v1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    move/from16 v18, v3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_90

    iget v2, v1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_94

    :cond_90
    const-string v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BgDetect] skip "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", bound by "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") state "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v11, :cond_91

    iget-object v1, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_91
    const/4 v3, 0x1

    goto :goto_58

    :cond_92
    move-object/from16 v17, v2

    :cond_93
    move/from16 v18, v3

    :cond_94
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, v17

    move/from16 v3, v18

    goto/16 :goto_57

    :cond_95
    move-object/from16 v17, v2

    move/from16 v18, v3

    :goto_58
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    goto/16 :goto_56

    :cond_96
    move/from16 v18, v3

    move/from16 v4, v18

    goto/16 :goto_55

    :cond_97
    move-object/from16 v16, v1

    move-object/from16 v1, v16

    goto/16 :goto_55

    :cond_98
    const/4 v4, 0x0

    :catch_b
    :cond_99
    if-nez v4, :cond_9a

    iget v1, v7, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v1}, Lcom/android/server/am/SocketTransition;->recordProcesskillbyhighpower(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BgDetect] kill "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " due to abnormally busy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v6, 0x9

    invoke-virtual {v7, v1, v6, v2}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;IZ)V

    goto/16 :goto_5b

    :cond_9a
    const/16 v6, 0x9

    goto/16 :goto_5b

    :cond_9b
    const/16 v6, 0x9

    iget-boolean v1, v7, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v1, :cond_9c

    iget v1, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_9c

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect] skip proc "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "(uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), reason= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_59
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a

    :cond_9c
    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect] skip proc "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "(uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), reason= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_59

    :goto_5a
    if-nez v11, :cond_9d

    iget-object v1, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3b} :catch_9
    .catchall {:try_start_3b .. :try_end_3b} :catchall_b

    :cond_9d
    :goto_5b
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_54

    :cond_9e
    const/16 v6, 0x9

    :try_start_3c
    iget v1, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v5, v40

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_d
    .catchall {:try_start_3c .. :try_end_3c} :catchall_b

    if-eqz v1, :cond_9f

    :try_start_3d
    iget v1, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3d} :catch_9
    .catchall {:try_start_3d .. :try_end_3d} :catchall_b

    :cond_9f
    :try_start_3e
    iget-object v1, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/16 v2, 0x3e7

    if-ne v1, v2, :cond_a0

    const/4 v4, 0x1

    goto :goto_5c

    :cond_a0
    const/4 v4, 0x0

    :goto_5c
    iget-object v1, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-nez v11, :cond_a7

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[BgDetect] mForceStopFetureEnabled: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->j:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->j:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v6, v59

    invoke-interface {v6, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a2

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v3

    const-string v3, "[BgDetect] notify level-0 pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_d
    .catchall {:try_start_3e .. :try_end_3e} :catchall_b

    if-eqz v4, :cond_a1

    :try_start_3f
    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->u:Ljava/util/HashMap;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_9
    .catchall {:try_start_3f .. :try_end_3f} :catchall_b

    goto :goto_5d

    :cond_a1
    :try_start_40
    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->r:Ljava/util/HashMap;

    :goto_5d
    move-object v2, v1

    iget-object v1, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v17, 0x0

    const/16 v18, 0x0

    iget v1, v7, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v4, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_d
    .catchall {:try_start_40 .. :try_end_40} :catchall_b

    move/from16 v21, v1

    move-object/from16 v1, p0

    move/from16 v22, v16

    move/from16 v16, v4

    const/4 v4, 0x1

    move-object/from16 v67, v5

    move/from16 v5, v17

    move-object/from16 v68, v6

    move/from16 v6, v18

    move-object/from16 v69, v7

    move/from16 v7, v21

    move-object/from16 v18, v8

    move/from16 v8, v16

    :try_start_41
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->fto(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    move-object/from16 v8, v69

    iget-object v1, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v8, Lcom/android/server/am/ProcessRecord;->pid:I

    const-string v5, "lru_huge"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v4, v22

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->D0(Ljava/lang/String;IILjava/lang/String;I)V

    move-object/from16 v17, v13

    move-object/from16 v70, v58

    move-object/from16 v71, v61

    goto/16 :goto_61

    :cond_a2
    move/from16 v22, v3

    move-object/from16 v67, v5

    move-object/from16 v68, v6

    move-object/from16 v18, v8

    move-object v8, v7

    iget-object v1, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a4

    move-object/from16 v7, v61

    if-eqz v7, :cond_a3

    iget-object v1, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a3

    move-object/from16 v5, v58

    goto :goto_5e

    :cond_a3
    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect]force stop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1, v2}, Lcom/android/server/am/SocketTransition;->recordPkgkillbyhighpower(Ljava/lang/String;I)V

    iget-object v1, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move/from16 v6, v22

    invoke-direct {v9, v1, v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->z(Ljava/lang/String;I)V

    iget-object v1, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v5, v58

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5f

    :cond_a4
    move-object/from16 v5, v58

    move-object/from16 v7, v61

    :goto_5e
    iget v1, v8, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v1}, Lcom/android/server/am/SocketTransition;->recordProcesskillbyhighpower(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BgDetect] kill "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " due to abnormally busy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v3, 0x9

    invoke-virtual {v8, v1, v3, v2}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;IZ)V

    :goto_5f
    move-object/from16 v70, v5

    move-object/from16 v71, v7

    move-object/from16 v17, v13

    goto/16 :goto_61

    :cond_a5
    move v6, v3

    move-object/from16 v67, v5

    move-object/from16 v18, v8

    move-object/from16 v5, v58

    move-object/from16 v68, v59

    const/16 v3, 0x9

    move-object v8, v7

    move-object/from16 v7, v61

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect] notify level-0 pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_a6

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->u:Ljava/util/HashMap;

    goto :goto_60

    :cond_a6
    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->r:Ljava/util/HashMap;

    :goto_60
    move-object v2, v1

    iget-object v1, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    iget v1, v8, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v4, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v21, v1

    move-object/from16 v1, p0

    move/from16 v20, v4

    const/4 v4, 0x1

    move-object/from16 v70, v5

    move/from16 v5, v16

    move/from16 v16, v6

    move/from16 v6, v17

    move-object/from16 v71, v7

    move/from16 v7, v21

    move-object/from16 v17, v13

    move-object v13, v8

    move/from16 v8, v20

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->fto(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    iget-object v1, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v13, Lcom/android/server/am/ProcessRecord;->pid:I

    const-string v5, "lru_huge"

    const/4 v6, 0x3

    move-object/from16 v1, p0

    move/from16 v4, v16

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->D0(Ljava/lang/String;IILjava/lang/String;I)V

    :goto_61
    add-int/lit8 v14, v14, 0x1

    move/from16 v16, v14

    move-object/from16 v8, v68

    const/16 v14, 0x9

    goto/16 :goto_66

    :cond_a7
    move/from16 v16, v3

    move-object/from16 v67, v5

    move-object/from16 v18, v8

    move-object/from16 v17, v13

    move-object/from16 v70, v58

    move-object/from16 v68, v59

    move-object/from16 v71, v61

    const/4 v1, 0x1

    move-object v13, v7

    if-ne v11, v1, :cond_ab

    if-eqz v4, :cond_a8

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->v:Ljava/util/HashMap;

    goto :goto_62

    :cond_a8
    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->s:Ljava/util/HashMap;

    :goto_62
    move-object v2, v1

    iget-object v1, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, v13, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v1, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->fto(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->N:Landroid/os/PowerManager;

    if-nez v1, :cond_a9

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->N:Landroid/os/PowerManager;

    :cond_a9
    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->N:Landroid/os/PowerManager;

    if-eqz v1, :cond_aa

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->N:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v1

    if-eqz v1, :cond_aa

    iget v1, v13, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v1}, Lcom/android/server/am/SocketTransition;->recordProcesskillbyhighpower(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BgDetect] kill "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " due to doze mode and level 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v8, 0x9

    invoke-virtual {v13, v1, v8, v2}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;IZ)V

    goto :goto_63

    :cond_aa
    const/16 v8, 0x9

    iget-object v1, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, v13, Lcom/android/server/am/ProcessRecord;->pid:I

    const-string v5, "lru_high"

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move/from16 v4, v16

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->D0(Ljava/lang/String;IILjava/lang/String;I)V

    :goto_63
    move/from16 v16, v14

    move v14, v8

    goto/16 :goto_65

    :cond_ab
    const/4 v1, 0x2

    const/16 v8, 0x9

    if-ne v11, v1, :cond_ad

    if-eqz v4, :cond_ac

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->w:Ljava/util/HashMap;

    goto :goto_64

    :cond_ac
    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->t:Ljava/util/HashMap;

    :goto_64
    move-object v2, v1

    iget-object v1, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, v13, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v1, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v13, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v1, p0

    move/from16 v16, v14

    move v14, v8

    move v8, v13

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->fto(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    goto :goto_65

    :cond_ad
    move/from16 v16, v14

    const/4 v1, 0x3

    move v14, v8

    if-ne v11, v1, :cond_ae

    invoke-virtual {v9, v13, v11}, Lcom/android/server/am/OnePlusHighPowerDetector;->u0(Lcom/android/server/am/ProcessRecord;I)Z

    move-result v1

    if-nez v1, :cond_ae

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v8, v68

    invoke-interface {v8, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_af

    iget v1, v13, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v1}, Lcom/android/server/am/SocketTransition;->recordProcesskillbyhighpower(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BgDetect] kill "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v13, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v13, v1, v14, v2}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;IZ)V

    goto :goto_66

    :cond_ae
    :goto_65
    move-object/from16 v8, v68

    :cond_af
    :goto_66
    move-object/from16 v59, v8

    move/from16 v14, v16

    move-object/from16 v13, v17

    move-object/from16 v8, v18

    move-object/from16 v40, v67

    move-object/from16 v58, v70

    move-object/from16 v61, v71

    goto/16 :goto_54

    :cond_b0
    move-object/from16 v18, v8

    move/from16 v16, v14

    move-object/from16 v67, v40

    move-object/from16 v70, v58

    move-object/from16 v8, v59

    move-object/from16 v71, v61

    move/from16 v4, v16

    goto :goto_67

    :cond_b1
    move-object/from16 v18, v8

    move-object/from16 v67, v40

    move-object/from16 v70, v58

    move-object/from16 v8, v59

    move-object/from16 v71, v61

    const/4 v4, 0x0

    :goto_67
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_c0

    move v14, v4

    const/4 v13, 0x0

    :goto_68
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v13, v1, :cond_bf

    invoke-virtual {v10, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;

    iget-object v1, v7, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->ssp:Ljava/lang/String;

    if-eqz v1, :cond_bd

    iget v1, v7, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->zta:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v6, v67

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b2

    iget v1, v7, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->zta:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b2
    iget v1, v7, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->zta:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/16 v2, 0x3e7

    if-ne v1, v2, :cond_b3

    const/4 v4, 0x1

    goto :goto_69

    :cond_b3
    const/4 v4, 0x0

    :goto_69
    iget v1, v7, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->zta:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-nez v11, :cond_b9

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect] mForceStopFetureEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->j:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->j:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v7, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->ssp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b5

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect] notify level-0 pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->ssp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->zta:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_b4

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->u:Ljava/util/HashMap;

    goto :goto_6a

    :cond_b4
    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->r:Ljava/util/HashMap;

    :goto_6a
    move-object v2, v1

    iget-object v3, v7, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->ssp:Ljava/lang/String;

    const/4 v4, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    iget v1, v7, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->you:I

    move-object/from16 v40, v6

    iget v6, v7, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->zta:I

    move/from16 v20, v1

    move-object/from16 v1, p0

    move/from16 v21, v5

    move/from16 v5, v16

    move/from16 v22, v6

    move-object/from16 v16, v40

    move/from16 v6, v17

    move-object/from16 v72, v7

    move/from16 v7, v20

    move-object/from16 v20, v10

    move-object v10, v8

    move/from16 v8, v22

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->fto(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    move-object/from16 v8, v72

    iget-object v2, v8, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->ssp:Ljava/lang/String;

    iget v3, v8, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->you:I

    const-string v5, "fork_huge"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v4, v21

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->D0(Ljava/lang/String;IILjava/lang/String;I)V

    goto :goto_6b

    :cond_b5
    move/from16 v21, v5

    move-object/from16 v16, v6

    move-object/from16 v20, v10

    move-object v10, v8

    move-object v8, v7

    iget-object v1, v8, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->ssp:Ljava/lang/String;

    invoke-virtual {v9, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b6

    iget v1, v8, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->zta:I

    invoke-static {v1}, Lcom/android/server/am/SocketTransition;->recordUidkillbyhighpower(I)V

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->f2:Lcom/android/server/am/ActivityManagerService;

    iget v2, v8, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->zta:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BgDetect] kill forked "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->ssp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v8, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->zta:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") level "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move/from16 v7, v21

    invoke-virtual {v1, v2, v7, v3}, Lcom/android/server/am/ActivityManagerService;->killUid(IILjava/lang/String;)V

    :goto_6b
    move-object/from16 v34, v15

    move-object/from16 v73, v70

    goto/16 :goto_6d

    :cond_b6
    move/from16 v7, v21

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect]force stop forked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->ssp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->zta:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v8, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->ssp:Ljava/lang/String;

    iget v2, v8, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->zta:I

    invoke-static {v1, v2}, Lcom/android/server/am/SocketTransition;->recordPkgkillbyhighpower(Ljava/lang/String;I)V

    iget-object v1, v8, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->ssp:Ljava/lang/String;

    invoke-direct {v9, v1, v7}, Lcom/android/server/am/OnePlusHighPowerDetector;->z(Ljava/lang/String;I)V

    iget-object v1, v8, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->ssp:Ljava/lang/String;

    move-object/from16 v6, v70

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v73, v6

    move-object/from16 v34, v15

    goto/16 :goto_6d

    :cond_b7
    move-object/from16 v16, v6

    move-object/from16 v20, v10

    move-object/from16 v6, v70

    move-object v10, v8

    move-object v8, v7

    move v7, v5

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect] notify level-0 pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->ssp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->zta:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_b8

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->u:Ljava/util/HashMap;

    goto :goto_6c

    :cond_b8
    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->r:Ljava/util/HashMap;

    :goto_6c
    move-object v2, v1

    iget-object v3, v8, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->ssp:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v17, 0x0

    iget v1, v8, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->you:I

    move-object/from16 v58, v6

    iget v6, v8, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->zta:I

    move/from16 v21, v1

    move-object/from16 v1, p0

    move/from16 v22, v6

    move-object/from16 v73, v58

    move/from16 v6, v17

    move/from16 v17, v7

    move/from16 v7, v21

    move-object/from16 v34, v15

    move-object v15, v8

    move/from16 v8, v22

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->fto(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    iget-object v2, v15, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->ssp:Ljava/lang/String;

    iget v3, v15, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->you:I

    const-string v5, "fork_huge"

    const/4 v6, 0x3

    move-object/from16 v1, p0

    move/from16 v4, v17

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->D0(Ljava/lang/String;IILjava/lang/String;I)V

    :goto_6d
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_70

    :cond_b9
    move/from16 v17, v5

    move-object/from16 v16, v6

    move-object/from16 v20, v10

    move-object/from16 v34, v15

    move-object/from16 v73, v70

    const/4 v1, 0x1

    move-object v15, v7

    move-object v10, v8

    if-ne v11, v1, :cond_bb

    if-eqz v4, :cond_ba

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->v:Ljava/util/HashMap;

    goto :goto_6e

    :cond_ba
    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->s:Ljava/util/HashMap;

    :goto_6e
    move-object v2, v1

    iget-object v3, v15, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->ssp:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, v15, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->you:I

    iget v8, v15, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->zta:I

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->fto(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    iget-object v2, v15, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->ssp:Ljava/lang/String;

    iget v3, v15, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->you:I

    const-string v5, "fork_high"

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move/from16 v4, v17

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->D0(Ljava/lang/String;IILjava/lang/String;I)V

    goto :goto_70

    :cond_bb
    const/4 v1, 0x2

    if-ne v11, v1, :cond_be

    if-eqz v4, :cond_bc

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->w:Ljava/util/HashMap;

    goto :goto_6f

    :cond_bc
    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->t:Ljava/util/HashMap;

    :goto_6f
    move-object v2, v1

    iget-object v3, v15, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->ssp:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, v15, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->you:I

    iget v8, v15, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->zta:I

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->fto(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    goto :goto_70

    :cond_bd
    move-object/from16 v20, v10

    move-object/from16 v34, v15

    move-object/from16 v16, v67

    move-object/from16 v73, v70

    move-object v15, v7

    move-object v10, v8

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect]forked proc "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->rtg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \'s pkgName is null, uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v15, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->zta:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v15, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->you:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_be
    :goto_70
    add-int/lit8 v13, v13, 0x1

    move-object v8, v10

    move-object/from16 v67, v16

    move-object/from16 v10, v20

    move-object/from16 v15, v34

    move-object/from16 v70, v73

    goto/16 :goto_68

    :cond_bf
    move-object v10, v8

    move-object/from16 v34, v15

    move-object/from16 v16, v67

    move-object/from16 v73, v70

    move v4, v14

    goto :goto_71

    :cond_c0
    move-object v10, v8

    move-object/from16 v34, v15

    move-object/from16 v16, v67

    move-object/from16 v73, v70

    :goto_71
    invoke-virtual/range {v16 .. v16}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v14, v4

    :goto_72
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_da

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Ljava/lang/Integer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/Integer;

    move-object/from16 v7, v41

    invoke-virtual {v7, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/OnePlusHighPowerDetector$cno;

    iget-object v6, v1, Lcom/android/server/am/OnePlusHighPowerDetector$cno;->sis:Ljava/lang/String;

    invoke-virtual {v7, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/OnePlusHighPowerDetector$cno;

    iget v5, v1, Lcom/android/server/am/OnePlusHighPowerDetector$cno;->you:I

    invoke-virtual {v7, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/OnePlusHighPowerDetector$cno;

    iget v4, v1, Lcom/android/server/am/OnePlusHighPowerDetector$cno;->tsu:I

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/16 v2, 0x3e7

    if-ne v1, v2, :cond_c1

    const/4 v1, 0x1

    goto :goto_73

    :cond_c1
    const/4 v1, 0x0

    :goto_73
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v9, v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->a(Ljava/lang/String;)Z

    move-result v2

    move/from16 v17, v5

    if-eqz v2, :cond_c3

    const/4 v5, 0x1

    if-eq v11, v5, :cond_c2

    const/4 v5, 0x2

    if-ne v11, v5, :cond_c3

    :cond_c2
    move-object/from16 v41, v7

    goto :goto_72

    :cond_c3
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_c4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v41, v7

    const-string v7, "[BgDetect] uid "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " pkgName "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " usage "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " disabledLevel"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->B0(Ljava/lang/String;)V

    goto :goto_74

    :cond_c4
    move-object/from16 v41, v7

    :goto_74
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v2, :cond_c5

    sget v2, Lcom/android/server/am/OnePlusHighPowerDetector;->S1:I

    goto :goto_75

    :cond_c5
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->R1:[I

    aget v2, v2, v11

    :goto_75
    if-lt v5, v2, :cond_d1

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->Q1:[I

    aget v5, v5, v11

    if-ge v2, v5, :cond_d1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c6

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect] skip pkg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "(uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "), reason= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_72

    :cond_c6
    if-nez v11, :cond_cc

    const-string v2, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[BgDetect] mForceStopFetureEnabled: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->j:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->j:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_ca

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c8

    const-string v2, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[BgDetect] notify level-0 pkg:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " uid "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_c7

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->u:Ljava/util/HashMap;

    goto :goto_76

    :cond_c7
    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->r:Ljava/util/HashMap;

    :goto_76
    move-object v2, v1

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/16 v20, 0x0

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v1, p0

    move/from16 v22, v3

    move-object v3, v6

    move/from16 v23, v4

    move v4, v5

    move v5, v7

    move-object v7, v6

    move/from16 v6, v20

    move-object/from16 v20, v7

    move-object/from16 v74, v41

    move/from16 v7, v17

    move-object/from16 v24, v13

    move-object v13, v8

    move/from16 v8, v21

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->fto(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    const-string v5, "accu_huge"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move/from16 v3, v17

    move/from16 v4, v22

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->D0(Ljava/lang/String;IILjava/lang/String;I)V

    move-object/from16 v22, v20

    :goto_77
    move-object/from16 v75, v73

    goto/16 :goto_79

    :cond_c8
    move/from16 v22, v3

    move/from16 v23, v4

    move-object/from16 v24, v13

    move-object/from16 v74, v41

    move-object v13, v8

    move-object v8, v6

    invoke-virtual {v9, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c9

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->f2:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BgDetect] total usage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " over thold, kill "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") level "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move/from16 v7, v22

    invoke-virtual {v1, v2, v7, v3}, Lcom/android/server/am/ActivityManagerService;->killUid(IILjava/lang/String;)V

    move-object/from16 v22, v8

    goto :goto_77

    :cond_c9
    move/from16 v7, v22

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect] total usage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " over thold, force stop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") level "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v9, v8, v7}, Lcom/android/server/am/OnePlusHighPowerDetector;->z(Ljava/lang/String;I)V

    move-object/from16 v6, v73

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v75, v6

    move-object/from16 v22, v8

    goto :goto_79

    :cond_ca
    move v7, v3

    move/from16 v23, v4

    move-object/from16 v24, v13

    move-object/from16 v74, v41

    move-object v13, v8

    move-object v8, v6

    move-object/from16 v6, v73

    const-string v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BgDetect] notify level-0 pkg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_cb

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->u:Ljava/util/HashMap;

    goto :goto_78

    :cond_cb
    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->r:Ljava/util/HashMap;

    :goto_78
    move-object v2, v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v20, 0x0

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v1, p0

    move-object v3, v8

    move-object/from16 v75, v6

    move/from16 v6, v20

    move/from16 v20, v7

    move/from16 v7, v17

    move-object/from16 v22, v8

    move/from16 v8, v21

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->fto(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    const-string v5, "accu_huge"

    const/4 v6, 0x3

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    move/from16 v3, v17

    move/from16 v4, v20

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->D0(Ljava/lang/String;IILjava/lang/String;I)V

    :goto_79
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v76, v22

    const/4 v1, 0x1

    const/16 v17, 0x2

    goto/16 :goto_7d

    :cond_cc
    move/from16 v20, v3

    move/from16 v23, v4

    move-object/from16 v22, v6

    move-object/from16 v24, v13

    move-object/from16 v74, v41

    move-object/from16 v75, v73

    const/4 v2, 0x1

    move-object v13, v8

    if-ne v11, v2, :cond_ce

    const-string v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BgDetect] HighPower total usage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " over thold # add forked "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, v22

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") level "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_cd

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->v:Ljava/util/HashMap;

    goto :goto_7a

    :cond_cd
    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->s:Ljava/util/HashMap;

    :goto_7a
    move-object v2, v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v1, p0

    move-object v3, v8

    move/from16 v7, v17

    move-object/from16 v22, v8

    move/from16 v8, v21

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->fto(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    const-string v5, "accu_high"

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    move/from16 v3, v17

    move/from16 v4, v20

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->D0(Ljava/lang/String;IILjava/lang/String;I)V

    move-object/from16 v76, v22

    const/16 v17, 0x2

    goto/16 :goto_7c

    :cond_ce
    const/4 v8, 0x2

    if-ne v11, v8, :cond_d0

    const-string v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BgDetect] MediumPower total usage "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " over thold  # add forked "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, v22

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") level "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_cf

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->w:Ljava/util/HashMap;

    goto :goto_7b

    :cond_cf
    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->t:Ljava/util/HashMap;

    :goto_7b
    move-object v2, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v1, p0

    move-object v3, v7

    move-object/from16 v76, v7

    move/from16 v7, v17

    move/from16 v17, v8

    move/from16 v8, v20

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->fto(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    goto :goto_7c

    :cond_d0
    move/from16 v17, v8

    move-object/from16 v76, v22

    goto :goto_7c

    :cond_d1
    move/from16 v23, v4

    move-object/from16 v76, v6

    move-object/from16 v24, v13

    move-object/from16 v74, v41

    move-object/from16 v75, v73

    const/16 v17, 0x2

    move-object v13, v8

    :goto_7c
    const/4 v1, 0x1

    :goto_7d
    new-array v2, v1, [I

    const/4 v1, 0x0

    aput v28, v2, v1

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_d9

    const/4 v1, 0x3

    if-ne v11, v1, :cond_d9

    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->L1:Z

    if-eqz v2, :cond_d9

    iget-boolean v2, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->obl:Z

    if-nez v2, :cond_d9

    move-object/from16 v3, v39

    move-object/from16 v2, v76

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d2

    move-object/from16 v6, v57

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d3

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget v5, Lcom/android/server/am/OnePlusHighPowerDetector;->V1:I

    if-lt v4, v5, :cond_d3

    goto :goto_7e

    :cond_d2
    move-object/from16 v6, v57

    :goto_7e
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BgDetect][RNK] skip pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(uid "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "), reason= "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->B0(Ljava/lang/String;)V

    :cond_d3
    move-object/from16 v39, v3

    move-object/from16 v20, v29

    goto :goto_7f

    :cond_d4
    move-object/from16 v4, v29

    invoke-interface {v4, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[BgDetect][RNK] skip pkg "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(uid "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "), reason= small adj"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->B0(Ljava/lang/String;)V

    move-object/from16 v39, v3

    move-object/from16 v20, v4

    :goto_7f
    move-object/from16 v5, v38

    goto/16 :goto_81

    :cond_d5
    move-object/from16 v5, v38

    invoke-interface {v5, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[BgDetect][RNK] skip pkg "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(uid "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "), reason= sys alert window"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_80
    invoke-static {v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->B0(Ljava/lang/String;)V

    :cond_d6
    move-object/from16 v39, v3

    move-object/from16 v20, v4

    goto/16 :goto_81

    :cond_d7
    invoke-direct {v9, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->l(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[BgDetect][RNK] skip pkg "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(uid "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "), reason= widget added"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_80

    :cond_d8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v10, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d6

    sget-object v7, Lcom/android/server/am/OnePlusHighPowerDetector;->f2:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v20

    invoke-static/range {v20 .. v20}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    move-object/from16 v39, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v4

    const-string v4, "[BgDetect][RNK] kill "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (uid "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") usage "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v8, v1, v2}, Lcom/android/server/am/ActivityManagerService;->killUid(IILjava/lang/String;)V

    goto :goto_81

    :cond_d9
    move-object/from16 v20, v29

    move-object/from16 v5, v38

    move-object/from16 v6, v57

    :goto_81
    move-object/from16 v38, v5

    move-object/from16 v57, v6

    move-object/from16 v29, v20

    move-object/from16 v13, v24

    move-object/from16 v41, v74

    move-object/from16 v73, v75

    goto/16 :goto_72

    :cond_da
    move-object/from16 v74, v41

    move-object/from16 v75, v73

    if-eqz v51, :cond_eb

    invoke-virtual/range {v34 .. v34}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_db
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_dc

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->R1:[I

    aget v5, v5, v11

    if-lt v4, v5, :cond_db

    add-int/lit8 v14, v14, 0x1

    const-string v1, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BgDetect][PD] found PD is caused by skipped uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " usg "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto :goto_82

    :cond_dc
    const/4 v4, 0x1

    :goto_82
    if-nez v14, :cond_e6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BgDetect][PD] start review BG procs : screen state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->r2:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->B0(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_83
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    move-object/from16 v13, v74

    invoke-virtual {v13, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusHighPowerDetector$cno;

    iget-object v14, v3, Lcom/android/server/am/OnePlusHighPowerDetector$cno;->sis:Ljava/lang/String;

    invoke-virtual {v13, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusHighPowerDetector$cno;

    iget v15, v3, Lcom/android/server/am/OnePlusHighPowerDetector$cno;->you:I

    invoke-virtual {v13, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusHighPowerDetector$cno;

    iget v3, v3, Lcom/android/server/am/OnePlusHighPowerDetector$cno;->tsu:I

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    const/16 v8, 0x3e7

    if-ne v5, v8, :cond_dd

    const/4 v5, 0x1

    goto :goto_84

    :cond_dd
    const/4 v5, 0x0

    :goto_84
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget v8, Lcom/android/server/am/OnePlusHighPowerDetector;->U1:I

    if-lt v6, v8, :cond_e5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v8, v50

    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_de

    const-string v1, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BgDetect][PD] skip pkg "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "(uid "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "), reason= "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v50, v8

    move-object/from16 v74, v13

    goto/16 :goto_83

    :cond_de
    const-string v3, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[BgDetect][PD] mForceStopFetureEnabled: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->j:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->j:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_e3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e0

    const-string v1, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BgDetect][PD] notify level-0 pkg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_df

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->v:Ljava/util/HashMap;

    goto :goto_85

    :cond_df
    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->s:Ljava/util/HashMap;

    :goto_85
    move-object v3, v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move-object/from16 v1, p0

    move-object v2, v3

    move-object v3, v14

    move/from16 v17, v7

    move v7, v15

    move-object/from16 v19, v8

    const/16 v20, 0x3e7

    move/from16 v8, v16

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->fto(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    const-string v5, "accu_huge"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v2, v14

    move v3, v15

    move/from16 v4, v17

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->D0(Ljava/lang/String;IILjava/lang/String;I)V

    move-object/from16 v22, v71

    move-object/from16 v21, v75

    goto/16 :goto_89

    :cond_e0
    move/from16 v17, v7

    move-object/from16 v19, v8

    const/16 v20, 0x3e7

    invoke-virtual {v9, v14}, Lcom/android/server/am/OnePlusHighPowerDetector;->d(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e2

    move-object/from16 v8, v71

    if-eqz v8, :cond_e1

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e1

    move/from16 v7, v17

    goto :goto_86

    :cond_e1
    const-string v3, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BgDetect][PD] total usage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " over thold, force stop "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (uid "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") level "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v7, v17

    invoke-direct {v9, v14, v7}, Lcom/android/server/am/OnePlusHighPowerDetector;->z(Ljava/lang/String;I)V

    move-object/from16 v6, v75

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_87

    :cond_e2
    move/from16 v7, v17

    move-object/from16 v8, v71

    :goto_86
    move-object/from16 v6, v75

    sget-object v3, Lcom/android/server/am/OnePlusHighPowerDetector;->f2:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[BgDetect][PD] total usage "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " over thold, kill "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (uid "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") level "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v7, v1}, Lcom/android/server/am/ActivityManagerService;->killUid(IILjava/lang/String;)V

    :goto_87
    move-object/from16 v21, v6

    move-object/from16 v22, v8

    goto :goto_89

    :cond_e3
    move-object/from16 v19, v8

    move-object/from16 v8, v71

    move-object/from16 v6, v75

    const/16 v20, 0x3e7

    const-string v1, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BgDetect][PD] notify level-0 pkg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_e4

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->v:Ljava/util/HashMap;

    goto :goto_88

    :cond_e4
    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->s:Ljava/util/HashMap;

    :goto_88
    move-object v3, v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v16, 0x0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move-object/from16 v1, p0

    move-object v2, v3

    move-object v3, v14

    move-object/from16 v21, v6

    move/from16 v6, v16

    move/from16 v16, v7

    move v7, v15

    move-object/from16 v22, v8

    move/from16 v8, v17

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->fto(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    const-string v5, "accu_huge"

    const/4 v6, 0x3

    move-object/from16 v1, p0

    move-object v2, v14

    move v3, v15

    move/from16 v4, v16

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->D0(Ljava/lang/String;IILjava/lang/String;I)V

    :goto_89
    const/4 v4, 0x0

    goto :goto_8a

    :cond_e5
    move-object/from16 v19, v50

    move-object/from16 v22, v71

    move-object/from16 v21, v75

    const/16 v20, 0x3e7

    :goto_8a
    move-object/from16 v74, v13

    move-object/from16 v50, v19

    move-object/from16 v75, v21

    move-object/from16 v71, v22

    goto/16 :goto_83

    :cond_e6
    const/4 v4, 0x0

    :cond_e7
    if-eqz v4, :cond_eb

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->i2:Z

    if-eqz v1, :cond_eb

    const-string v1, "OHPD"

    const-string v2, "[BgDetect][PD] notify OPBR"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->h2:Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    const v2, 0xd6df

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->h2:Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_8c

    :catch_c
    move-exception v0

    move-object/from16 v18, v66

    goto :goto_8d

    :catch_d
    move-exception v0

    move-object/from16 v18, v8

    goto :goto_8d

    :cond_e8
    move-object/from16 v18, v8

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->x:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_eb

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->x:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_41} :catch_e
    .catchall {:try_start_41 .. :try_end_41} :catchall_b

    :try_start_42
    iget-object v2, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->x:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e9
    :goto_8b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ea

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;

    iget-wide v4, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->cno:J

    cmp-long v4, v4, v16

    if-lez v4, :cond_e9

    iget-object v4, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->kth:[J

    iget-wide v5, v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->cno:J

    aput-wide v5, v4, v11

    goto :goto_8b

    :cond_ea
    monitor-exit v1

    goto :goto_8c

    :catchall_9
    move-exception v0

    move-object v2, v0

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_9

    :try_start_43
    throw v2

    :cond_eb
    :goto_8c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->veq()V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_43} :catch_e
    .catchall {:try_start_43 .. :try_end_43} :catchall_b

    goto :goto_8f

    :catch_e
    move-exception v0

    goto :goto_8d

    :catch_f
    move-exception v0

    move/from16 v26, v3

    move/from16 v51, v5

    move v11, v10

    move-object/from16 v18, v14

    :goto_8d
    move-object v1, v0

    :goto_8e
    :try_start_44
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BgDetect] got exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8f
    if-nez v11, :cond_ec

    invoke-static/range {v18 .. v18}, Lcom/android/server/hmo;->X(Landroid/util/ArrayMap;)V

    :cond_ec
    monitor-exit v36
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_b

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v2, 0x50

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_ee

    if-nez v11, :cond_ed

    if-nez v26, :cond_ed

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->zta:Lcom/android/server/am/OnePlusBGController;

    sget-object v2, Lcom/android/server/am/OnePlusBGController$SnapshotType;->zta:Lcom/android/server/am/OnePlusBGController$SnapshotType;

    :goto_90
    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusBGController;->Y0(Lcom/android/server/am/OnePlusBGController$SnapshotType;)V

    goto :goto_91

    :cond_ed
    if-nez v11, :cond_ee

    if-eqz v26, :cond_ee

    iget-object v1, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->zta:Lcom/android/server/am/OnePlusBGController;

    sget-object v2, Lcom/android/server/am/OnePlusBGController$SnapshotType;->you:Lcom/android/server/am/OnePlusBGController$SnapshotType;

    goto :goto_90

    :cond_ee
    :goto_91
    if-eqz v51, :cond_ef

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->d2:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_45
    iput-boolean v2, v9, Lcom/android/server/am/OnePlusHighPowerDetector;->ibl:Z

    monitor-exit v1

    goto :goto_92

    :catchall_a
    move-exception v0

    move-object v2, v0

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_a

    throw v2

    :cond_ef
    :goto_92
    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v1, :cond_f0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BgDetect] checkExcessiveCpuUsageLocked -# level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v30

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OHPD"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f0
    const/4 v1, 0x0

    return v1

    :catchall_b
    move-exception v0

    move-object v1, v0

    :try_start_46
    monitor-exit v36
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_b

    throw v1

    :catchall_c
    move-exception v0

    move-object v1, v0

    :try_start_47
    monitor-exit v2
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_c

    throw v1
.end method

.method private m()V
    .locals 2

    const-string v0, "ro.board.platform"

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->F:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    :try_start_0
    const-string p0, "sdm845"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "/data/system/nativeproc/proclist"

    if-eqz p0, :cond_0

    :try_start_1
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "msmnile"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/File;

    const-string v0, "/cache/nativeproc/proclist"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "OHPD"

    const-string v1, "fail to delete native monitor list file"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method private m0(Lcom/android/server/am/ProcessRecord;Ljava/util/HashSet;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lcom/android/server/am/OnePlusHighPowerDetector;->o0(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    iget p0, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 p3, 0x2

    const-string v0, " pid: "

    const-string v1, " (uid: "

    const-string v2, "[BGC] Observe processName: "

    const-string v3, "OHPD"

    const/4 v4, 0x1

    if-eq p0, p3, :cond_2

    const/16 p3, 0xc

    if-ne p0, p3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_4

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-boolean p0, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") has active audio, so is important"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v4

    :cond_2
    :goto_0
    sget-boolean p0, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") , setProcState: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is important"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v4

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private n(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[BgDetect] pkg "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " removed , userId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OHPD"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3e7

    if-eq p2, v0, :cond_4

    iget-object p2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->r:Ljava/util/HashMap;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->r:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->r:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->s:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_1
    iget-object p2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->s:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->s:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    iget-object p2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->t:Ljava/util/HashMap;

    monitor-enter p2

    :try_start_2
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->t:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->t:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->q:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_3
    iget-object p2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->q:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->q:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    :catchall_3
    move-exception p0

    :try_start_6
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p0

    :cond_4
    iget-object p2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->u:Ljava/util/HashMap;

    monitor-enter p2

    :try_start_7
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->u:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->u:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    monitor-exit p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->v:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_8
    iget-object p2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->v:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->v:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    iget-object p2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->w:Ljava/util/HashMap;

    monitor-enter p2

    :try_start_9
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->w:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->w:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    monitor-exit p2

    :goto_0
    return-void

    :catchall_4
    move-exception p0

    monitor-exit p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw p0

    :catchall_5
    move-exception p0

    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw p0

    :catchall_6
    move-exception p0

    :try_start_b
    monitor-exit p2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    throw p0
.end method

.method private o(Ljava/lang/String;II)Landroid/app/Notification;
    .locals 19

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const-string v4, "OHPD"

    const/4 v5, 0x0

    :try_start_0
    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v7, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    :try_start_1
    sget-object v8, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    new-instance v9, Landroid/os/UserHandle;

    invoke-direct {v9, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v8, v7, v9}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->q(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "applicationDrawable:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->B0(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    const/4 v7, 0x0

    :goto_1
    const/4 v8, 0x0

    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "get highpower pkg label error:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    if-eqz v7, :cond_16

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v9, 0x1

    if-lt v0, v9, :cond_16

    if-nez v8, :cond_1

    goto/16 :goto_10

    :cond_1
    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    const v10, 0x50f0155

    invoke-virtual {v0, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v10, Landroid/content/Intent;

    const-string v11, "oneplus.intent.action.POWER_USAGE_ADVANCED"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x3

    const/4 v12, 0x2

    if-ne v3, v11, :cond_2

    sget-object v10, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    const v13, 0x50f0157

    invoke-virtual {v10, v13}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    new-instance v13, Landroid/content/Intent;

    const-string v14, "com.android.settings.action.BACKGROUND_OPTIMIZE_SWITCH"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v15, v13

    goto :goto_5

    :cond_2
    if-ne v3, v12, :cond_3

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x50f0152

    new-array v15, v9, [Ljava/lang/Object;

    aput-object v7, v15, v5

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    goto :goto_4

    :cond_3
    sget-object v13, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    const v14, 0x50f0154

    invoke-virtual {v13, v14}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_4
    move-object v15, v10

    move-object v10, v13

    :goto_5
    sget-boolean v13, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v13, :cond_4

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Notification # content:84869460 "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Notification # triggerPkgName:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", pkgLabel:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v7, ""

    if-eqz v3, :cond_8

    if-eq v3, v9, :cond_7

    if-eq v3, v12, :cond_6

    if-eq v3, v11, :cond_5

    move-object v13, v7

    goto :goto_6

    :cond_5
    const-string v13, "com.oem.intent.action.enable_force_stop_feature"

    goto :goto_6

    :cond_6
    const-string v13, "com.oem.intent.action.bgc_clean_noti"

    goto :goto_6

    :cond_7
    const-string v13, "com.oem.intent.action.force_stop_pkg"

    goto :goto_6

    :cond_8
    const-string v13, "com.oem.intent.action.force_stop_high_pkg"

    :goto_6
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v13, "pkg"

    invoke-virtual {v14, v13, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "userid"

    invoke-virtual {v14, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v11, "type"

    invoke-virtual {v14, v11, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v12, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    move-object/from16 v18, v7

    const/high16 v7, 0x8000000

    invoke-static {v12, v5, v14, v7, v9}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    if-eqz v3, :cond_b

    const/4 v12, 0x1

    if-eq v3, v12, :cond_a

    const/4 v12, 0x2

    if-eq v3, v12, :cond_9

    move-object/from16 v12, v18

    goto :goto_7

    :cond_9
    const-string v12, "com.oem.intent.action.ignore_bgc_pkg"

    goto :goto_7

    :cond_a
    const-string v12, "com.oem.intent.action.ignore_pkg"

    goto :goto_7

    :cond_b
    const-string v12, "com.oem.intent.action.ignore_high_pkg"

    :goto_7
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v13, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v14, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v14, v11, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-static {v1, v5, v14, v7, v2}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.oem.intent.action.POWER_NOTIFICATION_CANCEL"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v6, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    sget-object v11, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-static {v6, v5, v2, v7, v11}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    sget-object v6, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Landroid/app/NotificationChannel;

    const-string v11, "OP_HP_NOTIFICATION"

    const/4 v12, 0x3

    invoke-direct {v7, v11, v0, v12}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v12, 0x0

    invoke-virtual {v7, v12, v12}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    invoke-virtual {v7, v5}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    const/4 v12, 0x1

    invoke-virtual {v7, v12}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    :try_start_3
    sget-boolean v12, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v12, :cond_c

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[BgDetect][Notification] Create notification channel for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    new-instance v4, Landroid/content/pm/ParceledListSlice;

    const/4 v12, 0x1

    new-array v13, v12, [Landroid/app/NotificationChannel;

    aput-object v7, v13, v5

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v6, v4}, Landroid/app/INotificationManager;->createNotificationChannels(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-interface {v0, v6, v4, v6, v11}, Landroid/app/INotificationManager;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_d

    goto :goto_8

    :cond_d
    const/4 v11, 0x0

    :goto_8
    if-nez v11, :cond_e

    goto :goto_9

    :catchall_0
    move-exception v0

    goto/16 :goto_f

    :catch_3
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_9
    sget-object v11, Lcom/android/internal/notification/SystemNotificationChannels;->ALERTS:Ljava/lang/String;

    :cond_e
    const v0, 0x1080376

    if-eqz v3, :cond_11

    const/4 v4, 0x1

    if-eq v3, v4, :cond_11

    const/4 v4, 0x2

    if-eq v3, v4, :cond_10

    const/4 v4, 0x3

    if-eq v3, v4, :cond_f

    const/4 v4, 0x0

    goto :goto_b

    :cond_f
    new-instance v4, Landroid/app/Notification$Action$Builder;

    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    const v6, 0x50f0156

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v4, v0, v5, v9}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_a

    :cond_10
    new-instance v4, Landroid/app/Notification$Action$Builder;

    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    const v6, 0x50f0153

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v4, v0, v5, v9}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_a

    :cond_11
    new-instance v4, Landroid/app/Notification$Action$Builder;

    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    const v6, 0x50f013a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v4, v0, v5, v9}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    :goto_a
    invoke-virtual {v4}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v4

    :goto_b
    new-instance v5, Landroid/app/Notification$Action$Builder;

    sget-object v6, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    const v7, 0x50f013d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-direct {v5, v0, v6, v1}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v5}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v1, v10}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    new-instance v5, Landroid/app/Notification$Builder;

    sget-object v6, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    invoke-direct {v5, v6, v11}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v6, 0x108008a

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    sget-object v6, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    const v7, 0x106001c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const-wide/16 v9, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    if-eqz v3, :cond_15

    if-eq v3, v6, :cond_14

    if-eq v3, v5, :cond_13

    const/4 v4, 0x3

    if-eq v3, v4, :cond_12

    goto :goto_e

    :cond_12
    sget-object v13, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    const/4 v14, 0x0

    const/high16 v16, 0x8000000

    const/16 v17, 0x0

    new-instance v0, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-direct {v0, v3}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v18, v0

    invoke-static/range {v13 .. v18}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_c

    :cond_13
    invoke-virtual {v2, v8}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    :goto_c
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_e

    :cond_14
    invoke-virtual {v2, v8}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    sget-object v13, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    const/4 v14, 0x0

    const/high16 v16, 0x8000000

    const/16 v17, 0x0

    new-instance v1, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-direct {v1, v3}, Landroid/os/UserHandle;-><init>(I)V

    goto :goto_d

    :cond_15
    invoke-virtual {v2, v8}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    sget-object v13, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    const/4 v14, 0x0

    const/high16 v16, 0x8000000

    const/16 v17, 0x0

    new-instance v1, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-direct {v1, v3}, Landroid/os/UserHandle;-><init>(I)V

    :goto_d
    move-object/from16 v18, v1

    invoke-static/range {v13 .. v18}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    :goto_e
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iget-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "op_always_expanded"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0

    :goto_f
    sget-object v1, Lcom/android/internal/notification/SystemNotificationChannels;->ALERTS:Ljava/lang/String;

    throw v0

    :cond_16
    :goto_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BgDetect] error: cannot get pkg label : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private o0(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->pkgDeps:Landroid/util/ArraySet;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic obl(Lcom/android/server/am/OnePlusHighPowerDetector;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->irq:Z

    return p0
.end method

.method static synthetic oif(Lcom/android/server/am/OnePlusHighPowerDetector;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->N(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic oxb(Lcom/android/server/am/OnePlusHighPowerDetector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->irq:Z

    return p1
.end method

.method public static q(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v2
.end method

.method static synthetic qbh(Lcom/android/server/am/OnePlusHighPowerDetector;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->O(Landroid/content/Intent;)V

    return-void
.end method

.method private r()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->P:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->P:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BGC] Audio-Active Uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->B0(Ljava/lang/String;)V

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

.method static synthetic rtg(Lcom/android/server/am/OnePlusHighPowerDetector;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ssp:Z

    return p0
.end method

.method static synthetic sis(Lcom/android/server/am/OnePlusHighPowerDetector;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->v()V

    return-void
.end method

.method static synthetic ssp(Lcom/android/server/am/OnePlusHighPowerDetector;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->tsu:Z

    return p0
.end method

.method static synthetic tsu(Lcom/android/server/am/OnePlusHighPowerDetector;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->w()V

    return-void
.end method

.method private u()V
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BGC] gen activeAudioUidList in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OHPD"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->f2:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/android/server/am/OnePlusHighPowerDetector;->f2:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v3, v3, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :cond_0
    if-lez v3, :cond_1

    add-int/lit8 v3, v3, -0x1

    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->f2:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v4, v4, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->P:Ljava/util/HashSet;

    const-string v6, "com.google.android.gms"

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->m0(Lcom/android/server/am/ProcessRecord;Ljava/util/HashSet;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-boolean p0, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz p0, :cond_1

    const-string p0, "OHPD"

    const-string v3, "[BGC][GMS] Skip due to important client\'s dependency"

    invoke-static {p0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v3, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BGC] got exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BGC] loop check isImportantToPkg in "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OHPD"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method static synthetic ugm(Lcom/android/server/am/OnePlusHighPowerDetector;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->L0(Lorg/json/JSONArray;)V

    return-void
.end method

.method private v()V
    .locals 7

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->f2:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->f2:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->f2:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v2, v2, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    const-string v3, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BGC] i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", iso="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v2, Lcom/android/server/am/ProcessRecord;->isolated:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", app.info.uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", f=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", isSys="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-virtual {p0, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->R(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", curAdj="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", isMulti="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-virtual {p0, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->n0(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", sN="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

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

.method static synthetic vdb(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/am/OnePlusHighPowerDetector;->r2:Z

    return p0
.end method

.method private w()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Bgdetect] sDeviceTempPath :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->X1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OHPD"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Bgdetect] sIsPreciseDevTemp :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->t2:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OHPD"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->gwm:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Bgdetect] whiteAppListSet :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->gwm:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->cjf:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_1
    const-string v0, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Bgdetect] blackAppListSet :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->cjf:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ire:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_2
    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Bgdetect] transientAppListSet :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ire:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ear:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_3
    const-string v0, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Bgdetect] blackExAppListSet :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ear:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vdb:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_4
    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Bgdetect] gpsBlackListSet :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vdb:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Bgdetect] killProcList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vdw:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OHPD"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Bgdetect] quickKillProcList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->qeg:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OHPD"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Bgdetect] needHandleSystemFlagList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ivd:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OHPD"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Bgdetect] level0KillList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OHPD"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->b:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_5
    const-string v0, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Bgdetect] gmsMonitorList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->oxb:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_6
    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BGC] whiteBGCAppListSet :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->oxb:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-static {}, Lcom/android/server/wm/OpWmInjector;->getSysAlertWindowUidsForScreenOff()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BGC] alertWindowUidsSoff :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OHPD"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/wm/OpWmInjector;->getSysAlertWindowUids()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BGC] alertWindowUid :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OHPD"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/wm/OpWmInjector;->getVisibleWindowUids()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BGC] ori visibleUids :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OHPD"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/wm/OpWmInjector;->getVisibleWindowUids()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BGC] inj visibleUids2 :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OHPD"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->r()V

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusBGController;->p0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BGC] active step counter uids :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OHPD"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "com_oneplus_systemui_recent_task_lockd_list"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->F0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BGC] locked :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OHPD"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->you:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    monitor-enter v0

    :try_start_7
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->you:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->you:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "], "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BGC] mBGCUidArray :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->cno:Ljava/util/HashSet;

    if-eqz v0, :cond_3

    monitor-enter v0

    :try_start_8
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->cno:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_2
    const-string v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BGC] mBGCUsingTrafficUidSet :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    goto :goto_3

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw p0

    :cond_3
    :goto_3
    invoke-direct {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->F()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[BGC] currentIME :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OHPD"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_2
    move-exception p0

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw p0

    :catchall_3
    move-exception p0

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw p0

    :catchall_4
    move-exception p0

    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw p0

    :catchall_5
    move-exception p0

    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw p0

    :catchall_6
    move-exception p0

    :try_start_d
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    throw p0

    :catchall_7
    move-exception p0

    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    throw p0

    :catchall_8
    move-exception p0

    :try_start_f
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    throw p0
.end method

.method private w0(Ljava/lang/String;)V
    .locals 11

    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->p:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v4, v2, v3

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->p:Ljava/util/HashMap;

    aget-object v5, v2, v0

    new-instance v6, Lcom/android/server/am/OnePlusHighPowerDetector$wtn;

    aget-object v7, v2, v3

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const/4 v9, 0x2

    aget-object v10, v2, v9

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-direct {v6, p0, v7, v8, v10}, Lcom/android/server/am/OnePlusHighPowerDetector$wtn;-><init>(Lcom/android/server/am/OnePlusHighPowerDetector;JZ)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BGC] packageName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", lastNotifyTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v2, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", isClickIgnoreAction:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v2, v9

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->B0(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic wtn(Lcom/android/server/am/OnePlusHighPowerDetector;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->M0()Z

    move-result p0

    return p0
.end method

.method private x0(Ljava/lang/String;)V
    .locals 13

    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->o:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_1

    aget-object v4, p1, v3

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v6, v4, v5

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    sub-long v6, v0, v6

    const-wide/16 v8, 0x18

    sget-wide v10, Lcom/android/server/am/OnePlusHighPowerDetector;->z0:J

    mul-long/2addr v10, v8

    cmp-long v6, v6, v10

    if-gtz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->o:Ljava/util/HashMap;

    aget-object v7, v4, v2

    new-instance v8, Lcom/android/server/am/OnePlusHighPowerDetector$wtn;

    aget-object v9, v4, v5

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    const/4 v11, 0x2

    aget-object v12, v4, v11

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-direct {v8, p0, v9, v10, v12}, Lcom/android/server/am/OnePlusHighPowerDetector$wtn;-><init>(Lcom/android/server/am/OnePlusHighPowerDetector;JZ)V

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "packageName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v4, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",lastNotifyTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v4, v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",isClickIgnoreAction:"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v4, v11

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->B0(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private y0(Ljava/lang/String;)V
    .locals 3

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    new-instance v2, Lcom/android/server/am/OnePlusHighPowerDetector$dma;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/android/server/am/OnePlusHighPowerDetector$dma;-><init>(Lcom/android/server/am/OnePlusHighPowerDetector;JI)V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->n:Lcom/android/server/am/OnePlusHighPowerDetector$dma;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loading suggestion_info: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->n:Lcom/android/server/am/OnePlusHighPowerDetector$dma;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->B0(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic you(Lcom/android/server/am/OnePlusHighPowerDetector;Ljava/lang/String;IILjava/lang/String;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/OnePlusHighPowerDetector;->D0(Ljava/lang/String;IILjava/lang/String;I)V

    return-void
.end method

.method static synthetic ywr(Lcom/android/server/am/OnePlusHighPowerDetector;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->M()V

    return-void
.end method

.method private z(Ljava/lang/String;I)V
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->f2:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    invoke-static {p1}, Lcom/android/server/am/OpStartAppControlInjector;->updateHighPowerUsagePackage(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OnePlusHighPowerDetector;->G0(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic zgw()Lcom/android/server/am/OnePlusHighPowerDetector$igw;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->h2:Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    return-object v0
.end method

.method static synthetic zta(Lcom/android/server/am/OnePlusHighPowerDetector;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->P:Ljava/util/HashSet;

    return-object p0
.end method


# virtual methods
.method public A()V
    .locals 1

    sget-object p0, Lcom/android/server/am/OnePlusHighPowerDetector;->h2:Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    const v0, 0xd6e4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method A0(I)V
    .locals 6

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->m2:Ljava/lang/Object;

    monitor-enter v0

    const-wide/16 v1, 0x0

    :try_start_0
    iput-wide v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->veq:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->bud:J

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v1, :cond_0

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LightIdle] monitorCameraStart(), mMonitorStartTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->bud:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vju:Lcom/android/server/am/OnePlusHighPowerDetector$ssp;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->f2:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    iget-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vju:Lcom/android/server/am/OnePlusHighPowerDetector$ssp;

    iget v2, v2, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->you:I

    invoke-virtual {v1, v2}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuTimeForPid(I)J

    move-result-wide v1

    sget-boolean v3, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v3, :cond_1

    const-string v3, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LightIdle] Start cpuTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vju:Lcom/android/server/am/OnePlusHighPowerDetector$ssp;

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->kth:[J

    aput-wide v1, p0, p1

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

.method public B()V
    .locals 3

    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    const-string v2, "BackgroundDetection"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->L0(Lorg/json/JSONArray;)V

    return-void
.end method

.method public C()Lcom/android/server/am/OnePlusBGController;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->zta:Lcom/android/server/am/OnePlusBGController;

    return-object p0
.end method

.method C0(Lcom/android/server/am/ProcessRecord;I)Z
    .locals 5

    const/4 p0, 0x4

    const/16 v0, 0xa

    const/16 v1, 0xe

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_3

    if-eq p2, v3, :cond_3

    const/4 v4, 0x2

    if-eq p2, v4, :cond_3

    const/4 v4, 0x3

    if-eq p2, v4, :cond_0

    return v2

    :cond_0
    iget p1, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ge p1, v1, :cond_1

    if-eq p1, v0, :cond_1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x5

    if-eq p1, p0, :cond_1

    const/4 p0, 0x6

    if-eq p1, p0, :cond_1

    const/4 p0, 0x7

    if-ne p1, p0, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    return v2

    :cond_3
    iget p1, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ge p1, v1, :cond_4

    if-eq p1, v0, :cond_4

    if-ne p1, p0, :cond_5

    :cond_4
    move v2, v3

    :cond_5
    return v2
.end method

.method public D()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public E()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oneplus/highpower/HighPowerApp;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_23

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "com_oneplus_systemui_recent_task_lockd_list"

    const/4 v6, -0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->F0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    sget-object v8, Lcom/android/server/am/OnePlusHighPowerDetector;->f2:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v9, Lcom/android/server/am/OnePlusHighPowerDetector;->f2:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v9, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ProcessRecord;

    iget-object v11, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget v10, v10, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    :try_start_2
    iget-object v8, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->x:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-lez v8, :cond_3

    iget-object v8, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->x:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v9, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->x:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;

    sget-object v11, Lcom/android/server/am/OnePlusHighPowerDetector;->f2:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    iget v12, v10, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->you:I

    invoke-virtual {v11, v12}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuTimeForPid(I)J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-lez v11, :cond_1

    iget-object v11, v10, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->ssp:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget v10, v10, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->you:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fproc pkg "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v10, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->ssp:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "pid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v10, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->you:I

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " is gone"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/am/OnePlusHighPowerDetector;->B0(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    monitor-exit v8

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :cond_3
    :goto_2
    iget-object v8, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->r:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-object v9, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->r:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v10, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v10, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->you:I

    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    goto :goto_4

    :cond_5
    move v11, v3

    :goto_4
    iput-boolean v11, v10, Lcom/oneplus/highpower/HighPowerApp;->isLocked:Z

    iget-object v11, v10, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    iget v11, v10, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->zta:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, v10, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    sget-boolean v11, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v11, :cond_4

    const-string v11, "OHPD"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "huge dead pid:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v10, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->zta:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v10, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    :cond_8
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    :try_start_6
    iget-object v8, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->s:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    iget-object v9, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->s:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_9
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v10, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v10, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->you:I

    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    move v12, v11

    goto :goto_6

    :cond_a
    move v12, v3

    :goto_6
    iput-boolean v12, v10, Lcom/oneplus/highpower/HighPowerApp;->isLocked:Z

    iget-object v12, v10, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    iget v12, v10, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->zta:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, v10, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    sget-boolean v12, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v12, :cond_9

    const-string v12, "OHPD"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "high dead pid:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v10, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->zta:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v10, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_c
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    :cond_d
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :try_start_8
    iget-object v8, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->t:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :try_start_9
    iget-object v9, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->t:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_e
    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v10, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v10, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->you:I

    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    move v12, v11

    goto :goto_8

    :cond_f
    move v12, v3

    :goto_8
    iput-boolean v12, v10, Lcom/oneplus/highpower/HighPowerApp;->isLocked:Z

    iget-object v12, v10, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    iget-object v12, v10, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_11

    iget v12, v10, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->zta:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_10
    sget-boolean v12, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v12, :cond_e

    const-string v12, "OHPD"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "medium dead pid:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v10, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->zta:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v10, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_11
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_7

    :cond_12
    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    iget-object v8, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->u:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :try_start_b
    iget-object v9, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->u:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_13
    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_17

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v10, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v10, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->you:I

    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    move v12, v11

    goto :goto_a

    :cond_14
    move v12, v3

    :goto_a
    iput-boolean v12, v10, Lcom/oneplus/highpower/HighPowerApp;->isLocked:Z

    iget-object v12, v10, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_16

    iget v12, v10, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->zta:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_15

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, v10, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_15
    sget-boolean v12, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v12, :cond_13

    const-string v12, "OHPD"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "huge dead pid:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v10, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->zta:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v10, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_16
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    :cond_17
    monitor-exit v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    iget-object v8, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->v:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :try_start_d
    iget-object v9, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->v:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_18
    :goto_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v10, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v10, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->you:I

    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_19

    move v12, v11

    goto :goto_c

    :cond_19
    move v12, v3

    :goto_c
    iput-boolean v12, v10, Lcom/oneplus/highpower/HighPowerApp;->isLocked:Z

    iget-object v12, v10, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1b

    iget v12, v10, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->zta:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, v10, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1a
    sget-boolean v12, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v12, :cond_18

    const-string v12, "OHPD"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "high dead pid:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v10, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->zta:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v10, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_1b
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_b

    :cond_1c
    monitor-exit v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    iget-object v8, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->w:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    :try_start_f
    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->w:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v9, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v9, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->you:I

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1e

    move v10, v11

    goto :goto_e

    :cond_1e
    move v10, v3

    :goto_e
    iput-boolean v10, v9, Lcom/oneplus/highpower/HighPowerApp;->isLocked:Z

    iget-object v10, v9, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_20

    iget-object v10, v9, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_20

    iget v10, v9, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->zta:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1f

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_1f
    sget-boolean v10, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v10, :cond_1d

    const-string v10, "OHPD"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "medium dead pid:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v9, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->zta:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v9, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_20
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_d

    :cond_21
    monitor-exit v8

    goto :goto_f

    :catchall_1
    move-exception p0

    monitor-exit v8
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :try_start_10
    throw p0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    :catchall_2
    move-exception p0

    :try_start_11
    monitor-exit v8
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :try_start_12
    throw p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    :catchall_3
    move-exception p0

    :try_start_13
    monitor-exit v8
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    :try_start_14
    throw p0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0

    :catchall_4
    move-exception p0

    :try_start_15
    monitor-exit v8
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    :try_start_16
    throw p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0

    :catchall_5
    move-exception p0

    :try_start_17
    monitor-exit v8
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    :try_start_18
    throw p0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_0

    :catchall_6
    move-exception p0

    :try_start_19
    monitor-exit v8
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    :try_start_1a
    throw p0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_0

    :catchall_7
    move-exception p0

    :try_start_1b
    monitor-exit v8
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    :try_start_1c
    throw p0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_0

    :catch_0
    move-exception p0

    const-string v4, "OHPD"

    const-string v5, "[BgDetect] Error in getBgPowerHungryList"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BgDetect] getBgPowerHungryList result size "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " in "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OHPD"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p0, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz p0, :cond_22

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_10
    if-ge v3, p0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dump# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/highpower/HighPowerApp;

    iget-object v1, v1, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " powerLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/highpower/HighPowerApp;

    iget v1, v1, Lcom/oneplus/highpower/HighPowerApp;->powerLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/highpower/HighPowerApp;

    iget v1, v1, Lcom/oneplus/highpower/HighPowerApp;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OHPD"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_22
    return-object v2

    :cond_23
    const/4 p0, 0x0

    return-object p0
.end method

.method public G0(Ljava/lang/String;I)V
    .locals 4

    const/16 v0, 0x3e7

    if-eq p2, v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->r:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->r:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->r:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->s:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->s:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->s:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->t:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->t:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->t:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->q:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->q:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->q:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catchall_1
    move-exception p0

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :catchall_2
    move-exception p0

    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :catchall_3
    move-exception p0

    :try_start_d
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    throw p0

    :cond_4
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->u:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    :try_start_f
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->u:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->u:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    :try_start_10
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->v:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    :try_start_11
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->v:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->v:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :try_start_12
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->w:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    :try_start_13
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->w:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->w:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    :goto_0
    :try_start_14
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->x:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0

    :try_start_15
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->x:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;

    iget-object v3, v2, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->ssp:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget v2, v2, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->zta:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_9
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    :try_start_16
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->veq()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0

    goto :goto_2

    :catchall_4
    move-exception p0

    :try_start_17
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    :try_start_18
    throw p0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_0

    :catchall_5
    move-exception p0

    :try_start_19
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    :try_start_1a
    throw p0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_0

    :catchall_6
    move-exception p0

    :try_start_1b
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    :try_start_1c
    throw p0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_0

    :catchall_7
    move-exception p0

    :try_start_1d
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    :try_start_1e
    throw p0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_0

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[BgDetect] postProcessOfForceStop err with "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OHPD"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method public J0(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusBGController;->M0(I)V

    return-void
.end method

.method public K(Ljava/io/PrintWriter;Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OnePlusBGController;->o0(Ljava/io/PrintWriter;Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;)V

    return-void
.end method

.method public K0(Ljava/io/PrintWriter;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusBGController;->P0(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public P0(Z)V
    .locals 0

    return-void
.end method

.method public Q(Landroid/os/Message;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMyMessage # msg.what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusHighPowerDetector;->B0(Ljava/lang/String;)V

    iget v3, v2, Landroid/os/Message;->what:I

    const v4, 0x101d7

    if-eq v3, v4, :cond_42

    const v4, 0x101da

    const/4 v5, 0x0

    if-eq v3, v4, :cond_41

    const-wide/16 v6, 0x18

    const/4 v8, 0x3

    const/4 v10, 0x1

    packed-switch v3, :pswitch_data_0

    const v11, 0x101d5

    const/4 v12, 0x0

    packed-switch v3, :pswitch_data_1

    packed-switch v3, :pswitch_data_2

    goto/16 :goto_13

    :pswitch_0
    const-string v2, "======MSG_EXECUTION_BGPOWER======"

    invoke-static {v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->B0(Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BGC] mIsBGCFeatureEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->obl:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->B0(Ljava/lang/String;)V

    iget-boolean v2, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->obl:Z

    if-eqz v2, :cond_43

    invoke-direct {v1, v10}, Lcom/android/server/am/OnePlusHighPowerDetector;->cgv(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->veq()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_13

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string v2, "OHPD"

    const-string v3, "[BGC] Error handling MSG_EXECUTION_BGPOWER"

    goto/16 :goto_d

    :pswitch_1
    const-string v3, "======MSG_INFO_BGPOWER======"

    invoke-static {v3}, Lcom/android/server/am/OnePlusHighPowerDetector;->B0(Ljava/lang/String;)V

    :try_start_1
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/OnePlusBGController$dma;

    invoke-direct {v1, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->Y0(Lcom/android/server/am/OnePlusBGController$dma;)V

    iget-boolean v2, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->kth:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->r2:Z

    if-nez v2, :cond_0

    move v5, v10

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BGC] mEverLightIdleBGCCheck="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->kth:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mIsScreenOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/am/OnePlusHighPowerDetector;->r2:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", doExecution="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->B0(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "doze_mode_policy"

    invoke-static {v2, v3, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sget-boolean v3, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v3, :cond_1

    const-string v3, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[BGC] Policy :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v5, :cond_3

    iget-object v3, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusBGController;->e1()Ljava/util/HashSet;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/server/am/OnePlusHighPowerDetector;->Z0(Ljava/util/HashSet;)V

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->h2:Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    if-ne v2, v10, :cond_2

    move v4, v11

    :cond_2
    :goto_0
    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_13

    :cond_3
    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->h2:Lcom/android/server/am/OnePlusHighPowerDetector$igw;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v0

    const-string v2, "OHPD"

    const-string v3, "[BGC] Error handling MSG_INFO_BGPOWER"

    goto/16 :goto_d

    :pswitch_2
    :try_start_2
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v2, v2, Landroid/os/Message;->arg2:I

    if-nez v3, :cond_4

    return-void

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->n:Lcom/android/server/am/OnePlusHighPowerDetector$dma;

    if-eqz v7, :cond_5

    iget-object v4, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->n:Lcom/android/server/am/OnePlusHighPowerDetector$dma;

    invoke-virtual {v4}, Lcom/android/server/am/OnePlusHighPowerDetector$dma;->you()Z

    move-result v4

    if-nez v4, :cond_6

    return-void

    :cond_5
    new-instance v7, Lcom/android/server/am/OnePlusHighPowerDetector$dma;

    invoke-direct {v7, v1, v4, v5, v10}, Lcom/android/server/am/OnePlusHighPowerDetector$dma;-><init>(Lcom/android/server/am/OnePlusHighPowerDetector;JI)V

    iput-object v7, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->n:Lcom/android/server/am/OnePlusHighPowerDetector$dma;

    :cond_6
    invoke-direct {v1, v3, v2, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->o(Ljava/lang/String;II)Landroid/app/Notification;

    move-result-object v16

    if-nez v16, :cond_7

    return-void

    :cond_7
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v11

    const-string v12, "android"

    const-string v13, "android"

    const/4 v14, 0x0

    const v15, 0x33954c1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v17

    invoke-interface/range {v11 .. v17}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V

    iput-object v6, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->m:Ljava/lang/String;

    const-string v1, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BgDetect][Notification] notify suggestion for pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " userId "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_13

    :catch_2
    move-exception v0

    move-object v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_10

    :pswitch_3
    :try_start_3
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v2, v2, Landroid/os/Message;->arg2:I

    if-nez v3, :cond_8

    return-void

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v8, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->p:Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v8, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->p:Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/OnePlusHighPowerDetector$wtn;

    if-nez v8, :cond_9

    return-void

    :cond_9
    invoke-virtual {v8}, Lcom/android/server/am/OnePlusHighPowerDetector$wtn;->zta()Z

    move-result v10

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusHighPowerDetector$wtn;->you()J

    move-result-wide v11

    if-eqz v10, :cond_a

    sget v10, Lcom/android/server/am/OnePlusHighPowerDetector;->A0:I

    int-to-long v13, v10

    sget-wide v15, Lcom/android/server/am/OnePlusHighPowerDetector;->B0:J

    mul-long/2addr v13, v15

    goto :goto_1

    :cond_a
    sget-wide v13, Lcom/android/server/am/OnePlusHighPowerDetector;->B0:J

    :goto_1
    sget-boolean v10, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v10, :cond_b

    const-string v10, "OHPD"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusHighPowerDetector$wtn;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", notiTimeGap="

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    sub-long v8, v6, v11

    cmp-long v10, v8, v13

    if-gez v10, :cond_d

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v1, :cond_c

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BGC Notification # too short time to notify: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-void

    :cond_d
    new-instance v8, Lcom/android/server/am/OnePlusHighPowerDetector$wtn;

    invoke-direct {v8, v1, v6, v7, v5}, Lcom/android/server/am/OnePlusHighPowerDetector$wtn;-><init>(Lcom/android/server/am/OnePlusHighPowerDetector;JZ)V

    iget-object v5, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->p:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->p:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_e
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/OnePlusHighPowerDetector$wtn;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_e

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusHighPowerDetector$wtn;->you()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/server/am/OnePlusHighPowerDetector$wtn;->zta()Z

    move-result v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "|"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BGC sb.length:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", sb.toString:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->B0(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_10

    sget-object v6, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "bgc_notification_rules_apps"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_10
    const/4 v5, 0x2

    invoke-direct {v1, v3, v2, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->o(Ljava/lang/String;II)Landroid/app/Notification;

    move-result-object v11

    if-nez v11, :cond_11

    return-void

    :cond_11
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v6

    const-string v7, "android"

    const-string v8, "android"

    const/4 v9, 0x0

    const v10, 0x33954bc

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    invoke-interface/range {v6 .. v12}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V

    iget-object v5, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->i:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iput-object v4, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->h:Ljava/lang/String;

    const-string v1, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BgDetect][Notification] notify for pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " userId "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_13

    :catch_3
    move-exception v0

    move-object v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error posting BGC notification:"

    goto/16 :goto_11

    :pswitch_4
    :try_start_4
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v4, v2, Landroid/os/Message;->arg1:I

    iget v2, v2, Landroid/os/Message;->arg2:I

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "proc"

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "cpu_usage"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "handled"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "appid"

    const-string v4, "NYNCG4I0TI"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->les:Lnet/oneplus/odm/OpDeviceManagerInjector;

    if-eqz v3, :cond_43

    iget-object v1, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->les:Lnet/oneplus/odm/OpDeviceManagerInjector;

    sget-object v3, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    const-string v4, "native_proc_busy"

    invoke-virtual {v1, v3, v4, v5, v2}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_13

    :pswitch_5
    invoke-virtual {v1, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->A0(I)V

    goto/16 :goto_13

    :pswitch_6
    :try_start_5
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v4, v2, Landroid/os/Message;->arg1:I

    iget v2, v2, Landroid/os/Message;->arg2:I

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "proc"

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "cpu_usage"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "handled"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "appid"

    const-string v4, "NYNCG4I0TI"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->les:Lnet/oneplus/odm/OpDeviceManagerInjector;

    if-eqz v3, :cond_43

    iget-object v1, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->les:Lnet/oneplus/odm/OpDeviceManagerInjector;

    sget-object v3, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    const-string v4, "camera_proc_busy"

    invoke-virtual {v1, v3, v4, v5, v2}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_13

    :catch_4
    move-exception v0

    move-object v1, v0

    const-string v2, "OHPD"

    const-string v3, "Error submit SDM"

    goto/16 :goto_d

    :pswitch_7
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v4, v2, Landroid/os/Message;->arg1:I

    iget v2, v2, Landroid/os/Message;->arg2:I

    :try_start_6
    invoke-direct {v1, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->ivd(I)Z

    move-result v5

    if-nez v5, :cond_16

    if-eqz v4, :cond_15

    if-eq v4, v10, :cond_14

    const/4 v5, 0x2

    if-eq v4, v5, :cond_13

    if-eq v4, v8, :cond_12

    goto :goto_3

    :cond_12
    iput-object v12, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->m:Ljava/lang/String;

    goto :goto_3

    :cond_13
    iget-object v5, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->i:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    iput-object v12, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->h:Ljava/lang/String;

    goto :goto_3

    :cond_14
    iget-object v5, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->d:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    iput-object v12, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->c:Ljava/lang/String;

    goto :goto_3

    :cond_15
    iget-object v5, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->f:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    iput-object v12, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->e:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_3

    :catch_5
    move-exception v0

    move-object v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error when CHECK_IF_NOTIFICATION_EXISTED_MSG "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "OHPD"

    invoke-static {v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :cond_16
    :goto_3
    iget-object v5, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->c:Ljava/lang/String;

    if-eqz v5, :cond_17

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    :cond_17
    iget-object v5, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->e:Ljava/lang/String;

    if-eqz v5, :cond_18

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    :cond_18
    iget-object v5, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->h:Ljava/lang/String;

    if-eqz v5, :cond_19

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    :cond_19
    iget-object v1, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->m:Ljava/lang/String;

    if-eqz v1, :cond_1b

    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pkg "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " userId "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " already pop notification, skip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OHPD"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1b
    if-eqz v4, :cond_1f

    if-eq v4, v10, :cond_1e

    const/4 v1, 0x2

    if-eq v4, v1, :cond_1d

    if-eq v4, v8, :cond_1c

    goto :goto_5

    :cond_1c
    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->h2:Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    const v4, 0xd6ea

    goto :goto_4

    :cond_1d
    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->h2:Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    const v4, 0xd6e9

    goto :goto_4

    :cond_1e
    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->h2:Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    const v4, 0xd6db

    goto :goto_4

    :cond_1f
    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->h2:Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    const v4, 0xd6e1

    :goto_4
    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    :goto_5
    iput-object v3, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v2, v12, Landroid/os/Message;->arg2:I

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->h2:Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v12, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_13

    :pswitch_8
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/am/OnePlusHighPowerDetector$rtg;

    invoke-direct {v3, v1}, Lcom/android/server/am/OnePlusHighPowerDetector$rtg;-><init>(Lcom/android/server/am/OnePlusHighPowerDetector;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_13

    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->c1()V

    goto/16 :goto_13

    :pswitch_a
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "doze_mode_policy"

    invoke-static {v2, v3, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sget-boolean v3, Lcom/android/server/am/OnePlusHighPowerDetector;->t0:Z

    if-eqz v3, :cond_20

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LightIdle] Policy :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OHPD"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    new-array v3, v10, [I

    const/16 v4, 0x53

    aput v4, v3, v5

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_21

    if-ne v2, v10, :cond_21

    iget-boolean v3, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->bio:Z

    if-nez v3, :cond_21

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->f()V

    iput-boolean v10, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->bio:Z

    :cond_21
    new-array v3, v10, [I

    const/16 v4, 0x50

    aput v4, v3, v5

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_22

    if-ne v2, v10, :cond_22

    iget-boolean v2, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->kth:Z

    if-nez v2, :cond_22

    iput-boolean v10, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->kth:Z

    iget-object v2, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController;->e1()Ljava/util/HashSet;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->Z0(Ljava/util/HashSet;)V

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->h2:Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    invoke-virtual {v2, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_22
    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->k2:Z

    if-eqz v2, :cond_43

    iget-boolean v2, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->fto:Z

    if-eqz v2, :cond_23

    iget-boolean v2, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->irq:Z

    if-eqz v2, :cond_43

    :cond_23
    invoke-virtual {v1, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->z0(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->e()V

    iput-boolean v10, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->fto:Z

    goto/16 :goto_13

    :pswitch_b
    :try_start_7
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v2, v2, Landroid/os/Message;->arg2:I

    if-nez v3, :cond_24

    return-void

    :cond_24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v10, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->o:Ljava/util/HashMap;

    invoke-virtual {v10, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_28

    iget-object v10, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->o:Ljava/util/HashMap;

    invoke-virtual {v10, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/OnePlusHighPowerDetector$wtn;

    if-nez v10, :cond_25

    return-void

    :cond_25
    invoke-virtual {v10}, Lcom/android/server/am/OnePlusHighPowerDetector$wtn;->you()J

    move-result-wide v11

    invoke-virtual {v10}, Lcom/android/server/am/OnePlusHighPowerDetector$wtn;->zta()Z

    move-result v10

    sub-long v11, v8, v11

    if-eqz v10, :cond_26

    sget-wide v13, Lcom/android/server/am/OnePlusHighPowerDetector;->z0:J

    mul-long/2addr v13, v6

    goto :goto_6

    :cond_26
    sget-wide v13, Lcom/android/server/am/OnePlusHighPowerDetector;->z0:J

    :goto_6
    cmp-long v13, v11, v13

    if-gez v13, :cond_29

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v1, :cond_27

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notification # too short time to notify: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    return-void

    :cond_28
    move v10, v5

    :cond_29
    new-instance v11, Lcom/android/server/am/OnePlusHighPowerDetector$wtn;

    invoke-direct {v11, v1, v8, v9, v10}, Lcom/android/server/am/OnePlusHighPowerDetector$wtn;-><init>(Lcom/android/server/am/OnePlusHighPowerDetector;JZ)V

    iget-object v10, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->o:Ljava/util/HashMap;

    invoke-virtual {v10, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->o:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/OnePlusHighPowerDetector$wtn;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_2a

    invoke-virtual {v13}, Lcom/android/server/am/OnePlusHighPowerDetector$wtn;->you()J

    move-result-wide v14

    sub-long v14, v8, v14

    sget-wide v16, Lcom/android/server/am/OnePlusHighPowerDetector;->z0:J

    mul-long v16, v16, v6

    cmp-long v14, v14, v16

    if-gtz v14, :cond_2a

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ","

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/android/server/am/OnePlusHighPowerDetector$wtn;->you()J

    move-result-wide v6

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/android/server/am/OnePlusHighPowerDetector$wtn;->zta()Z

    move-result v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "|"

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2a
    const-wide/16 v6, 0x18

    goto :goto_7

    :cond_2b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sb.length:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", sb.toString:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->B0(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_2c

    sget-object v6, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "ohpd_notification_rules_apps"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2c
    invoke-direct {v1, v3, v2, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->o(Ljava/lang/String;II)Landroid/app/Notification;

    move-result-object v14

    if-nez v14, :cond_2d

    return-void

    :cond_2d
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v9

    const-string v10, "android"

    const-string v11, "android"

    const/4 v12, 0x0

    const v13, 0x33954b9

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v15

    invoke-interface/range {v9 .. v15}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V

    iget-object v5, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->f:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iput-object v4, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->e:Ljava/lang/String;

    const-string v1, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BgDetect][Notification] notify for pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " userId "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_13

    :catch_6
    move-exception v0

    move-object v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_10

    :pswitch_c
    iget v3, v2, Landroid/os/Message;->arg2:I

    :try_start_8
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v4

    const-string v5, "android"

    sget-object v6, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    if-ne v3, v10, :cond_2e

    const v8, 0x33954b8

    goto :goto_8

    :cond_2e
    const v8, 0x33954b9

    :goto_8
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-interface/range {v4 .. v9}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[BgDetect] FORCE_STOP_PKG_MSG Type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_2f

    iput-object v12, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->e:Ljava/lang/String;

    goto :goto_9

    :cond_2f
    if-ne v3, v10, :cond_30

    iput-object v12, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->c:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_9

    :catch_7
    const-string v3, "OHPD"

    const-string v4, "[BgDetect] Error when cancel notification"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    :goto_9
    :try_start_9
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v2, v2, Landroid/os/Message;->arg1:I

    invoke-direct {v1, v3, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->z(Ljava/lang/String;I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    goto/16 :goto_13

    :catch_8
    move-exception v0

    move-object v1, v0

    const-string v2, "OHPD"

    const-string v3, "[BgDetect] Error when force stop pkg"

    goto/16 :goto_d

    :pswitch_d
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->N1:[I

    aget v2, v2, v8

    invoke-direct {v1, v8, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->les(II)I

    move-result v1

    if-nez v1, :cond_43

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->f2:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_a
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->h2:Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    const v3, 0xd6de

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->h2:Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    sget-object v3, Lcom/android/server/am/OnePlusHighPowerDetector;->h2:Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->N1:[I

    aget v4, v4, v8

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit v1

    goto/16 :goto_13

    :catchall_0
    move-exception v0

    move-object v2, v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v2

    :pswitch_e
    :try_start_b
    iget-object v2, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->c:Ljava/lang/String;

    if-nez v2, :cond_31

    iget-object v2, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->e:Ljava/lang/String;

    if-nez v2, :cond_31

    iget-object v2, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->h:Ljava/lang/String;

    if-nez v2, :cond_31

    iget-object v2, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->m:Ljava/lang/String;

    if-nez v2, :cond_31

    return-void

    :cond_31
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->f2:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    :try_start_c
    sget-object v6, Lcom/android/server/am/OnePlusHighPowerDetector;->f2:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v6, v6, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_32

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    iget-object v9, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget v7, v7, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_32
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    iget-object v4, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->x:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_35

    iget-object v4, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->x:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    :try_start_e
    iget-object v6, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->x:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_34

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;

    sget-object v9, Lcom/android/server/am/OnePlusHighPowerDetector;->f2:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    iget v11, v7, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->you:I

    invoke-virtual {v9, v11}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuTimeForPid(I)J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v9, v11, v13

    if-lez v9, :cond_33

    iget-object v9, v7, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->ssp:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget v7, v7, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->you:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_33
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fproc pkg "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v7, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->ssp:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "pid "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v7, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->you:I

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " is gone"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/am/OnePlusHighPowerDetector;->B0(Ljava/lang/String;)V

    goto :goto_b

    :cond_34
    monitor-exit v4

    goto :goto_c

    :catchall_1
    move-exception v0

    move-object v1, v0

    monitor-exit v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    throw v1

    :cond_35
    :goto_c
    iget-object v4, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->e:Ljava/lang/String;

    if-eqz v4, :cond_36

    iget-object v4, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->e:Ljava/lang/String;

    invoke-direct {v1, v4, v2, v3, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->g(Ljava/lang/String;Ljava/util/HashSet;Ljava/util/HashSet;I)V

    :cond_36
    iget-object v4, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->c:Ljava/lang/String;

    if-eqz v4, :cond_37

    iget-object v4, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->c:Ljava/lang/String;

    invoke-direct {v1, v4, v2, v3, v10}, Lcom/android/server/am/OnePlusHighPowerDetector;->g(Ljava/lang/String;Ljava/util/HashSet;Ljava/util/HashSet;I)V

    :cond_37
    iget-object v4, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->h:Ljava/lang/String;

    if-eqz v4, :cond_38

    iget-object v4, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->h:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-direct {v1, v4, v2, v3, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->g(Ljava/lang/String;Ljava/util/HashSet;Ljava/util/HashSet;I)V

    :cond_38
    iget-object v4, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->m:Ljava/lang/String;

    if-eqz v4, :cond_43

    iget-object v4, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->m:Ljava/lang/String;

    invoke-direct {v1, v4, v2, v3, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->g(Ljava/lang/String;Ljava/util/HashSet;Ljava/util/HashSet;I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    goto/16 :goto_13

    :catchall_2
    move-exception v0

    move-object v1, v0

    :try_start_10
    monitor-exit v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :try_start_11
    throw v1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_9

    :catch_9
    move-exception v0

    move-object v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BgDetect] cancel notification fail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OHPD"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    :pswitch_f
    :try_start_12
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v2, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v3, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->G0(Ljava/lang/String;I)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_a

    goto/16 :goto_13

    :catch_a
    move-exception v0

    move-object v1, v0

    const-string v2, "OHPD"

    const-string v3, "Error when clean up package removed record"

    :goto_d
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    :pswitch_10
    :try_start_13
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget v2, v2, Landroid/os/Message;->arg2:I

    if-nez v3, :cond_39

    return-void

    :cond_39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v8, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->o:Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3c

    iget-object v5, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->o:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/OnePlusHighPowerDetector$wtn;

    invoke-virtual {v5}, Lcom/android/server/am/OnePlusHighPowerDetector$wtn;->you()J

    move-result-wide v8

    invoke-virtual {v5}, Lcom/android/server/am/OnePlusHighPowerDetector$wtn;->zta()Z

    move-result v5

    sub-long v8, v6, v8

    if-eqz v5, :cond_3a

    sget-wide v11, Lcom/android/server/am/OnePlusHighPowerDetector;->z0:J

    const-wide/16 v13, 0x18

    mul-long/2addr v11, v13

    goto :goto_e

    :cond_3a
    sget-wide v11, Lcom/android/server/am/OnePlusHighPowerDetector;->z0:J

    :goto_e
    cmp-long v11, v8, v11

    if-gez v11, :cond_3c

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v1, :cond_3b

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notification # too short time to notify: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    return-void

    :cond_3c
    new-instance v8, Lcom/android/server/am/OnePlusHighPowerDetector$wtn;

    invoke-direct {v8, v1, v6, v7, v5}, Lcom/android/server/am/OnePlusHighPowerDetector$wtn;-><init>(Lcom/android/server/am/OnePlusHighPowerDetector;JZ)V

    iget-object v5, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->o:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->o:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3d
    :goto_f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/OnePlusHighPowerDetector$wtn;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_3d

    invoke-virtual {v11}, Lcom/android/server/am/OnePlusHighPowerDetector$wtn;->you()J

    move-result-wide v12

    sub-long v12, v6, v12

    sget-wide v17, Lcom/android/server/am/OnePlusHighPowerDetector;->z0:J

    const-wide/16 v14, 0x18

    mul-long v17, v17, v14

    cmp-long v12, v12, v17

    if-gtz v12, :cond_3d

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/server/am/OnePlusHighPowerDetector$wtn;->you()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/server/am/OnePlusHighPowerDetector$wtn;->zta()Z

    move-result v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "|"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    :cond_3e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sb.length:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "sb.toString:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->B0(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_3f

    sget-object v6, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "ohpd_notification_rules_apps"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3f
    invoke-direct {v1, v3, v2, v10}, Lcom/android/server/am/OnePlusHighPowerDetector;->o(Ljava/lang/String;II)Landroid/app/Notification;

    move-result-object v16

    if-nez v16, :cond_40

    return-void

    :cond_40
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v11

    const-string v12, "android"

    const-string v13, "android"

    const/4 v14, 0x0

    const v15, 0x33954b8

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v17

    invoke-interface/range {v11 .. v17}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V

    iget-object v5, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->d:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iput-object v4, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->c:Ljava/lang/String;

    const-string v1, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BgDetect][Notification] notify for pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " userId "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_b

    goto/16 :goto_13

    :catch_b
    move-exception v0

    move-object v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_10
    const-string v3, "Error posting power intensive notification:"

    :goto_11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OHPD"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_13

    :pswitch_11
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->N1:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-direct {v1, v3, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->les(II)I

    move-result v1

    if-nez v1, :cond_43

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->f2:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_14
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->h2:Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    const v3, 0xd6da

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->h2:Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    sget-object v3, Lcom/android/server/am/OnePlusHighPowerDetector;->h2:Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->N1:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit v1

    goto/16 :goto_13

    :catchall_3
    move-exception v0

    move-object v2, v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    throw v2

    :pswitch_12
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->N1:[I

    aget v2, v2, v10

    invoke-direct {v1, v10, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->les(II)I

    move-result v1

    if-nez v1, :cond_43

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->f2:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_15
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->h2:Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    const v3, 0xd6d9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->h2:Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    sget-object v3, Lcom/android/server/am/OnePlusHighPowerDetector;->h2:Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->N1:[I

    aget v4, v4, v10

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit v1

    goto :goto_13

    :catchall_4
    move-exception v0

    move-object v2, v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    throw v2

    :pswitch_13
    sget v2, Lcom/android/server/am/OnePlusHighPowerDetector;->E1:I

    invoke-direct {v1, v5, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->les(II)I

    move-result v1

    if-nez v1, :cond_43

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->f2:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_16
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->h2:Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    const v3, 0xd6d8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->h2:Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    sget-object v3, Lcom/android/server/am/OnePlusHighPowerDetector;->h2:Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->N1:[I

    aget v4, v4, v5

    int-to-long v4, v4

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit v1

    goto :goto_13

    :catchall_5
    move-exception v0

    move-object v2, v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    throw v2

    :cond_41
    const-string v2, "======MSG_NO_EXECUTION_BGPOWER======"

    invoke-static {v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->B0(Ljava/lang/String;)V

    :try_start_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BGC] mIsBGCFeatureEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->obl:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->B0(Ljava/lang/String;)V

    iget-boolean v2, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->obl:Z

    if-eqz v2, :cond_43

    invoke-direct {v1, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->cgv(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->veq()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_c

    goto :goto_13

    :catch_c
    move-exception v0

    move-object v1, v0

    const-string v2, "OHPD"

    const-string v3, "[BGC] Error handling MSG_NO_EXECUTION_BGPOWER"

    goto/16 :goto_d

    :cond_42
    const-string v2, "======MSG_UPDATE_TRAFFIC_WHEN_SOFF======"

    invoke-static {v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->B0(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-virtual {v1}, Lcom/android/server/am/OnePlusBGController;->e1()Ljava/util/HashSet;

    :cond_43
    :goto_13
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xd6d8
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd6e0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x101d4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method R(I)Z
    .locals 0

    and-int/lit16 p0, p1, 0x81

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public R0(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 0

    const-string p0, "ohpd"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    array-length p0, p3

    if-ge p2, p0, :cond_1

    add-int/lit8 p0, p2, 0x1

    aget-object p1, p3, p2

    const-string p2, "thresh"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    array-length p1, p3

    if-ge p0, p1, :cond_0

    aget-object p0, p3, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->a1(Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method S(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v2, "com.google.android.gms"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isIsolated process: app.uid:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",app.info.uid:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", app.processName:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OHPD"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->vdw(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->R(I)Z

    move-result p0

    return p0
.end method

.method public T(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusBGController;->t0(Z)V

    return-void
.end method

.method public U()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-virtual {p0}, Lcom/android/server/am/OnePlusBGController;->u0()V

    return-void
.end method

.method public V(Ljava/lang/String;I)V
    .locals 1

    sget-object p0, Lcom/android/server/am/OnePlusHighPowerDetector;->h2:Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    const v0, 0xd6dc

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p2, p0, Landroid/os/Message;->arg1:I

    sget-object p1, Lcom/android/server/am/OnePlusHighPowerDetector;->h2:Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public V0()V
    .locals 6

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->h2:Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    const v1, 0xd6d8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->h2:Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->N1:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->h2:Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    const v1, 0xd6d9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->h2:Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->N1:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-long v4, v2

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->h2:Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    const v1, 0xd6da

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->h2:Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->N1:[I

    const/4 v4, 0x2

    aget v2, v2, v4

    int-to-long v4, v2

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->h2:Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    const v1, 0xd6de

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->h2:Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->N1:[I

    const/4 v4, 0x3

    aget v2, v2, v4

    int-to-long v4, v2

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string v0, "OHPD"

    const-string v1, "[BgDetect] startMonitor # queue CHECK_EXCESSIVE_CPU MSGs"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->qbh:Z

    return-void
.end method

.method public W0(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->X0(Ljava/lang/String;IZ)V

    return-void
.end method

.method X()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->oxb:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->oxb:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->oxb:Ljava/util/ArrayList;

    const-string v2, "com.baidu.BaiduMap"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->oxb:Ljava/util/ArrayList;

    const-string v2, "com.tencent.map"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->oxb:Ljava/util/ArrayList;

    const-string v2, "cld.navi.mainframe"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->oxb:Ljava/util/ArrayList;

    const-string v2, "com.mapbar.android.mapbarmap"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->oxb:Ljava/util/ArrayList;

    const-string v2, "com.autonavi.minimap"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->oxb:Ljava/util/ArrayList;

    const-string v2, "com.sogou.map.android.maps"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->oxb:Ljava/util/ArrayList;

    const-string v2, "com.oppo.market"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->oxb:Ljava/util/ArrayList;

    const-string v2, "com.google.android.apps.maps"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->oxb:Ljava/util/ArrayList;

    const-string v2, "com.mapswithme.maps.pro"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->oxb:Ljava/util/ArrayList;

    const-string v2, "com.here.app.maps"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->oxb:Ljava/util/ArrayList;

    const-string v2, "com.magnetic.openmaps"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->oxb:Ljava/util/ArrayList;

    const-string v2, "com.navigation.offlinemaps.gps"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->oxb:Ljava/util/ArrayList;

    const-string v2, "com.tripbucket.route66"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->oxb:Ljava/util/ArrayList;

    const-string v2, "com.papago.M11_Int"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->oxb:Ljava/util/ArrayList;

    const-string v2, "com.kingwaytek.naviking3d.google.std"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->oxb:Ljava/util/ArrayList;

    const-string v2, "com.sygic.incar"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->oxb:Ljava/util/ArrayList;

    const-string v2, "com.mmi.maps"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->oxb:Ljava/util/ArrayList;

    const-string v1, "com.waze"

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public Z()V
    .locals 5

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->h2:Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    new-instance v3, Lcom/android/server/am/OnePlusHighPowerDetector$bio;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusHighPowerDetector$bio;-><init>(Lcom/android/server/am/OnePlusHighPowerDetector;)V

    const-string v4, "BackgroundDetection"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->R:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    return-void
.end method

.method a(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x4c

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->igw:Lcom/android/server/ire;

    if-nez v1, :cond_0

    sget-object v1, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_smart_power_control:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v1}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ire;

    iput-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->igw:Lcom/android/server/ire;

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->igw:Lcom/android/server/ire;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/ire;->isOptApp(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v3
.end method

.method public a0()V
    .locals 3

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ohpd_notification_rules_apps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initPersistData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->B0(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->x0(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bgc_notification_rules_apps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->w0(Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->g2:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ohpd_suggestion_info"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->y0(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method b(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .locals 2

    sget-object p0, Lcom/android/server/am/OnePlusHighPowerDetector;->c2:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->M1:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_2

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    iget p0, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 p2, 0x7

    if-ne p0, p2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "packageName:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " could not be checked because its setProcState is "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OHPD"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method b0(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->qeg(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->t0(Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    return p0

    :cond_2
    return v0
.end method

.method bud(Lcom/android/server/am/ProcessRecord;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->r0(Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v0, "com.truecaller"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    iget p0, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 p1, 0x5

    if-eq p0, p1, :cond_0

    const/4 p1, 0x7

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method c(Lcom/android/server/am/ProcessRecord;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->b0(Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method c0(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->qeg(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->p0(Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    return p0

    :cond_2
    return v0
.end method

.method c1()V
    .locals 5

    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "OHPD"

    const-string v1, "[LightIdle] updateProcRxTx()"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->f2:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->f2:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-lez v1, :cond_2

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->f2:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v2, v2, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-virtual {p0, v3}, Lcom/android/server/am/OnePlusHighPowerDetector;->R(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/am/OnePlusHighPowerDetector;->irq(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/am/ProcessRecord;->lastLightIdleRxBytes:J

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/am/ProcessRecord;->lastLightIdleTxBytes:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LightIdle] got exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method d(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->a:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method d1(Lcom/android/server/am/ProcessRecord;I)V
    .locals 2

    iget-wide v0, p1, Lcom/android/server/am/ProcessRecord;->curCpuTime:J

    iput-wide v0, p1, Lcom/android/server/am/ProcessRecord;->lastCpuTime:J

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->lastCpuTimeBgMonitor:[J

    iget-wide v0, p1, Lcom/android/server/am/ProcessRecord;->curCpuTimeBgMonitor:J

    aput-wide v0, p0, p2

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->lastRxBytes:[J

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v0

    aput-wide v0, p0, p2

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->lastTxBytes:[J

    iget p1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {p1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v0

    aput-wide v0, p0, p2

    return-void
.end method

.method e0(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x4c

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->igw:Lcom/android/server/ire;

    if-nez v1, :cond_0

    sget-object v1, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_smart_power_control:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v1}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ire;

    iput-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->igw:Lcom/android/server/ire;

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->igw:Lcom/android/server/ire;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/ire;->isSmartOptApp(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    move v0, v3

    :cond_1
    return v0
.end method

.method e1(Landroid/util/ArrayMap;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public f1(Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateWidgetPackage pkgName "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " add "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OHPD"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->D2:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->M:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->M:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->M:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

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

.method fto(Ljava/util/HashMap;Ljava/lang/String;IZZII)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/highpower/HighPowerApp;",
            ">;",
            "Ljava/lang/String;",
            "IZZII)V"
        }
    .end annotation

    move-object v1, p1

    monitor-enter p1

    :try_start_0
    new-instance v0, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    move-object v2, v0

    move-object v3, p2

    move v4, p3

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;-><init>(Ljava/lang/String;IZZJII)V

    move-object v2, p2

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method g0(Lcom/android/server/am/OnePlusHighPowerDetector$ssp;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->ssp:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->qeg(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v1, p1, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->ssp:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->i0(Lcom/android/server/am/OnePlusHighPowerDetector$ssp;)Z

    move-result p0

    return p0

    :cond_2
    return v0
.end method

.method public g1(Ljava/util/HashSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->D2:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->M:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    goto :goto_1

    :cond_0
    iput-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->M:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, "OHPD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateWidgetPackage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method h(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/highpower/HighPowerApp;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    monitor-enter p2

    :try_start_0
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    iget v1, v0, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->zta:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean p0, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz p0, :cond_1

    const-string p0, "OHPD"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[BgDetect][Notification] cancel abort: running: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x1

    monitor-exit p2

    return p0

    :cond_2
    const/4 p0, 0x0

    monitor-exit p2

    return p0

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method h0(Lcom/android/server/am/OnePlusHighPowerDetector$ssp;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->ssp:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->qeg(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v1, p1, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->ssp:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->j0(Lcom/android/server/am/OnePlusHighPowerDetector$ssp;)Z

    move-result p0

    return p0

    :cond_2
    return v0
.end method

.method i(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->qeg:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->qeg:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->qeg:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method i0(Lcom/android/server/am/OnePlusHighPowerDetector$ssp;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->oxb:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->oxb:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->ssp:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->oxb:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->ssp:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method irq(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->b:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method j(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vdw:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vdw:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vdw:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method j0(Lcom/android/server/am/OnePlusHighPowerDetector$ssp;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->gwm:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->gwm:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->ssp:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->gwm:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->ssp:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method k(Lcom/android/server/am/ProcessRecord;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->s0(Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 p1, 0x5

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method k0(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vdb:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vdb:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vdb:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public lqr()V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "OHPD"

    const-string v1, "beginCpuStatistics"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->x:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->J:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->K:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->G:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->H:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->I:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method n0(I)Z
    .locals 0

    const/high16 p0, -0x80000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public p(Lcom/android/internal/os/ProcessCpuTracker$Stats;)V
    .locals 9

    iget v0, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    const-wide/16 v1, 0x0

    const/16 v3, 0x2710

    if-lt v0, v3, :cond_2

    iget-wide v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->x:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->x:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->x:Ljava/util/HashMap;

    new-instance v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;

    iget v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    iget v5, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    iget-object v6, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iget v7, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v8, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    add-int/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    add-int/2addr v1, v3

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->you(J)V

    :goto_0
    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->J:Ljava/util/ArrayList;

    iget v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean p0, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz p0, :cond_1

    const-string p0, "OHPD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doCpuStatistics # forkedPid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit v0

    goto/16 :goto_3

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->k2:Z

    if-eqz v0, :cond_7

    iget v0, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    const/16 v3, 0x417

    if-ne v0, v3, :cond_7

    iget-wide v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->lqr:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->t0:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get Camera proc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->lqr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OHPD"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->m2:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vju:Lcom/android/server/am/OnePlusHighPowerDetector$ssp;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vju:Lcom/android/server/am/OnePlusHighPowerDetector$ssp;

    iget v1, v1, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->you:I

    iget v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    if-ne v1, v2, :cond_4

    sget-boolean p0, Lcom/android/server/am/OnePlusHighPowerDetector;->t0:Z

    if-eqz p0, :cond_6

    const-string p0, "OHPD"

    const-string p1, "Existed, just update value"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->t0:Z

    if-eqz v1, :cond_5

    const-string v1, "OHPD"

    const-string v2, "NOT existed, add new AppForkedProc"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance v1, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;

    iget v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    iget v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    iget-object p1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;-><init>(IILjava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vju:Lcom/android/server/am/OnePlusHighPowerDetector$ssp;

    :cond_6
    :goto_1
    monitor-exit v0

    goto/16 :goto_3

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_7
    iget-wide v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->G:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->G:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->G:Ljava/util/HashMap;

    new-instance v3, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;

    iget v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    iget v5, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    iget-object v6, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iget v7, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v8, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    add-int/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_8
    iget v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    add-int/2addr v1, v3

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->you(J)V

    :goto_2
    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->H:Ljava/util/ArrayList;

    iget v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean p0, Lcom/android/server/am/OnePlusHighPowerDetector;->t0:Z

    if-eqz p0, :cond_9

    const-string p0, "OHPD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doCpuStatistics # NativePid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    monitor-exit v0

    goto :goto_3

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0

    :cond_a
    :goto_3
    return-void
.end method

.method p0(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->oxb:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->oxb:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->oxb:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method q0(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ear:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ear:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ear:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method qeg(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x4c

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->igw:Lcom/android/server/ire;

    if-nez v1, :cond_0

    sget-object v1, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_smart_power_control:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v1}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ire;

    iput-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->igw:Lcom/android/server/ire;

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->igw:Lcom/android/server/ire;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/android/server/ire;->isSmartOptApp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->igw:Lcom/android/server/ire;

    invoke-virtual {p0, p1}, Lcom/android/server/ire;->isOptApp(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    return v3
.end method

.method r0(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->cjf:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->cjf:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->cjf:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public s(Ljava/io/PrintWriter;Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->zta:Lcom/android/server/am/OnePlusBGController;

    sget-object v0, Lcom/android/server/am/OnePlusBGController$PersistType;->zta:Lcom/android/server/am/OnePlusBGController$PersistType;

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/am/OnePlusBGController;->d0(Ljava/io/PrintWriter;Lcom/android/server/am/OnePlusBGController$PersistType;Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;)V

    return-void
.end method

.method s0(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ire:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ire:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ire:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public t(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->zta:Lcom/android/server/am/OnePlusBGController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OnePlusBGController;->Y(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method t0(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->gwm:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->gwm:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->gwm:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method u0(Lcom/android/server/am/ProcessRecord;I)Z
    .locals 6

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    if-lez p0, :cond_3

    move p0, v0

    :goto_0
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge p0, v1, :cond_3

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ContentProviderRecord;

    iget-object v1, v1, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ContentProviderConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v2, v2, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v3, v4, :cond_0

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v3, v4, :cond_1

    if-ne v3, v5, :cond_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[BgDetect] skip "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", bound by "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") state "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " level "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OHPD"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :catch_0
    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method v0(Lcom/android/server/am/ProcessRecord;)Z
    .locals 0

    iget p0, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 p1, 0x5

    if-eq p0, p1, :cond_1

    const/4 p1, 0x6

    if-eq p0, p1, :cond_1

    const/4 p1, 0x7

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method vdw(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ivd:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ivd:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->ivd:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public veq()V
    .locals 3

    :try_start_0
    sget-object p0, Lcom/android/server/am/OnePlusHighPowerDetector;->h2:Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    const v0, 0xd6dd

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/server/am/OnePlusHighPowerDetector;->h2:Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    sget-object p0, Lcom/android/server/am/OnePlusHighPowerDetector;->h2:Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->h2:Lcom/android/server/am/OnePlusHighPowerDetector$igw;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "OHPD"

    const-string v1, "Error when cancelBgDetectNotificationIfNeeded"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method vju(Lcom/android/server/am/ProcessRecord;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->q0(Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget p0, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 p1, 0x5

    if-eq p0, p1, :cond_0

    const/4 p1, 0x7

    if-eq p0, p1, :cond_0

    const/4 p1, 0x6

    if-eq p0, p1, :cond_0

    const/16 p1, 0xc

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public x(ZLcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[BgDetect] Update enableAggressive to : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->B0(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->tsu:Z

    iput-object p2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->rtg:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;

    iget-object p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->zta:Lcom/android/server/am/OnePlusBGController;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;->FULLY:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$RestrictType;

    if-ne p2, p1, :cond_0

    sget-object p1, Lcom/android/server/am/OnePlusBGController$NetType;->you:Lcom/android/server/am/OnePlusBGController$NetType;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/server/am/OnePlusBGController$NetType;->sis:Lcom/android/server/am/OnePlusBGController$NetType;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusBGController;->d1(Lcom/android/server/am/OnePlusBGController$NetType;)V

    return-void
.end method

.method public y()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->x:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->x:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->x:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;

    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->J:Ljava/util/ArrayList;

    iget v4, v2, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->you:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->K:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v2, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->you:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->zta:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->K:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->x:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

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
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->G:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->G:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->G:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;

    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->H:Ljava/util/ArrayList;

    iget v4, v2, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->you:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->I:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v2, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->you:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->zta:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->I:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->G:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget-boolean p0, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz p0, :cond_7

    const-string p0, "OHPD"

    const-string v0, "finishCpuStatistics"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method z0(I)V
    .locals 10

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->m2:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->bud:J

    sub-long v3, v1, v3

    sget-boolean v5, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v5, :cond_0

    const-string v5, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LightIdle] monitorCameraEnd(), monitorEndTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", uptimeSince="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-wide v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->bud:J

    const-wide/16 v5, -0x1

    cmp-long v1, v1, v5

    const-wide/16 v5, 0x0

    if-eqz v1, :cond_5

    cmp-long v1, v3, v5

    if-gtz v1, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vju:Lcom/android/server/am/OnePlusHighPowerDetector$ssp;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->f2:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    iget-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vju:Lcom/android/server/am/OnePlusHighPowerDetector$ssp;

    iget v2, v2, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->you:I

    invoke-virtual {v1, v2}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuTimeForPid(I)J

    move-result-wide v1

    sget-boolean v7, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz v7, :cond_2

    const-string v7, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[LightIdle] End cpuTime="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vju:Lcom/android/server/am/OnePlusHighPowerDetector$ssp;

    iput-wide v1, v7, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->cno:J

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vju:Lcom/android/server/am/OnePlusHighPowerDetector$ssp;

    iget-object v1, v1, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->kth:[J

    aget-wide v1, v1, p1

    cmp-long v1, v1, v5

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vju:Lcom/android/server/am/OnePlusHighPowerDetector$ssp;

    iget-wide v1, v1, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->cno:J

    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->vju:Lcom/android/server/am/OnePlusHighPowerDetector$ssp;

    iget-object v5, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->kth:[J

    aget-wide v5, v5, p1

    sub-long/2addr v1, v5

    const-wide/16 v5, 0x64

    mul-long/2addr v5, v1

    div-long/2addr v5, v3

    iput-wide v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->veq:J

    sget-boolean p1, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz p1, :cond_4

    const-string p1, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LightIdle] cputimeUsed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mLastCameraProcUsage="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->veq:J

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " %"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iput-wide v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->veq:J

    :cond_4
    :goto_0
    monitor-exit v0

    return-void

    :cond_5
    :goto_1
    sget-boolean p1, Lcom/android/server/am/OnePlusHighPowerDetector;->V:Z

    if-eqz p1, :cond_6

    const-string p1, "OHPD"

    const-string v1, "[LightIdle] skip this round monitoring"

    invoke-static {p1, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iput-wide v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->veq:J

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
