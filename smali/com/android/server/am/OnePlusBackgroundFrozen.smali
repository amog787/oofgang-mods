.class public Lcom/android/server/am/OnePlusBackgroundFrozen;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/OnePlusUtil$you$you;
.implements Lcom/android/server/OnePlusUtil$zta$you;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OnePlusBackgroundFrozen$bio;,
        Lcom/android/server/am/OnePlusBackgroundFrozen$dma;,
        Lcom/android/server/am/OnePlusBackgroundFrozen$kth;,
        Lcom/android/server/am/OnePlusBackgroundFrozen$wtn;,
        Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;,
        Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;,
        Lcom/android/server/am/OnePlusBackgroundFrozen$gck;,
        Lcom/android/server/am/OnePlusBackgroundFrozen$ywr;,
        Lcom/android/server/am/OnePlusBackgroundFrozen$cno;,
        Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;,
        Lcom/android/server/am/OnePlusBackgroundFrozen$igw;,
        Lcom/android/server/am/OnePlusBackgroundFrozen$rtg;
    }
.end annotation


# static fields
.field private static final A:Ljava/lang/String; = "persist.sys.opbf.limit_sc_wifilock"

.field private static A0:Z = false

.field public static final A1:Ljava/lang/String; = "TransBinder"

.field private static final B:Ljava/lang/String; = "persist.sys.opbf.uid_state_cut"

.field private static B0:Z = false

.field public static final B1:Ljava/lang/String; = "Packet"

.field private static final C:Ljava/lang/String; = ""

.field private static C0:Z = false

.field private static final C1:I = 0x1

.field private static final D:Ljava/lang/String; = "com.OPBF.action.debug"

.field private static D0:Z = false

.field private static final D1:I = 0x2

.field private static final E:Ljava/lang/String; = "com.OPBF.action.debug_freezeall"

.field private static final E0:Ljava/lang/String; = "net.oneplus.provider.appcategoryprovider.AppCategoryContentProvider"

.field private static final E1:I = 0x3

.field private static final F:Ljava/lang/String; = "com.OPBF.action.debug_thawedall"

.field private static final F0:Landroid/net/Uri;

.field private static final F1:I = 0x4

.field private static final G:Ljava/lang/String; = "/dev/op_cgroup/freezer/"

.field private static G0:Lcom/android/server/am/OnePlusBackgroundFrozen; = null

.field private static final G1:I = 0x5

.field private static final H:Ljava/lang/String; = "THAWED"

.field private static H0:Landroid/os/Handler; = null

.field private static final H1:I = 0x6

.field private static final I:Ljava/lang/String; = "FROZEN"

.field private static I0:Landroid/os/HandlerThread; = null

.field private static final I1:I = 0x7

.field private static final J:Ljava/lang/String; = "deviceidle"

.field private static J0:Landroid/os/Handler; = null

.field private static final J1:I = 0x8

.field private static final K:Ljava/lang/String; = "pkg.xml"

.field private static K0:Landroid/os/HandlerThread; = null

.field private static final K1:I = 0x9

.field private static final L:Ljava/lang/String; = "cfg.xml"

.field public static L0:Z = false

.field private static final L1:I = 0xa

.field private static final M:Ljava/lang/String; = "bpm_sts.xml"

.field private static M0:I = 0x0

.field private static final M1:I = 0xb

.field private static final N:Ljava/lang/String; = "/data/system/data_bpm/"

.field private static N0:I = 0x0

.field private static final N1:I = 0xc

.field private static final O:Ljava/lang/String; = "/system/bpm/pkg.xml"

.field private static O0:Landroid/util/SparseArray; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/display/IDisplayManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final O1:I = 0xd

.field private static final P:Ljava/lang/String; = "/system/bpm/bpm_sts.xml"

.field private static P0:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final P1:I = 0xe

.field private static final Q:Ljava/lang/String; = "/data/system/data_bpm/pkg.xml"

.field private static final Q0:I = 0x1

.field private static final Q1:I = 0xf

.field private static final R:Ljava/lang/String; = "/data/system/data_bpm/bpm_sts.xml"

.field private static final R0:I = 0x2

.field private static final R1:I = 0x10

.field private static final S:Ljava/lang/String; = "/data/system/data_bpm/cfg.xml"

.field private static final S0:I = 0x3

.field private static final S1:I = 0x11

.field private static final T:Ljava/lang/String; = "oneplus_opbf_switch"

.field private static final T0:J = 0x5a0L

.field private static final T1:I = 0x12

.field private static final U:Ljava/lang/String; = "com.android.tradefed.utils.wifi"

.field private static final U0:I = 0x0

.field private static final U1:I = 0x13

.field private static final V:Ljava/lang/String;

.field private static final V0:I = 0x1

.field private static final V1:I = 0x14

.field private static W:Z = false

.field private static final W0:I = 0x2

.field private static final W1:I = 0x15

.field private static final X:I = 0x13297e5

.field public static final X0:J = 0x1L

.field private static final X1:I = 0x16

.field private static final Y:I = 0x1

.field public static final Y0:J = 0x2L

.field private static final Y1:I = 0x1

.field private static final Z:I = 0x2

.field public static final Z0:J = 0x4L

.field private static final Z1:I = 0x2

.field private static final a0:I = 0x3

.field public static final a1:J = 0x8L

.field private static final a2:I = 0x3

.field private static final b0:I = 0x4

.field public static final b1:J = 0x10L

.field private static final b2:I = 0x4

.field private static final c0:I = -0x1

.field public static final c1:J = 0x20L

.field private static final c2:I = 0x0

.field private static final d0:I = -0x2

.field public static final d1:J = 0x40L

.field private static final d2:I = 0x55d4a80

.field private static final e0:I = 0x7530

.field public static final e1:J = 0x80L

.field private static final e2:I = 0x5f5e100

.field private static final f0:I = 0x3a98

.field public static final f1:J = 0x100L

.field private static final f2:I = 0x2710

.field private static g0:I = 0x0

.field public static final g1:J = 0x200L

.field public static final g2:I = 0x0

.field private static h0:I = 0x0

.field public static final h1:J = 0x400L

.field public static final h2:I = 0x2328

.field private static i0:I = 0x0

.field public static final i1:J = 0x800L

.field public static final i2:I = 0x238c

.field private static j0:J = 0x0L

.field public static final j1:J = 0x1000L

.field public static final j2:I = 0x23f0

.field private static k0:J = 0x0L

.field public static final k1:J = 0x2000L

.field public static final k2:I = 0x2422

.field private static final l:Ljava/lang/String; = "OPBF"

.field private static l0:J = 0x0L

.field public static final l1:J = 0x4000L

.field public static final l2:I = 0x2454

.field private static final m:Ljava/lang/String; = "ProcessFreezer"

.field private static m0:Z = false

.field public static final m1:J = 0x8000L

.field public static final m2:I = 0x24b8

.field private static final n:Ljava/lang/String; = "persist.sys.opbf.debug_log"

.field private static n0:Z = false

.field public static final n1:J = 0x10000L

.field public static final n2:I = 0x251c

.field private static final o:Ljava/lang/String; = "persist.sys.opbf.debug_detail"

.field private static o0:Z = false

.field public static final o1:J = 0x20000L

.field public static final o2:I = 0x2580

.field private static final p:Ljava/lang/String; = "persist.sys.opbf.debug_loglevel"

.field private static p0:Z = false

.field private static final p1:J = 0x1L

.field public static final p2:I = 0x25e4

.field private static final q:Ljava/lang/String; = "persist.sys.opbf.topsize"

.field private static q0:Z = false

.field private static final q1:I = 0x1

.field public static final q2:I = 0x2648

.field private static final r:Ljava/lang/String; = "persist.sys.opbf.debug_frozenhistory"

.field private static r0:Z = false

.field private static final r1:I = 0x2

.field public static final r2:I = 0x26ac

.field private static final s:Ljava/lang/String; = "persist.sys.opbf.recordreason"

.field private static s0:Z = false

.field private static final s1:I = 0x3

.field public static final s2:I = 0x2710

.field private static final t:Ljava/lang/String; = "persist.sys.opbf.enable"

.field private static t0:Z = false

.field private static final t1:I = 0x4

.field private static t2:I = 0x0

.field private static final u:Ljava/lang/String; = "persist.sys.opbf.nativenable"

.field private static u0:Z = false

.field private static final u1:[J

.field private static final u2:Ljava/lang/String; = "persist.sys.opbf.res_stop_service"

.field private static final v:Ljava/lang/String; = "persist.sys.opbf.res_async"

.field private static v0:Z = false

.field private static final v1:J

.field private static v2:Z = false

.field private static final w:Ljava/lang/String; = "persist.sys.opbf.enable_packet"

.field private static w0:Z = false

.field public static final w1:Ljava/lang/String; = "Default"

.field private static w2:Landroid/util/SparseArray; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final x:Ljava/lang/String; = "persist.sys.opbf.debug_kernelthaw"

.field private static x0:Z = false

.field public static final x1:Ljava/lang/String; = "AsyncBinder"

.field private static x2:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final y:Ljava/lang/String; = "persist.sys.opbf.wifilock_enable"

.field private static y0:Z = false

.field public static final y1:Ljava/lang/String; = "SyncBinder"

.field private static final z:Ljava/lang/String; = "persist.sys.opbf.limit_fg_service"

.field private static z0:Z = false

.field public static final z1:Ljava/lang/String; = "Signal"


# instance fields
.field private a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private bio:Lcom/android/server/am/OnePlusBackgroundFrozen$wtn;

.field private bud:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bvj:Lcom/android/server/am/OnePlusBackgroundFrozen$bio;

.field private c:Lcom/android/server/am/OnePlusBackgroundFrozen$rtg;

.field private cgv:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cjf:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private cno:Landroid/os/PowerManager$WakeLock;

.field private final d:Landroid/content/BroadcastReceiver;

.field private dma:Landroid/os/IDeviceIdleController;

.field private final e:Landroid/content/BroadcastReceiver;

.field private ear:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/content/BroadcastReceiver;

.field private fto:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Landroid/content/BroadcastReceiver;

.field private gck:Landroid/util/AtomicFile;

.field private gwm:Ljava/lang/Object;

.field private h:Landroid/app/IUidObserver;

.field private hmo:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/app/IProcessObserver;

.field private ibl:Z

.field private igw:Ljava/text/SimpleDateFormat;

.field private ire:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private irq:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ivd:I

.field private j:Ljava/lang/reflect/Method;

.field private k:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private kth:Landroid/content/ContentResolver;

.field private les:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lqr:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private obl:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private oif:Landroid/os/UserManager;

.field private oxb:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private qbh:Landroid/net/wifi/WifiManager;

.field private qeg:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private rtg:Lcom/android/server/ire;

.field private sis:Landroid/content/pm/PackageManager;

.field private ssp:Lcom/oneplus/config/ConfigObserver;

.field private tsu:Landroid/os/PowerManager;

.field private ugm:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;",
            ">;"
        }
    .end annotation
.end field

.field private vdb:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private vdw:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private veq:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private vju:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private wtn:Lcom/android/server/am/OnePlusBackgroundFrozen$ywr;

.field private you:Lcom/android/server/am/ActivityManagerService;

.field private ywr:Landroid/app/usage/IUsageStatsManager;

.field private zgw:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/OnePlusBackgroundFrozen$gck;",
            ">;"
        }
    .end annotation
.end field

.field private zta:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->V:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    xor-int/2addr v1, v0

    sput-boolean v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->W:Z

    sput v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->g0:I

    const-string v1, "persist.sys.opbf.debug_loglevel"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->h0:I

    sget-boolean v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->W:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    :goto_0
    const-string v3, "persist.sys.opbf.uid_state_cut"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->i0:I

    const-wide/32 v3, 0xafc8

    sput-wide v3, Lcom/android/server/am/OnePlusBackgroundFrozen;->j0:J

    const-wide/16 v3, 0x3a98

    sput-wide v3, Lcom/android/server/am/OnePlusBackgroundFrozen;->k0:J

    sput-wide v3, Lcom/android/server/am/OnePlusBackgroundFrozen;->l0:J

    sput-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->m0:Z

    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->n0:Z

    const-string v1, "persist.sys.opbf.debug_log"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->o0:Z

    const-string v1, "persist.sys.opbf.debug_detail"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->p0:Z

    const-string v1, "persist.sys.opbf.recordreason"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->q0:Z

    const-string v1, "persist.sys.opbf.debug_frozenhistory"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->r0:Z

    const-string v1, "persist.sys.opbf.nativenable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->s0:Z

    const-string v1, "persist.sys.opbf.res_async"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->t0:Z

    const-string v1, "persist.sys.opbf.enable_packet"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->u0:Z

    const-string v1, "persist.sys.opbf.debug_kernelthaw"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->v0:Z

    sput-boolean v2, Lcom/android/server/am/OnePlusBackgroundFrozen;->w0:Z

    sput-boolean v2, Lcom/android/server/am/OnePlusBackgroundFrozen;->x0:Z

    sput-boolean v2, Lcom/android/server/am/OnePlusBackgroundFrozen;->y0:Z

    const-string v1, "persist.sys.opbf.enable"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->z0:Z

    const-string v1, "persist.sys.opbf.wifilock_enable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->A0:Z

    sget-boolean v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->W:Z

    const-string v3, "persist.sys.opbf.limit_fg_service"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->B0:Z

    const-string v1, "persist.sys.opbf.limit_sc_wifilock"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->C0:Z

    sput-boolean v2, Lcom/android/server/am/OnePlusBackgroundFrozen;->D0:Z

    const-string v1, "content://net.oneplus.provider.appcategoryprovider.AppCategoryContentProvider/app_category"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->F0:Landroid/net/Uri;

    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    sput-object v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->H0:Landroid/os/Handler;

    sput-object v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->I0:Landroid/os/HandlerThread;

    sput-object v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->J0:Landroid/os/Handler;

    sput-object v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->K0:Landroid/os/HandlerThread;

    new-array v1, v0, [I

    const/16 v3, 0x4e

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->L0:Z

    const/4 v1, -0x1

    sput v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->M0:I

    sput v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->N0:I

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->O0:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->P0:Ljava/util/HashMap;

    const/16 v1, 0xb

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->u1:[J

    invoke-static {v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->i2([J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->v1:J

    const/16 v1, 0xa

    sput v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->t2:I

    const-string v1, "persist.sys.opbf.res_stop_service"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->v2:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->w2:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->x2:Ljava/util/HashMap;

    return-void

    nop

    :array_0
    .array-data 8
        0x1
        0x2
        0x8
        0x10
        0x80
        0x2000
        0x4000
        0x8000
        0x10000
        0x100
        0x20000
    .end array-data
.end method

.method protected constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->zta:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->you:Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->sis:Landroid/content/pm/PackageManager;

    iput-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->tsu:Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->rtg:Lcom/android/server/ire;

    iput-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->ssp:Lcom/oneplus/config/ConfigObserver;

    iput-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->cno:Landroid/os/PowerManager$WakeLock;

    iput-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->kth:Landroid/content/ContentResolver;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->igw:Ljava/text/SimpleDateFormat;

    iput-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->wtn:Lcom/android/server/am/OnePlusBackgroundFrozen$ywr;

    iput-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->gck:Landroid/util/AtomicFile;

    iput-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->dma:Landroid/os/IDeviceIdleController;

    iput-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->ywr:Landroid/app/usage/IUsageStatsManager;

    iput-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->qbh:Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->oif:Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->bvj:Lcom/android/server/am/OnePlusBackgroundFrozen$bio;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->ibl:Z

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->gwm:Ljava/lang/Object;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->ugm:Landroid/util/SparseArray;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vdb:Landroid/util/SparseArray;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->zgw:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->obl:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->oxb:Ljava/util/HashSet;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->cjf:Ljava/util/HashSet;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->ear:Ljava/util/HashSet;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->ire:Ljava/util/HashSet;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->hmo:Ljava/util/HashSet;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->fto:Ljava/util/HashSet;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->lqr:Ljava/util/HashSet;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->veq:Ljava/util/HashSet;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->cgv:Ljava/util/HashSet;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vju:Ljava/util/HashSet;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->bud:Ljava/util/HashSet;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->les:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->irq:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vdw:Ljava/util/HashSet;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->qeg:Ljava/util/HashSet;

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->ivd:I

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->a:Ljava/util/HashSet;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->b:Ljava/util/HashSet;

    new-instance v3, Lcom/android/server/am/OnePlusBackgroundFrozen$rtg;

    invoke-direct {v3, p0, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen$rtg;-><init>(Lcom/android/server/am/OnePlusBackgroundFrozen;Lcom/android/server/am/OnePlusBackgroundFrozen$zta;)V

    iput-object v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->c:Lcom/android/server/am/OnePlusBackgroundFrozen$rtg;

    new-instance v3, Lcom/android/server/am/OnePlusBackgroundFrozen$zta;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$zta;-><init>(Lcom/android/server/am/OnePlusBackgroundFrozen;)V

    iput-object v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->d:Landroid/content/BroadcastReceiver;

    new-instance v3, Lcom/android/server/am/OnePlusBackgroundFrozen$you;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$you;-><init>(Lcom/android/server/am/OnePlusBackgroundFrozen;)V

    iput-object v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->e:Landroid/content/BroadcastReceiver;

    new-instance v3, Lcom/android/server/am/OnePlusBackgroundFrozen$sis;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$sis;-><init>(Lcom/android/server/am/OnePlusBackgroundFrozen;)V

    iput-object v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->f:Landroid/content/BroadcastReceiver;

    new-instance v3, Lcom/android/server/am/OnePlusBackgroundFrozen$tsu;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$tsu;-><init>(Lcom/android/server/am/OnePlusBackgroundFrozen;)V

    iput-object v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->g:Landroid/content/BroadcastReceiver;

    new-instance v3, Lcom/android/server/am/OnePlusBackgroundFrozen$5;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$5;-><init>(Lcom/android/server/am/OnePlusBackgroundFrozen;)V

    iput-object v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->h:Landroid/app/IUidObserver;

    new-instance v3, Lcom/android/server/am/OnePlusBackgroundFrozen$6;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$6;-><init>(Lcom/android/server/am/OnePlusBackgroundFrozen;)V

    iput-object v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->i:Landroid/app/IProcessObserver;

    iput-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->j:Ljava/lang/reflect/Method;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->k:Ljava/util/HashSet;

    const-string v3, "OnePlusBackgroundFrozen--constructor:20092901"

    invoke-static {v1, v3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->you:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->zta:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->sis:Landroid/content/pm/PackageManager;

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->zta:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->tsu:Landroid/os/PowerManager;

    const-string v3, "freezeAction"

    invoke-virtual {p1, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->cno:Landroid/os/PowerManager$WakeLock;

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->zta:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->qbh:Landroid/net/wifi/WifiManager;

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->zta:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->oif:Landroid/os/UserManager;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v1, "OPBF_GeneralThread"

    invoke-direct {p1, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object p1, Lcom/android/server/am/OnePlusBackgroundFrozen;->I0:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Lcom/android/server/am/OnePlusBackgroundFrozen$kth;

    sget-object v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->I0:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, p0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen$kth;-><init>(Lcom/android/server/am/OnePlusBackgroundFrozen;Landroid/os/Looper;)V

    sput-object p1, Lcom/android/server/am/OnePlusBackgroundFrozen;->H0:Landroid/os/Handler;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v1, "OPBF_TimeoutThread"

    invoke-direct {p1, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object p1, Lcom/android/server/am/OnePlusBackgroundFrozen;->K0:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Lcom/android/server/am/OnePlusBackgroundFrozen$dma;

    sget-object v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->K0:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, p0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen$dma;-><init>(Lcom/android/server/am/OnePlusBackgroundFrozen;Landroid/os/Looper;)V

    sput-object p1, Lcom/android/server/am/OnePlusBackgroundFrozen;->J0:Landroid/os/Handler;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.OPBF.action.debug"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.OPBF.action.debug_freezeall"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.OPBF.action.debug_thawedall"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->zta:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->f:Landroid/content/BroadcastReceiver;

    sget-object v4, Lcom/android/server/am/OnePlusBackgroundFrozen;->H0:Landroid/os/Handler;

    invoke-virtual {v1, v3, p1, v0, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->zta:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->zta:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->zta:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->kth:Landroid/content/ContentResolver;

    new-instance p1, Lcom/android/server/am/OnePlusBackgroundFrozen$wtn;

    sget-object v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->H0:Landroid/os/Handler;

    invoke-direct {p1, p0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen$wtn;-><init>(Lcom/android/server/am/OnePlusBackgroundFrozen;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->bio:Lcom/android/server/am/OnePlusBackgroundFrozen$wtn;

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->you:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->h:Landroid/app/IUidObserver;

    const/16 v3, 0xf

    invoke-virtual {p1, v1, v3, v2, v0}, Lcom/android/server/am/ActivityManagerService;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->you:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->i:Landroid/app/IProcessObserver;

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityManagerService;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    const-string p1, "usagestats"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->ywr:Landroid/app/usage/IUsageStatsManager;

    const-string p1, "deviceidle"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->dma:Landroid/os/IDeviceIdleController;

    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "smart_power_control_changed"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->zta:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->tsu:Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->I3(Z)V

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->rtg()Lcom/android/server/OnePlusUtil$zta;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/OnePlusUtil$zta;->bio(Lcom/android/server/OnePlusUtil$zta$you;)V

    invoke-static {}, Lcom/android/server/OnePlusUtil$you;->tsu()Lcom/android/server/OnePlusUtil$you;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/OnePlusUtil$you;->dma(Lcom/android/server/OnePlusUtil$you$you;)V

    new-instance p1, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;

    invoke-direct {p1, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;-><init>(Lcom/android/server/am/OnePlusBackgroundFrozen;)V

    iput-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->bvj:Lcom/android/server/am/OnePlusBackgroundFrozen$bio;

    sput-object p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d2()V

    sget-object p1, Lcom/android/server/am/AppRecordManager$ListenerType;->kth:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->c:Lcom/android/server/am/OnePlusBackgroundFrozen$rtg;

    invoke-static {p1, v0}, Lcom/android/server/am/AppRecordManager;->vdb(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    sget-object p1, Lcom/android/server/am/AppRecordManager$ListenerType;->bio:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->c:Lcom/android/server/am/OnePlusBackgroundFrozen$rtg;

    invoke-static {p1, v0}, Lcom/android/server/am/AppRecordManager;->vdb(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    sget-object p1, Lcom/android/server/am/AppRecordManager$ListenerType;->you:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->c:Lcom/android/server/am/OnePlusBackgroundFrozen$rtg;

    invoke-static {p1, v0}, Lcom/android/server/am/AppRecordManager;->vdb(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    sget-object p1, Lcom/android/server/am/AppRecordManager$ListenerType;->sis:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->c:Lcom/android/server/am/OnePlusBackgroundFrozen$rtg;

    invoke-static {p1, v0}, Lcom/android/server/am/AppRecordManager;->vdb(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    sget-object p1, Lcom/android/server/am/AppRecordManager$ListenerType;->obl:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->c:Lcom/android/server/am/OnePlusBackgroundFrozen$rtg;

    invoke-static {p1, p0}, Lcom/android/server/am/AppRecordManager;->vdb(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    return-void
.end method

.method static synthetic A(Lcom/android/server/am/OnePlusBackgroundFrozen;)Ljava/text/SimpleDateFormat;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->igw:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method private A0(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    const-string p0, " cause by uid/pid:"

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " for "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private A1(II)V
    .locals 2

    invoke-static {p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r2(I)Z

    move-result v0

    const-string v1, "connection remove"

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r1(I)Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0, v1, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->oxb(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->q1(I)Lcom/android/server/am/OnePlusBackgroundFrozen$gck;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0, v1, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$gck;->zta(Lcom/android/server/am/OnePlusBackgroundFrozen$gck;Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static A2(I)Z
    .locals 2

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->z0:Z

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r2(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r1(I)Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->o(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;)Z

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method public static A3(IZ)V
    .locals 3

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r2(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event sensorEvent uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |hold:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->Q1(IZ)V

    :cond_1
    return-void
.end method

.method static synthetic B(Lcom/android/server/am/OnePlusBackgroundFrozen;I)Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r1(I)Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    move-result-object p0

    return-object p0
.end method

.method public static B0(IILandroid/hardware/display/IDisplayManagerCallback;)V
    .locals 4

    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r2(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->O0:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, 0x4

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event addDisplayCallback uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " pid:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    sget-object p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->O0:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method private B1(IZ)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r1(I)Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->oif(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;Z)V

    :cond_0
    return-void
.end method

.method public static B2(I)Z
    .locals 2

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->z0:Z

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r2(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r1(I)Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->k(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;)Z

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method public static B3(IILjava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->s2()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->A2(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# TIMEOUT # SERVICE_TIMEOUT uid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " reason:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->b1(IZ)V

    :cond_1
    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r2(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event serviceTimeoutEvent uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " |pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " |reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-direct {v0, p0, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->V1(ILjava/lang/String;)V

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->z1(IIZLjava/lang/String;)V

    :cond_2
    return-void
.end method

.method static synthetic C(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->A0(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static C0(IILcom/android/server/am/ProcessRecord;)V
    .locals 3

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->Y3(IIZ)V

    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r2(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event addProc uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->x1(IILcom/android/server/am/ProcessRecord;)V

    :cond_1
    return-void
.end method

.method private C1(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDelayFreeze uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->zta:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |reason:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    invoke-static {v2, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleDelayFreeze "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->les(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    const-string v0, "deepJudgment"

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->N3(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->irq(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;)I

    move-result v0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->O3()V

    if-ne v0, v3, :cond_0

    iget v0, p1, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->zta:I

    invoke-direct {p0, v0, v3, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->V2(IZLjava/lang/String;)V

    const/4 p0, -0x2

    const-string p2, "uid frozen"

    invoke-static {p1, p2, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->oxb(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    if-ne v0, v2, :cond_1

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->zta:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " makeDeepJudgment exception, retry check"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    invoke-static {p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->q(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p1, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->zta:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " can not freeze for deepBlockPoint:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->gwm:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static C2(I)Z
    .locals 2

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->fto:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    iget-object v1, v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->fto:Ljava/util/HashSet;

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

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

.method private C3(ILjava/lang/String;Z)V
    .locals 5

    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->u0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->t2(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->oxb:Ljava/util/HashSet;

    monitor-enter v1

    const/4 v2, 0x1

    if-eqz p3, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->oxb:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->oxb:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->oxb:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->oxb:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    move v0, v2

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    const-string p0, ""

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {p2, p3, v2}, Lcom/android/server/OpAlarmAlignmentInjector;->setBlockAlarmUid(Ljava/lang/String;ZI)V

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static synthetic D(Lcom/android/server/am/OnePlusBackgroundFrozen;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->u1(I)Z

    move-result p0

    return p0
.end method

.method public static D0(IZ)V
    .locals 3

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r2(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event audioEvent uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |hold:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->y1(IZ)V

    :cond_1
    return-void
.end method

.method private D1()V
    .locals 4

    const/4 v0, 0x2

    const-string v1, "handleDisable"

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->z0:Z

    const-string v2, "persist.sys.opbf.enable"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->h1()Ljava/util/HashSet;

    move-result-object v2

    if-nez v2, :cond_0

    const-string p0, "handleDisable allCache = null, return"

    invoke-static {v0, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->o(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "function disable"

    invoke-direct {p0, v2, v1, v3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->W2(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;ZLjava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static D2(I)Z
    .locals 4

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->lqr:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    sget-object v2, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    iget-object v2, v2, Lcom/android/server/am/OnePlusBackgroundFrozen;->lqr:Ljava/util/HashSet;

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v0

    return v1

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->m1(I)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    iget-object v1, v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->veq:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_1
    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    iget-object v0, v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->veq:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v1

    return p0

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

.method private D3(IZLjava/lang/String;)V
    .locals 5

    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->A0:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->ear:Ljava/util/HashSet;

    monitor-enter v1

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->ear:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->ear:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->ear:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->ear:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    move v0, v2

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBlockWIFILockUid uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " block:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->H3(IZ)V

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static synthetic E()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->q0:Z

    return v0
.end method

.method public static E0(Lcom/android/server/am/ProcessRecord;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private E1()V
    .locals 3

    const/4 v0, 0x2

    const-string v1, "handleEnable"

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->z0:Z

    const-string v1, "persist.sys.opbf.enable"

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->h1()Ljava/util/HashSet;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "handleEnable allCache = null, return"

    invoke-static {v0, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    const-string v1, "function enable"

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->q(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static E2(Ljava/lang/String;)Z
    .locals 4

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->n1(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    sget-object v2, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    iget-object v2, v2, Lcom/android/server/am/OnePlusBackgroundFrozen;->lqr:Ljava/util/HashSet;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    iget-object v3, v3, Lcom/android/server/am/OnePlusBackgroundFrozen;->lqr:Ljava/util/HashSet;

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    monitor-exit v2

    return v1

    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    iget-object v0, v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->veq:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_1
    sget-object v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    iget-object v1, v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->veq:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method private E3(IZ)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->cjf:Ljava/util/HashSet;

    monitor-enter v0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->cjf:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->cjf:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->cjf:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->cjf:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    :try_start_1
    invoke-static {p1, p2}, Lcom/android/server/power/OpPowerManagerInjector;->updateBlockedUids(IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setBlockWakeLockUid uid:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " Exception:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OPBF"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method static synthetic F()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->y0:Z

    return v0
.end method

.method public static F0(IILandroid/content/Intent;)V
    .locals 4

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p2, ""

    :goto_0
    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->s2()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->A2(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# TIMEOUT # BROADCAST_TIMEOUT uid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " action:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->b1(IZ)V

    :cond_2
    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r2(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event broadcastTimeoutEvent uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " |pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " |action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "perform broadcast timeout for action = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-direct {v0, p0, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->V1(ILjava/lang/String;)V

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->O1(IIZLjava/lang/String;)V

    :cond_3
    return-void
.end method

.method private F1(II)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r1(I)Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->bvj(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;Z)V

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r1(I)Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->bvj(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;Z)V

    :cond_1
    return-void
.end method

.method private F2(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->hmo:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->hmo:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

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

.method private F3(ILjava/lang/String;ZLjava/lang/String;)V
    .locals 7

    const-string p0, "setCGroupState Exception: --> toFreezeUid:"

    const-string v0, "OPBF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCGroupState uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " |tofreeze:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    invoke-static {v3, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/dev/op_cgroup/freezer/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/freezer.state"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    :cond_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x1

    if-eqz p3, :cond_3

    :try_start_1
    sget-boolean v3, Lcom/android/server/am/OnePlusBackgroundFrozen;->s0:Z

    if-nez v3, :cond_2

    invoke-static {p1, v1}, Landroid/os/Binder;->setBlockUid(IZ)V

    :cond_2
    const-string v3, "FROZEN"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_0

    :cond_3
    sget-boolean v3, Lcom/android/server/am/OnePlusBackgroundFrozen;->s0:Z

    if-nez v3, :cond_4

    const/4 v3, 0x0

    invoke-static {p1, v3}, Landroid/os/Binder;->setBlockUid(IZ)V

    :cond_4
    const-string v3, "THAWED"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write([B)V

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCGroupState():tofreeze="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", uid:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " pkg:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " --->>> ok reason:"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v1, v4

    goto :goto_4

    :catch_1
    move-exception p2

    move-object v1, v4

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p2

    :goto_1
    :try_start_3
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " tofreeze:"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " Exception:"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_5

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_3
    return-void

    :goto_4
    if-eqz v1, :cond_6

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_5
    throw p1
.end method

.method static synthetic G(Lcom/android/server/am/OnePlusBackgroundFrozen;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->I3(Z)V

    return-void
.end method

.method public static G0(IIZLjava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r2(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event bumpServiceEvent uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |done:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " |reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->z1(IIZLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private G1(IZ)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r1(I)Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->ear(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;Z)V

    :cond_0
    return-void
.end method

.method public static G2(I)Z
    .locals 2

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r1(I)Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    new-array v0, v1, [J

    invoke-static {p0, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->j(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;[J)Z

    move-result p0

    return p0
.end method

.method private G3(IJJJ)V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# setFlag # uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " flag1:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " flag2:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4, p5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " flag3:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r1(I)Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    move-result-object v3

    if-eqz v3, :cond_0

    move-wide v4, p2

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-static/range {v3 .. v9}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->n(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;JJJ)V

    :cond_0
    return-void
.end method

.method static synthetic H()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->r0:Z

    return v0
.end method

.method private H0([I)Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private H1(IZILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r1(I)Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p2, p3, p4}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->cgv(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;ZILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static varargs H2(I[J)Z
    .locals 2

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r1(I)Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    invoke-static {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->j(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;[J)Z

    move-result p0

    return p0
.end method

.method private H3(IZ)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->qbh:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->zta:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->qbh:Landroid/net/wifi/WifiManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->j:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->v1()V

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->j:Ljava/lang/reflect/Method;

    const-string v1, "OPBF"

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->qbh:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_2

    const/4 p0, 0x2

    :try_start_0
    new-array p0, p0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v3

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, p0, p1

    invoke-virtual {v0, v2, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "exception happened: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "exception for wifiManagerMethod:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->j:Ljava/lang/reflect/Method;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " mWifiManager:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->qbh:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic I(Lcom/android/server/am/OnePlusBackgroundFrozen;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->F2(I)Z

    move-result p0

    return p0
.end method

.method public static I0(III)V
    .locals 0

    sget-object p1, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 p1, 0x2328

    if-eq p0, p1, :cond_1

    const/16 p1, 0x238c

    if-eq p0, p1, :cond_1

    const/16 p1, 0x23f0

    if-eq p0, p1, :cond_1

    const/16 p1, 0x2422

    if-eq p0, p1, :cond_1

    const/16 p1, 0x2454

    if-eq p0, p1, :cond_1

    const/16 p1, 0x24b8

    if-eq p0, p1, :cond_1

    const/16 p1, 0x251c

    if-eq p0, p1, :cond_1

    const/16 p1, 0x2580

    if-eq p0, p1, :cond_1

    const/16 p1, 0x25e4

    if-eq p0, p1, :cond_1

    const/16 p1, 0x2710

    if-eq p0, p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->J0:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    :goto_0
    return-void
.end method

.method private I1(Ljava/util/HashSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->hmo:Ljava/util/HashSet;

    monitor-enter v0

    const/4 v1, 0x4

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleImportantUidChange newSet:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " |oldSet:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->hmo:Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->hmo:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->hmo:Ljava/util/HashSet;

    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, v2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->Q0(Ljava/util/HashSet;Ljava/util/HashSet;I)V

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->hmo:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->hmo:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

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

.method private I2(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vdb:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, 0x2

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isolateProcessStart uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " boundUid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vdb:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private I3(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->gwm:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->ibl:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->A0:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->C0:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r3(Z)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static synthetic J(Lcom/android/server/am/OnePlusBackgroundFrozen;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->ire:Ljava/util/HashSet;

    return-object p0
.end method

.method public static J0(I)V
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sparse-switch p0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    sget-object p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->J0:Landroid/os/Handler;

    const/16 v0, 0x2710

    goto :goto_0

    :sswitch_1
    sget-object p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->J0:Landroid/os/Handler;

    const/16 v0, 0x26ac

    goto :goto_0

    :sswitch_2
    sget-object p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->J0:Landroid/os/Handler;

    const/16 v0, 0x2648

    goto :goto_0

    :sswitch_3
    sget-object p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->J0:Landroid/os/Handler;

    const/16 v0, 0x25e4

    goto :goto_0

    :sswitch_4
    sget-object p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->J0:Landroid/os/Handler;

    const/16 v0, 0x2580

    goto :goto_0

    :sswitch_5
    sget-object p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->J0:Landroid/os/Handler;

    const/16 v0, 0x251c

    goto :goto_0

    :sswitch_6
    sget-object p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->J0:Landroid/os/Handler;

    const/16 v0, 0x24b8

    goto :goto_0

    :sswitch_7
    sget-object p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->J0:Landroid/os/Handler;

    const/16 v0, 0x2454

    goto :goto_0

    :sswitch_8
    sget-object p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->J0:Landroid/os/Handler;

    const/16 v0, 0x2422

    goto :goto_0

    :sswitch_9
    sget-object p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->J0:Landroid/os/Handler;

    const/16 v0, 0x23f0

    goto :goto_0

    :sswitch_a
    sget-object p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->J0:Landroid/os/Handler;

    const/16 v0, 0x238c

    goto :goto_0

    :sswitch_b
    sget-object p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->J0:Landroid/os/Handler;

    const/16 v0, 0x2328

    :goto_0
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x2328 -> :sswitch_b
        0x238c -> :sswitch_a
        0x23f0 -> :sswitch_9
        0x2422 -> :sswitch_8
        0x2454 -> :sswitch_7
        0x24b8 -> :sswitch_6
        0x251c -> :sswitch_5
        0x2580 -> :sswitch_4
        0x25e4 -> :sswitch_3
        0x2648 -> :sswitch_2
        0x26ac -> :sswitch_1
        0x2710 -> :sswitch_0
    .end sparse-switch
.end method

.method private J1(IZ)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r1(I)Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->lqr(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;Z)V

    :cond_0
    return-void
.end method

.method private static J2(IILjava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->s2()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->A2(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# TIMEOUT # "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->b1(IZ)V

    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-direct {v0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->t1(I)I

    move-result v0

    const/16 v2, 0x3e9

    const-string v3, ", pid = "

    if-eq p0, v2, :cond_1

    if-eq v0, p0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " uid change, return, uid = "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", curUid = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", uid = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", kill this process"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->y3(II)V

    sget-object p2, Lcom/android/server/am/OnePlusBackgroundFrozen;->J0:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v0, 0xbb8

    invoke-virtual {p2, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private J3(ILjava/lang/String;Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->ywr:Landroid/app/usage/IUsageStatsManager;

    if-eqz v0, :cond_2

    if-eqz p2, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->cgv:Ljava/util/HashSet;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->cgv:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->u0:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->t2(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->ywr:Landroid/app/usage/IUsageStatsManager;

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-interface {v0, p2, v1, v2}, Landroid/app/usage/IUsageStatsManager;->getAppStandbyBucket(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppStandbyBucket uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " level:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isQuickChange:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    const/4 p3, 0x5

    if-eq v0, p3, :cond_3

    const/16 p3, 0x1e

    if-ge v0, p3, :cond_3

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->ywr:Landroid/app/usage/IUsageStatsManager;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-interface {p0, p2, p3, v0}, Landroid/app/usage/IUsageStatsManager;->setAppStandbyBucketbyFreezer(Ljava/lang/String;II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setAppStandbyBucketbyFreezer uid:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " Exception:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OPBF"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setAppStandbyBucketbyFreezer uid:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mUsm is null, return"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OPBF"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "usagestats"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->ywr:Landroid/app/usage/IUsageStatsManager;

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic K(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->N3(Ljava/lang/String;)V

    return-void
.end method

.method private K1()V
    .locals 5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->rtg:Lcom/android/server/ire;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/ire;->dma()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->lqr:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleOptAppListUidChange newSet:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " |oldSet:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->lqr:Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3, v2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->lqr:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->lqr:Ljava/util/HashSet;

    invoke-direct {p0, v2, v0, v3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->Q0(Ljava/util/HashSet;Ljava/util/HashSet;I)V

    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->lqr:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->lqr:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic K2(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->bvj:Lcom/android/server/am/OnePlusBackgroundFrozen$bio;

    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->you(I)I

    return-void
.end method

.method public static K3(Lcom/android/server/am/ProcessRecord;I)V
    .locals 9

    if-eqz p0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->Y3(IIZ)V

    iget v0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r2(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->y2(I)Z

    move-result v5

    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event startProcessEvent appUid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |systemFlag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " |app.info.uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |isolated:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->isolated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    if-lez p1, :cond_2

    sget-object v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v7, p0, Lcom/android/server/am/ProcessRecord;->isolated:Z

    iget-object v8, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/OnePlusBackgroundFrozen;->R1(IILjava/lang/String;ZIZLjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic L(Lcom/android/server/am/OnePlusBackgroundFrozen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->O3()V

    return-void
.end method

.method private L0(ILjava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->v2:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->k:Ljava/util/HashSet;

    monitor-enter p0

    :try_start_0
    sget-object p2, Lcom/android/server/am/OnePlusBackgroundFrozen;->w2:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->w2:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->x2:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    sget-object p2, Lcom/android/server/am/OnePlusBackgroundFrozen;->w2:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    :goto_1
    return-void
.end method

.method private L1(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r1(I)Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "requesting permission dec"

    invoke-static {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->q(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private L3()V
    .locals 4

    const-string v0, "persist.sys.opbf.topsize"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->y0:Z

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_1

    move v0, v1

    :cond_1
    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "statisticsInit size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    sget-boolean v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->y0:Z

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/server/am/OnePlusBackgroundFrozen$ywr;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/am/OnePlusBackgroundFrozen$ywr;-><init>(Lcom/android/server/am/OnePlusBackgroundFrozen;ILcom/android/server/am/OnePlusBackgroundFrozen$zta;)V

    iput-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->wtn:Lcom/android/server/am/OnePlusBackgroundFrozen$ywr;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "system"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    const-string v3, "opbf_statistcs.xml"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->gck:Landroid/util/AtomicFile;

    :cond_2
    return-void
.end method

.method static synthetic M()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->W:Z

    return v0
.end method

.method public static M0(II)V
    .locals 3

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r2(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event clientConnectionRemoveEvent provider:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |clientUid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->i3(II)V

    :cond_2
    return-void
.end method

.method private M1()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [I

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->dma:Landroid/os/IDeviceIdleController;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->dma:Landroid/os/IDeviceIdleController;

    invoke-interface {v0}, Landroid/os/IDeviceIdleController;->getAppIdUserWhitelist()[I

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->fto:Ljava/util/HashSet;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->H0([I)Ljava/util/HashSet;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->fto:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v1

    return-void

    :cond_1
    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePowerSaveWhitelistChange newSet:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " |oldSet:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->fto:Ljava/util/HashSet;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->fto:Ljava/util/HashSet;

    const/4 v3, 0x2

    invoke-direct {p0, v2, v0, v3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->Q0(Ljava/util/HashSet;Ljava/util/HashSet;I)V

    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->fto:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->fto:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->fto:Ljava/util/HashSet;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_3
    iput-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->fto:Ljava/util/HashSet;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlePowerSaveWhitelistChange Exception:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "OPBF"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method private M2()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->O2()V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->P2()V

    return-void
.end method

.method private M3()V
    .locals 8

    const/4 v0, 0x1

    const-string v1, "# forced operation thawedAll #"

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->h1()Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->n(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;JJJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic N()J
    .locals 2

    sget-wide v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->v1:J

    return-wide v0
.end method

.method private static N0(II)I
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

.method private N1(IILjava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r1(I)Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p3, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->z0(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->gwm(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;Ljava/lang/String;Z)V

    invoke-direct {p0, p3, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->z0(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p2, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->ugm(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->H0:Landroid/os/Handler;

    const/16 p2, 0xb

    invoke-static {p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->N0(II)I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v2, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    sget-object p1, Lcom/android/server/am/OnePlusBackgroundFrozen;->H0:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private N2()V
    .locals 7

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->veq:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->veq:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    const-string v2, "/data/system/data_bpm/pkg.xml"

    invoke-direct {p0, v2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->Q2(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->veq:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->n1(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x3

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->Q0(Ljava/util/HashSet;Ljava/util/HashSet;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleLoadConfigFromLocal: mLastFreezeWhiteList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->veq:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->R2()V

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->lqr:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->rtg:Lcom/android/server/ire;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->rtg:Lcom/android/server/ire;

    invoke-virtual {v2}, Lcom/android/server/ire;->dma()[I

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->lqr:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget v5, v2, v4

    iget-object v6, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->lqr:Ljava/util/HashSet;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadConfigFromLocal: mLastOptAppListUids"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method private N3(Ljava/lang/String;)V
    .locals 2

    sget-boolean p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->p0:Z

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x8

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic O()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->B0:Z

    return v0
.end method

.method private O0()I
    .locals 5

    const-string v0, "/data/system/data_bpm/cfg.xml"

    invoke-static {v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->S2(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    const-string v4, "forceSwitch"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v4, "off"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v3

    if-nez v0, :cond_1

    sget-boolean p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->z0:Z

    if-eqz p0, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->kth:Landroid/content/ContentResolver;

    const-string v0, "oneplus_opbf_switch"

    invoke-static {p0, v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_2

    move p0, v3

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    sput-boolean p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->D0:Z

    if-nez p0, :cond_3

    sget-boolean p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->z0:Z

    if-eqz p0, :cond_3

    return v1

    :cond_3
    sget-boolean p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->D0:Z

    if-eqz p0, :cond_4

    sget-boolean p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->z0:Z

    if-nez p0, :cond_4

    return v3

    :cond_4
    return v2
.end method

.method private O1(IIZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r1(I)Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p2, p3, p4}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->vju(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;IZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private O2()V
    .locals 8

    const/4 v0, 0x1

    const-string v1, "# dump # loadGameApp #"

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    const-string v5, "category_id = 7"

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->zta:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/server/am/OnePlusBackgroundFrozen;->F0:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "package_name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->les:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :cond_1
    if-eqz v0, :cond_2

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    const-string v1, "OPBF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadGameApp: failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    :goto_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw p0
.end method

.method private O3()V
    .locals 2

    sget-boolean p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->p0:Z

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    :cond_0
    return-void
.end method

.method static synthetic P(Lcom/android/server/am/OnePlusBackgroundFrozen;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->zta:Landroid/content/Context;

    return-object p0
.end method

.method private P0(I)I
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

.method private P1(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleResumeRelateProcess uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r1(I)Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "resumeRelateProcess"

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->N3(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->obl(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->O3()V

    :cond_0
    return-void
.end method

.method private P2()V
    .locals 7

    const-string v3, "category_id = 3"

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->zta:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->F0:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "package_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->irq:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :cond_1
    if-eqz v6, :cond_2

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_1
    const-string v0, "OPBF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadIMApp: failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    :goto_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw p0
.end method

.method public static P3(IZ)V
    .locals 3

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r2(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event trafficEvent uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |start:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->T1(IZ)V

    :cond_1
    return-void
.end method

.method static synthetic Q()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->u0:Z

    return v0
.end method

.method private Q0(Ljava/util/HashSet;Ljava/util/HashSet;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "computeUidChange oldSet = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " newSet = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    invoke-static {v2, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    if-eqz p1, :cond_b

    if-eqz p2, :cond_b

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_7

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x1

    if-eq p3, v4, :cond_1

    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->oif:Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const v7, 0x186a0

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    if-ne p3, v4, :cond_3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    mul-int/2addr v9, v7

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    if-ne p3, v4, :cond_6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    mul-int/2addr v9, v7

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r1(I)Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-direct {p0, v3, v4, p3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->X1(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;ZI)V

    goto :goto_5

    :cond_9
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r1(I)Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    move-result-object v2

    if-eqz v2, :cond_a

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, p3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->X1(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "computeUidChange oldSet:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " newSet:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " Exception:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OPBF"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    :goto_7
    return-void
.end method

.method private Q1(IZ)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r1(I)Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->fto(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;Z)V

    :cond_0
    return-void
.end method

.method private Q2(Ljava/lang/String;)Ljava/util/List;
    .locals 11
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

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "OPBF"

    const-string v3, "loadStateLocked():path="

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " file don\'t exist!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    invoke-interface {v0, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "p"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "att"

    invoke-interface {v0, v6, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    if-ne v8, v5, :cond_1

    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    move v4, v5

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v6, v7

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v6, v7

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception v0

    :goto_1
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  --> failed parsing: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v6, :cond_3

    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " date size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    invoke-static {v2, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    if-eqz v4, :cond_4

    return-object v1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadStateLocked(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " file failed parsing, return empty list"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    return-object p0

    :goto_3
    if-eqz v6, :cond_5

    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_4
    throw p0
.end method

.method public static Q3(IZ)V
    .locals 3

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r2(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event handleTrafficHighEvent uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |start:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U1(IZ)V

    :cond_1
    return-void
.end method

.method static synthetic R()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->z0:Z

    return v0
.end method

.method private R0(I)I
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

.method private R1(IILjava/lang/String;ZIZLjava/lang/String;)V
    .locals 1

    const-string v0, "StartProcess"

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->V0(ILjava/lang/String;)Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->cno(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;I)V

    invoke-static {v0, p3}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->kth(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;Ljava/lang/String;)V

    invoke-static {v0, p4}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->bio(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;Z)V

    invoke-static {v0, p6}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->igw(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;Z)V

    if-eqz p6, :cond_0

    invoke-direct {p0, p1, p5}, Lcom/android/server/am/OnePlusBackgroundFrozen;->I2(II)V

    invoke-static {v0, p5}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->wtn(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;I)V

    invoke-direct {p0, p5}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r1(I)Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->gck(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;I)V

    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->o(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;)Z

    move-result p0

    invoke-static {v0, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->dma(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;Z)V

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "start process pid:"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " processName:"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->ywr(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;Ljava/lang/String;)V

    sget-object p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->H0:Landroid/os/Handler;

    const/16 p3, 0xc

    invoke-static {p1, p3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->N0(II)I

    move-result p1

    const/4 p3, 0x0

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    sget-object p1, Lcom/android/server/am/OnePlusBackgroundFrozen;->H0:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method public static R3(IIILjava/lang/String;I)V
    .locals 10

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->z0:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "disablehans"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "sys.hans.enable"

    const-string p1, "false"

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "AsyncBinder"

    if-eqz p0, :cond_8

    if-eq p0, v1, :cond_6

    const/4 v2, 0x2

    if-eq p0, v2, :cond_5

    const/4 v2, 0x3

    if-eq p0, v2, :cond_4

    if-eq p0, v0, :cond_3

    const-string v3, "Default"

    goto :goto_1

    :cond_3
    sget-boolean v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->u0:Z

    const-string v3, "Packet"

    goto :goto_1

    :cond_4
    const-string v3, "Signal"

    goto :goto_1

    :cond_5
    const-string v3, "TransBinder"

    goto :goto_1

    :cond_6
    sget-object v3, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-direct {v3, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r1(I)Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-static {v3}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->o(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v3, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->zta(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;I)Z

    move-result v3

    if-eqz v3, :cond_7

    move v1, v2

    :cond_7
    const-string v3, "SyncBinder"

    goto :goto_1

    :cond_8
    const-string v4, "free_buffer_full"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_1

    :cond_9
    sget-object v4, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-direct {v4, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r1(I)Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    move-result-object v4

    if-nez v4, :cond_a

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_a
    invoke-static {v4}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->o(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;)Z

    move-result v4

    if-nez v4, :cond_b

    goto :goto_0

    :cond_b
    sget-boolean v4, Lcom/android/server/am/OnePlusBackgroundFrozen;->t0:Z

    if-eqz v4, :cond_c

    sget-object v4, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-direct {v4, p1, p2, p3, p4}, Lcom/android/server/am/OnePlusBackgroundFrozen;->q2(IILjava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_0

    :cond_c
    :goto_1
    sget-boolean v2, Lcom/android/server/am/OnePlusBackgroundFrozen;->v0:Z

    const-string v4, " |type:"

    const-string v5, " |rpcCode:"

    const-string v6, " |rpcName:"

    const-string v7, " |callerPid:"

    const-string v8, " |reason:"

    const-string v9, "event triggerForKernel uid:"

    if-eqz v2, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    :cond_d
    if-eqz v1, :cond_f

    sget-boolean v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->v0:Z

    if-nez v1, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    :cond_e
    invoke-static {p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r2(I)Z

    move-result p0

    if-eqz p0, :cond_f

    sget-object p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-direct {p0, p2, v3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->V1(ILjava/lang/String;)V

    :cond_f
    return-void
.end method

.method static synthetic S(II)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->N0(II)I

    move-result p0

    return p0
.end method

.method public static S0(IZ)V
    .locals 3

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r2(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event handleContentNotifyResumeEvent uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |start:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->B1(IZ)V

    :cond_1
    return-void
.end method

.method private S1(IZ)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r1(I)Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->ibl(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;Z)V

    :cond_0
    return-void
.end method

.method public static S2(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadXml:path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " file don\'t exist!"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    return-object v4

    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    invoke-interface {v0, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "item"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "name"

    invoke-interface {v0, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    if-ne v7, v2, :cond_1

    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v6, v4

    :goto_0
    :try_start_3
    const-string v2, "OPBF"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  --> failed parsing "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v6, :cond_3

    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_1
    move v2, v5

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadXml:path:path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " data size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    if-eqz v2, :cond_4

    return-object v3

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadXml:path:path= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " file failed parsing!"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    return-object v4

    :catchall_1
    move-exception p0

    move-object v4, v6

    :goto_3
    if-eqz v4, :cond_5

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_4
    throw p0
.end method

.method public static S3(ILjava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->z0:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r2(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event triggerResume uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->V1(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method static synthetic T()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->H0:Landroid/os/Handler;

    return-object v0
.end method

.method private T0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "copyFile fromFile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", toFile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p0}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    return-void
.end method

.method private T1(IZ)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r1(I)Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->ire(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;Z)V

    :cond_0
    return-void
.end method

.method public static T2(IZ)V
    .locals 0

    return-void
.end method

.method public static T3(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event updateDisplayEvent displayId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " displayEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    sput p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->M0:I

    sput p1, Lcom/android/server/am/OnePlusBackgroundFrozen;->N0:I

    return-void
.end method

.method static synthetic U(Lcom/android/server/am/OnePlusBackgroundFrozen;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->j3(ILjava/lang/String;)V

    return-void
.end method

.method private U0()V
    .locals 4

    const-string v0, "copyLocalConfigFiles: failed "

    const-string v1, "OPBF"

    const/4 v2, 0x2

    const-string v3, "copyLocalConfigFiles isForceUpdate"

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/data_bpm/"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const-string v2, "/system/bpm/bpm_sts.xml"

    const-string v3, "/data/system/data_bpm/bpm_sts.xml"

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->T0(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "/system/bpm/pkg.xml"

    const-string v3, "/data/system/data_bpm/pkg.xml"

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->T0(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    const-string v2, "chmod 0770 /data/system/data_bpm/"

    invoke-virtual {p0, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    const-string v2, "chmod 0770 /data/system/data_bpm/bpm_sts.xml"

    invoke-virtual {p0, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    const-string v2, "chmod 0770 /data/system/data_bpm/pkg.xml"

    invoke-virtual {p0, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private U1(IZ)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r1(I)Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->hmo(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;Z)V

    :cond_0
    return-void
.end method

.method private static U2(ILjava/lang/String;)V
    .locals 1

    sget v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->h0:I

    if-gt p0, v0, :cond_0

    const-string p0, "OPBF"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private U3()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->O0()I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateEnable do action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->H0:Landroid/os/Handler;

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->H0:Landroid/os/Handler;

    const/4 v0, 0x4

    :goto_0
    invoke-static {v2, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->N0(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    return-void
.end method

.method static synthetic V(Lcom/android/server/am/OnePlusBackgroundFrozen;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->q3(ILjava/lang/String;)V

    return-void
.end method

.method private V0(ILjava/lang/String;)Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->ugm:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->ugm:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r2(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    const/4 v0, 0x0

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;-><init>(Lcom/android/server/am/OnePlusBackgroundFrozen;ILcom/android/server/am/OnePlusBackgroundFrozen$zta;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->ugm:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->ugm:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createOrGetSpecificUidCache new uid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " from:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-object v1

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method private V1(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r1(I)Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->ywr(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private V2(IZLjava/lang/String;)V
    .locals 5

    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->z0:Z

    const-string v1, " |tofreeze:"

    const-string v2, "operateNodeIfNeeded uid:"

    if-nez v0, :cond_0

    const/4 p0, 0x3

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " |sEnable:false , return"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "operateNode"

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->N3(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r1(I)Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    move-result-object v0

    const/4 v3, 0x2

    if-nez v0, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", uid is not exist, return"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->O3()V

    return-void

    :cond_1
    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->o(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;)Z

    move-result v4

    if-ne v4, p2, :cond_2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " , uid state is already operated, return"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->O3()V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->cno:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->cno:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_3
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->W2(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;ZLjava/lang/String;)V

    invoke-static {v0}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->o(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->you:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->J3(ILjava/lang/String;Z)V

    invoke-static {v0}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->vdw(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;)V

    sget-boolean v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->s0:Z

    if-eqz v1, :cond_6

    sget-boolean v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->u0:Z

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->you:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->t2(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->sis:Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;

    if-eqz v1, :cond_5

    sget-object v2, Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;->sis:Lcom/android/server/am/OnePlusBackgroundFrozen$AppType;

    if-eq v1, v2, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->bvj:Lcom/android/server/am/OnePlusBackgroundFrozen$bio;

    invoke-virtual {v1, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$bio;->sis(I)I

    :cond_5
    sget-object v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->H0:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/you;

    invoke-direct {v2, p0, p1}, Lcom/android/server/am/you;-><init>(Lcom/android/server/am/OnePlusBackgroundFrozen;I)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "operateNode reconfirm lastOperation:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " lastOperatedReason:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->q(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;Ljava/lang/String;)V

    invoke-static {v0, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->qeg(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;Z)V

    invoke-direct {p0, v0, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->W0(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;Z)V

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->cno:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->cno:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_7
    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->O3()V

    return-void
.end method

.method static synthetic W(Lcom/android/server/am/OnePlusBackgroundFrozen;IZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->l3(IZLjava/lang/String;)V

    return-void
.end method

.method private W0(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;Z)V
    .locals 4

    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->r0:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p1, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->ear:Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;

    invoke-static {v0}, Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;->sis(Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;)V

    iget-object v0, p1, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->ear:Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;

    invoke-static {v0}, Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;->tsu(Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;)V

    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->y0:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p1, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->cjf:Lcom/android/server/am/OnePlusBackgroundFrozen$cno;

    if-eqz p2, :cond_2

    invoke-static {p2, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->sis(Lcom/android/server/am/OnePlusBackgroundFrozen$cno;I)V

    iget-object p2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->wtn:Lcom/android/server/am/OnePlusBackgroundFrozen$ywr;

    new-instance v2, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;

    iget-object v3, p1, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->cjf:Lcom/android/server/am/OnePlusBackgroundFrozen$cno;

    invoke-direct {v2, p0, v3, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;-><init>(Lcom/android/server/am/OnePlusBackgroundFrozen;Lcom/android/server/am/OnePlusBackgroundFrozen$cno;Lcom/android/server/am/OnePlusBackgroundFrozen$zta;)V

    invoke-static {p2, v2}, Lcom/android/server/am/OnePlusBackgroundFrozen$ywr;->zta(Lcom/android/server/am/OnePlusBackgroundFrozen$ywr;Lcom/android/server/am/OnePlusBackgroundFrozen$cno;)V

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;

    invoke-direct {p2, p0, p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;-><init>(Lcom/android/server/am/OnePlusBackgroundFrozen;Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;Lcom/android/server/am/OnePlusBackgroundFrozen$zta;)V

    invoke-static {p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->b(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;Lcom/android/server/am/OnePlusBackgroundFrozen$cno;)V

    :cond_2
    :goto_0
    const/4 p2, 0x0

    const-string v0, "sys.debug.watchdog"

    invoke-static {v0, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "operateNode uid:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->zta:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " getUidFreezeState:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->zta:I

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->u1(I)Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    :cond_3
    return-void
.end method

.method private W1(IZ)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r1(I)Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->zgw(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;Z)V

    :cond_0
    return-void
.end method

.method private W2(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;ZLjava/lang/String;)V
    .locals 2

    monitor-enter p1

    :try_start_0
    iget v0, p1, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->zta:I

    iget-object v1, p1, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->you:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->F3(ILjava/lang/String;ZLjava/lang/String;)V

    invoke-static {p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->ivd(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;Z)V

    invoke-static {p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->a(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic X()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->A0:Z

    return v0
.end method

.method private X1(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;ZI)V
    .locals 4

    const/4 v0, 0x1

    if-eq p3, v0, :cond_6

    const/4 v1, 0x2

    if-eq p3, v1, :cond_5

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eq p3, v1, :cond_2

    if-eq p3, v3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p1, v2}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->e(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;Z)V

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    iget p2, p1, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->zta:I

    invoke-direct {p0, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->m1(I)Ljava/lang/String;

    move-result-object p0

    sget-object p2, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    iget-object p2, p2, Lcom/android/server/am/OnePlusBackgroundFrozen;->veq:Ljava/util/HashSet;

    invoke-virtual {p2, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-static {p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->e(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;Z)V

    goto :goto_1

    :cond_2
    iget-object p3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->lqr:Ljava/util/HashSet;

    monitor-enter p3

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->lqr:Ljava/util/HashSet;

    iget v0, p1, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->zta:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignore to update the freeze whitelist: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->zta:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    if-nez p2, :cond_4

    invoke-static {p1, v2}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->e(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;Z)V

    goto :goto_0

    :cond_3
    invoke-static {p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->e(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;Z)V

    :cond_4
    :goto_0
    monitor-exit p3

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_5
    invoke-static {p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->d(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;Z)V

    goto :goto_1

    :cond_6
    invoke-static {p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->c(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;Z)V

    :cond_7
    :goto_1
    return-void
.end method

.method public static X2(I)V
    .locals 3

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r2(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event permRequestDecEvent uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->o3(I)V

    :cond_1
    return-void
.end method

.method static synthetic Y(Lcom/android/server/am/OnePlusBackgroundFrozen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d1()V

    return-void
.end method

.method private Y0()V
    .locals 4

    const/4 v0, 0x1

    const-string v1, "# dumpAllCache # dump begin--------------------"

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->h1()Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# dumpAllCache # uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->zta:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->you:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " freeze:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->bio:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->hmo:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "# dumpAllCache # dump end--------------------"

    invoke-static {v0, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    return-void
.end method

.method private Y1(I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r1(I)Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uid gone - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->ywr(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d3(I)V

    :cond_0
    return-void
.end method

.method private Y2(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/OnePlusBackgroundFrozen$cno;",
            ">;)V"
        }
    .end annotation

    const-string v0, "frozenRecord"

    const-string v1, "OPBF"

    const/4 v2, 0x1

    const-string v3, "# dumpTop # persistToDisk begin..."

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->gck:Landroid/util/AtomicFile;

    if-nez v3, :cond_0

    const-string p0, "# dumpTop # persistToDisk mPersistData is null, return"

    :goto_0
    invoke-static {v2, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "# dumpTop # persistToDisk list data is null, return"

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->gck:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-direct {v6, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    sget-object v6, Lcom/android/server/am/OnePlusBackgroundFrozen;->V:Ljava/lang/String;

    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "dumpTime"

    iget-object v7, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->igw:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v6, Lcom/android/server/am/OnePlusBackgroundFrozen;->V:Ljava/lang/String;

    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v6, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;

    invoke-interface {v3, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, "i"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v4, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, "operated"

    iget v9, v7, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->ssp:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v4, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, "ct"

    iget-object v9, v7, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->sis:Ljava/lang/String;

    invoke-interface {v3, v4, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, "cs"

    iget-wide v9, v7, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->rtg:J

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v4, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, "uid"

    iget v9, v7, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->zta:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v4, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, "pkg"

    iget-object v9, v7, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->you:Ljava/lang/String;

    invoke-interface {v3, v4, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, "cbt"

    iget-object v7, v7, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->cno:Ljava/lang/String;

    invoke-interface {v3, v4, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v7, Lcom/android/server/am/OnePlusBackgroundFrozen;->V:Ljava/lang/String;

    invoke-interface {v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v3, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object p1, Lcom/android/server/am/OnePlusBackgroundFrozen;->V:Ljava/lang/String;

    invoke-interface {v3, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->gck:Landroid/util/AtomicFile;

    invoke-virtual {p1, v5}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v4, v5

    goto :goto_2

    :catch_1
    move-exception p1

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "persistToDisk Exception e:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v4, :cond_3

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->gck:Landroid/util/AtomicFile;

    invoke-virtual {p0, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_3
    :goto_3
    const-string p0, "# dumpTop # persistToDisk finished"

    goto/16 :goto_0
.end method

.method private Y3(IIZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->obl:Ljava/util/HashMap;

    monitor-enter v0

    if-eqz p3, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->obl:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->obl:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

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

.method static synthetic Z(Lcom/android/server/am/OnePlusBackgroundFrozen;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->p1()Z

    move-result p0

    return p0
.end method

.method private Z0()V
    .locals 5

    const/4 v0, 0x1

    const-string v1, "# FrozenHistory # dump begin--------------------"

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->h1()Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    iget-object v3, v2, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->ear:Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FrozenHistory x:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    iget-object v2, v2, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->ear:Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;->sis(Lcom/android/server/am/OnePlusBackgroundFrozen$ssp;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "# FrozenHistory # dump end--------------------"

    invoke-static {v0, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    return-void
.end method

.method private Z1(II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r1(I)Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->vdb(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;I)V

    :cond_0
    return-void
.end method

.method public static Z2(IIZZLandroid/content/Intent;)V
    .locals 5

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x8

    const-string v2, "receiveBroadcastEvent"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_1
    const-string p4, ""

    :goto_0
    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r2(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event receiveBroadcastEvent uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " |pid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " |finish:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " |hasTimeout:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " |action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    if-eqz p3, :cond_3

    sget-object p3, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_2

    const-string v3, "finish perform"

    goto :goto_1

    :cond_2
    const-string v3, "start perform"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " hasTimeout broadcast for action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p0, p1, p2, p4}, Lcom/android/server/am/OnePlusBackgroundFrozen;->O1(IIZLjava/lang/String;)V

    goto :goto_2

    :cond_3
    sget-object p1, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "start perform not hasTimeout broadcast for action = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->V1(ILjava/lang/String;)V

    :cond_4
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method private Z3(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->ire:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->ire:Ljava/util/HashSet;

    iget v2, p1, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->zta:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->f(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r1(I)Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, p1, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->zta:I

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->g(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;I)V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static synthetic a(IILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->J2(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic a0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->u2(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private a1()V
    .locals 8

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->O2()V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->P2()V

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->les:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, " pkg:"

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "# dump # mGameApps # i:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    add-int/2addr v2, v5

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->irq:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# dump # mSocialAppSet # i:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    add-int/2addr v1, v5

    goto :goto_1

    :cond_1
    return-void
.end method

.method private a2(IZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r1(I)Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p2, p3, p4}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->veq(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;ZLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a3(II)V
    .locals 4

    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r2(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->O0:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, 0x4

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event removeDisplayCallback uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " pid:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    sget-object p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->O0:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method private a4(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->h1()Ljava/util/HashSet;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x2

    const-string p1, "updateWifiLockResState allCache = null, return"

    invoke-static {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    const-string v1, "screen"

    invoke-static {v0, v1, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->ssp(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/android/server/am/OnePlusBackgroundFrozen;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->t1(I)I

    move-result p0

    return p0
.end method

.method static synthetic b0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->C0:Z

    return v0
.end method

.method private b1(IZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# dumpCache # specificUid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |detail = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->h1()Ljava/util/HashSet;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "# dumpCache # allCache = null, return"

    :goto_0
    invoke-static {v1, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    invoke-static {p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->m(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;Z)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r1(I)Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, "# dumpCache # specificUid = null, return"

    goto :goto_0

    :cond_2
    invoke-static {p0, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->m(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;Z)V

    :cond_3
    return-void
.end method

.method public static b2(IZLcom/android/server/am/ProcessRecord;)V
    .locals 3

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r2(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event importantProviderChangeEvent uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |inc:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " |clientUid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |clientName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    iget v0, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->y2(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "importantProviderChangeEvent inc:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " provider:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " client:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " clientP:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " clientIsCore:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    iget p2, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->H1(IZILjava/lang/String;)V

    goto :goto_2

    :cond_3
    sget-object p1, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-direct {p1, p0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->V1(ILjava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private b3(I)V
    .locals 0

    const/16 p0, 0xd

    invoke-static {p1, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->N0(II)I

    move-result p0

    sget-object p1, Lcom/android/server/am/OnePlusBackgroundFrozen;->H0:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private b4()V
    .locals 2

    const/4 p0, 0x2

    const-string v0, "versionInit"

    invoke-static {p0, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    sget-boolean p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->W:Z

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x3a98

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x7530

    :goto_0
    sput-wide v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->k0:J

    return-void
.end method

.method static synthetic bio(Lcom/android/server/am/OnePlusBackgroundFrozen;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->W1(IZ)V

    return-void
.end method

.method static synthetic bud()I
    .locals 1

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->k1()I

    move-result v0

    return v0
.end method

.method static synthetic bvj(Lcom/android/server/am/OnePlusBackgroundFrozen;)Lcom/android/server/am/OnePlusBackgroundFrozen$wtn;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->bio:Lcom/android/server/am/OnePlusBackgroundFrozen$wtn;

    return-object p0
.end method

.method static synthetic c(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d4(Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c0(Lcom/android/server/am/OnePlusBackgroundFrozen;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->i1(I)Z

    move-result p0

    return p0
.end method

.method private c1(I)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# dumpCacheReason # uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " begin--------------------"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r1(I)Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->q0:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->fto:[Ljava/lang/String;

    array-length v3, v0

    sub-int/2addr v3, v2

    aget-object v0, v0, v3

    const-string v3, " reason:"

    const-string v4, " i:"

    const/4 v5, 0x0

    if-nez v0, :cond_0

    :goto_0
    iget v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->lqr:I

    if-ge v5, v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->fto:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->fto:[Ljava/lang/String;

    array-length v0, v0

    if-ge v5, v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->fto:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " sRecordReason:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->q0:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " end--------------------"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    return-void
.end method

.method public static c2(Ljava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    const-string v1, "event importantUidChangeEvent"

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->m3(Ljava/util/HashSet;)V

    return-void
.end method

.method public static c3(II)V
    .locals 3

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->Y3(IIZ)V

    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r2(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event removeProc uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    const-string v1, "process died"

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->N1(IILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static c4(IZLjava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r2(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event virtualDeviceChangeEvent uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |add:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " |uniqueId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "virtualDeviceChange add:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " uniqueId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->a2(IZLjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic cgv(Lcom/android/server/am/OnePlusBackgroundFrozen;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->e4(IIZ)V

    return-void
.end method

.method static synthetic cjf()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->n0:Z

    return v0
.end method

.method static synthetic cno(Lcom/android/server/am/OnePlusBackgroundFrozen;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->Z1(II)V

    return-void
.end method

.method static synthetic d()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->s0:Z

    return v0
.end method

.method static synthetic d0(Lcom/android/server/am/OnePlusBackgroundFrozen;IZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->V2(IZLjava/lang/String;)V

    return-void
.end method

.method private d1()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# dump # ENABLE # "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->z0:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    const-string v0, "# dump # VERSION # 20092901"

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # sCfgVersion # "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/OnePlusBackgroundFrozen;->g0:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # sIsHydrogenVersion # "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OnePlusBackgroundFrozen;->W:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # LogLevel # "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/OnePlusBackgroundFrozen;->h0:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # BootDelayTime # "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/am/OnePlusBackgroundFrozen;->j0:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # CheckDelayTime # "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/am/OnePlusBackgroundFrozen;->k0:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # sForegroundSwitchProtectTime # "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/am/OnePlusBackgroundFrozen;->l0:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # sStatistics # "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OnePlusBackgroundFrozen;->y0:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # sWiFiLockEnable # "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OnePlusBackgroundFrozen;->A0:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # slimitScreenWifilockEvent # "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OnePlusBackgroundFrozen;->C0:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # sDebugFrozenHistory # "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OnePlusBackgroundFrozen;->r0:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # sRecordReason # "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OnePlusBackgroundFrozen;->q0:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # slimitFgSer # "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OnePlusBackgroundFrozen;->B0:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # sUidStateCut # "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/OnePlusBackgroundFrozen;->i0:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # sResStopSer # "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OnePlusBackgroundFrozen;->v2:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # sOpenNativeService # "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OnePlusBackgroundFrozen;->s0:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # sResAsyncBinder # "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OnePlusBackgroundFrozen;->t0:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # sEnablePacket # "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OnePlusBackgroundFrozen;->u0:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # sMaxCumStopSerCount # "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/OnePlusBackgroundFrozen;->t2:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # mLastDeviceIdleWhiteListUids # "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->fto:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # mWifiLockBlackList # "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->bud:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # mPacketWhiteList # "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vdw:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # mCareSystemList # "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->qeg:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # mLastFreezeWhiteList # "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->veq:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # mLastOptAppListUids # "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->lqr:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # mLastAppStandbyWhiteList # "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->cgv:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # mSpecialThirdBindActionList # "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vju:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # mResStopServiceBlackList # "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->k:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# dump # sSpecialJob # "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->P0:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    return-void
.end method

.method private d2()V
    .locals 0

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->k1()I

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->b4()V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->h2()V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->L3()V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U0()V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->k2()V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->j2()V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d1()V

    return-void
.end method

.method private d3(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeSpecificUidCache uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r1(I)Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vdb:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vdb:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->h(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r1(I)Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->i(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    :goto_0
    const/4 v2, -0x2

    const-string v3, "uid died"

    invoke-static {v0, v3, v2}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->oxb(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;Ljava/lang/String;I)V

    iget-object v2, v0, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->you:Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->L0(ILjava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->you:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->C3(ILjava/lang/String;Z)V

    :cond_1
    const-string v0, "uid removed"

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->D3(IZLjava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->E3(IZ)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->ugm:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_2
    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->ugm:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method private d4(Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# whiteListChange # isAdd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " |pkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "# whiteListChange #  pkg is empty, return"

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->veq:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->veq:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->veq:Ljava/util/HashSet;

    invoke-virtual {v2, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->veq:Ljava/util/HashSet;

    invoke-virtual {v2, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->veq:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->n1(Ljava/lang/String;)I

    move-result p2

    const/4 v2, -0x1

    if-eq p2, v2, :cond_4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->veq:Ljava/util/HashSet;

    const-string p2, "/data/system/data_bpm/pkg.xml"

    invoke-static {p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->f3(Ljava/util/HashSet;Ljava/lang/String;)Z

    const/4 p1, 0x3

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->Q0(Ljava/util/HashSet;Ljava/util/HashSet;I)V

    :cond_5
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static synthetic dma()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->o0:Z

    return v0
.end method

.method static synthetic e(Lcom/android/server/am/OnePlusBackgroundFrozen;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vdw:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic e0()Landroid/util/SparseArray;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->O0:Landroid/util/SparseArray;

    return-object v0
.end method

.method private e1()V
    .locals 4

    const/4 v0, 0x1

    const-string v1, "# dumpIsolatedUids #"

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vdb:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# dumpIsolatedUids # isolatedUid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vdb:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " boundUid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vdb:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private e2()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->cgv:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->cgv:Ljava/util/HashSet;

    const-string v1, "com.tencent.androidqqmail"

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private e3(Lorg/json/JSONArray;)V
    .locals 12

    if-nez p1, :cond_0

    const-string p0, "OPBF"

    const-string p1, "resolveConfigFromJSON jsonArray is null, return"

    :goto_0
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    if-nez v0, :cond_1

    const-string p0, "OPBF"

    const-string p1, "resolveConfigFromJSON sInstance is null, return"

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_2b

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "bootDelayTime"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v4

    sput-wide v4, Lcom/android/server/am/OnePlusBackgroundFrozen;->j0:J

    :cond_2
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "config"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/android/server/am/OnePlusBackgroundFrozen;->P0:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_10

    :try_start_1
    sget-object v5, Lcom/android/server/am/OnePlusBackgroundFrozen;->P0:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    const-string v5, "value"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move v6, v0

    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_4

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v7, "package"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "tag"

    invoke-virtual {v3, v9, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "timeout"

    const-wide/16 v10, 0x0

    invoke-virtual {v3, v9, v10, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v9

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    sget-object v11, Lcom/android/server/am/OnePlusBackgroundFrozen;->P0:Ljava/util/HashMap;

    invoke-virtual {v11, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_3

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    :goto_3
    invoke-virtual {v11, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_3
    sget-object v11, Lcom/android/server/am/OnePlusBackgroundFrozen;->P0:Ljava/util/HashMap;

    invoke-virtual {v11, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    goto :goto_3

    :goto_4
    sget-object v8, Lcom/android/server/am/OnePlusBackgroundFrozen;->P0:Ljava/util/HashMap;

    invoke-virtual {v8, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    monitor-exit v4

    goto :goto_5

    :catchall_0
    move-exception p1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :cond_5
    :goto_5
    const-string v4, "checkDelayTime_Oxygen"

    sget-boolean v5, Lcom/android/server/am/OnePlusBackgroundFrozen;->W:Z

    if-eqz v5, :cond_6

    const-string v4, "checkDelayTime_Hydrogen"

    :cond_6
    const-string v5, "name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v4

    sput-wide v4, Lcom/android/server/am/OnePlusBackgroundFrozen;->k0:J

    :cond_7
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "foregroundSwitchProtectTime"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v4

    sput-wide v4, Lcom/android/server/am/OnePlusBackgroundFrozen;->l0:J

    :cond_8
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "wifiLockEnable"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_9

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iget-object v6, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->ear:Ljava/util/HashSet;

    monitor-enter v6
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_10

    :try_start_3
    iget-object v7, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->ear:Ljava/util/HashSet;

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "wifiLockEnable switch to disable"

    invoke-direct {p0, v6, v0, v7}, Lcom/android/server/am/OnePlusBackgroundFrozen;->D3(IZLjava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_10

    goto :goto_6

    :catchall_1
    move-exception p1

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1

    :cond_9
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/OnePlusBackgroundFrozen;->A0:Z

    const-string v5, "persist.sys.opbf.wifilock_enable"

    if-eqz v4, :cond_a

    const-string v4, "true"

    goto :goto_7

    :cond_a
    const-string v4, "false"

    :goto_7
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "resAsync"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/OnePlusBackgroundFrozen;->t0:Z

    const-string v5, "persist.sys.opbf.res_async"

    if-eqz v4, :cond_c

    const-string v4, "true"

    goto :goto_8

    :cond_c
    const-string v4, "false"

    :goto_8
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "enablePacket"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/OnePlusBackgroundFrozen;->u0:Z

    const-string v5, "persist.sys.opbf.enable_packet"

    if-eqz v4, :cond_e

    const-string v4, "true"

    goto :goto_9

    :cond_e
    const-string v4, "false"

    :goto_9
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "limitScWifiLock"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/OnePlusBackgroundFrozen;->C0:Z

    const-string v5, "persist.sys.opbf.limit_sc_wifilock"

    if-eqz v4, :cond_10

    const-string v4, "true"

    goto :goto_a

    :cond_10
    const-string v4, "false"

    :goto_a
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "wifilockblklist"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->bud:Ljava/util/HashSet;

    monitor-enter v5
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_10

    :try_start_7
    iget-object v6, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->bud:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move v5, v0

    :goto_b
    :try_start_8
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_12

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->bud:Ljava/util/HashSet;

    monitor-enter v7
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_10

    :try_start_9
    iget-object v8, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->bud:Ljava/util/HashSet;

    invoke-virtual {v8, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :catchall_2
    move-exception p1

    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw p1
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_10

    :catchall_3
    move-exception p1

    :try_start_b
    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw p1

    :cond_12
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "packetwhtList"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vdw:Ljava/util/HashSet;

    monitor-enter v5
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_10

    :try_start_d
    iget-object v6, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vdw:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    monitor-exit v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    move v5, v0

    :goto_c
    :try_start_e
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_13

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vdw:Ljava/util/HashSet;

    monitor-enter v7
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_10

    :try_start_f
    iget-object v8, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vdw:Ljava/util/HashSet;

    invoke-virtual {v8, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :catchall_4
    move-exception p1

    monitor-exit v7
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :try_start_10
    throw p1
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    :catchall_5
    move-exception p1

    :try_start_11
    monitor-exit v5
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    :try_start_12
    throw p1

    :cond_13
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "caresystemapp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_15

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->qeg:Ljava/util/HashSet;

    monitor-enter v6
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_10

    :try_start_13
    iget-object v7, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->qeg:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    monitor-exit v6
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    move v6, v0

    :goto_d
    :try_start_14
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_15

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-direct {v8, v7}, Lcom/android/server/am/OnePlusBackgroundFrozen;->n1(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v5, :cond_14

    iget-object v8, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->qeg:Ljava/util/HashSet;

    monitor-enter v8
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_14} :catch_1
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_10

    :try_start_15
    iget-object v9, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->qeg:Ljava/util/HashSet;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v8

    goto :goto_e

    :catchall_6
    move-exception p1

    monitor-exit v8
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    :try_start_16
    throw p1
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_16} :catch_1
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0
    .catchall {:try_start_16 .. :try_end_16} :catchall_10

    :cond_14
    :goto_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :catchall_7
    move-exception p1

    :try_start_17
    monitor-exit v6
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    :try_start_18
    throw p1

    :cond_15
    const-string v4, "uidStateCutName_Oxygen"

    sget-boolean v6, Lcom/android/server/am/OnePlusBackgroundFrozen;->W:Z

    if-eqz v6, :cond_16

    const-string v4, "uidStateCutName_Hydrogen"

    :cond_16
    const-string v6, "name"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    sput v4, Lcom/android/server/am/OnePlusBackgroundFrozen;->i0:I

    const-string v6, "persist.sys.opbf.uid_state_cut"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "limitFgSer"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/OnePlusBackgroundFrozen;->B0:Z

    const-string v6, "persist.sys.opbf.limit_fg_service"

    if-eqz v4, :cond_18

    const-string v4, "true"

    goto :goto_f

    :cond_18
    const-string v4, "false"

    :goto_f
    invoke-static {v6, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "resStopService"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/OnePlusBackgroundFrozen;->v2:Z

    const-string v6, "persist.sys.opbf.res_stop_service"

    if-eqz v4, :cond_1a

    const-string v4, "true"

    goto :goto_10

    :cond_1a
    const-string v4, "false"

    :goto_10
    invoke-static {v6, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "nativeServiceEnable"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v4

    const-string v6, "persist.sys.opbf.nativenable"

    if-eqz v4, :cond_1c

    const-string v4, "true"

    goto :goto_11

    :cond_1c
    const-string v4, "false"

    :goto_11
    invoke-static {v6, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "maxStopSerCount"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    sput v4, Lcom/android/server/am/OnePlusBackgroundFrozen;->t2:I

    :cond_1e
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "resStopServiceBlk"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->k:Ljava/util/HashSet;

    monitor-enter v6
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_18} :catch_1
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_0
    .catchall {:try_start_18 .. :try_end_18} :catchall_10

    :try_start_19
    iget-object v7, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->k:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    sget-object v7, Lcom/android/server/am/OnePlusBackgroundFrozen;->w2:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V

    sget-object v7, Lcom/android/server/am/OnePlusBackgroundFrozen;->x2:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    monitor-exit v6
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    move v6, v0

    :goto_12
    :try_start_1a
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_1f

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->k:Ljava/util/HashSet;

    monitor-enter v8
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_1a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_0
    .catchall {:try_start_1a .. :try_end_1a} :catchall_10

    :try_start_1b
    iget-object v9, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->k:Ljava/util/HashSet;

    invoke-virtual {v9, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    :catchall_8
    move-exception p1

    monitor-exit v8
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    :try_start_1c
    throw p1
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_1c} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_0
    .catchall {:try_start_1c .. :try_end_1c} :catchall_10

    :catchall_9
    move-exception p1

    :try_start_1d
    monitor-exit v6
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_9

    :try_start_1e
    throw p1

    :cond_1f
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "pkg"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iget-object v7, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->veq:Ljava/util/HashSet;

    monitor-enter v7
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_1e} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_0
    .catchall {:try_start_1e .. :try_end_1e} :catchall_10

    :try_start_1f
    iget-object v8, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->veq:Ljava/util/HashSet;

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    iget-object v8, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->veq:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->clear()V

    monitor-exit v7
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_b

    move v7, v0

    :goto_13
    :try_start_20
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_20

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->veq:Ljava/util/HashSet;

    monitor-enter v9
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_20} :catch_1
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_0
    .catchall {:try_start_20 .. :try_end_20} :catchall_10

    :try_start_21
    iget-object v10, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->veq:Ljava/util/HashSet;

    invoke-virtual {v10, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    :catchall_a
    move-exception p1

    monitor-exit v9
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_a

    :try_start_22
    throw p1

    :cond_20
    iget-object v4, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->veq:Ljava/util/HashSet;

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_21
    :goto_14
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_22

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/server/am/OnePlusBackgroundFrozen;->n1(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v5, :cond_21

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_22
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iget-object v7, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->veq:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_23
    :goto_15
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_24

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/android/server/am/OnePlusBackgroundFrozen;->n1(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v5, :cond_23

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_24
    iget-object v5, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->veq:Ljava/util/HashSet;

    const-string v7, "/data/system/data_bpm/pkg.xml"

    invoke-static {v5, v7}, Lcom/android/server/am/OnePlusBackgroundFrozen;->f3(Ljava/util/HashSet;Ljava/lang/String;)Z

    const/4 v5, 0x3

    invoke-direct {p0, v4, v6, v5}, Lcom/android/server/am/OnePlusBackgroundFrozen;->Q0(Ljava/util/HashSet;Ljava/util/HashSet;I)V
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_22} :catch_1
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_0
    .catchall {:try_start_22 .. :try_end_22} :catchall_10

    goto :goto_16

    :catchall_b
    move-exception p1

    :try_start_23
    monitor-exit v7
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_b

    :try_start_24
    throw p1

    :cond_25
    :goto_16
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "standbywhitelist"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->cgv:Ljava/util/HashSet;

    monitor-enter v5
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_24 .. :try_end_24} :catch_1
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_0
    .catchall {:try_start_24 .. :try_end_24} :catchall_10

    :try_start_25
    iget-object v6, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->cgv:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    monitor-exit v5
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_d

    move v5, v0

    :goto_17
    :try_start_26
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_26

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->cgv:Ljava/util/HashSet;

    monitor-enter v7
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_26} :catch_1
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_0
    .catchall {:try_start_26 .. :try_end_26} :catchall_10

    :try_start_27
    iget-object v8, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->cgv:Ljava/util/HashSet;

    invoke-virtual {v8, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    :catchall_c
    move-exception p1

    monitor-exit v7
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_c

    :try_start_28
    throw p1
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_28 .. :try_end_28} :catch_1
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_0
    .catchall {:try_start_28 .. :try_end_28} :catchall_10

    :catchall_d
    move-exception p1

    :try_start_29
    monitor-exit v5
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_d

    :try_start_2a
    throw p1

    :cond_26
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "specialAction"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vju:Ljava/util/HashSet;

    monitor-enter v5
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_2a .. :try_end_2a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_0
    .catchall {:try_start_2a .. :try_end_2a} :catchall_10

    :try_start_2b
    iget-object v6, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vju:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    monitor-exit v5
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_f

    move v5, v0

    :goto_18
    :try_start_2c
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_27

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vju:Ljava/util/HashSet;

    monitor-enter v7
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_2c .. :try_end_2c} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_0
    .catchall {:try_start_2c .. :try_end_2c} :catchall_10

    :try_start_2d
    iget-object v8, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vju:Ljava/util/HashSet;

    invoke-virtual {v8, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    :catchall_e
    move-exception p1

    monitor-exit v7
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_e

    :try_start_2e
    throw p1
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_2e .. :try_end_2e} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_0
    .catchall {:try_start_2e .. :try_end_2e} :catchall_10

    :catchall_f
    move-exception p1

    :try_start_2f
    monitor-exit v5
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_f

    :try_start_30
    throw p1

    :cond_27
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "cfg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move v5, v0

    :goto_19
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_2a

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "itemname"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "forceSwitch"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_28

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "itemvalue"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "forceSwitch"

    invoke-virtual {v4, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[OnlineConfig] resolveConfigFromJSON forceSwitch:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    :cond_28
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "itemname"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "version"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "itemvalue"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "version"

    invoke-virtual {v4, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[OnlineConfig] resolveConfigFromJSON cfgVersion:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " |CFG_VERSOON:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Lcom/android/server/am/OnePlusBackgroundFrozen;->g0:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    if-eqz v6, :cond_29

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget v8, Lcom/android/server/am/OnePlusBackgroundFrozen;->g0:I

    if-le v7, v8, :cond_29

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sput v6, Lcom/android/server/am/OnePlusBackgroundFrozen;->g0:I

    const-string v6, "/data/system/data_bpm/cfg.xml"

    invoke-static {v6, v4}, Lcom/android/server/am/OnePlusBackgroundFrozen;->g3(Ljava/lang/String;Ljava/util/HashMap;)Z

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U3()V
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_30 .. :try_end_30} :catch_1
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_0
    .catchall {:try_start_30 .. :try_end_30} :catchall_10

    :cond_29
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_19

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_2b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON sIsHydrogenVersion:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->W:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON sEnable:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->z0:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON sNativeEnable:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "persist.sys.opbf.nativenable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON sResAsyncBinder:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->t0:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON sEnablePacket:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->u0:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON sWiFiLockEnable:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->A0:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON slimitScreenWifilockEvent:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->C0:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON slimitFgSer:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->B0:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON sUidStateCut:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->i0:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON sResStopSer:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->v2:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON sCfgVersion:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->g0:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON sBootDelayTime:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->j0:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON sCheckDelayTime:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->k0:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON sForegroundSwitchProtectTime:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->l0:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON sMaxCumStopSerCount:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->t2:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON mWifiLockBlackList:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->bud:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON mPacketWhiteList:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vdw:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON mCareSystemList:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->qeg:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON mLastFreezeWhiteList:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->veq:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON mLastAppStandbyWhiteList:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->cgv:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON mSpecialThirdBindActionList:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vju:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON mResStopServiceBlackList:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->k:Ljava/util/HashSet;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1a
    const-string p1, "[OnlineConfig] resolveConfigFromJSON sSpecialJob:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/server/am/OnePlusBackgroundFrozen;->P0:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    goto/16 :goto_1b

    :catchall_10
    move-exception p1

    goto/16 :goto_1c

    :catch_0
    move-exception p1

    :try_start_31
    const-string v0, "OPBF"

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
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_10

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON sIsHydrogenVersion:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->W:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON sEnable:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->z0:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON sNativeEnable:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "persist.sys.opbf.nativenable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON sResAsyncBinder:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->t0:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON sEnablePacket:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->u0:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON sWiFiLockEnable:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->A0:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON slimitScreenWifilockEvent:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->C0:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON slimitFgSer:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->B0:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON sUidStateCut:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->i0:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON sResStopSer:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->v2:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON sCfgVersion:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->g0:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON sBootDelayTime:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->j0:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON sCheckDelayTime:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->k0:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON sForegroundSwitchProtectTime:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->l0:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON sMaxCumStopSerCount:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->t2:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON mWifiLockBlackList:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->bud:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON mPacketWhiteList:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vdw:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON mCareSystemList:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->qeg:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON mLastFreezeWhiteList:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->veq:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON mLastAppStandbyWhiteList:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->cgv:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON mSpecialThirdBindActionList:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vju:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON mResStopServiceBlackList:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->k:Ljava/util/HashSet;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_1a

    :catch_1
    move-exception p1

    :try_start_32
    const-string v0, "OPBF"

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
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_10

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON sIsHydrogenVersion:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->W:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON sEnable:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->z0:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON sNativeEnable:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "persist.sys.opbf.nativenable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON sResAsyncBinder:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->t0:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON sEnablePacket:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->u0:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON sWiFiLockEnable:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->A0:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON slimitScreenWifilockEvent:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->C0:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON slimitFgSer:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->B0:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON sUidStateCut:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->i0:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON sResStopSer:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->v2:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON sCfgVersion:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->g0:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON sBootDelayTime:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->j0:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON sCheckDelayTime:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->k0:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON sForegroundSwitchProtectTime:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->l0:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON sMaxCumStopSerCount:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->t2:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON mWifiLockBlackList:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->bud:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON mPacketWhiteList:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vdw:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON mCareSystemList:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->qeg:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON mLastFreezeWhiteList:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->veq:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON mLastAppStandbyWhiteList:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->cgv:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON mSpecialThirdBindActionList:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vju:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON mResStopServiceBlackList:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->k:Ljava/util/HashSet;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_1a

    :goto_1b
    return-void

    :goto_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] resolveConfigFromJSON sIsHydrogenVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->W:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] resolveConfigFromJSON sEnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->z0:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] resolveConfigFromJSON sNativeEnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "persist.sys.opbf.nativenable"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] resolveConfigFromJSON sResAsyncBinder:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->t0:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] resolveConfigFromJSON sEnablePacket:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->u0:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] resolveConfigFromJSON sWiFiLockEnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->A0:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] resolveConfigFromJSON slimitScreenWifilockEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->C0:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] resolveConfigFromJSON slimitFgSer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->B0:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] resolveConfigFromJSON sUidStateCut:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->i0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] resolveConfigFromJSON sResStopSer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->v2:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] resolveConfigFromJSON sCfgVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->g0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] resolveConfigFromJSON sBootDelayTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/android/server/am/OnePlusBackgroundFrozen;->j0:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] resolveConfigFromJSON sCheckDelayTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/android/server/am/OnePlusBackgroundFrozen;->k0:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] resolveConfigFromJSON sForegroundSwitchProtectTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/android/server/am/OnePlusBackgroundFrozen;->l0:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] resolveConfigFromJSON sMaxCumStopSerCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->t2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] resolveConfigFromJSON mWifiLockBlackList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->bud:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] resolveConfigFromJSON mPacketWhiteList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vdw:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] resolveConfigFromJSON mCareSystemList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->qeg:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] resolveConfigFromJSON mLastFreezeWhiteList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->veq:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] resolveConfigFromJSON mLastAppStandbyWhiteList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->cgv:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] resolveConfigFromJSON mSpecialThirdBindActionList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vju:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[OnlineConfig] resolveConfigFromJSON mResStopServiceBlackList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->k:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON sSpecialJob:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->P0:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    throw p1
.end method

.method private e4(IIZ)V
    .locals 9

    const-string p0, " : close Exception : "

    const-string v0, "IOException --> writePidToTasksFile : uid:"

    const-string v1, ", pid="

    const-string v2, "OPBF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writePidToTasksFile uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " |pid:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " |retry:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    invoke-static {v5, v3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    const/4 v3, 0x0

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/dev/op_cgroup/freezer/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "/tasks"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    :cond_0
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " not exist ------- Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/io/FileOutputStream;->write([B)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "writePidToTasksFile():uid:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " --> ok"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :catchall_0
    move-exception p3

    move-object v3, v7

    goto/16 :goto_3

    :catch_1
    move-exception v5

    move-object v3, v7

    goto :goto_0

    :catchall_1
    move-exception p3

    goto :goto_3

    :catch_2
    move-exception v5

    :goto_0
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pid:"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Exception:"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz p3, :cond_2

    sget-object p3, Lcom/android/server/am/OnePlusBackgroundFrozen;->H0:Landroid/os/Handler;

    const/16 v4, 0xc

    invoke-static {p1, v4}, Lcom/android/server/am/OnePlusBackgroundFrozen;->N0(II)I

    move-result v4

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p3, v4, p2, v5, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    sget-object v4, Lcom/android/server/am/OnePlusBackgroundFrozen;->H0:Landroid/os/Handler;

    const-wide/16 v5, 0x7d0

    invoke-virtual {v4, p3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    if-eqz v3, :cond_3

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-void

    :goto_3
    if-eqz v3, :cond_4

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_4
    throw p3
.end method

.method static synthetic ear(Lcom/android/server/am/OnePlusBackgroundFrozen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->K1()V

    return-void
.end method

.method static synthetic f(Lcom/android/server/am/OnePlusBackgroundFrozen;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->e3(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic f0()I
    .locals 1

    sget v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->M0:I

    return v0
.end method

.method private f1()V
    .locals 6

    new-instance v0, Lcom/android/server/am/OnePlusBackgroundFrozen$ywr;

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->wtn:Lcom/android/server/am/OnePlusBackgroundFrozen$ywr;

    iget v1, v1, Lcom/android/server/am/OnePlusBackgroundFrozen$ywr;->zta:I

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/am/OnePlusBackgroundFrozen$ywr;-><init>(Lcom/android/server/am/OnePlusBackgroundFrozen;ILcom/android/server/am/OnePlusBackgroundFrozen$zta;)V

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->wtn:Lcom/android/server/am/OnePlusBackgroundFrozen$ywr;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->wtn:Lcom/android/server/am/OnePlusBackgroundFrozen$ywr;

    iget-object v2, v2, Lcom/android/server/am/OnePlusBackgroundFrozen$ywr;->you:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;

    invoke-static {v0, v3}, Lcom/android/server/am/OnePlusBackgroundFrozen$ywr;->zta(Lcom/android/server/am/OnePlusBackgroundFrozen$ywr;Lcom/android/server/am/OnePlusBackgroundFrozen$cno;)V

    goto :goto_0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->ugm:Landroid/util/SparseArray;

    monitor-enter v2

    const/4 v1, 0x0

    move v3, v1

    :goto_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->ugm:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->ugm:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    iget-object v4, v4, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->cjf:Lcom/android/server/am/OnePlusBackgroundFrozen$cno;

    invoke-static {v0, v4}, Lcom/android/server/am/OnePlusBackgroundFrozen$ywr;->zta(Lcom/android/server/am/OnePlusBackgroundFrozen$ywr;Lcom/android/server/am/OnePlusBackgroundFrozen$cno;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBackgroundFrozen$ywr;->you(Lcom/android/server/am/OnePlusBackgroundFrozen$ywr;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->Y2(Ljava/util/ArrayList;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# dumpTop # size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/am/OnePlusBackgroundFrozen$ywr;->zta:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", operated size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->wtn:Lcom/android/server/am/OnePlusBackgroundFrozen$ywr;

    iget p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$ywr;->zta:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    invoke-static {v2, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    iget-object p0, v0, Lcom/android/server/am/OnePlusBackgroundFrozen$ywr;->you:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# dumpTop # i = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " operated:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->ssp:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ct:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->sis:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " cs:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->rtg:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->zta:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pkg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->you:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " cbt:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/am/OnePlusBackgroundFrozen$cno;->cno:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    add-int/2addr v1, v2

    goto :goto_2

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method private f2()V
    .locals 4

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-direct {v2, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->n1(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->qeg:Ljava/util/HashSet;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->qeg:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-void
.end method

.method private static f3(Ljava/util/HashSet;Ljava/lang/String;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const-string v0, "p"

    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v5

    const-string v6, "utf-8"

    invoke-interface {v5, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v5, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-interface {v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saveConfigXml saved pkg is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    if-eqz v6, :cond_0

    invoke-interface {v5, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "att"

    invoke-interface {v5, v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v5, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    :cond_1
    invoke-interface {v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return v2

    :catchall_0
    move-exception p0

    move-object v3, v4

    goto :goto_4

    :catch_1
    move-exception p0

    move-object v3, v4

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    :goto_2
    :try_start_3
    const-string v0, "OPBF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write state: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_3
    return v2

    :goto_4
    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_5
    throw p0
.end method

.method static synthetic fto(Lcom/android/server/am/OnePlusBackgroundFrozen;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->A1(II)V

    return-void
.end method

.method static synthetic g(Lcom/android/server/am/OnePlusBackgroundFrozen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->E1()V

    return-void
.end method

.method static synthetic g0()I
    .locals 1

    sget v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->N0:I

    return v0
.end method

.method private g1(Ljava/lang/String;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# forced operation frozenAll # exceptPkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->h1()Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    if-eqz p1, :cond_1

    iget-object v0, v1, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->you:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->n(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;JJJ)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static final g2(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/OnePlusBackgroundFrozen;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    sput-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    :cond_0
    sget-object p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    return-object p0
.end method

.method private static g3(Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "item"

    const-string v1, "cfg"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveXml:path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    :cond_0
    const-string v4, "line.separator"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    :cond_1
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v6

    const-string v7, "utf-8"

    invoke-interface {v6, p0, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v6, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-interface {v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v6, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v6, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, "name"

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v6, v5, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v6, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    :cond_2
    invoke-interface {v6, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return v3

    :catchall_0
    move-exception p1

    move-object v5, p0

    move-object p0, p1

    goto :goto_4

    :catch_1
    move-exception p1

    move-object v5, p0

    move-object p0, p1

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    :goto_2
    :try_start_3
    const-string p1, "OPBF"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to write state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v5, :cond_3

    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_3
    return v2

    :goto_4
    if-eqz v5, :cond_4

    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_5
    throw p0
.end method

.method static synthetic gck(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->o1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic gwm(Lcom/android/server/am/OnePlusBackgroundFrozen;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->z2(I)Z

    move-result p0

    return p0
.end method

.method static synthetic h(Lcom/android/server/am/OnePlusBackgroundFrozen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->D1()V

    return-void
.end method

.method static synthetic h0(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->z0(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private h1()Ljava/util/HashSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->ugm:Landroid/util/SparseArray;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->ugm:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->ugm:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->ugm:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private h2()V
    .locals 2

    const/4 v0, 0x2

    const-string v1, "initLists"

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->e2()V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->o2()V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->m2()V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->p2()V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->l2()V

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->n2()V

    return-void
.end method

.method private h3(IILjava/lang/String;)V
    .locals 2

    sget-object p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->H0:Landroid/os/Handler;

    const/4 v0, 0x0

    const/16 v1, 0x11

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->N0(II)I

    move-result v0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    sget-object p1, Lcom/android/server/am/OnePlusBackgroundFrozen;->H0:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic hmo(Lcom/android/server/am/OnePlusBackgroundFrozen;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->L1(I)V

    return-void
.end method

.method static synthetic i(Lcom/android/server/am/OnePlusBackgroundFrozen;IJJJ)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/server/am/OnePlusBackgroundFrozen;->G3(IJJJ)V

    return-void
.end method

.method static synthetic i0(Lcom/android/server/am/OnePlusBackgroundFrozen;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->b3(I)V

    return-void
.end method

.method private i1(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->ear:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->ear:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

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

.method private static i2([J)J
    .locals 5

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    aget-wide v3, p0, v2

    or-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method private i3(II)V
    .locals 2

    sget-object p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->H0:Landroid/os/Handler;

    const/4 v0, 0x0

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->N0(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    sget-object p1, Lcom/android/server/am/OnePlusBackgroundFrozen;->H0:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic ibl(Lcom/android/server/am/OnePlusBackgroundFrozen;)Lcom/oneplus/config/ConfigObserver;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->ssp:Lcom/oneplus/config/ConfigObserver;

    return-object p0
.end method

.method static synthetic igw(Lcom/android/server/am/OnePlusBackgroundFrozen;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->P0(I)I

    move-result p0

    return p0
.end method

.method static synthetic ire(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->n0:Z

    return p0
.end method

.method static synthetic irq(I)I
    .locals 0

    sput p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->h0:I

    return p0
.end method

.method static synthetic ivd(Lcom/android/server/am/OnePlusBackgroundFrozen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->e1()V

    return-void
.end method

.method static synthetic j(Lcom/android/server/am/OnePlusBackgroundFrozen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->Y0()V

    return-void
.end method

.method static synthetic j0(Lcom/android/server/am/OnePlusBackgroundFrozen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->a1()V

    return-void
.end method

.method public static j1()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->z0:Z

    return v0
.end method

.method private j2()V
    .locals 5

    const/4 v0, 0x2

    const-string v1, "initOnlineConfig"

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->zta:Landroid/content/Context;

    sget-object v2, Lcom/android/server/am/OnePlusBackgroundFrozen;->H0:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/am/OnePlusBackgroundFrozen$igw;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen$igw;-><init>(Lcom/android/server/am/OnePlusBackgroundFrozen;)V

    const-string v4, "ProcessFreezer"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->ssp:Lcom/oneplus/config/ConfigObserver;

    sget-object p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->H0:Landroid/os/Handler;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->N0(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    sget-wide v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->j0:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private j3(ILjava/lang/String;)V
    .locals 2

    sget-object p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->H0:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->N0(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    sget-object p1, Lcom/android/server/am/OnePlusBackgroundFrozen;->H0:Landroid/os/Handler;

    sget-wide v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->k0:J

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method static synthetic k(Lcom/android/server/am/OnePlusBackgroundFrozen;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->c1(I)V

    return-void
.end method

.method static synthetic k0(Lcom/android/server/am/OnePlusBackgroundFrozen;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->x3(I)V

    return-void
.end method

.method private static k1()I
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->p0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    sput v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->h0:I

    goto :goto_1

    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->o0:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->n0:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->m0:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    sget v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->h0:I

    return v0
.end method

.method private k2()V
    .locals 2

    const/4 v0, 0x2

    const-string v1, "initOpSmartPowerControl"

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_smart_power_control:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ire;

    iput-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->rtg:Lcom/android/server/ire;

    return-void
.end method

.method private k3(I)V
    .locals 2

    sget-object p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->H0:Landroid/os/Handler;

    const/16 v0, 0x13

    invoke-static {p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->N0(II)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    sget-object p1, Lcom/android/server/am/OnePlusBackgroundFrozen;->H0:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic kth(Lcom/android/server/am/OnePlusBackgroundFrozen;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->v3(I)V

    return-void
.end method

.method static synthetic l(Lcom/android/server/am/OnePlusBackgroundFrozen;IZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->D3(IZLjava/lang/String;)V

    return-void
.end method

.method static synthetic l0(Lcom/android/server/am/OnePlusBackgroundFrozen;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->s3(I)V

    return-void
.end method

.method private l2()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vdw:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vdw:Ljava/util/HashSet;

    const-string v2, "com.tencent.mm"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vdw:Ljava/util/HashSet;

    const-string v2, "com.tencent.mobileqq"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vdw:Ljava/util/HashSet;

    const-string v2, "com.p1.mobile.putong"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vdw:Ljava/util/HashSet;

    const-string v2, "cn.soulapp.android"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vdw:Ljava/util/HashSet;

    const-string v2, "com.immomo.momo"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vdw:Ljava/util/HashSet;

    const-string v2, "com.tencent.tim"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vdw:Ljava/util/HashSet;

    const-string v2, "com.alibaba.android.rimet"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vdw:Ljava/util/HashSet;

    const-string v2, "com.taobao.qianniu"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vdw:Ljava/util/HashSet;

    const-string v2, "com.sankuai.meituan.meituanwaimaibusiness"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vdw:Ljava/util/HashSet;

    const-string v2, "com.xunmeng.merchant"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vdw:Ljava/util/HashSet;

    const-string v2, "me.ele.napos"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vdw:Ljava/util/HashSet;

    const-string v2, "com.sankuai.meituan.dispatch.homebrew"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vdw:Ljava/util/HashSet;

    const-string v2, "com.lalamove.huolala.driver"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vdw:Ljava/util/HashSet;

    const-string v2, "com.dada.mobile.android"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vdw:Ljava/util/HashSet;

    const-string v2, "com.sankuai.mhotel"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vdw:Ljava/util/HashSet;

    const-string v2, "com.alibaba.icbu.app.seller"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vdw:Ljava/util/HashSet;

    const-string v2, "com.merchantplatform"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vdw:Ljava/util/HashSet;

    const-string v2, "com.sfexpress.knight"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vdw:Ljava/util/HashSet;

    const-string v2, "com.cxyw.suyun.ui"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vdw:Ljava/util/HashSet;

    const-string v2, "com.baidu.lbs.xinlingshou"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vdw:Ljava/util/HashSet;

    const-string v2, "com.alibaba.icbu.app.aliexpress.seller"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vdw:Ljava/util/HashSet;

    const-string v2, "com.zhuanzhuan.seller"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vdw:Ljava/util/HashSet;

    const-string v2, "com.taobao.trip.merchant"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vdw:Ljava/util/HashSet;

    const-string v1, "com.alibaba.wireless"

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private l3(IZLjava/lang/String;)V
    .locals 1

    sget-object p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->H0:Landroid/os/Handler;

    const/16 v0, 0xf

    invoke-static {p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->N0(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    sget-object p1, Lcom/android/server/am/OnePlusBackgroundFrozen;->H0:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic les(Lcom/android/server/am/OnePlusBackgroundFrozen;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->a4(Z)V

    return-void
.end method

.method static synthetic lqr(Lcom/android/server/am/OnePlusBackgroundFrozen;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->P1(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic m(Lcom/android/server/am/OnePlusBackgroundFrozen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->Z0()V

    return-void
.end method

.method static synthetic m0(Lcom/android/server/am/OnePlusBackgroundFrozen;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->k3(I)V

    return-void
.end method

.method private m1(I)Ljava/lang/String;
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r1(I)Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->you:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object p0, v0, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->you:Ljava/lang/String;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->sis:Landroid/content/pm/PackageManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->sis:Landroid/content/pm/PackageManager;

    aget-object v5, v0, v3

    invoke-virtual {v4, v5, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_1

    aget-object p0, v0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPackageNameByUid uid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " Exception:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OPBF"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-object v1
.end method

.method private m2()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->k:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->k:Ljava/util/HashSet;

    const-string v1, "com.tencent.qqlive/.module.push.PushService"

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private m3(Ljava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    sget-object p1, Lcom/android/server/am/OnePlusBackgroundFrozen;->H0:Landroid/os/Handler;

    const/4 v0, 0x0

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->N0(II)I

    move-result v1

    invoke-virtual {p1, v1, v0, v0, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    sget-object p1, Lcom/android/server/am/OnePlusBackgroundFrozen;->H0:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic n(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;IZZ)I
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/OnePlusBackgroundFrozen;->v2(Ljava/lang/String;IZZ)I

    move-result p0

    return p0
.end method

.method static synthetic n0(Lcom/android/server/am/OnePlusBackgroundFrozen;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->t3(IZ)V

    return-void
.end method

.method private n1(Ljava/lang/String;)I
    .locals 3

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->sis:Landroid/content/pm/PackageManager;

    const/4 v0, -0x1

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPackageUidByName name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Exception:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OPBF"

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v0
.end method

.method private n2()V
    .locals 4

    sget-object p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->P0:Ljava/util/HashMap;

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "*job*/com.google.android.providers.media.module/com.android.providers.media.MediaService"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->P0:Ljava/util/HashMap;

    const-string v2, "com.google.android.providers.media.module"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private n3()V
    .locals 3

    sget-object p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->H0:Landroid/os/Handler;

    const/4 v0, 0x0

    const/16 v1, 0xe

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->N0(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v0, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->H0:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic o(Lcom/android/server/am/OnePlusBackgroundFrozen;)Lcom/android/server/am/OnePlusBackgroundFrozen$bio;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->bvj:Lcom/android/server/am/OnePlusBackgroundFrozen$bio;

    return-object p0
.end method

.method static synthetic o0(Lcom/android/server/am/OnePlusBackgroundFrozen;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->u3(IZ)V

    return-void
.end method

.method private o1(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    instance-of p0, p1, Ljava/lang/String;

    if-eqz p0, :cond_0

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method private o2()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vju:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vju:Ljava/util/HashSet;

    const-string v1, "android.support.customtabs.action.CustomTabsService"

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private o3(I)V
    .locals 2

    sget-object p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->H0:Landroid/os/Handler;

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->N0(II)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    sget-object p1, Lcom/android/server/am/OnePlusBackgroundFrozen;->H0:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic obl(Lcom/android/server/am/OnePlusBackgroundFrozen;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->Y1(I)V

    return-void
.end method

.method static synthetic oif(Lcom/android/server/am/OnePlusBackgroundFrozen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->M1()V

    return-void
.end method

.method static synthetic oxb(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/util/HashSet;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->I1(Ljava/util/HashSet;)V

    return-void
.end method

.method static synthetic p(Lcom/android/server/am/OnePlusBackgroundFrozen;)I
    .locals 0

    iget p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->ivd:I

    return p0
.end method

.method static synthetic p0()I
    .locals 1

    sget v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->i0:I

    return v0
.end method

.method private p1()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->gwm:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->ibl:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private p2()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->bud:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->bud:Ljava/util/HashSet;

    const-string v2, "com.tencent.qqpim"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->bud:Ljava/util/HashSet;

    const-string v1, "com.heytap.reader"

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private p3(ILjava/lang/String;)V
    .locals 1

    sget-object p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->H0:Landroid/os/Handler;

    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->N0(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    sget-object p1, Lcom/android/server/am/OnePlusBackgroundFrozen;->H0:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic q(Lcom/android/server/am/OnePlusBackgroundFrozen;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->ivd:I

    return p1
.end method

.method static synthetic q0(Lcom/android/server/am/OnePlusBackgroundFrozen;)Lcom/android/server/am/OnePlusBackgroundFrozen$ywr;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->wtn:Lcom/android/server/am/OnePlusBackgroundFrozen$ywr;

    return-object p0
.end method

.method private q1(I)Lcom/android/server/am/OnePlusBackgroundFrozen$gck;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->zgw:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->zgw:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/OnePlusBackgroundFrozen$gck;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private q2(IILjava/lang/String;I)Z
    .locals 0

    const/4 p0, 0x1

    if-nez p3, :cond_0

    return p0

    :cond_0
    const-string p1, "android.media.IAudioFocusDispatcher"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "android.media.IAudioPolicyServiceClient"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "android.media.IAudioFlingerClient"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :cond_2
    :goto_0
    return p0
.end method

.method private q3(ILjava/lang/String;)V
    .locals 2

    sget-boolean p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->s0:Z

    const/4 v0, 0x0

    if-nez p0, :cond_0

    invoke-static {p1, v0}, Landroid/os/Binder;->setBlockUid(IZ)V

    :cond_0
    sget-object p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->H0:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->N0(II)I

    move-result p1

    invoke-virtual {p0, p1, v0, v0, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    sget-object p1, Lcom/android/server/am/OnePlusBackgroundFrozen;->H0:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic qbh(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->o0:Z

    return p0
.end method

.method static synthetic qeg(Lcom/android/server/am/OnePlusBackgroundFrozen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->f1()V

    return-void
.end method

.method static synthetic r()Lcom/android/server/am/OnePlusBackgroundFrozen;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    return-object v0
.end method

.method static synthetic r0(Lcom/android/server/am/OnePlusBackgroundFrozen;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->obl:Ljava/util/HashMap;

    return-object p0
.end method

.method private r1(I)Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->ugm:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->ugm:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSpecificUidCache ret is null, uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

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

.method private static r2(I)Z
    .locals 4

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->qeg:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    sget-object v2, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    iget-object v2, v2, Lcom/android/server/am/OnePlusBackgroundFrozen;->qeg:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v0

    return v1

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
    invoke-static {p0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_1
    return v1
.end method

.method private r3(Z)V
    .locals 3

    sget-object p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->H0:Landroid/os/Handler;

    const/4 v0, 0x0

    const/16 v1, 0x16

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->N0(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, p1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    sget-object p1, Lcom/android/server/am/OnePlusBackgroundFrozen;->H0:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic rtg(Lcom/android/server/am/OnePlusBackgroundFrozen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->n3()V

    return-void
.end method

.method static synthetic s(Lcom/android/server/am/OnePlusBackgroundFrozen;)Lcom/android/server/am/ActivityManagerService;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->you:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method

.method static synthetic s0(Lcom/android/server/am/OnePlusBackgroundFrozen;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->les:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static s2()Z
    .locals 3

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->k1()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method private s3(I)V
    .locals 2

    sget-object p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->H0:Landroid/os/Handler;

    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->N0(II)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    sget-object p1, Lcom/android/server/am/OnePlusBackgroundFrozen;->H0:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic sis(Lcom/android/server/am/OnePlusBackgroundFrozen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->w3()V

    return-void
.end method

.method static synthetic ssp(I)Z
    .locals 0

    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r2(I)Z

    move-result p0

    return p0
.end method

.method static synthetic t()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->w0:Z

    return v0
.end method

.method static synthetic t0(Lcom/android/server/am/OnePlusBackgroundFrozen;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->irq:Ljava/util/ArrayList;

    return-object p0
.end method

.method private t1(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->obl:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->obl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private t3(IZ)V
    .locals 2

    sget-object p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->H0:Landroid/os/Handler;

    const/16 v0, 0x14

    invoke-static {p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->N0(II)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    sget-object p1, Lcom/android/server/am/OnePlusBackgroundFrozen;->H0:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic tsu(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->p0:Z

    return p0
.end method

.method static synthetic u(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->w0:Z

    return p0
.end method

.method static synthetic u0(Lcom/android/server/am/OnePlusBackgroundFrozen;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->qeg:Ljava/util/HashSet;

    return-object p0
.end method

.method private u1(I)Z
    .locals 10

    const-string p0, " isfreeze:"

    const-string v0, " : close Exception : "

    const-string v1, "IOException --> getUidFreezeState : uid:"

    const-string v2, "OPBF"

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/dev/op_cgroup/freezer/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/freezer.state"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v5, 0x3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getUidFreezeState(): uid ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    return v4

    :cond_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v7, "FROZEN"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    move v4, v3

    :cond_1
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catchall_0
    move-exception p0

    move-object v3, v5

    goto :goto_5

    :catch_1
    move-exception v3

    move-object v9, v5

    move-object v5, v3

    move-object v3, v9

    goto :goto_1

    :catch_2
    move-exception v5

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v6, v3

    goto :goto_5

    :catch_3
    move-exception v5

    move-object v6, v3

    :goto_1
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getUidFreezeState uid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " Exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v3, :cond_2

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    goto :goto_2

    :catch_4
    move-exception v3

    goto :goto_3

    :cond_2
    :goto_2
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_3
    :goto_4
    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUidFreezeState():uid ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    return v4

    :catchall_2
    move-exception p0

    :goto_5
    if-eqz v3, :cond_4

    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    goto :goto_6

    :catch_5
    move-exception v3

    goto :goto_7

    :cond_4
    :goto_6
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_8

    :goto_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_8
    throw p0
.end method

.method private u2(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->bud:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->bud:Ljava/util/HashSet;

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

.method private u3(IZ)V
    .locals 2

    sget-object p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->H0:Landroid/os/Handler;

    const/16 v0, 0x15

    invoke-static {p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->N0(II)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    sget-object p1, Lcom/android/server/am/OnePlusBackgroundFrozen;->H0:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic ugm(Lcom/android/server/am/OnePlusBackgroundFrozen;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->E3(IZ)V

    return-void
.end method

.method static synthetic v()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->x0:Z

    return v0
.end method

.method static synthetic v0(Lcom/android/server/am/OnePlusBackgroundFrozen;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->veq:Ljava/util/HashSet;

    return-object p0
.end method

.method private v1()V
    .locals 5

    :try_start_0
    const-string v0, "android.net.wifi.WifiManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setHighPerfRestrict"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->j:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception happened: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OPBF"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private v2(Ljava/lang/String;IZZ)I
    .locals 2

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/am/AppRecordManager;->ibl(Ljava/lang/String;IZZ)I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isPkgHoldNotification pkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " uid:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " isCareFg:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " isPosted:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " ret:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    invoke-static {p2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    return p0
.end method

.method private v3(I)V
    .locals 2

    sget-object p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->H0:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->N0(II)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    sget-object p1, Lcom/android/server/am/OnePlusBackgroundFrozen;->H0:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic vdb(Lcom/android/server/am/OnePlusBackgroundFrozen;ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->C3(ILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic vdw(Lcom/android/server/am/OnePlusBackgroundFrozen;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->b1(IZ)V

    return-void
.end method

.method static synthetic veq(Lcom/android/server/am/OnePlusBackgroundFrozen;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->d3(I)V

    return-void
.end method

.method static synthetic vju(Lcom/android/server/am/OnePlusBackgroundFrozen;ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->J3(ILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic w(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->x0:Z

    return p0
.end method

.method static synthetic w0(Lcom/android/server/am/OnePlusBackgroundFrozen;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->lqr:Ljava/util/HashSet;

    return-object p0
.end method

.method public static w1(IZ)V
    .locals 3

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r2(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event gpsEvent uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |hold:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->G1(IZ)V

    :cond_1
    return-void
.end method

.method public static w2(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 6

    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->v2:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->k:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r1(I)Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    move-result-object v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    invoke-static {v0}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->l(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    iget-object v0, v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->k:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/android/server/am/OnePlusBackgroundFrozen;->w2:Landroid/util/SparseArray;

    invoke-virtual {v3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v3, :cond_5

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/android/server/am/OnePlusBackgroundFrozen;->w2:Landroid/util/SparseArray;

    invoke-virtual {p1, p0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->x2:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    sget-object v3, Lcom/android/server/am/OnePlusBackgroundFrozen;->w2:Landroid/util/SparseArray;

    invoke-virtual {v3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    sget-object v3, Lcom/android/server/am/OnePlusBackgroundFrozen;->w2:Landroid/util/SparseArray;

    invoke-virtual {v3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/android/server/am/OnePlusBackgroundFrozen;->w2:Landroid/util/SparseArray;

    invoke-virtual {v3, p0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_6
    sget-object v2, Lcom/android/server/am/OnePlusBackgroundFrozen;->x2:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/android/server/am/OnePlusBackgroundFrozen;->x2:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v4

    goto :goto_0

    :cond_7
    move v2, v4

    :goto_0
    sget-object v3, Lcom/android/server/am/OnePlusBackgroundFrozen;->x2:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, p2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v3, Lcom/android/server/am/OnePlusBackgroundFrozen;->t2:I

    if-le v2, v3, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restrict StopServiceForIdle uid:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " pkg:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " compName:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " stopCount:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    monitor-exit v0

    return v4

    :cond_8
    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private w3()V
    .locals 3

    sget-object p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->H0:Landroid/os/Handler;

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->N0(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v0, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->H0:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic wtn(Lcom/android/server/am/OnePlusBackgroundFrozen;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->R0(I)I

    move-result p0

    return p0
.end method

.method static synthetic x(Lcom/android/server/am/OnePlusBackgroundFrozen;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->g1(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic x0(Lcom/android/server/am/OnePlusBackgroundFrozen;)Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->kth:Landroid/content/ContentResolver;

    return-object p0
.end method

.method private x1(IILcom/android/server/am/ProcessRecord;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->z2(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "AddProc"

    invoke-direct {p0, p1, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->V0(ILjava/lang/String;)Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0, p2, p3}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->qbh(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;ILcom/android/server/am/ProcessRecord;)V

    if-eqz v0, :cond_0

    invoke-static {p0, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->cno(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;I)V

    if-eqz p3, :cond_0

    iget-object p1, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz p1, :cond_0

    iget-object p1, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->kth(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;Ljava/lang/String;)V

    iget-object p1, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->y2(I)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->bio(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;Z)V

    iget-boolean p1, p3, Lcom/android/server/am/ProcessRecord;->isolated:Z

    invoke-static {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->igw(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;Z)V

    :cond_0
    const-string p1, "add proc"

    invoke-static {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->ywr(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private x3(I)V
    .locals 2

    const/16 p0, 0xd

    invoke-static {p1, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->N0(II)I

    move-result p0

    sget-object p1, Lcom/android/server/am/OnePlusBackgroundFrozen;->H0:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeMessages(I)V

    sget-object p1, Lcom/android/server/am/OnePlusBackgroundFrozen;->H0:Landroid/os/Handler;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    sget-object p1, Lcom/android/server/am/OnePlusBackgroundFrozen;->H0:Landroid/os/Handler;

    sget-wide v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->l0:J

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method static synthetic y(Lcom/android/server/am/OnePlusBackgroundFrozen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->M3()V

    return-void
.end method

.method static synthetic y0(Lcom/android/server/am/OnePlusBackgroundFrozen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U3()V

    return-void
.end method

.method private y1(IZ)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r1(I)Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->cjf(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;Z)V

    :cond_0
    return-void
.end method

.method public static y2(I)Z
    .locals 0

    and-int/lit16 p0, p0, 0x81

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static y3(II)V
    .locals 0

    invoke-static {p0, p1}, Landroid/os/Process;->sendSignal(II)V

    return-void
.end method

.method static synthetic you()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->p0:Z

    return v0
.end method

.method static synthetic ywr(Lcom/android/server/am/OnePlusBackgroundFrozen;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->N2()V

    return-void
.end method

.method static synthetic z(ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    return-void
.end method

.method private z0(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->A0(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private z1(IIZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r1(I)Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p2, p3, p4}, Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;->bud(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;IZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private z2(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->ugm:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->ugm:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :cond_0
    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private z3(Landroid/os/Message;II)V
    .locals 0

    iput p2, p1, Landroid/os/Message;->arg1:I

    iput p3, p1, Landroid/os/Message;->arg2:I

    sget-object p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->J0:Landroid/os/Handler;

    const-wide/16 p2, 0x2710

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method static synthetic zgw(Lcom/android/server/am/OnePlusBackgroundFrozen;Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->C1(Lcom/android/server/am/OnePlusBackgroundFrozen$qbh;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public K0()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->a:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public synthetic L2(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->K2(I)V

    return-void
.end method

.method R2()V
    .locals 5

    const-string p0, "/data/system/data_bpm/cfg.xml"

    invoke-static {p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->S2(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "version"

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v3, "forceSwitch"

    const-string v4, "on"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->g3(Ljava/lang/String;Ljava/util/HashMap;)Z

    move p0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    sput p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->g0:I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loadVersion sCfgVersion = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->g0:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    return-void
.end method

.method public V3(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->L0:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v1, p1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v0, v1, :cond_2

    invoke-static {v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r2(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget v0, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->a:Ljava/util/HashSet;

    iget v1, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->a:Ljava/util/HashSet;

    iget v1, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->s2()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->b:Ljava/util/HashSet;

    iget v0, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mImportantUids change ConnectionRecord app.uid = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " client = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object p1, p1, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget p1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPBF"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public W3(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->L0:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v0, v1, :cond_2

    invoke-static {v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r2(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget v0, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->a:Ljava/util/HashSet;

    iget v1, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->a:Ljava/util/HashSet;

    iget v1, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/server/am/OnePlusBackgroundFrozen;->s2()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->b:Ljava/util/HashSet;

    iget v0, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mImportantUids change ContentProviderConnection app.uid = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " client = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPBF"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public X0(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->you:Lcom/android/server/am/ActivityManagerService;

    monitor-enter p0

    :try_start_0
    sget-object p1, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    array-length p1, p2

    const/4 v0, 0x4

    if-ge p1, v0, :cond_1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    const/4 p1, 0x1

    :try_start_1
    aget-object p1, p2, p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "dumpCache"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    aget-object p1, p2, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x3

    aget-object v0, p2, v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-direct {v1, p1, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->b1(IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "OPBF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dump args:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " e:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public X3()V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->L0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->a:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->b:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mImportantUids change mLastImportantUids ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->b:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mImportantUids = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->a:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->a:Ljava/util/HashSet;

    invoke-static {v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->c2(Ljava/util/HashSet;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->b:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->b:Ljava/util/HashSet;

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public frontPackageChanged(Ljava/lang/String;IILjava/lang/String;II)V
    .locals 0

    sget-object p3, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    if-nez p3, :cond_0

    return-void

    :cond_0
    if-eq p2, p5, :cond_1

    const/4 p3, 0x4

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "event frontPackageChanged packageName:"

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, " |uid:"

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p6, " |luid:"

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    sget-object p3, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-direct {p3, p2, p5}, Lcom/android/server/am/OnePlusBackgroundFrozen;->F1(II)V

    invoke-direct {p0, p2, p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->L0(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected l1()Lcom/android/server/am/OnePlusBackgroundFrozen$bio;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->bvj:Lcom/android/server/am/OnePlusBackgroundFrozen$bio;

    return-object p0
.end method

.method public s1(Ljava/lang/String;Ljava/lang/String;)J
    .locals 1

    sget-object p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->P0:Ljava/util/HashMap;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->P0:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-nez p1, :cond_0

    const-wide/16 p1, 0x5a0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public t2(Ljava/lang/String;)Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->u0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vdw:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->vdw:Ljava/util/HashSet;

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

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public x2(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 p0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/server/am/OnePlusBackgroundFrozen;->P0:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->P0:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/am/OnePlusBackgroundFrozen;->P0:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :cond_2
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_0
    return p0
.end method

.method public zta(ILjava/lang/String;Z)V
    .locals 2

    sget-object p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/server/am/OnePlusBackgroundFrozen;->r2(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event appTouchWindowChanged uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |pkgName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " |showing:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/server/am/OnePlusBackgroundFrozen;->U2(ILjava/lang/String;)V

    sget-object p0, Lcom/android/server/am/OnePlusBackgroundFrozen;->G0:Lcom/android/server/am/OnePlusBackgroundFrozen;

    invoke-direct {p0, p1, p3}, Lcom/android/server/am/OnePlusBackgroundFrozen;->S1(IZ)V

    :cond_1
    return-void
.end method
