.class public Lcom/android/server/wm/OpPowerConsumpStats;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/wm/IOpPowerConsumpStats;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/OpPowerConsumpStats$PersistType;,
        Lcom/android/server/wm/OpPowerConsumpStats$SettleType;,
        Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;,
        Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;,
        Lcom/android/server/wm/OpPowerConsumpStats$OccludedStatus;,
        Lcom/android/server/wm/OpPowerConsumpStats$hmo;,
        Lcom/android/server/wm/OpPowerConsumpStats$StatusType;,
        Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;,
        Lcom/android/server/wm/OpPowerConsumpStats$ugm;,
        Lcom/android/server/wm/OpPowerConsumpStats$vdb;,
        Lcom/android/server/wm/OpPowerConsumpStats$ire;,
        Lcom/android/server/wm/OpPowerConsumpStats$ibl;,
        Lcom/android/server/wm/OpPowerConsumpStats$vju;,
        Lcom/android/server/wm/OpPowerConsumpStats$obl;,
        Lcom/android/server/wm/OpPowerConsumpStats$ear;,
        Lcom/android/server/wm/OpPowerConsumpStats$lqr;,
        Lcom/android/server/wm/OpPowerConsumpStats$bvj;,
        Lcom/android/server/wm/OpPowerConsumpStats$gwm;,
        Lcom/android/server/wm/OpPowerConsumpStats$cgv;,
        Lcom/android/server/wm/OpPowerConsumpStats$bud;,
        Lcom/android/server/wm/OpPowerConsumpStats$fto;,
        Lcom/android/server/wm/OpPowerConsumpStats$oxb;,
        Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;,
        Lcom/android/server/wm/OpPowerConsumpStats$zgw;,
        Lcom/android/server/wm/OpPowerConsumpStats$cjf;,
        Lcom/android/server/wm/OpPowerConsumpStats$veq;
    }
.end annotation


# static fields
.field private static final A0:I = 0x64

.field private static final A1:Ljava/lang/String; = "generatePowerConsumptionData"

.field public static final A2:I = -0x55

.field private static final B0:I = 0x1

.field private static final B1:Ljava/lang/String;

.field public static final B2:I = -0x54

.field private static final C0:I = 0x2

.field private static final C1:J = 0x5265c00L

.field private static final C2:I = 0x0

.field private static final D0:I = 0x3

.field private static D1:Z = false

.field private static final D2:I = 0x1

.field private static final E0:I = 0x4

.field private static E1:Z = false

.field private static final E2:I = 0x0

.field private static final F0:I = 0x5

.field private static F1:I = 0x0

.field private static final F2:I = 0x1

.field private static final G0:I = 0x6

.field private static G1:J = 0x0L

.field private static final H0:I = 0x7

.field private static H1:J = 0x0L

.field private static final I0:I = 0x8

.field private static I1:J = 0x0L

.field private static final J0:I = 0x9

.field private static J1:I = 0x0

.field private static final K0:I = 0xa

.field private static K1:I = 0x0

.field private static final L0:I = 0xb

.field private static L1:I = 0x0

.field private static final M0:I = 0xc

.field private static final M1:Ljava/lang/String; = "powerLevel"

.field private static final N0:I = 0xd

.field private static final N1:Ljava/lang/String; = "screen"

.field private static final O0:I = 0xe

.field private static final O1:Ljava/lang/String; = "plug"

.field private static final P0:I = 0xf

.field private static final P1:Ljava/lang/String; = "doze"

.field private static final Q0:I = 0x10

.field private static final Q1:Ljava/lang/String; = "frontPkg"

.field private static final R0:I = 0x11

.field private static final R1:I = 0x0

.field private static final S0:I = 0x12

.field private static final S1:Ljava/lang/String; = "/mnt/vendor/persist/engineermode/screenontimebyhours"

.field private static final T0:I = 0x13

.field private static final T1:Ljava/lang/String; = "ScreenON"

.field private static final U0:I = 0x14

.field private static final U1:I = -0x1

.field private static final V0:I = 0x0

.field private static final V1:I

.field private static final W0:I = 0x1

.field private static final W1:I = 0x3516c4c

.field private static final X0:I = 0x0

.field private static final X1:I = 0x2

.field private static final Y0:I = 0x1

.field private static final Y1:I = 0xf

.field private static final Z0:I = 0x0

.field private static final Z1:Ljava/lang/String; = "LockScreen"

.field private static final a1:I = 0x1

.field private static final a2:Ljava/text/SimpleDateFormat;

.field private static final b1:Ljava/lang/String; = "OPCS"

.field private static final b2:I = 0x2

.field private static final c1:Ljava/lang/String; = "OPCS_SPECIFIC"

.field private static final c2:I = 0xa

.field private static final d1:Ljava/lang/String; = "com.oneplus.intent.OPCS_DEBUG"

.field private static final d2:I = 0x32

.field private static final e1:Ljava/lang/String; = "com.oneplus.intent.OPCS_REPORT"

.field private static final e2:Ljava/lang/String; = "/data/system/power-history"

.field private static final f1:Ljava/lang/String; = "android.intent.action.TIME_SET"

.field private static final f2:Ljava/text/SimpleDateFormat;

.field private static final g1:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN"

.field private static g2:Z = false

.field private static final h1:Ljava/lang/String; = "NYNCG4I0TI"

.field private static final h2:I = 0xbb8

.field private static final i1:Ljava/lang/String; = "X9HFK50WT7"

.field static i2:D = 0.0

.field private static final j1:Ljava/lang/String; = "awake_notouch"

.field static final j2:Ljava/lang/String; = "/sys/class/power_supply/bms/charge_full"

.field private static final k1:Ljava/lang/String; = "period"

.field static final k2:Ljava/lang/String; = "/sys/class/power_supply/bms/remaining_capacity"

.field private static final l1:Ljava/lang/String; = "persist.sys.opcs.debug_log"

.field public static final l2:I = -0x64

.field private static final m1:Ljava/lang/String; = "persist.sys.opcs.debug_specific"

.field public static final m2:I = -0x63

.field private static final n1:Ljava/lang/String; = "persist.sys.opcs.debug_verify"

.field public static final n2:I = -0x62

.field private static final o1:Ljava/lang/String; = "persist.sys.opcs.debug_gaptouch"

.field public static final o2:I = -0x61

.field private static final p1:Ljava/lang/String; = "AC"

.field public static final p2:I = -0x60

.field private static final q1:Ljava/lang/String; = "USB"

.field public static final q2:I = -0x5f

.field private static r0:Lcom/android/server/wm/OpPowerConsumpStats; = null

.field private static final r1:Ljava/lang/String; = "WIRELESS"

.field public static final r2:I = -0x5e

.field private static s0:Lcom/android/server/wm/OpPowerConsumpStats; = null

.field private static final s1:Ljava/lang/String; = "NONE"

.field public static final s2:I = -0x5d

.field private static t0:Z = false

.field private static final t1:Ljava/lang/String; = "FASTCHARGE"

.field public static final t2:I = -0x5c

.field private static u0:Z = false

.field private static final u1:Ljava/lang/String; = "null"

.field public static final u2:I = -0x5b

.field private static v0:Z = false

.field private static final v1:Ljava/lang/String; = "unknow"

.field public static final v2:I = -0x5a

.field private static w0:Z = false

.field private static final w1:Ljava/lang/String; = "none"

.field public static final w2:I = -0x59

.field private static x0:Z = false

.field private static final x1:Ljava/lang/String; = ""

.field public static final x2:I = -0x58

.field private static y0:Z = false

.field private static final y1:Ljava/lang/String; = "handle_plug_event"

.field public static final y2:I = -0x57

.field private static final z0:I = 0x122b9c9

.field private static final z1:Ljava/lang/String; = "cmd_calculatePower"

.field public static final z2:I = -0x56


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:Z

.field private F:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/OpPowerConsumpStats$ibl;",
            ">;"
        }
    .end annotation
.end field

.field private G:Ljava/lang/Object;

.field private H:Landroid/os/BatteryManagerInternal;

.field private I:Lcom/android/server/wm/OpPowerConsumpStats$bud;

.field private J:Z

.field private K:Lcom/android/server/am/ActivityManagerService;

.field private L:Landroid/net/ConnectivityManager;

.field private M:Lcom/android/internal/widget/LockPatternUtils;

.field private N:Lcom/android/server/OnePlusUtil$zta$you;

.field private O:Lcom/android/server/wm/OpPowerConsumpStats$ire;

.field private final P:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/OpPowerConsumpStats$hmo;",
            ">;"
        }
    .end annotation
.end field

.field private Q:Ljava/lang/String;

.field private R:Ljava/lang/String;

.field private S:Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

.field private T:Z

.field private U:Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;

.field private V:Lcom/android/server/wm/OpPowerConsumpStats$OccludedStatus;

.field private W:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/OpPowerConsumpStats$ugm;",
            ">;"
        }
    .end annotation
.end field

.field private X:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/OpPowerConsumpStats$ugm;",
            ">;"
        }
    .end annotation
.end field

.field private Y:Z

.field private Z:J

.field private a:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

.field private a0:J

.field private b:Lcom/android/server/wm/OpPowerConsumpStats$fto;

.field private b0:I

.field private bio:Lcom/android/server/am/BatteryStatsService;

.field bud:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/OpPowerConsumpStats$cjf;",
            ">;"
        }
    .end annotation
.end field

.field private bvj:Lcom/android/server/wm/OpPowerConsumpStats$veq;

.field private c:Lcom/android/server/wm/OpPowerConsumpStats$bvj;

.field private c0:I

.field private cgv:D

.field private cjf:Z

.field private cno:Landroid/os/BatteryManager;

.field private d:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

.field private volatile d0:J

.field private dma:Landroid/os/PowerManager;

.field private e:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

.field private volatile e0:J

.field private ear:Z

.field private f:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

.field private volatile f0:J

.field private fto:Ljava/lang/String;

.field private g:Lcom/android/server/wm/OpPowerConsumpStats$fto;

.field private g0:I

.field private gck:Landroid/os/Handler;

.field private gwm:Lcom/android/server/wm/OpPowerConsumpStatsInjector$ResetParamListener;

.field private h:Lcom/android/server/wm/OpPowerConsumpStats$bvj;

.field private h0:Landroid/content/BroadcastReceiver;

.field private hmo:I

.field private i:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

.field private i0:Landroid/content/BroadcastReceiver;

.field private ibl:Ljava/lang/StringBuilder;

.field private igw:Lcom/android/server/wm/WindowManagerService;

.field private ire:Z

.field irq:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ivd:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

.field private j:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

.field private j0:Landroid/content/BroadcastReceiver;

.field private k:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

.field private final k0:Landroid/app/AlarmManager$OnAlarmListener;

.field private kth:Lcom/android/internal/os/BatteryStatsHelper;

.field private l:Lcom/android/server/wm/OpPowerConsumpStats$ear;

.field private final l0:Landroid/app/AlarmManager$OnAlarmListener;

.field les:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/OpPowerConsumpStats$zgw;",
            ">;"
        }
    .end annotation
.end field

.field private lqr:Landroid/app/PendingIntent;

.field private m:Lcom/android/server/wm/OpPowerConsumpStats$obl;

.field final m0:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/wm/OpPowerConsumpStats$vju;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/OpPowerConsumpStats$vju;",
            ">;"
        }
    .end annotation
.end field

.field n0:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/wm/OpPowerConsumpStats$ugm;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/OpPowerConsumpStats$vju;",
            ">;"
        }
    .end annotation
.end field

.field o0:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/wm/OpPowerConsumpStats$ugm;",
            ">;"
        }
    .end annotation
.end field

.field private obl:J

.field private oif:Lcom/android/server/wm/OpPowerConsumpStats$veq;

.field private volatile oxb:Z

.field private p:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/OpPowerConsumpStats$vju;",
            ">;"
        }
    .end annotation
.end field

.field p0:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/wm/OpPowerConsumpStats$ugm;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/OpPowerConsumpStats$vju;",
            ">;"
        }
    .end annotation
.end field

.field q0:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/wm/OpPowerConsumpStats$ugm;",
            ">;"
        }
    .end annotation
.end field

.field private qbh:Lnet/oneplus/odm/OpDeviceManagerInjector;

.field private qeg:Lcom/android/server/wm/OpPowerConsumpStats$bvj;

.field private r:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/OpPowerConsumpStats$vju;",
            ">;"
        }
    .end annotation
.end field

.field private rtg:Landroid/app/AlarmManager;

.field private s:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/OpPowerConsumpStats$vju;",
            ">;"
        }
    .end annotation
.end field

.field private sis:Landroid/util/AtomicFile;

.field private ssp:Lcom/android/server/wm/OpPowerConsumpStats$gwm;

.field private t:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/OpPowerConsumpStats$vju;",
            ">;"
        }
    .end annotation
.end field

.field private tsu:Landroid/util/AtomicFile;

.field private u:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/OpPowerConsumpStats$vju;",
            ">;"
        }
    .end annotation
.end field

.field private ugm:Landroid/os/PowerManager$WakeLock;

.field private v:Ljava/text/DecimalFormat;

.field private vdb:Ljava/lang/Object;

.field private vdw:Lcom/android/server/wm/OpPowerConsumpStats$fto;

.field private veq:Z

.field private vju:I

.field private w:Ljava/text/SimpleDateFormat;

.field private wtn:Lcom/android/internal/os/BatteryStatsImpl;

.field private x:I

.field private y:I

.field private you:Lcom/oneplus/config/ConfigObserver;

.field private ywr:Lcom/android/server/pm/PackageManagerService;

.field private z:I

.field private zgw:J

.field private zta:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/wm/OpPowerConsumpStats;->t0:Z

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/wm/OpPowerConsumpStats;->u0:Z

    sput-boolean v0, Lcom/android/server/wm/OpPowerConsumpStats;->v0:Z

    sput-boolean v1, Lcom/android/server/wm/OpPowerConsumpStats;->w0:Z

    sput-boolean v1, Lcom/android/server/wm/OpPowerConsumpStats;->x0:Z

    sput-boolean v1, Lcom/android/server/wm/OpPowerConsumpStats;->y0:Z

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/OpPowerConsumpStats;->B1:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wm/OpPowerConsumpStats;->D1:Z

    const-string v2, "persist.sys.opcs.errdebug"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/wm/OpPowerConsumpStats;->E1:Z

    const/16 v2, 0x168

    sput v2, Lcom/android/server/wm/OpPowerConsumpStats;->F1:I

    const-wide/32 v2, 0xa4cb80

    sput-wide v2, Lcom/android/server/wm/OpPowerConsumpStats;->G1:J

    const-wide/32 v2, 0x6ddd00

    sput-wide v2, Lcom/android/server/wm/OpPowerConsumpStats;->H1:J

    const-wide/32 v2, 0xea60

    sput-wide v2, Lcom/android/server/wm/OpPowerConsumpStats;->I1:J

    const/16 v2, 0xa

    sput v2, Lcom/android/server/wm/OpPowerConsumpStats;->J1:I

    const/16 v2, 0x8

    sput v2, Lcom/android/server/wm/OpPowerConsumpStats;->K1:I

    sput v2, Lcom/android/server/wm/OpPowerConsumpStats;->L1:I

    sget-object v2, Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;->sis:Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x5

    sput v2, Lcom/android/server/wm/OpPowerConsumpStats;->V1:I

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wm/OpPowerConsumpStats;->a2:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wm/OpPowerConsumpStats;->f2:Ljava/text/SimpleDateFormat;

    sput-boolean v1, Lcom/android/server/wm/OpPowerConsumpStats;->g2:Z

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    sput-wide v0, Lcom/android/server/wm/OpPowerConsumpStats;->i2:D

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->zta:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->you:Lcom/oneplus/config/ConfigObserver;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->sis:Landroid/util/AtomicFile;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->tsu:Landroid/util/AtomicFile;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->rtg:Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ssp:Lcom/android/server/wm/OpPowerConsumpStats$gwm;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->cno:Landroid/os/BatteryManager;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->kth:Lcom/android/internal/os/BatteryStatsHelper;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->bio:Lcom/android/server/am/BatteryStatsService;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->igw:Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->wtn:Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->gck:Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->dma:Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ywr:Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oif:Lcom/android/server/wm/OpPowerConsumpStats$veq;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->bvj:Lcom/android/server/wm/OpPowerConsumpStats$veq;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ibl:Ljava/lang/StringBuilder;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->gwm:Lcom/android/server/wm/OpPowerConsumpStatsInjector$ResetParamListener;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ugm:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->vdb:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->zgw:J

    iput-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->obl:J

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oxb:Z

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->cjf:Z

    iput-boolean v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ear:Z

    iput-boolean v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ire:Z

    const/4 v5, -0x1

    iput v5, p0, Lcom/android/server/wm/OpPowerConsumpStats;->hmo:I

    const-string v6, "none"

    iput-object v6, p0, Lcom/android/server/wm/OpPowerConsumpStats;->fto:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->lqr:Landroid/app/PendingIntent;

    iput-boolean v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->veq:Z

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    iput-wide v6, p0, Lcom/android/server/wm/OpPowerConsumpStats;->cgv:D

    iput v5, p0, Lcom/android/server/wm/OpPowerConsumpStats;->vju:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->bud:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->les:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->irq:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$fto;

    const-string v5, "TotalDischarge"

    invoke-direct {v0, p0, v5}, Lcom/android/server/wm/OpPowerConsumpStats$fto;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->vdw:Lcom/android/server/wm/OpPowerConsumpStats$fto;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;

    invoke-direct {v0, p0, v5}, Lcom/android/server/wm/OpPowerConsumpStats$bvj;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->qeg:Lcom/android/server/wm/OpPowerConsumpStats$bvj;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    const-string v5, "TotalDischargeDuration"

    invoke-direct {v0, p0, v5}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ivd:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    const-string v5, "TotalChargeDuration"

    invoke-direct {v0, p0, v5}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->a:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$fto;

    const-string v5, "ScreenOnDischarge"

    invoke-direct {v0, p0, v5}, Lcom/android/server/wm/OpPowerConsumpStats$fto;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->b:Lcom/android/server/wm/OpPowerConsumpStats$fto;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;

    invoke-direct {v0, p0, v5}, Lcom/android/server/wm/OpPowerConsumpStats$bvj;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->c:Lcom/android/server/wm/OpPowerConsumpStats$bvj;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    const-string v5, "TotalScreenOnDuration"

    invoke-direct {v0, p0, v5}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->d:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    const-string v5, "ScreenOnDischargeDuration"

    invoke-direct {v0, p0, v5}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->e:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    const-string v5, "ScreenOnChargeDuration"

    invoke-direct {v0, p0, v5}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->f:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$fto;

    const-string v5, "ScreenOffDischarge"

    invoke-direct {v0, p0, v5}, Lcom/android/server/wm/OpPowerConsumpStats$fto;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->g:Lcom/android/server/wm/OpPowerConsumpStats$fto;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$bvj;

    invoke-direct {v0, p0, v5}, Lcom/android/server/wm/OpPowerConsumpStats$bvj;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->h:Lcom/android/server/wm/OpPowerConsumpStats$bvj;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    const-string v5, "TotalScreenOffDuration"

    invoke-direct {v0, p0, v5}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->i:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    const-string v5, "ScreenOffDischargeDuration"

    invoke-direct {v0, p0, v5}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->j:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    const-string v5, "ScreenOffChargeDuration"

    invoke-direct {v0, p0, v5}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->k:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$ear;

    invoke-direct {v0, p0}, Lcom/android/server/wm/OpPowerConsumpStats$ear;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->l:Lcom/android/server/wm/OpPowerConsumpStats$ear;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$obl;

    invoke-direct {v0, p0}, Lcom/android/server/wm/OpPowerConsumpStats$obl;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->m:Lcom/android/server/wm/OpPowerConsumpStats$obl;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->n:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->o:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->p:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->q:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->r:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->s:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->t:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->u:Ljava/util/HashMap;

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v5, "0.00"

    invoke-direct {v0, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->v:Ljava/text/DecimalFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v5, "dd HH:mm:ss"

    invoke-direct {v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->w:Ljava/text/SimpleDateFormat;

    iput v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->x:I

    iput v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->y:I

    iput v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->z:I

    iput v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->A:I

    iput v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->B:I

    iput v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->C:I

    iput v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->D:I

    iput-boolean v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->E:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->F:Landroid/util/SparseArray;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->G:Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->J:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->P:Ljava/util/HashMap;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Q:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->R:Ljava/lang/String;

    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;->sis:Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->S:Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    iput-boolean v3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->T:Z

    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;->zta:Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->U:Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;

    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats$OccludedStatus;->zta:Lcom/android/server/wm/OpPowerConsumpStats$OccludedStatus;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->V:Lcom/android/server/wm/OpPowerConsumpStats$OccludedStatus;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->W:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->X:Ljava/util/HashMap;

    iput-boolean v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Y:Z

    iput-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Z:J

    iput-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->a0:J

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->b0:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->c0:I

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->g0:I

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$kth;

    invoke-direct {v0, p0}, Lcom/android/server/wm/OpPowerConsumpStats$kth;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->h0:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$bio;

    invoke-direct {v0, p0}, Lcom/android/server/wm/OpPowerConsumpStats$bio;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->i0:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$igw;

    invoke-direct {v0, p0}, Lcom/android/server/wm/OpPowerConsumpStats$igw;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->j0:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$wtn;

    invoke-direct {v0, p0}, Lcom/android/server/wm/OpPowerConsumpStats$wtn;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->k0:Landroid/app/AlarmManager$OnAlarmListener;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;

    invoke-direct {v0, p0}, Lcom/android/server/wm/OpPowerConsumpStats$gck;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->l0:Landroid/app/AlarmManager$OnAlarmListener;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$zta;

    invoke-direct {v0, p0}, Lcom/android/server/wm/OpPowerConsumpStats$zta;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->m0:Ljava/util/Comparator;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$you;

    invoke-direct {v0, p0}, Lcom/android/server/wm/OpPowerConsumpStats$you;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->n0:Ljava/util/Comparator;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$sis;

    invoke-direct {v0, p0}, Lcom/android/server/wm/OpPowerConsumpStats$sis;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->o0:Ljava/util/Comparator;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$tsu;

    invoke-direct {v0, p0}, Lcom/android/server/wm/OpPowerConsumpStats$tsu;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->p0:Ljava/util/Comparator;

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;

    invoke-direct {v0, p0}, Lcom/android/server/wm/OpPowerConsumpStats$rtg;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->q0:Ljava/util/Comparator;

    const-string p0, "OpPowerConsumpStats()--constructor:19053001"

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic A(Lcom/android/server/wm/OpPowerConsumpStats;)Lcom/android/server/wm/OpPowerConsumpStats$bud;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->I:Lcom/android/server/wm/OpPowerConsumpStats$bud;

    return-object p0
.end method

.method public static A0(Landroid/os/BatteryStats$Timer;JI)J
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide p0

    const-wide/16 p2, 0x1f4

    add-long/2addr p0, p2

    const-wide/16 p2, 0x3e8

    div-long/2addr p0, p2

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private A1(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method static synthetic B(Lcom/android/server/wm/OpPowerConsumpStats;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->R:Ljava/lang/String;

    return-object p0
.end method

.method private B0(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/OpPowerConsumpStats$ugm;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/OpPowerConsumpStats$ugm;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/OpPowerConsumpStats$ugm;

    new-instance v3, Lcom/android/server/wm/OpPowerConsumpStats$ugm;

    invoke-direct {v3, p0, v2}, Lcom/android/server/wm/OpPowerConsumpStats$ugm;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Lcom/android/server/wm/OpPowerConsumpStats$ugm;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    iget-object v4, v2, Lcom/android/server/wm/OpPowerConsumpStats$ugm;->sis:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    iget-object v4, v2, Lcom/android/server/wm/OpPowerConsumpStats$ugm;->sis:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    iget-object v5, v2, Lcom/android/server/wm/OpPowerConsumpStats$ugm;->sis:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/OpPowerConsumpStats$vdb;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/OpPowerConsumpStats$ugm;->kth(Lcom/android/server/wm/OpPowerConsumpStats$vdb;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private declared-synchronized B1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v15, p0

    move-object/from16 v0, p1

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeBaseRecordPoint eventType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/wm/OpPowerConsumpStats;->x0:Z

    if-nez v1, :cond_0

    const-string v0, "makeBaseRecordPoint sDEBUGVERIFY is false, return"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Q0()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget v3, v15, Lcom/android/server/wm/OpPowerConsumpStats;->x:I

    const/4 v1, 0x0

    const-string v2, "powerLevel"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v1, v15, Lcom/android/server/wm/OpPowerConsumpStats;->y:I

    iget v2, v15, Lcom/android/server/wm/OpPowerConsumpStats;->y:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v15, Lcom/android/server/wm/OpPowerConsumpStats;->y:I

    :cond_1
    :goto_0
    move v4, v1

    goto :goto_1

    :cond_2
    const-string v2, "screen"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v1, v15, Lcom/android/server/wm/OpPowerConsumpStats;->z:I

    iget v2, v15, Lcom/android/server/wm/OpPowerConsumpStats;->z:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v15, Lcom/android/server/wm/OpPowerConsumpStats;->z:I

    goto :goto_0

    :cond_3
    const-string v2, "plug"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v1, v15, Lcom/android/server/wm/OpPowerConsumpStats;->A:I

    iget v2, v15, Lcom/android/server/wm/OpPowerConsumpStats;->A:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v15, Lcom/android/server/wm/OpPowerConsumpStats;->A:I

    goto :goto_0

    :cond_4
    const-string v2, "doze"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v1, v15, Lcom/android/server/wm/OpPowerConsumpStats;->B:I

    iget v2, v15, Lcom/android/server/wm/OpPowerConsumpStats;->B:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v15, Lcom/android/server/wm/OpPowerConsumpStats;->B:I

    goto :goto_0

    :cond_5
    const-string v2, "frontPkg"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v1, v15, Lcom/android/server/wm/OpPowerConsumpStats;->C:I

    iget v2, v15, Lcom/android/server/wm/OpPowerConsumpStats;->C:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v15, Lcom/android/server/wm/OpPowerConsumpStats;->C:I

    goto :goto_0

    :goto_1
    iget v1, v15, Lcom/android/server/wm/OpPowerConsumpStats;->x:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v15, Lcom/android/server/wm/OpPowerConsumpStats;->x:I

    new-instance v14, Lcom/android/server/wm/OpPowerConsumpStats$ibl;

    iget-boolean v10, v15, Lcom/android/server/wm/OpPowerConsumpStats;->oxb:Z

    iget-boolean v11, v15, Lcom/android/server/wm/OpPowerConsumpStats;->cjf:Z

    iget-boolean v12, v15, Lcom/android/server/wm/OpPowerConsumpStats;->ear:Z

    iget v13, v15, Lcom/android/server/wm/OpPowerConsumpStats;->hmo:I

    iget-object v5, v15, Lcom/android/server/wm/OpPowerConsumpStats;->fto:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v1, v14

    move-object/from16 v2, p0

    move-object/from16 v16, v5

    move-object/from16 v5, p1

    move-object v0, v14

    move-object/from16 v14, v16

    move-object/from16 v15, p2

    :try_start_2
    invoke-direct/range {v1 .. v15}, Lcom/android/server/wm/OpPowerConsumpStats$ibl;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;IILjava/lang/String;JJZZZILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v1, p0

    :try_start_3
    invoke-direct {v1, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->f0(Lcom/android/server/wm/OpPowerConsumpStats$ibl;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v1, v15

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method static synthetic C(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->R:Ljava/lang/String;

    return-object p1
.end method

.method private C0()V
    .locals 5

    const-string v0, "OPCS"

    const-string v1, "# dump # dumpBaseEventList # begin #"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->F:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->F:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/OpPowerConsumpStats$ibl;

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# dump # mBaseEventList # i:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " |b:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "# dump # dumpBaseEventList # end #"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private C1(Lcom/android/server/wm/OpPowerConsumpStats$veq;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/OpPowerConsumpStats$veq;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "OPCS"

    const-string v1, "makeDataToGapTouchString"

    invoke-static {v1}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[GapTouch] data.capConsumptionList.size(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/wm/OpPowerConsumpStats$veq;->ire:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$veq;->ire:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_1

    iget-object p1, p1, Lcom/android/server/wm/OpPowerConsumpStats$veq;->ire:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/OpPowerConsumpStats$ugm;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[GapTouch] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/wm/OpPowerConsumpStats$ugm;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/wm/OpPowerConsumpStats$ugm;->cno:I

    if-lez v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GapTouch] tempCapList.size(): "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->n0:Ljava/util/Comparator;

    invoke-static {v2, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/OpPowerConsumpStats$ugm;

    invoke-static {v4, v3}, Lcom/android/server/wm/OpPowerConsumpStats$ugm;->you(Lcom/android/server/wm/OpPowerConsumpStats$ugm;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_2

    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const-string v2, "]"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GapTouch] GapTouchPeriod: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->g0:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    const-string v2, "period"

    iget p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->g0:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GapTouch] GapTouch: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    const-string p0, "awake_notouch"

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "mdmData:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeDataToGapTouchString Exception e:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method static synthetic D(Lcom/android/server/wm/OpPowerConsumpStats;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->P:Ljava/util/HashMap;

    return-object p0
.end method

.method private D0()V
    .locals 1

    const-string p0, "OPCS"

    const-string v0, "# dump # VERSION # 19053001"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private D1(Lcom/android/server/wm/OpPowerConsumpStats$veq;)Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/OpPowerConsumpStats$veq;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "OPCS"

    const-string v1, "makeDataToString"

    invoke-static {v1}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string v2, "os_version"

    iget-object v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$veq;->zta:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "realStartTime"

    iget-wide v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$veq;->you:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "realEndTime"

    iget-wide v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$veq;->sis:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "duration"

    iget-wide v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$veq;->tsu:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "firstReport"

    iget-boolean v3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->veq:Z

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "oldTotalDischarge"

    iget v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$veq;->ssp:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "totalDischarge"

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->v:Ljava/text/DecimalFormat;

    iget-wide v4, p1, Lcom/android/server/wm/OpPowerConsumpStats$veq;->cno:D

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "totalDischargeDuration"

    iget-wide v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$veq;->kth:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "totalChargeDuration"

    iget-wide v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$veq;->bio:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "oldScreenOnDischarge"

    iget v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$veq;->igw:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "screenOnDischarge"

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->v:Ljava/text/DecimalFormat;

    iget-wide v4, p1, Lcom/android/server/wm/OpPowerConsumpStats$veq;->wtn:D

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "totalScreenOnDuration"

    iget-wide v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$veq;->gck:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "screenOnDischargeDuration"

    iget-wide v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$veq;->dma:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "screenOnChargeDuration"

    iget-wide v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$veq;->ywr:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "oldScreenOffDischarge"

    iget v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$veq;->qbh:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "screenOffDischarge"

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->v:Ljava/text/DecimalFormat;

    iget-wide v4, p1, Lcom/android/server/wm/OpPowerConsumpStats$veq;->oif:D

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "totalScreenOffDuration"

    iget-wide v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$veq;->bvj:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "screenOffDischargeDuration"

    iget-wide v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$veq;->ibl:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "screenOffChargeDuration"

    iget-wide v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$veq;->gwm:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$veq;->ugm:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, ","

    const-string v5, "]"

    const-string v6, "["

    const/4 v7, 0x0

    if-lez v3, :cond_2

    :try_start_1
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v7

    :goto_0
    iget-object v8, p1, Lcom/android/server/wm/OpPowerConsumpStats$veq;->ugm:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_1

    iget-object v8, p1, Lcom/android/server/wm/OpPowerConsumpStats$veq;->ugm:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/OpPowerConsumpStats$cjf;

    invoke-static {v8, v3}, Lcom/android/server/wm/OpPowerConsumpStats$cjf;->zta(Lcom/android/server/wm/OpPowerConsumpStats$cjf;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/android/server/wm/OpPowerConsumpStats$veq;->ugm:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-eq v3, v8, :cond_0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v3, "dozeFragment"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$veq;->vdb:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v7

    :goto_1
    iget-object v8, p1, Lcom/android/server/wm/OpPowerConsumpStats$veq;->vdb:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_4

    iget-object v8, p1, Lcom/android/server/wm/OpPowerConsumpStats$veq;->vdb:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/OpPowerConsumpStats$zgw;

    invoke-static {v8, v3}, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->zta(Lcom/android/server/wm/OpPowerConsumpStats$zgw;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/android/server/wm/OpPowerConsumpStats$veq;->vdb:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-eq v3, v8, :cond_3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v3, "chargeFragment"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$veq;->zgw:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_8

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v7

    :goto_2
    iget-object v8, p1, Lcom/android/server/wm/OpPowerConsumpStats$veq;->zgw:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_7

    const-string v8, "{\"seq\":\""

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\",\"des\":\""

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/android/server/wm/OpPowerConsumpStats$veq;->zgw:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\"}"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/android/server/wm/OpPowerConsumpStats$veq;->zgw:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-eq v3, v8, :cond_6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const-string v3, "errlist"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "/sys/class/power_supply/bms/charge_full"

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/android/server/wm/OpPowerConsumpStats;->J1(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "fullCharge"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$veq;->ire:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    const-wide/16 v8, 0x0

    if-lez v3, :cond_a

    iget-object v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$veq;->ire:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/OpPowerConsumpStats$ugm;

    iget-wide v11, v10, Lcom/android/server/wm/OpPowerConsumpStats$ugm;->rtg:J

    cmp-long v11, v11, v8

    if-lez v11, :cond_9

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_d

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->o0:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v10, v7

    move v11, v10

    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v10, v12, :cond_c

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/OpPowerConsumpStats$ugm;

    iget v12, v12, Lcom/android/server/wm/OpPowerConsumpStats$ugm;->tsu:I

    add-int/2addr v11, v12

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/OpPowerConsumpStats$ugm;

    iget-wide v12, v12, Lcom/android/server/wm/OpPowerConsumpStats$ugm;->rtg:J

    add-long/2addr v8, v12

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/OpPowerConsumpStats$ugm;

    invoke-static {v12, v10}, Lcom/android/server/wm/OpPowerConsumpStats$ugm;->zta(Lcom/android/server/wm/OpPowerConsumpStats$ugm;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-eq v10, v12, :cond_b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_c
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[Cap] MDM-Capacity: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    const-string v2, "capacity"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "capacity_drop"

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Cap] MDM-Capacity-Drop: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    const-string v2, "capacity_run"

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Cap] MDM-Capacity-Run: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    :cond_d
    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ibl:Ljava/lang/StringBuilder;

    if-eqz v2, :cond_e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BGC] BGC_Daily: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ibl:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ibl:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_e

    const-string v2, "bgc"

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ibl:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$veq;->cjf:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_11

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v7

    :goto_5
    iget-object v8, p1, Lcom/android/server/wm/OpPowerConsumpStats$veq;->cjf:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_10

    iget-object v8, p1, Lcom/android/server/wm/OpPowerConsumpStats$veq;->cjf:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/OpPowerConsumpStats$vju;

    invoke-static {v8, v3}, Lcom/android/server/wm/OpPowerConsumpStats$vju;->sis(Lcom/android/server/wm/OpPowerConsumpStats$vju;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/android/server/wm/OpPowerConsumpStats$veq;->cjf:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-eq v3, v8, :cond_f

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_10
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    const-string v3, "kernelWakeLocks"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$veq;->ear:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_14

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v7

    :goto_6
    iget-object v8, p1, Lcom/android/server/wm/OpPowerConsumpStats$veq;->ear:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_13

    iget-object v8, p1, Lcom/android/server/wm/OpPowerConsumpStats$veq;->ear:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/OpPowerConsumpStats$vju;

    invoke-static {v8, v3}, Lcom/android/server/wm/OpPowerConsumpStats$vju;->sis(Lcom/android/server/wm/OpPowerConsumpStats$vju;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/android/server/wm/OpPowerConsumpStats$veq;->ear:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-eq v3, v8, :cond_12

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_13
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    const-string p1, "kernelWakeupReasons"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean p1, Lcom/android/server/wm/OpPowerConsumpStats;->x0:Z

    if-eqz p1, :cond_18

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->F:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_17

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7
    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->F:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v7, v2, :cond_16

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->F:Landroid/util/SparseArray;

    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/OpPowerConsumpStats$ibl;

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats$ibl;->zta(Lcom/android/server/wm/OpPowerConsumpStats$ibl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->F:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v7, v2, :cond_15

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_16
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    const-string p0, "baseEvent"

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_18
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "mdmData:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeDataToString Exception e:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method static synthetic E(Lcom/android/server/wm/OpPowerConsumpStats;IIJLjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/wm/OpPowerConsumpStats;->d1(IIJLjava/lang/String;)V

    return-void
.end method

.method private E0()V
    .locals 9

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x51

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->I:Lcom/android/server/wm/OpPowerConsumpStats$bud;

    invoke-virtual {v1}, Lcom/android/server/wm/OpPowerConsumpStats$bud;->zta()V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # mScreenState # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oxb:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPCS"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# dump # mPlugState # "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->cjf:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# dump # mIdleState # "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ear:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# dump # mPowerLevel # "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->hmo:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# dump # sENABLE # "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/android/server/wm/OpPowerConsumpStats;->D1:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# dump # randomInterval # "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/wm/OpPowerConsumpStats;->F1:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# dump # reportTimePoint # "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Lcom/android/server/wm/OpPowerConsumpStats;->G1:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# dump # calculateIntervalThreshold # "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Lcom/android/server/wm/OpPowerConsumpStats;->H1:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# dump # bootDelayTime # "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Lcom/android/server/wm/OpPowerConsumpStats;->I1:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oif:Lcom/android/server/wm/OpPowerConsumpStats$veq;

    if-eqz v1, :cond_1

    iget-wide v4, v1, Lcom/android/server/wm/OpPowerConsumpStats$veq;->you:J

    invoke-direct {p0, v4, v5}, Lcom/android/server/wm/OpPowerConsumpStats;->j0(J)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# dump # timeLeft # "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " |format-minute:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/16 v6, 0x3c

    div-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oif:Lcom/android/server/wm/OpPowerConsumpStats$veq;

    const-string v4, "dumpState()"

    invoke-virtual {v1, v4}, Lcom/android/server/wm/OpPowerConsumpStats$veq;->zta(Ljava/lang/String;)V

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# dump # mDozeFragment # size:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->bud:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->bud:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, " # "

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/OpPowerConsumpStats$cjf;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "# dump # mDozeFragment # i:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/wm/OpPowerConsumpStats$cjf;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/2addr v4, v0

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# dump # mChargeFragment # size:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->les:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->les:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v3

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/OpPowerConsumpStats$zgw;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "# dump # mChargeFragment # i:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/2addr v4, v0

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# dump # mErrList # size:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->irq:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->irq:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# dump # mErrList # i:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/2addr v3, v0

    goto :goto_2

    :cond_4
    return-void
.end method

.method private static E1(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStats;->u0:Z

    if-eqz v0, :cond_0

    const-string v0, "OPCS"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic F(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ibl:Ljava/lang/StringBuilder;

    return-object p1
.end method

.method private F0(Ljava/lang/String;)V
    .locals 1

    const-string v0, "plug"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->cjf:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->e:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->zta(Lcom/android/server/wm/OpPowerConsumpStats$lqr;)Z

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->j:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->f:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    :goto_0
    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->zta(Lcom/android/server/wm/OpPowerConsumpStats$lqr;)Z

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->k:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    :goto_1
    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->zta(Lcom/android/server/wm/OpPowerConsumpStats$lqr;)Z

    goto :goto_2

    :cond_1
    const-string v0, "screen"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oxb:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->j:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->e:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->zta(Lcom/android/server/wm/OpPowerConsumpStats$lqr;)Z

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->f:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    goto :goto_1

    :cond_3
    const-string p0, "powerLevel"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    const-string p0, "doze"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    const-string p0, "frontPkg"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :goto_2
    return-void
.end method

.method private static F1(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStats;->w0:Z

    if-eqz v0, :cond_0

    const-string v0, "OPCS_SPECIFIC"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic G(Lcom/android/server/wm/OpPowerConsumpStats;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->o1(Z)V

    return-void
.end method

.method private static G0(D)Ljava/lang/String;
    .locals 4

    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_0

    const-string p0, "0"

    return-object p0

    :cond_0
    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v0, p0, v0

    if-gez v0, :cond_1

    const-string v0, "%.6f"

    goto :goto_0

    :cond_1
    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v0, p0, v0

    if-gez v0, :cond_2

    const-string v0, "%.5f"

    goto :goto_0

    :cond_2
    const-wide v0, 0x3fb999999999999aL    # 0.1

    cmpg-double v0, p0, v0

    if-gez v0, :cond_3

    const-string v0, "%.4f"

    goto :goto_0

    :cond_3
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_4

    const-string v0, "%.3f"

    goto :goto_0

    :cond_4
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_5

    const-string v0, "%.2f"

    goto :goto_0

    :cond_5
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_6

    const-string v0, "%.1f"

    goto :goto_0

    :cond_6
    const-string v0, "%.0f"

    :goto_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private G1()V
    .locals 10

    const-string v0, "BaseEvent"

    const-string v1, "persistBaseDataToDisk"

    invoke-static {v1}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->tsu:Landroid/util/AtomicFile;

    const-string v2, "OPCS"

    if-nez v1, :cond_0

    const-string p0, "persistBaseDataToDisk mBaseData is null, return"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->tsu:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    sget-object v5, Lcom/android/server/wm/OpPowerConsumpStats;->B1:Ljava/lang/String;

    invoke-interface {v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v5, 0x0

    :goto_0
    iget-object v6, p0, Lcom/android/server/wm/OpPowerConsumpStats;->F:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    iget-object v6, p0, Lcom/android/server/wm/OpPowerConsumpStats;->F:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/OpPowerConsumpStats$ibl;

    invoke-interface {v1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "totalSeq"

    iget v8, v6, Lcom/android/server/wm/OpPowerConsumpStats$ibl;->zta:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "typeSeq"

    iget v8, v6, Lcom/android/server/wm/OpPowerConsumpStats$ibl;->you:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "eventType"

    iget-object v8, v6, Lcom/android/server/wm/OpPowerConsumpStats$ibl;->sis:Ljava/lang/String;

    invoke-interface {v1, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "relativeTime"

    iget-wide v8, v6, Lcom/android/server/wm/OpPowerConsumpStats$ibl;->tsu:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "realTime"

    iget-wide v8, v6, Lcom/android/server/wm/OpPowerConsumpStats$ibl;->rtg:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "screenState"

    iget-boolean v8, v6, Lcom/android/server/wm/OpPowerConsumpStats$ibl;->ssp:Z

    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "plugState"

    iget-boolean v8, v6, Lcom/android/server/wm/OpPowerConsumpStats$ibl;->cno:Z

    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "idleState"

    iget-boolean v8, v6, Lcom/android/server/wm/OpPowerConsumpStats$ibl;->kth:Z

    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "powerlevelState"

    iget v8, v6, Lcom/android/server/wm/OpPowerConsumpStats$ibl;->bio:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "frontPkg"

    iget-object v8, v6, Lcom/android/server/wm/OpPowerConsumpStats$ibl;->igw:Ljava/lang/String;

    invoke-interface {v1, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "description"

    iget-object v6, v6, Lcom/android/server/wm/OpPowerConsumpStats$ibl;->wtn:Ljava/lang/String;

    invoke-interface {v1, v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v6, Lcom/android/server/wm/OpPowerConsumpStats;->B1:Ljava/lang/String;

    invoke-interface {v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats;->B1:Ljava/lang/String;

    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->tsu:Landroid/util/AtomicFile;

    invoke-virtual {v0, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v3, v4

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "persistBaseDataToDisk Exception e:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v3, :cond_2

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->tsu:Landroid/util/AtomicFile;

    invoke-virtual {p0, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_2
    :goto_2
    return-void
.end method

.method static synthetic H(Lcom/android/server/wm/OpPowerConsumpStats;)Lcom/android/server/wm/OpPowerConsumpStats$veq;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->bvj:Lcom/android/server/wm/OpPowerConsumpStats$veq;

    return-object p0
.end method

.method private H0(J)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v1, 0x3e8

    div-long v3, p1, v1

    invoke-direct {p0, v0, v3, v4}, Lcom/android/server/wm/OpPowerConsumpStats;->I0(Ljava/lang/StringBuilder;J)V

    mul-long/2addr v3, v1

    sub-long/2addr p1, v3

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private H1(Lcom/android/server/wm/OpPowerConsumpStats$veq;Lcom/android/server/wm/OpPowerConsumpStats$PersistType;Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "totalScreenOffDuration"

    const-string v5, "screenOffDischarge"

    const-string v6, "oldScreenOffDischarge"

    const-string v7, "screenOnChargeDuration"

    const-string v8, "screenOnDischargeDuration"

    const-string v9, "totalScreenOnDuration"

    const-string v10, "screenOnDischarge"

    const-string v11, "oldScreenOnDischarge"

    const-string v12, "totalChargeDuration"

    const-string v13, "totalDischargeDuration"

    const-string v14, "totalDischarge"

    const-string v15, "oldTotalDischarge"

    move-object/from16 v16, v4

    const-string v4, "count"

    move-object/from16 v17, v5

    const-string v5, "duration"

    move-object/from16 v18, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v7

    const-string v7, "persistToDisk order by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", persistType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/android/server/wm/OpPowerConsumpStats;->sis:Landroid/util/AtomicFile;

    const-string v7, "OPCS"

    if-nez v6, :cond_0

    const-string v1, "persistToDisk mStatisticalData is null, return"

    invoke-static {v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez v2, :cond_1

    const-string v1, "persistToDisk data is null, return"

    invoke-static {v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget-object v6, Lcom/android/server/wm/OpPowerConsumpStats$cno;->zta:[I

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v20

    aget v6, v6, v20

    const/4 v3, 0x1

    move-object/from16 v21, v8

    if-eq v6, v3, :cond_4

    const/4 v3, 0x2

    if-eq v6, v3, :cond_2

    move-object/from16 v22, v9

    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/OpPowerConsumpStats;->K0()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v6, Landroid/util/AtomicFile;

    new-instance v8, Ljava/io/File;

    move-object/from16 v22, v9

    const-string v9, "/data/system/power-history"

    invoke-direct {v8, v9, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v8}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    goto :goto_0

    :cond_3
    const-string v1, "history-saving is disabled, do nothing"

    invoke-static {v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Prepare History-File Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :cond_4
    move-object/from16 v22, v9

    iget-object v6, v1, Lcom/android/server/wm/OpPowerConsumpStats;->sis:Landroid/util/AtomicFile;

    :goto_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    :try_start_1
    invoke-virtual {v6}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    :try_start_2
    new-instance v9, Ljava/io/BufferedOutputStream;

    invoke-direct {v9, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object v23, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    move-object/from16 v24, v6

    :try_start_3
    invoke-virtual/range {v23 .. v23}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v9, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v9, 0x0

    invoke-interface {v3, v9, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    sget-object v6, Lcom/android/server/wm/OpPowerConsumpStats;->B1:Ljava/lang/String;

    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v9, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "os_version"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-object/from16 v23, v8

    :try_start_4
    iget-object v8, v2, Lcom/android/server/wm/OpPowerConsumpStats$veq;->zta:Ljava/lang/String;

    invoke-interface {v3, v9, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "realStartTime"

    move-object v8, v10

    iget-wide v9, v2, Lcom/android/server/wm/OpPowerConsumpStats$veq;->you:J

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v3, v10, v6, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "realEndTime"

    move-object v9, v11

    iget-wide v10, v2, Lcom/android/server/wm/OpPowerConsumpStats$veq;->sis:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v3, v11, v6, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object v6, v12

    iget-wide v11, v2, Lcom/android/server/wm/OpPowerConsumpStats$veq;->tsu:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v3, v11, v5, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v10, "firstReport"

    iget-boolean v12, v1, Lcom/android/server/wm/OpPowerConsumpStats;->veq:Z

    invoke-static {v12}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v11, v10, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v10, Lcom/android/server/wm/OpPowerConsumpStats;->B1:Ljava/lang/String;

    invoke-interface {v3, v10}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v11, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v10, v2, Lcom/android/server/wm/OpPowerConsumpStats$veq;->ssp:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v11, v4, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v11, v15}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v10, Lcom/android/server/wm/OpPowerConsumpStats;->B1:Ljava/lang/String;

    invoke-interface {v3, v10}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v11, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v10, v1, Lcom/android/server/wm/OpPowerConsumpStats;->v:Ljava/text/DecimalFormat;

    iget-wide v11, v2, Lcom/android/server/wm/OpPowerConsumpStats$veq;->cno:D

    invoke-virtual {v10, v11, v12}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v3, v11, v4, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v11, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v10, Lcom/android/server/wm/OpPowerConsumpStats;->B1:Ljava/lang/String;

    invoke-interface {v3, v10}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v14, v2, Lcom/android/server/wm/OpPowerConsumpStats$veq;->kth:J

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v11, v5, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v10, Lcom/android/server/wm/OpPowerConsumpStats;->B1:Ljava/lang/String;

    invoke-interface {v3, v10}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v11, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v12, v2, Lcom/android/server/wm/OpPowerConsumpStats$veq;->bio:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v11, v5, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v11, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v6, Lcom/android/server/wm/OpPowerConsumpStats;->B1:Ljava/lang/String;

    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v11, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v6, v2, Lcom/android/server/wm/OpPowerConsumpStats$veq;->igw:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v11, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v11, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v6, Lcom/android/server/wm/OpPowerConsumpStats;->B1:Ljava/lang/String;

    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v11, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v6, v1, Lcom/android/server/wm/OpPowerConsumpStats;->v:Ljava/text/DecimalFormat;

    iget-wide v9, v2, Lcom/android/server/wm/OpPowerConsumpStats$veq;->wtn:D

    invoke-virtual {v6, v9, v10}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v11, v4, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v11, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v6, Lcom/android/server/wm/OpPowerConsumpStats;->B1:Ljava/lang/String;

    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v6, v22

    invoke-interface {v3, v11, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v8, v2, Lcom/android/server/wm/OpPowerConsumpStats$veq;->gck:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v11, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v11, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v6, Lcom/android/server/wm/OpPowerConsumpStats;->B1:Ljava/lang/String;

    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v6, v21

    invoke-interface {v3, v11, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v8, v2, Lcom/android/server/wm/OpPowerConsumpStats$veq;->dma:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v11, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v11, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v6, Lcom/android/server/wm/OpPowerConsumpStats;->B1:Ljava/lang/String;

    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v6, v19

    invoke-interface {v3, v11, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v8, v2, Lcom/android/server/wm/OpPowerConsumpStats$veq;->ywr:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v11, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v11, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v6, Lcom/android/server/wm/OpPowerConsumpStats;->B1:Ljava/lang/String;

    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v6, v18

    invoke-interface {v3, v11, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v8, v2, Lcom/android/server/wm/OpPowerConsumpStats$veq;->qbh:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v11, v4, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v11, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v6, Lcom/android/server/wm/OpPowerConsumpStats;->B1:Ljava/lang/String;

    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v6, v17

    invoke-interface {v3, v11, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v8, v1, Lcom/android/server/wm/OpPowerConsumpStats;->v:Ljava/text/DecimalFormat;

    iget-wide v9, v2, Lcom/android/server/wm/OpPowerConsumpStats$veq;->oif:D

    invoke-virtual {v8, v9, v10}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v11, v4, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v11, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v6, Lcom/android/server/wm/OpPowerConsumpStats;->B1:Ljava/lang/String;

    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v6, v16

    invoke-interface {v3, v11, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v8, v2, Lcom/android/server/wm/OpPowerConsumpStats$veq;->bvj:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v11, v5, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v11, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v6, Lcom/android/server/wm/OpPowerConsumpStats;->B1:Ljava/lang/String;

    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "screenOffDischargeDuration"

    invoke-interface {v3, v11, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v8, v2, Lcom/android/server/wm/OpPowerConsumpStats$veq;->ibl:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v11, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "screenOffDischargeDuration"

    invoke-interface {v3, v11, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v6, Lcom/android/server/wm/OpPowerConsumpStats;->B1:Ljava/lang/String;

    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "screenOffChargeDuration"

    invoke-interface {v3, v11, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v8, v2, Lcom/android/server/wm/OpPowerConsumpStats$veq;->gwm:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v11, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "screenOffChargeDuration"

    invoke-interface {v3, v11, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v6, Lcom/android/server/wm/OpPowerConsumpStats;->B1:Ljava/lang/String;

    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "/sys/class/power_supply/bms/charge_full"

    const/4 v8, -0x1

    invoke-static {v6, v8}, Lcom/android/server/wm/OpPowerConsumpStats;->J1(Ljava/lang/String;I)I

    move-result v6

    const-string v8, "capacity"

    const/4 v9, 0x0

    invoke-interface {v3, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, "charge_full"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v9, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "capacity"

    invoke-interface {v3, v9, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v6, Lcom/android/server/wm/OpPowerConsumpStats;->B1:Ljava/lang/String;

    invoke-interface {v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v8, 0x0

    :goto_1
    iget-object v9, v2, Lcom/android/server/wm/OpPowerConsumpStats$veq;->ugm:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    const-string v10, "seq"

    if-ge v8, v9, :cond_5

    :try_start_5
    iget-object v9, v2, Lcom/android/server/wm/OpPowerConsumpStats$veq;->ugm:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/OpPowerConsumpStats$cjf;

    const-string v11, "dozeFragment"

    const/4 v12, 0x0

    invoke-interface {v3, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v10, "relativeBeginTime"

    iget-wide v13, v9, Lcom/android/server/wm/OpPowerConsumpStats$cjf;->zta:J

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v10, "relativeEndTime"

    iget-wide v13, v9, Lcom/android/server/wm/OpPowerConsumpStats$cjf;->you:J

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v10, v9, Lcom/android/server/wm/OpPowerConsumpStats$cjf;->tsu:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v12, v5, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v10, "realBeginTime"

    iget-wide v13, v9, Lcom/android/server/wm/OpPowerConsumpStats$cjf;->sis:J

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v10, "beginPowerLevel"

    iget v11, v9, Lcom/android/server/wm/OpPowerConsumpStats$cjf;->rtg:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v10, "endPowerLevel"

    iget v11, v9, Lcom/android/server/wm/OpPowerConsumpStats$cjf;->ssp:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v10, "exitReason"

    iget-object v9, v9, Lcom/android/server/wm/OpPowerConsumpStats$cjf;->cno:Ljava/lang/String;

    invoke-interface {v3, v12, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v9, "dozeFragment"

    invoke-interface {v3, v12, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v9, Lcom/android/server/wm/OpPowerConsumpStats;->B1:Ljava/lang/String;

    invoke-interface {v3, v9}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object/from16 v8, v23

    move-object/from16 v6, v24

    goto/16 :goto_12

    :cond_5
    const/4 v8, 0x0

    :goto_2
    :try_start_6
    iget-object v9, v2, Lcom/android/server/wm/OpPowerConsumpStats$veq;->vdb:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    if-ge v8, v9, :cond_6

    :try_start_7
    iget-object v9, v2, Lcom/android/server/wm/OpPowerConsumpStats$veq;->vdb:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/OpPowerConsumpStats$zgw;

    const-string v11, "chargeFragment"

    const/4 v12, 0x0

    invoke-interface {v3, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v11, "relativeBeginTime"

    iget-wide v13, v9, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->zta:J

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v12, v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v11, "relativeEndTime"

    iget-wide v13, v9, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->you:J

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v12, v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v13, v9, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->ssp:J

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v12, v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v11, "realBeginTime"

    iget-wide v13, v9, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->sis:J

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v12, v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v11, "beginPowerLevel"

    iget v13, v9, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->tsu:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v12, v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v11, "endPowerLevel"

    iget v13, v9, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->rtg:I

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v12, v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v11, "screenOnDuration"

    iget-wide v13, v9, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->cno:J

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v12, v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v11, "firstFullTimeToRelativeBeginTime"

    iget-wide v13, v9, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->kth:J

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v12, v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v11, "plugType"

    iget-object v9, v9, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->bio:Ljava/lang/String;

    invoke-interface {v3, v12, v11, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v9, "chargeFragment"

    invoke-interface {v3, v12, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v9, Lcom/android/server/wm/OpPowerConsumpStats;->B1:Ljava/lang/String;

    invoke-interface {v3, v9}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    :cond_6
    const/4 v5, 0x0

    :goto_3
    :try_start_8
    iget-object v8, v2, Lcom/android/server/wm/OpPowerConsumpStats$veq;->zgw:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    if-ge v5, v8, :cond_7

    :try_start_9
    iget-object v8, v2, Lcom/android/server/wm/OpPowerConsumpStats$veq;->zgw:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "errlist"

    const/4 v11, 0x0

    invoke-interface {v3, v11, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v11, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v9, "des"

    invoke-interface {v3, v11, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, "errlist"

    invoke-interface {v3, v11, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v8, Lcom/android/server/wm/OpPowerConsumpStats;->B1:Ljava/lang/String;

    invoke-interface {v3, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    :try_start_a
    iget-object v5, v2, Lcom/android/server/wm/OpPowerConsumpStats$veq;->obl:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    const-wide/16 v9, 0x0

    if-eqz v8, :cond_9

    :try_start_b
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v11, v2, Lcom/android/server/wm/OpPowerConsumpStats$veq;->obl:Ljava/util/HashMap;

    invoke-virtual {v11, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/OpPowerConsumpStats$vju;

    iget-wide v11, v8, Lcom/android/server/wm/OpPowerConsumpStats$vju;->you:J

    cmp-long v9, v11, v9

    if-nez v9, :cond_8

    goto :goto_4

    :cond_8
    const-string v9, "kernelWakeLocks"

    const/4 v10, 0x0

    invoke-interface {v3, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v9, "name"

    iget-object v11, v8, Lcom/android/server/wm/OpPowerConsumpStats$vju;->zta:Ljava/lang/String;

    invoke-interface {v3, v10, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v9, "time"

    iget-wide v11, v8, Lcom/android/server/wm/OpPowerConsumpStats$vju;->you:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v10, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v8, v8, Lcom/android/server/wm/OpPowerConsumpStats$vju;->sis:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v10, v4, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, "kernelWakeLocks"

    invoke-interface {v3, v10, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v8, Lcom/android/server/wm/OpPowerConsumpStats;->B1:Ljava/lang/String;

    invoke-interface {v3, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_4

    :cond_9
    :try_start_c
    iget-object v5, v2, Lcom/android/server/wm/OpPowerConsumpStats$veq;->oxb:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    if-eqz v8, :cond_b

    :try_start_d
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v11, v2, Lcom/android/server/wm/OpPowerConsumpStats$veq;->oxb:Ljava/util/HashMap;

    invoke-virtual {v11, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/OpPowerConsumpStats$vju;

    iget-wide v11, v8, Lcom/android/server/wm/OpPowerConsumpStats$vju;->you:J

    cmp-long v11, v11, v9

    if-nez v11, :cond_a

    goto :goto_5

    :cond_a
    const-string v11, "kernelWakeupReasons"

    const/4 v12, 0x0

    invoke-interface {v3, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v11, "name"

    iget-object v13, v8, Lcom/android/server/wm/OpPowerConsumpStats$vju;->zta:Ljava/lang/String;

    invoke-interface {v3, v12, v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v11, "time"

    iget-wide v13, v8, Lcom/android/server/wm/OpPowerConsumpStats$vju;->you:J

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v12, v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v8, v8, Lcom/android/server/wm/OpPowerConsumpStats$vju;->sis:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v12, v4, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, "kernelWakeupReasons"

    invoke-interface {v3, v12, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v8, Lcom/android/server/wm/OpPowerConsumpStats;->B1:Ljava/lang/String;

    invoke-interface {v3, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    goto :goto_5

    :cond_b
    :try_start_e
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$veq;->ire:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    if-eqz v5, :cond_e

    :try_start_f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/OpPowerConsumpStats$ugm;

    iget-wide v11, v5, Lcom/android/server/wm/OpPowerConsumpStats$ugm;->rtg:J

    cmp-long v8, v11, v9

    if-lez v8, :cond_d

    iget-wide v11, v5, Lcom/android/server/wm/OpPowerConsumpStats$ugm;->rtg:J

    const-wide/16 v13, 0x1f4

    add-long/2addr v11, v13

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    long-to-double v11, v11

    const-wide v13, 0x414b774000000000L    # 3600000.0

    div-double/2addr v11, v13

    iget v8, v5, Lcom/android/server/wm/OpPowerConsumpStats$ugm;->tsu:I

    int-to-double v13, v8

    div-double/2addr v13, v11

    iput-wide v13, v5, Lcom/android/server/wm/OpPowerConsumpStats$ugm;->ssp:D

    :goto_7
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_d
    iget v8, v5, Lcom/android/server/wm/OpPowerConsumpStats$ugm;->cno:I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    if-lez v8, :cond_c

    goto :goto_7

    :cond_e
    :try_start_10
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3

    if-lez v2, :cond_19

    :try_start_11
    sget-object v2, Lcom/android/server/wm/OpPowerConsumpStats$cno;->you:[I

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;->ordinal()I

    move-result v5

    aget v2, v2, v5

    const/4 v5, 0x1

    if-eq v2, v5, :cond_11

    const/4 v8, 0x2

    if-eq v2, v8, :cond_10

    const/4 v11, 0x3

    if-eq v2, v11, :cond_f

    goto :goto_9

    :cond_f
    iget-object v2, v1, Lcom/android/server/wm/OpPowerConsumpStats;->q0:Ljava/util/Comparator;

    :goto_8
    invoke-static {v4, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_9

    :cond_10
    iget-object v2, v1, Lcom/android/server/wm/OpPowerConsumpStats;->p0:Ljava/util/Comparator;

    goto :goto_8

    :cond_11
    const/4 v8, 0x2

    iget-object v2, v1, Lcom/android/server/wm/OpPowerConsumpStats;->o0:Ljava/util/Comparator;

    goto :goto_8

    :goto_9
    move-wide v12, v9

    const/4 v2, 0x0

    const/4 v11, 0x0

    :goto_a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v2, v14, :cond_18

    sget-object v14, Lcom/android/server/wm/OpPowerConsumpStats$PersistType;->you:Lcom/android/server/wm/OpPowerConsumpStats$PersistType;

    move v15, v8

    move-object/from16 v8, p2

    if-ne v8, v14, :cond_12

    iget v14, v1, Lcom/android/server/wm/OpPowerConsumpStats;->c0:I

    if-lt v2, v14, :cond_12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reach up the maximum record-size of day: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/wm/OpPowerConsumpStats;->c0:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    move v6, v11

    move-wide v9, v12

    goto/16 :goto_f

    :cond_12
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/OpPowerConsumpStats$ugm;

    const-string v5, "capConsumption"

    const/4 v6, 0x0

    invoke-interface {v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "pkgName"

    iget-object v9, v14, Lcom/android/server/wm/OpPowerConsumpStats$ugm;->zta:Ljava/lang/String;

    invoke-interface {v3, v6, v5, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "versionCode"

    iget v9, v14, Lcom/android/server/wm/OpPowerConsumpStats$ugm;->you:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v6, v5, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "gapTouchCount"

    iget v9, v14, Lcom/android/server/wm/OpPowerConsumpStats$ugm;->cno:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v6, v5, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "gapTouchMs"

    iget-wide v9, v14, Lcom/android/server/wm/OpPowerConsumpStats$ugm;->kth:J

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v6, v5, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "drop"

    iget v9, v14, Lcom/android/server/wm/OpPowerConsumpStats$ugm;->tsu:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v6, v5, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "run"

    iget-wide v9, v14, Lcom/android/server/wm/OpPowerConsumpStats$ugm;->rtg:J

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v6, v5, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v5, v14, Lcom/android/server/wm/OpPowerConsumpStats$ugm;->tsu:I

    add-int/2addr v11, v5

    iget-wide v5, v14, Lcom/android/server/wm/OpPowerConsumpStats$ugm;->rtg:J

    add-long/2addr v12, v5

    const/4 v5, 0x0

    :goto_b
    sget-object v6, Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;->sis:Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-gt v5, v6, :cond_17

    const/4 v6, 0x0

    :goto_c
    const/4 v9, 0x5

    if-ge v6, v9, :cond_16

    iget-object v9, v14, Lcom/android/server/wm/OpPowerConsumpStats$ugm;->sis:Landroid/util/SparseArray;

    mul-int/lit8 v10, v5, 0x5

    add-int/2addr v10, v6

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/OpPowerConsumpStats$vdb;

    if-eqz v9, :cond_13

    invoke-static {v9}, Lcom/android/server/wm/OpPowerConsumpStats$vdb;->sis(Lcom/android/server/wm/OpPowerConsumpStats$vdb;)J

    move-result-wide v19

    invoke-static {v9}, Lcom/android/server/wm/OpPowerConsumpStats$vdb;->rtg(Lcom/android/server/wm/OpPowerConsumpStats$vdb;)I

    move-result v9

    goto :goto_d

    :cond_13
    const/4 v9, 0x0

    const-wide/16 v19, 0x0

    :goto_d
    sget-object v10, Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;->zta:Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    if-ne v5, v10, :cond_14

    const-string v10, "W_"

    goto :goto_e

    :cond_14
    sget-object v10, Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;->you:Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    if-ne v5, v10, :cond_15

    const-string v10, "M_"

    goto :goto_e

    :cond_15
    const-string v10, "N_"

    :goto_e
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 p3, v11

    const-string v11, "R"

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v19, v12

    const/4 v12, 0x0

    invoke-interface {v3, v12, v11, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "C"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    int-to-long v11, v9

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    invoke-interface {v3, v11, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v6, v6, 0x1

    move/from16 v11, p3

    move-wide/from16 v12, v19

    const/4 v15, 0x2

    goto/16 :goto_c

    :cond_16
    move/from16 p3, v11

    move-wide/from16 v19, v12

    add-int/lit8 v5, v5, 0x1

    const/4 v15, 0x2

    goto/16 :goto_b

    :cond_17
    move/from16 p3, v11

    move-wide/from16 v19, v12

    const-string v5, "capConsumption"

    const/4 v6, 0x0

    invoke-interface {v3, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v5, Lcom/android/server/wm/OpPowerConsumpStats;->B1:Ljava/lang/String;

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1

    add-int/lit8 v2, v2, 0x1

    move/from16 v11, p3

    move-wide/from16 v12, v19

    const/4 v5, 0x1

    const/4 v8, 0x2

    const-wide/16 v9, 0x0

    goto/16 :goto_a

    :cond_18
    move-object/from16 v8, p2

    move v6, v11

    move-wide v9, v12

    const/4 v5, 0x0

    goto :goto_f

    :cond_19
    move-object/from16 v8, p2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v9, 0x0

    :goto_f
    :try_start_12
    sget-object v2, Lcom/android/server/wm/OpPowerConsumpStats$PersistType;->you:Lcom/android/server/wm/OpPowerConsumpStats$PersistType;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3

    const-string v11, " "

    if-ne v8, v2, :cond_1a

    :try_start_13
    const-string v2, "capInfo"

    const/4 v8, 0x0

    invoke-interface {v3, v8, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "version"

    const/4 v12, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v8, v2, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "max_day"

    iget v12, v1, Lcom/android/server/wm/OpPowerConsumpStats;->b0:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v8, v2, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "max_count"

    iget v12, v1, Lcom/android/server/wm/OpPowerConsumpStats;->c0:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v8, v2, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "total_count"

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v8, v2, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "overflow"

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v8, v2, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "capInfo"

    invoke-interface {v3, v8, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v2, Lcom/android/server/wm/OpPowerConsumpStats;->B1:Ljava/lang/String;

    invoke-interface {v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Cap] [capInfo]: [2 "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/server/wm/OpPowerConsumpStats;->b0:I

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/server/wm/OpPowerConsumpStats;->c0:I

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1

    :cond_1a
    :try_start_14
    const-string v2, "capStatistics"

    const/4 v4, 0x0

    invoke-interface {v3, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "drop"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "run"

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "capStatistics"

    invoke-interface {v3, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v2, Lcom/android/server/wm/OpPowerConsumpStats;->B1:Ljava/lang/String;

    invoke-interface {v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Cap] [capStatistics]: ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v9, v10}, Lcom/android/server/wm/OpPowerConsumpStats;->H0(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    const-string v2, "qCommand"

    const/4 v4, 0x0

    invoke-interface {v3, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v2, Lcom/android/server/wm/OpPowerConsumpStats;->a2:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    iget-wide v5, v1, Lcom/android/server/wm/OpPowerConsumpStats;->Z:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "resetClean"

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v4, Lcom/android/server/wm/OpPowerConsumpStats;->a2:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    iget-wide v8, v1, Lcom/android/server/wm/OpPowerConsumpStats;->a0:J

    invoke-direct {v5, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "getResult"

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, "qCommand"

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v4, Lcom/android/server/wm/OpPowerConsumpStats;->B1:Ljava/lang/String;

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Cap] [qCommand]: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-interface {v3, v1, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v1, Lcom/android/server/wm/OpPowerConsumpStats;->B1:Ljava/lang/String;

    invoke-interface {v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual/range {v23 .. v23}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3

    move-object/from16 v1, v23

    move-object/from16 v6, v24

    :try_start_15
    invoke-virtual {v6, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_2

    goto :goto_13

    :catch_2
    move-exception v0

    goto :goto_10

    :catch_3
    move-exception v0

    move-object/from16 v1, v23

    move-object/from16 v6, v24

    goto :goto_10

    :catch_4
    move-exception v0

    move-object v1, v8

    move-object/from16 v6, v24

    goto :goto_11

    :catch_5
    move-exception v0

    move-object v1, v8

    goto :goto_11

    :catch_6
    move-exception v0

    const/4 v1, 0x0

    :goto_10
    move-object v8, v1

    :goto_11
    move-object v1, v0

    :goto_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "persistToDisk Exception e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v8, :cond_1b

    invoke-virtual {v6, v8}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_1b
    :goto_13
    return-void
.end method

.method static synthetic I(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Q1()V

    return-void
.end method

.method private I0(Ljava/lang/StringBuilder;J)V
    .locals 10

    const-wide/32 v0, 0x15180

    div-long v0, p2, v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "d "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-wide/16 v4, 0x3c

    mul-long/2addr v0, v4

    mul-long/2addr v0, v4

    const-wide/16 v6, 0x18

    mul-long/2addr v0, v6

    sub-long v6, p2, v0

    const-wide/16 v8, 0xe10

    div-long/2addr v6, v8

    cmp-long p0, v6, v2

    if-nez p0, :cond_1

    cmp-long p0, v0, v2

    if-eqz p0, :cond_2

    :cond_1
    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "h "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    mul-long/2addr v6, v4

    mul-long/2addr v6, v4

    add-long/2addr v0, v6

    sub-long v6, p2, v0

    div-long/2addr v6, v4

    cmp-long p0, v6, v2

    if-nez p0, :cond_3

    cmp-long p0, v0, v2

    if-eqz p0, :cond_4

    :cond_3
    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "m "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    mul-long/2addr v6, v4

    add-long/2addr v0, v6

    cmp-long p0, p2, v2

    if-nez p0, :cond_5

    cmp-long p0, v0, v2

    if-eqz p0, :cond_6

    :cond_5
    sub-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "s "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    return-void
.end method

.method private I1(Lcom/android/server/wm/OpPowerConsumpStats$veq;Lcom/android/server/wm/OpPowerConsumpStats$PersistType;Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/OpPowerConsumpStats;->H1(Lcom/android/server/wm/OpPowerConsumpStats$veq;Lcom/android/server/wm/OpPowerConsumpStats$PersistType;Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;)V

    sget-boolean p1, Lcom/android/server/wm/OpPowerConsumpStats;->x0:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->G1()V

    :cond_0
    return-void
.end method

.method static synthetic J(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->L1()V

    return-void
.end method

.method private J0(ILcom/android/server/wm/OpPowerConsumpStats$NetworkType;)I
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    mul-int/lit8 p0, p0, 0x5

    add-int/2addr p0, p1

    return p0
.end method

.method static J1(Ljava/lang/String;I)I
    .locals 5

    const-string v0, "OPCS"

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception v1

    move-object v3, v2

    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_0
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v1, p1

    :goto_2
    sget-boolean v2, Lcom/android/server/wm/OpPowerConsumpStats;->t0:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AccurateCounter readIntFromFile path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", result:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", defaultValue:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1

    :catchall_1
    move-exception p0

    move-object v2, v3

    :goto_3
    if-eqz v2, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_4
    throw p0
.end method

.method static synthetic K(Lcom/android/server/wm/OpPowerConsumpStats;)Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->S:Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    return-object p0
.end method

.method private K0()Ljava/lang/String;
    .locals 8

    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats;->f2:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "consumptionDetector_statistcal_data_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".xml"

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
    new-instance v2, Lcom/android/server/wm/OpPowerConsumpStats$dma;

    invoke-direct {v2, p0}, Lcom/android/server/wm/OpPowerConsumpStats$dma;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_7

    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    new-instance v2, Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-direct {v2, p0}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

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

    invoke-static {v6}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

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

    invoke-static {v4}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    array-length v4, v1

    if-lez v4, :cond_7

    array-length v4, v1

    iget v6, p0, Lcom/android/server/wm/OpPowerConsumpStats;->b0:I

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

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

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

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    iget p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->b0:I

    if-eqz p0, :cond_8

    return-object v0

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method

.method private K1()V
    .locals 1

    const-string v0, "releaseWakeLock"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ugm:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ugm:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method static synthetic L(Lcom/android/server/wm/OpPowerConsumpStats;Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;)Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->S:Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    return-object p1
.end method

.method private L0()V
    .locals 7

    const-string v0, "generateCapacityData"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->W:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->B0(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->P:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/OpPowerConsumpStats$hmo;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/OpPowerConsumpStats$ugm;

    if-nez v4, :cond_1

    new-instance v4, Lcom/android/server/wm/OpPowerConsumpStats$ugm;

    iget v5, v2, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->you:I

    invoke-direct {v4, p0, v3, v5}, Lcom/android/server/wm/OpPowerConsumpStats$ugm;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;I)V

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v2, v4}, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->rtg(Lcom/android/server/wm/OpPowerConsumpStats$ugm;)V

    iget-boolean v3, v2, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->wtn:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/server/wm/OpPowerConsumpStats$SettleType;->you:Lcom/android/server/wm/OpPowerConsumpStats$SettleType;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->kth(Lcom/android/server/wm/OpPowerConsumpStats$SettleType;)Lcom/android/server/wm/OpPowerConsumpStats$vdb;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Cap] [CALCULATE] add this cache CapSummary: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    invoke-static {v4, v3}, Lcom/android/server/wm/OpPowerConsumpStats$ugm;->sis(Lcom/android/server/wm/OpPowerConsumpStats$ugm;Lcom/android/server/wm/OpPowerConsumpStats$vdb;)V

    :cond_2
    iget-boolean v3, v2, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->ssp:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/server/wm/OpPowerConsumpStats$SettleType;->you:Lcom/android/server/wm/OpPowerConsumpStats$SettleType;

    invoke-static {v2, v3}, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->zta(Lcom/android/server/wm/OpPowerConsumpStats$hmo;Lcom/android/server/wm/OpPowerConsumpStats$SettleType;)V

    :cond_3
    iget v3, v2, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->dma:I

    iget-wide v5, v2, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->ywr:J

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/wm/OpPowerConsumpStats$ugm;->ssp(IJ)V

    goto :goto_0

    :cond_4
    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->X:Ljava/util/HashMap;

    return-void
.end method

.method private L1()V
    .locals 4

    const-string v0, "resetListener"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats;->r0:Lcom/android/server/wm/OpPowerConsumpStats;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->gwm:Lcom/android/server/wm/OpPowerConsumpStatsInjector$ResetParamListener;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/server/wm/OpPowerConsumpStatsInjector$ResetParamListener;->resetParamForOPCS()Z

    move-result v0

    :cond_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->gck:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->gck:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->gck:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void
.end method

.method static synthetic M(Lcom/android/server/wm/OpPowerConsumpStats;)Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->U:Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;

    return-object p0
.end method

.method private M0()V
    .locals 1

    const-string v0, "generatePowerConsumptionData"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->Z0(Ljava/lang/String;)V

    return-void
.end method

.method private M1(Lorg/json/JSONArray;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "MaxHistoryDay"

    const-string v3, "Capacity_Report"

    const-string v4, "topKernelWakeupReasons"

    const-string v5, "topKernelWakeLocks"

    const-string v6, "topSize"

    const-string v7, "randomInterval"

    const-string v8, "bootDelayTime"

    const-string v9, "calculateIntervalThreshold"

    const-string v10, "reportIntervalThreshold"

    const-string v11, "enable"

    const-string v12, "[OnlineConfig] resolveConfigFromJSON topKernelWakeupReasons:"

    const-string v13, "[OnlineConfig] resolveConfigFromJSON topKernelWakeLocks:"

    const-string v14, "[OnlineConfig] resolveConfigFromJSON topSize:"

    const-string v15, "[OnlineConfig] resolveConfigFromJSON randomInterval:"

    move-object/from16 v16, v12

    const-string v12, "[OnlineConfig] resolveConfigFromJSON bootDelayTime:"

    move-object/from16 v17, v13

    const-string v13, "[OnlineConfig] resolveConfigFromJSON calculateIntervalThreshold:"

    move-object/from16 v18, v14

    const-string v14, "[OnlineConfig] resolveConfigFromJSON reportTimePoint:"

    move-object/from16 v19, v15

    const-string v15, "[OnlineConfig] resolveConfigFromJSON sENABLE:"

    move-object/from16 v20, v12

    const-string v12, "OPCS"

    if-nez v1, :cond_0

    const-string v0, "resolveConfigFromJSON jsonArray is null, return"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    return-void

    :cond_0
    move-object/from16 v21, v13

    move-object/from16 v22, v14

    const/4 v13, 0x0

    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v13, v14, :cond_10

    invoke-virtual {v1, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    invoke-virtual {v14, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v23
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v1, "value"

    move-object/from16 v24, v12

    const-string v12, "name"

    if-eqz v23, :cond_3

    move-object/from16 v23, v15

    :try_start_1
    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    move-object/from16 v25, v11

    const/4 v11, 0x0

    invoke-virtual {v15, v11}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v15

    sget-boolean v11, Lcom/android/server/wm/OpPowerConsumpStats;->D1:Z

    if-eq v15, v11, :cond_4

    sput-boolean v15, Lcom/android/server/wm/OpPowerConsumpStats;->D1:Z

    if-eqz v15, :cond_1

    sget-object v11, Lcom/android/server/wm/OpPowerConsumpStats;->s0:Lcom/android/server/wm/OpPowerConsumpStats;

    sput-object v11, Lcom/android/server/wm/OpPowerConsumpStats;->r0:Lcom/android/server/wm/OpPowerConsumpStats;

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    sput-object v11, Lcom/android/server/wm/OpPowerConsumpStats;->r0:Lcom/android/server/wm/OpPowerConsumpStats;

    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/OpPowerConsumpStats;->c1()V

    goto :goto_2

    :cond_2
    move-object/from16 v25, v11

    goto :goto_2

    :cond_3
    move-object/from16 v25, v11

    move-object/from16 v23, v15

    :cond_4
    :goto_2
    invoke-virtual {v14, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v26

    sput-wide v26, Lcom/android/server/wm/OpPowerConsumpStats;->G1:J

    sget-boolean v11, Lcom/android/server/wm/OpPowerConsumpStats;->D1:Z

    if-eqz v11, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/OpPowerConsumpStats;->m0()V

    :cond_5
    invoke-virtual {v14, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v26

    sput-wide v26, Lcom/android/server/wm/OpPowerConsumpStats;->H1:J

    iget-object v11, v0, Lcom/android/server/wm/OpPowerConsumpStats;->rtg:Landroid/app/AlarmManager;

    iget-object v15, v0, Lcom/android/server/wm/OpPowerConsumpStats;->k0:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v11, v15}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    sget-boolean v11, Lcom/android/server/wm/OpPowerConsumpStats;->D1:Z

    if-eqz v11, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/OpPowerConsumpStats;->l0()V

    :cond_6
    invoke-virtual {v14, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v26

    sput-wide v26, Lcom/android/server/wm/OpPowerConsumpStats;->I1:J

    :cond_7
    invoke-virtual {v14, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Lorg/json/JSONArray;->getInt(I)I

    move-result v11

    sput v11, Lcom/android/server/wm/OpPowerConsumpStats;->F1:I

    :cond_8
    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Lorg/json/JSONArray;->getInt(I)I

    move-result v11

    sput v11, Lcom/android/server/wm/OpPowerConsumpStats;->J1:I

    :cond_9
    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Lorg/json/JSONArray;->getInt(I)I

    move-result v11

    sput v11, Lcom/android/server/wm/OpPowerConsumpStats;->K1:I

    :cond_a
    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-virtual {v14, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    sput v1, Lcom/android/server/wm/OpPowerConsumpStats;->L1:I

    goto :goto_3

    :cond_b
    const/4 v11, 0x0

    :goto_3
    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/wm/OpPowerConsumpStats;->J:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[OnlineConfig] Capacity_Report: "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, v0, Lcom/android/server/wm/OpPowerConsumpStats;->J:Z

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/OpPowerConsumpStats;->b0:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[OnlineConfig] MaxHistoryDay: "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lcom/android/server/wm/OpPowerConsumpStats;->b0:I

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    :cond_d
    const-string v1, "MaxCountOfDay"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "MaxCountOfDay"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/OpPowerConsumpStats;->c0:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[OnlineConfig] MaxCountOfDay: "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lcom/android/server/wm/OpPowerConsumpStats;->c0:I

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    :cond_e
    const-string v1, "GapTouchPeriod"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "GapTouchPeriod"

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/OpPowerConsumpStats;->g0:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[OnlineConfig] GapTouchPeriod: "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lcom/android/server/wm/OpPowerConsumpStats;->g0:I

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_f
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p1

    move-object/from16 v15, v23

    move-object/from16 v12, v24

    move-object/from16 v11, v25

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v9, v16

    move-object/from16 v8, v17

    move-object/from16 v7, v18

    move-object/from16 v6, v19

    move-object/from16 v5, v20

    move-object/from16 v4, v21

    move-object/from16 v3, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    goto/16 :goto_8

    :catch_0
    move-exception v0

    move-object/from16 v9, v16

    move-object/from16 v8, v17

    move-object/from16 v7, v18

    move-object/from16 v6, v19

    move-object/from16 v5, v20

    move-object/from16 v4, v21

    move-object/from16 v3, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    goto/16 :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v9, v16

    move-object/from16 v8, v17

    move-object/from16 v7, v18

    move-object/from16 v6, v19

    move-object/from16 v5, v20

    move-object/from16 v4, v21

    move-object/from16 v3, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    goto/16 :goto_6

    :cond_10
    move-object/from16 v24, v12

    move-object/from16 v23, v15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/wm/OpPowerConsumpStats;->D1:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v24

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/android/server/wm/OpPowerConsumpStats;->G1:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/android/server/wm/OpPowerConsumpStats;->H1:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/android/server/wm/OpPowerConsumpStats;->I1:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/wm/OpPowerConsumpStats;->F1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v7, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/wm/OpPowerConsumpStats;->J1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v8, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/wm/OpPowerConsumpStats;->K1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v9, v16

    :goto_4
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/wm/OpPowerConsumpStats;->L1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    move-object v2, v12

    move-object v1, v15

    move-object/from16 v9, v16

    move-object/from16 v8, v17

    move-object/from16 v7, v18

    move-object/from16 v6, v19

    move-object/from16 v5, v20

    move-object/from16 v4, v21

    move-object/from16 v3, v22

    goto/16 :goto_8

    :catch_2
    move-exception v0

    move-object v2, v12

    move-object v1, v15

    move-object/from16 v9, v16

    move-object/from16 v8, v17

    move-object/from16 v7, v18

    move-object/from16 v6, v19

    move-object/from16 v5, v20

    move-object/from16 v4, v21

    move-object/from16 v3, v22

    :goto_5
    :try_start_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[OnlineConfig] Exception:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/wm/OpPowerConsumpStats;->D1:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v10, Lcom/android/server/wm/OpPowerConsumpStats;->G1:J

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/android/server/wm/OpPowerConsumpStats;->H1:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/android/server/wm/OpPowerConsumpStats;->I1:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/wm/OpPowerConsumpStats;->F1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/wm/OpPowerConsumpStats;->J1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/wm/OpPowerConsumpStats;->K1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_4

    :catch_3
    move-exception v0

    move-object v2, v12

    move-object v1, v15

    move-object/from16 v9, v16

    move-object/from16 v8, v17

    move-object/from16 v7, v18

    move-object/from16 v6, v19

    move-object/from16 v5, v20

    move-object/from16 v4, v21

    move-object/from16 v3, v22

    :goto_6
    :try_start_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[OnlineConfig] JSONException:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/wm/OpPowerConsumpStats;->D1:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v10, Lcom/android/server/wm/OpPowerConsumpStats;->G1:J

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/android/server/wm/OpPowerConsumpStats;->H1:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/android/server/wm/OpPowerConsumpStats;->I1:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/wm/OpPowerConsumpStats;->F1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/wm/OpPowerConsumpStats;->J1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/wm/OpPowerConsumpStats;->K1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_4

    :goto_7
    return-void

    :catchall_2
    move-exception v0

    :goto_8
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/wm/OpPowerConsumpStats;->D1:Z

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v10, Lcom/android/server/wm/OpPowerConsumpStats;->G1:J

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/android/server/wm/OpPowerConsumpStats;->H1:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/android/server/wm/OpPowerConsumpStats;->I1:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/wm/OpPowerConsumpStats;->F1:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/wm/OpPowerConsumpStats;->J1:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/wm/OpPowerConsumpStats;->K1:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/wm/OpPowerConsumpStats;->L1:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method

.method static synthetic N(Lcom/android/server/wm/OpPowerConsumpStats;Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;)Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->U:Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;

    return-object p1
.end method

.method private N0(Lcom/android/server/wm/OpPowerConsumpStats$veq;)V
    .locals 10

    const-string v0, "generateSortqueueAnddSystemqueue"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p0, "generateSortqueueAnddSystemqueue data is null, return"

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Lcom/android/server/wm/OpPowerConsumpStats$veq;->cjf:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/server/wm/OpPowerConsumpStats$veq;->obl:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$veq;->obl:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/OpPowerConsumpStats$vju;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->m0:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget v2, Lcom/android/server/wm/OpPowerConsumpStats;->K1:I

    if-le v1, v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generateSortqueueAnddSystemqueue wakeLocks length:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v3, v1

    :goto_2
    const-string v4, " |count:"

    const-string v5, " |time:"

    const-string v6, " |name:"

    if-ge v3, v2, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/OpPowerConsumpStats$vju;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "generateSortqueueAnddSystemqueue wakeLocks Top sort i:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v7, Lcom/android/server/wm/OpPowerConsumpStats$vju;->zta:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v7, Lcom/android/server/wm/OpPowerConsumpStats$vju;->you:J

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v7, Lcom/android/server/wm/OpPowerConsumpStats$vju;->sis:I

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/android/server/wm/OpPowerConsumpStats$veq;->cjf:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/OpPowerConsumpStats$vju;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p1, Lcom/android/server/wm/OpPowerConsumpStats$veq;->ear:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/wm/OpPowerConsumpStats$veq;->oxb:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v7, p1, Lcom/android/server/wm/OpPowerConsumpStats$veq;->oxb:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/OpPowerConsumpStats$vju;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->m0:Ljava/util/Comparator;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    sget v2, Lcom/android/server/wm/OpPowerConsumpStats;->L1:I

    if-le p0, v2, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generateSortqueueAnddSystemqueue wakeupReasons length:"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    :goto_5
    if-ge v1, v2, :cond_6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/OpPowerConsumpStats$vju;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "generateSortqueueAnddSystemqueue wakeupReason Top sort i:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/wm/OpPowerConsumpStats$vju;->zta:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/android/server/wm/OpPowerConsumpStats$vju;->you:J

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$vju;->sis:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    iget-object p0, p1, Lcom/android/server/wm/OpPowerConsumpStats$veq;->ear:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/OpPowerConsumpStats$vju;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    return-void
.end method

.method private N1(Landroid/util/SparseArray;ILcom/android/server/wm/OpPowerConsumpStats$NetworkType;)Lcom/android/server/wm/OpPowerConsumpStats$vdb;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/OpPowerConsumpStats$vdb;",
            ">;I",
            "Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;",
            ")",
            "Lcom/android/server/wm/OpPowerConsumpStats$vdb;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/android/server/wm/OpPowerConsumpStats;->J0(ILcom/android/server/wm/OpPowerConsumpStats$NetworkType;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/OpPowerConsumpStats$vdb;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static synthetic O(Lcom/android/server/wm/OpPowerConsumpStats;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Y:Z

    return p0
.end method

.method private O0()Landroid/os/BatteryManagerInternal;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->H:Landroid/os/BatteryManagerInternal;

    if-nez v0, :cond_0

    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->H:Landroid/os/BatteryManagerInternal;

    if-nez v0, :cond_0

    const-string v0, "OPCS"

    const-string v1, "BatteryManagerInternal not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->H:Landroid/os/BatteryManagerInternal;

    return-object p0
.end method

.method private O1(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->gck:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->gck:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic P(Lcom/android/server/wm/OpPowerConsumpStats;)Lcom/android/server/wm/OpPowerConsumpStats$OccludedStatus;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->V:Lcom/android/server/wm/OpPowerConsumpStats$OccludedStatus;

    return-object p0
.end method

.method private P0(Ljava/lang/String;)D
    .locals 14

    const-string v0, "/sys/class/power_supply/bms/charge_full"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/server/wm/OpPowerConsumpStats;->J1(Ljava/lang/String;I)I

    move-result v0

    int-to-double v2, v0

    sput-wide v2, Lcom/android/server/wm/OpPowerConsumpStats;->i2:D

    const-string v0, "/sys/class/power_supply/bms/remaining_capacity"

    invoke-static {v0, v1}, Lcom/android/server/wm/OpPowerConsumpStats;->J1(Ljava/lang/String;I)I

    move-result v0

    int-to-double v0, v0

    sget-boolean v2, Lcom/android/server/wm/OpPowerConsumpStats;->t0:Z

    const-string v3, " TAG:"

    const-string v4, " curPower:"

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AccurateCounter getCurAccurateLevel sFullCharge:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v5, Lcom/android/server/wm/OpPowerConsumpStats;->i2:D

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, " PowerLevel:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wm/OpPowerConsumpStats;->hmo:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->F1(Ljava/lang/String;)V

    :cond_0
    const-wide/16 v5, 0x0

    cmpl-double v2, v0, v5

    if-lez v2, :cond_1

    double-to-int v2, v0

    iput v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->vju:I

    :cond_1
    cmpg-double v2, v0, v5

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    const-string v9, "OPCS"

    if-lez v2, :cond_5

    sget-wide v10, Lcom/android/server/wm/OpPowerConsumpStats;->i2:D

    cmpg-double v2, v10, v5

    if-lez v2, :cond_5

    sget-boolean v2, Lcom/android/server/wm/OpPowerConsumpStats;->E1:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double/2addr v5, v0

    div-double/2addr v5, v10

    iget v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->hmo:I

    int-to-double v10, v2

    sub-double v10, v5, v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v10, v12

    if-gtz v2, :cond_3

    cmpg-double v2, v10, v7

    if-gez v2, :cond_4

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AccurateCounter getCurAccurateLevel not match the actual value, mPowerLevel:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->hmo:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " accuratelevel:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, " sFullCharge:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/android/server/wm/OpPowerConsumpStats;->i2:D

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-wide v5

    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->w:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, " fullCharge:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/android/server/wm/OpPowerConsumpStats;->i2:D

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, " powerLevel:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->hmo:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->irq:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AccurateCounter getCurAccurateLevel error, err:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v7
.end method

.method private P1(IJII)V
    .locals 0

    iget-object p2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->gck:Landroid/os/Handler;

    invoke-virtual {p2, p1, p4, p5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->gck:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic Q(Lcom/android/server/wm/OpPowerConsumpStats;Lcom/android/server/wm/OpPowerConsumpStats$OccludedStatus;)Lcom/android/server/wm/OpPowerConsumpStats$OccludedStatus;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->V:Lcom/android/server/wm/OpPowerConsumpStats$OccludedStatus;

    return-object p1
.end method

.method private Q0()J
    .locals 2

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->x1()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ssp:Lcom/android/server/wm/OpPowerConsumpStats$gwm;

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats$gwm;->zta(Lcom/android/server/wm/OpPowerConsumpStats$gwm;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private Q1()V
    .locals 3

    const-string v0, "toTrackImmediately"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->bvj:Lcom/android/server/wm/OpPowerConsumpStats$veq;

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->R1(Lcom/android/server/wm/OpPowerConsumpStats$veq;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->bvj:Lcom/android/server/wm/OpPowerConsumpStats$veq;

    sget-object v1, Lcom/android/server/wm/OpPowerConsumpStats$PersistType;->you:Lcom/android/server/wm/OpPowerConsumpStats$PersistType;

    sget-object v2, Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;->BY_DROP:Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/OpPowerConsumpStats;->I1(Lcom/android/server/wm/OpPowerConsumpStats$veq;Lcom/android/server/wm/OpPowerConsumpStats$PersistType;Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->bvj:Lcom/android/server/wm/OpPowerConsumpStats$veq;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->veq:Z

    return-void
.end method

.method static synthetic R(Lcom/android/server/wm/OpPowerConsumpStats;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->T:Z

    return p0
.end method

.method private R0(I)Ljava/lang/String;
    .locals 1

    const-string p0, "NONE"

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "WIRELESS"

    goto :goto_0

    :cond_1
    const-string p0, "USB"

    goto :goto_0

    :cond_2
    const-string p0, "AC"

    :cond_3
    :goto_0
    return-object p0
.end method

.method private R1(Lcom/android/server/wm/OpPowerConsumpStats$veq;)V
    .locals 6

    const-string v0, "trackPowerData"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Y:Z

    if-eqz v0, :cond_0

    const-string p0, "Under testing procedure mode, skip any MDM data reporting."

    :goto_0
    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "trackPowerData data is null, return"

    goto :goto_0

    :cond_1
    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->qbh:Lnet/oneplus/odm/OpDeviceManagerInjector;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "appid"

    const-string v2, "NYNCG4I0TI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->qbh:Lnet/oneplus/odm/OpDeviceManagerInjector;

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->zta:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->D1(Lcom/android/server/wm/OpPowerConsumpStats$veq;)Ljava/util/Map;

    move-result-object v4

    const-string v5, "OPCS"

    invoke-virtual {v2, v3, v5, v4, v0}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->C1(Lcom/android/server/wm/OpPowerConsumpStats$veq;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "X9HFK50WT7"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->qbh:Lnet/oneplus/odm/OpDeviceManagerInjector;

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->zta:Landroid/content/Context;

    const-string v2, "awake_notouch"

    invoke-virtual {v1, p0, v2, p1, v0}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    :cond_2
    return-void
.end method

.method static synthetic S(Lcom/android/server/wm/OpPowerConsumpStats;Lcom/android/server/wm/OpPowerConsumpStats$StatusType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->S1(Lcom/android/server/wm/OpPowerConsumpStats$StatusType;)V

    return-void
.end method

.method private S0(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p0, "unknown"

    goto :goto_0

    :pswitch_0
    const-string p0, "default"

    goto :goto_0

    :pswitch_1
    const-string p0, "wifi"

    goto :goto_0

    :pswitch_2
    const-string p0, "user"

    goto :goto_0

    :pswitch_3
    const-string p0, "unaccounted"

    goto :goto_0

    :pswitch_4
    const-string p0, "screen"

    goto :goto_0

    :pswitch_5
    const-string p0, "phone"

    goto :goto_0

    :pswitch_6
    const-string p0, "overcounted"

    goto :goto_0

    :pswitch_7
    const-string p0, "memory"

    goto :goto_0

    :pswitch_8
    const-string p0, "idle"

    goto :goto_0

    :pswitch_9
    const-string p0, "flashlight"

    goto :goto_0

    :pswitch_a
    const-string p0, "cell"

    goto :goto_0

    :pswitch_b
    const-string p0, "camera"

    goto :goto_0

    :pswitch_c
    const-string p0, "bluetooth"

    goto :goto_0

    :pswitch_d
    const-string p0, "app"

    goto :goto_0

    :pswitch_e
    const-string p0, "ambient_display"

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x63
        :pswitch_e
        :pswitch_d
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
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private S1(Lcom/android/server/wm/OpPowerConsumpStats$StatusType;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Cap] updateDummyLockScreenState to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats$StatusType;->you:Lcom/android/server/wm/OpPowerConsumpStats$StatusType;

    const-string v1, "LockScreen"

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->T:Z

    if-nez p1, :cond_1

    sget-object p1, Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;->sis:Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;->tsu:Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    :goto_0
    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->f1(Ljava/lang/String;Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;)V

    :cond_1
    return-void
.end method

.method static synthetic T(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->Y0(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private T0(Lcom/android/internal/os/BatterySipper$DrainType;)I
    .locals 0

    sget-object p0, Lcom/android/server/wm/OpPowerConsumpStats$cno;->sis:[I

    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_0

    const/16 p0, -0x55

    goto :goto_0

    :pswitch_0
    const/16 p0, -0x56

    goto :goto_0

    :pswitch_1
    const/16 p0, -0x57

    goto :goto_0

    :pswitch_2
    const/16 p0, -0x58

    goto :goto_0

    :pswitch_3
    const/16 p0, -0x59

    goto :goto_0

    :pswitch_4
    const/16 p0, -0x5a

    goto :goto_0

    :pswitch_5
    const/16 p0, -0x5b

    goto :goto_0

    :pswitch_6
    const/16 p0, -0x5c

    goto :goto_0

    :pswitch_7
    const/16 p0, -0x5d

    goto :goto_0

    :pswitch_8
    const/16 p0, -0x5e

    goto :goto_0

    :pswitch_9
    const/16 p0, -0x5f

    goto :goto_0

    :pswitch_a
    const/16 p0, -0x60

    goto :goto_0

    :pswitch_b
    const/16 p0, -0x61

    goto :goto_0

    :pswitch_c
    const/16 p0, -0x62

    goto :goto_0

    :pswitch_d
    const/16 p0, -0x63

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
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
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic U(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->K1()V

    return-void
.end method

.method public static U0()Lcom/android/server/wm/OpPowerConsumpStats;
    .locals 1

    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats;->r0:Lcom/android/server/wm/OpPowerConsumpStats;

    return-object v0
.end method

.method private U1()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->M:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->T:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Cap] LockScreenDisabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->T:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " UserId "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic V(Lcom/android/server/wm/OpPowerConsumpStats;ZLcom/android/server/wm/IOpPowerConsumpStats$OrderType;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/OpPowerConsumpStats;->i1(ZLcom/android/server/wm/IOpPowerConsumpStats$OrderType;)V

    return-void
.end method

.method static synthetic W(Lcom/android/server/wm/OpPowerConsumpStats;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->J:Z

    return p0
.end method

.method private W0()Ljava/lang/String;
    .locals 1

    const-string p0, "ro.build.version.ota"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "Hydrogen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Hydrogen "

    goto :goto_0

    :cond_0
    const-string v0, "Oxygen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "Oxygen "

    goto :goto_0

    :cond_1
    const-string p0, ""

    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic X(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->D0()V

    return-void
.end method

.method private X0()I
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->O0()Landroid/os/BatteryManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/BatteryManagerInternal;->getPlugType()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic Y(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->F1(Ljava/lang/String;)V

    return-void
.end method

.method private Y0(Ljava/lang/String;)I
    .locals 3

    const-string v0, "OPCS"

    const/4 v1, -0x1

    if-eqz p1, :cond_1

    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aget-object p1, p1, v2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->zta:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    move v1, p0

    goto :goto_0

    :cond_0
    const-string p0, "oops, pkgInfo is null"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get NameNotFoundException error:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v1
.end method

.method static synthetic Z()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStats;->t0:Z

    return v0
.end method

.method private Z0(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleBatteryStatsRelated from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " |mPlugState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->cjf:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->bio:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->wtn:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->kth:Lcom/android/internal/os/BatteryStatsHelper;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->wtn:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, v2}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->kth:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v2, 0x2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v0, "handle_plug_event"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->cjf:Z

    if-eqz v0, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->q:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->n:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->u:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->r:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->q:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->g0(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->u:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->k0(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-boolean p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ire:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ire:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleBatteryStatsRelated Exception e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPCS"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->c1()V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method static synthetic a(Lcom/android/server/wm/OpPowerConsumpStats;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oxb:Z

    return p0
.end method

.method static synthetic a0(Lcom/android/server/wm/OpPowerConsumpStats;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->vdb:Ljava/lang/Object;

    return-object p0
.end method

.method private a1(Ljava/lang/String;)Lcom/android/server/wm/OpPowerConsumpStats$veq;
    .locals 8

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Q0()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->obl:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCalculate begin, calculateTime_Begin:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->zgw:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " |calculateTime_End:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->obl:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->x1()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "handleCalculate mBaseTimer is null, return"

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    return-object v1

    :cond_0
    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$veq;

    invoke-direct {v0, p0}, Lcom/android/server/wm/OpPowerConsumpStats$veq;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->W0()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$veq;->zta:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oif:Lcom/android/server/wm/OpPowerConsumpStats$veq;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$veq;->you:J

    iput-wide v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$veq;->you:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$veq;->sis:J

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oif:Lcom/android/server/wm/OpPowerConsumpStats$veq;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$veq;->tsu:J

    iget-wide v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->obl:J

    iget-wide v6, p0, Lcom/android/server/wm/OpPowerConsumpStats;->zgw:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$veq;->tsu:J

    iget-boolean v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->veq:Z

    iput-boolean v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$veq;->rtg:Z

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oif:Lcom/android/server/wm/OpPowerConsumpStats$veq;

    iget v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$veq;->ssp:I

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->vdw:Lcom/android/server/wm/OpPowerConsumpStats$fto;

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats$fto;->sis(Lcom/android/server/wm/OpPowerConsumpStats$fto;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$veq;->ssp:I

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oif:Lcom/android/server/wm/OpPowerConsumpStats$veq;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$veq;->cno:D

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->qeg:Lcom/android/server/wm/OpPowerConsumpStats$bvj;

    invoke-static {v4}, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->rtg(Lcom/android/server/wm/OpPowerConsumpStats$bvj;)D

    move-result-wide v4

    add-double/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$veq;->cno:D

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oif:Lcom/android/server/wm/OpPowerConsumpStats$veq;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$veq;->kth:J

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ivd:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    iget-wide v5, p0, Lcom/android/server/wm/OpPowerConsumpStats;->obl:J

    invoke-static {v4, v5, v6}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->rtg(Lcom/android/server/wm/OpPowerConsumpStats$lqr;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$veq;->kth:J

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oif:Lcom/android/server/wm/OpPowerConsumpStats$veq;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$veq;->bio:J

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->a:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    iget-wide v5, p0, Lcom/android/server/wm/OpPowerConsumpStats;->obl:J

    invoke-static {v4, v5, v6}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->rtg(Lcom/android/server/wm/OpPowerConsumpStats$lqr;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$veq;->bio:J

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oif:Lcom/android/server/wm/OpPowerConsumpStats$veq;

    iget v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$veq;->igw:I

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->b:Lcom/android/server/wm/OpPowerConsumpStats$fto;

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats$fto;->sis(Lcom/android/server/wm/OpPowerConsumpStats$fto;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$veq;->igw:I

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oif:Lcom/android/server/wm/OpPowerConsumpStats$veq;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$veq;->wtn:D

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->c:Lcom/android/server/wm/OpPowerConsumpStats$bvj;

    invoke-static {v4}, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->rtg(Lcom/android/server/wm/OpPowerConsumpStats$bvj;)D

    move-result-wide v4

    add-double/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$veq;->wtn:D

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oif:Lcom/android/server/wm/OpPowerConsumpStats$veq;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$veq;->gck:J

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->d:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    iget-wide v5, p0, Lcom/android/server/wm/OpPowerConsumpStats;->obl:J

    invoke-static {v4, v5, v6}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->rtg(Lcom/android/server/wm/OpPowerConsumpStats$lqr;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$veq;->gck:J

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oif:Lcom/android/server/wm/OpPowerConsumpStats$veq;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$veq;->dma:J

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->e:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    iget-wide v5, p0, Lcom/android/server/wm/OpPowerConsumpStats;->obl:J

    invoke-static {v4, v5, v6}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->rtg(Lcom/android/server/wm/OpPowerConsumpStats$lqr;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$veq;->dma:J

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oif:Lcom/android/server/wm/OpPowerConsumpStats$veq;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$veq;->ywr:J

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->f:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    iget-wide v5, p0, Lcom/android/server/wm/OpPowerConsumpStats;->obl:J

    invoke-static {v4, v5, v6}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->rtg(Lcom/android/server/wm/OpPowerConsumpStats$lqr;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$veq;->ywr:J

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oif:Lcom/android/server/wm/OpPowerConsumpStats$veq;

    iget v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$veq;->qbh:I

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->g:Lcom/android/server/wm/OpPowerConsumpStats$fto;

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats$fto;->sis(Lcom/android/server/wm/OpPowerConsumpStats$fto;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$veq;->qbh:I

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oif:Lcom/android/server/wm/OpPowerConsumpStats$veq;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$veq;->oif:D

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->h:Lcom/android/server/wm/OpPowerConsumpStats$bvj;

    invoke-static {v4}, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->rtg(Lcom/android/server/wm/OpPowerConsumpStats$bvj;)D

    move-result-wide v4

    add-double/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$veq;->oif:D

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oif:Lcom/android/server/wm/OpPowerConsumpStats$veq;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$veq;->bvj:J

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->i:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    iget-wide v5, p0, Lcom/android/server/wm/OpPowerConsumpStats;->obl:J

    invoke-static {v4, v5, v6}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->rtg(Lcom/android/server/wm/OpPowerConsumpStats$lqr;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$veq;->bvj:J

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oif:Lcom/android/server/wm/OpPowerConsumpStats$veq;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$veq;->ibl:J

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->j:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    iget-wide v5, p0, Lcom/android/server/wm/OpPowerConsumpStats;->obl:J

    invoke-static {v4, v5, v6}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->rtg(Lcom/android/server/wm/OpPowerConsumpStats$lqr;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$veq;->ibl:J

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oif:Lcom/android/server/wm/OpPowerConsumpStats$veq;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$veq;->gwm:J

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->k:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    iget-wide v5, p0, Lcom/android/server/wm/OpPowerConsumpStats;->obl:J

    invoke-static {v4, v5, v6}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->rtg(Lcom/android/server/wm/OpPowerConsumpStats$lqr;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$veq;->gwm:J

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oif:Lcom/android/server/wm/OpPowerConsumpStats$veq;

    iget-object v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$veq;->ugm:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$veq;->ugm:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->bud:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->l:Lcom/android/server/wm/OpPowerConsumpStats$ear;

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats$ear;->tsu(Lcom/android/server/wm/OpPowerConsumpStats$ear;)Lcom/android/server/wm/OpPowerConsumpStats$cjf;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, v0, Lcom/android/server/wm/OpPowerConsumpStats$veq;->ugm:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oif:Lcom/android/server/wm/OpPowerConsumpStats$veq;

    iget-object v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$veq;->vdb:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$veq;->vdb:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->les:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->m:Lcom/android/server/wm/OpPowerConsumpStats$obl;

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats$obl;->kth(Lcom/android/server/wm/OpPowerConsumpStats$obl;)Lcom/android/server/wm/OpPowerConsumpStats$zgw;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, v0, Lcom/android/server/wm/OpPowerConsumpStats$veq;->vdb:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oif:Lcom/android/server/wm/OpPowerConsumpStats$veq;

    iget-object v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$veq;->zgw:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$veq;->zgw:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->irq:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->M0()V

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->q:Ljava/util/HashMap;

    iput-object v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$veq;->obl:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->u:Ljava/util/HashMap;

    iput-object v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$veq;->oxb:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->L0()V

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->X:Ljava/util/HashMap;

    iput-object p0, v0, Lcom/android/server/wm/OpPowerConsumpStats$veq;->ire:Ljava/util/HashMap;

    const-string p0, "handleCalculate end"

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/server/wm/OpPowerConsumpStats;->u0:Z

    if-eqz p0, :cond_3

    invoke-virtual {v0, p1}, Lcom/android/server/wm/OpPowerConsumpStats$veq;->zta(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleCalculate Exception e:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OPCS"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method static synthetic b(Lcom/android/server/wm/OpPowerConsumpStats;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oxb:Z

    return p1
.end method

.method static synthetic b0(Lcom/android/server/wm/OpPowerConsumpStats;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->R0(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b1(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ear:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->l:Lcom/android/server/wm/OpPowerConsumpStats$ear;

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats$ear;->zta(Lcom/android/server/wm/OpPowerConsumpStats$ear;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->l:Lcom/android/server/wm/OpPowerConsumpStats$ear;

    invoke-static {v0, p1}, Lcom/android/server/wm/OpPowerConsumpStats$ear;->you(Lcom/android/server/wm/OpPowerConsumpStats$ear;Ljava/lang/String;)Z

    :goto_0
    const-string p1, "doze"

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->F0(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->A1(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic bio()I
    .locals 1

    sget v0, Lcom/android/server/wm/OpPowerConsumpStats;->V1:I

    return v0
.end method

.method static synthetic bud(Lcom/android/server/wm/OpPowerConsumpStats;Lcom/android/server/wm/OpPowerConsumpStats$gwm;)Lcom/android/server/wm/OpPowerConsumpStats$gwm;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ssp:Lcom/android/server/wm/OpPowerConsumpStats$gwm;

    return-object p1
.end method

.method static synthetic bvj(Lcom/android/server/wm/OpPowerConsumpStats;Lcom/android/server/wm/OpPowerConsumpStats$veq;Lcom/android/server/wm/OpPowerConsumpStats$PersistType;Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/OpPowerConsumpStats;->I1(Lcom/android/server/wm/OpPowerConsumpStats$veq;Lcom/android/server/wm/OpPowerConsumpStats$PersistType;Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;)V

    return-void
.end method

.method static synthetic c(Lcom/android/server/wm/OpPowerConsumpStats;)Landroid/os/PowerManager;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->dma:Landroid/os/PowerManager;

    return-object p0
.end method

.method private c0()V
    .locals 3

    const-string v0, "acquireWakeLock"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->dma:Landroid/os/PowerManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->zta:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->dma:Landroid/os/PowerManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ugm:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->dma:Landroid/os/PowerManager;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    const-string v2, "OPCS"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ugm:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ugm:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ugm:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_2
    return-void
.end method

.method private c1()V
    .locals 1

    const-string v0, "handleException"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->o0()V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->r0()V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->L1()V

    return-void
.end method

.method static synthetic cgv(Lcom/android/server/wm/OpPowerConsumpStats;Lcom/android/server/wm/OpPowerConsumpStats$veq;)Lcom/android/server/wm/OpPowerConsumpStats$veq;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oif:Lcom/android/server/wm/OpPowerConsumpStats$veq;

    return-object p1
.end method

.method static synthetic cjf(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/wm/OpPowerConsumpStats;->g2:Z

    return p0
.end method

.method static synthetic cno(Lcom/android/server/wm/OpPowerConsumpStats;Landroid/util/SparseArray;ILcom/android/server/wm/OpPowerConsumpStats$NetworkType;)Lcom/android/server/wm/OpPowerConsumpStats$vdb;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/OpPowerConsumpStats;->N1(Landroid/util/SparseArray;ILcom/android/server/wm/OpPowerConsumpStats$NetworkType;)Lcom/android/server/wm/OpPowerConsumpStats$vdb;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/android/server/wm/OpPowerConsumpStats;)I
    .locals 0

    iget p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->hmo:I

    return p0
.end method

.method private d0()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->G:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->F:Landroid/util/SparseArray;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private d1(IIJLjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->P:Ljava/util/HashMap;

    invoke-virtual {p0, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;

    if-eqz p0, :cond_1

    iget-boolean p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->ssp:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/server/wm/OpPowerConsumpStats$SettleType;->sis:Lcom/android/server/wm/OpPowerConsumpStats$SettleType;

    invoke-static {p0, p1, p3, p4}, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->sis(Lcom/android/server/wm/OpPowerConsumpStats$hmo;Lcom/android/server/wm/OpPowerConsumpStats$SettleType;J)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[GapTouch] oops, curGapTouchTopPkg: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not topping"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[GapTouch] oops, why can\'t locate current CurGapTouchTopPkg: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method static synthetic dma(Lcom/android/server/wm/OpPowerConsumpStats;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->e0:J

    return-wide p1
.end method

.method static synthetic e(Lcom/android/server/wm/OpPowerConsumpStats;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->hmo:I

    return p1
.end method

.method private e0(I)Lcom/android/server/wm/OpPowerConsumpStats$ibl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->G:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->F:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/OpPowerConsumpStats$ibl;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private e1()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->P:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;

    const/4 v1, 0x1

    const-string v2, " "

    if-eqz v0, :cond_1

    iget-boolean v3, v0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->ssp:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->bio:Z

    if-eqz v3, :cond_0

    invoke-static {v0, v1}, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->you(Lcom/android/server/wm/OpPowerConsumpStats$hmo;Z)V

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[GapTouch] [Start] oops, why curGapTouchTopPkg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->R:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->ssp:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->bio:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GapTouch] [Start] oops, why can\'t locate current gapTouchTopPkg: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->R:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    :goto_1
    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->P:Ljava/util/HashMap;

    const-string v0, "LockScreen"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;

    if-eqz p0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->ssp:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->bio:Z

    if-eqz v0, :cond_2

    invoke-static {p0, v1}, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->you(Lcom/android/server/wm/OpPowerConsumpStats$hmo;Z)V

    goto :goto_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[GapTouch] [Start] oops, why dummy Pkg: LockScreen "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->ssp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->bio:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_3
    const-string p0, "[GapTouch] [Start] oops, why can\'t locate dummy topPkg: LockScreen"

    :goto_2
    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method static synthetic ear(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lcom/android/server/wm/OpPowerConsumpStats;)Landroid/os/BatteryManager;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->cno:Landroid/os/BatteryManager;

    return-object p0
.end method

.method private f0(Lcom/android/server/wm/OpPowerConsumpStats$ibl;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->G:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->F:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/wm/OpPowerConsumpStats$ibl;->zta:I

    invoke-virtual {p0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic fto(Lcom/android/server/wm/OpPowerConsumpStats;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->M1(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic g(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)D
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->P0(Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0
.end method

.method private g0(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/OpPowerConsumpStats$vju;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calculateKernelWakeLocks from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->n:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->wtn:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Timer;

    const/4 v6, 0x2

    invoke-static {v5, v2, v3, v6}, Lcom/android/server/wm/OpPowerConsumpStats;->A0(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-lez v11, :cond_0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v11, p0, Lcom/android/server/wm/OpPowerConsumpStats;->o:Ljava/util/HashMap;

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/OpPowerConsumpStats$vju;

    new-instance v12, Lcom/android/server/wm/OpPowerConsumpStats$vju;

    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v13

    invoke-direct {v12, v4, v7, v8, v13}, Lcom/android/server/wm/OpPowerConsumpStats$vju;-><init>(Ljava/lang/String;JI)V

    if-eqz v11, :cond_1

    invoke-static {v11, v12}, Lcom/android/server/wm/OpPowerConsumpStats$vju;->tsu(Lcom/android/server/wm/OpPowerConsumpStats$vju;Lcom/android/server/wm/OpPowerConsumpStats$vju;)Z

    move-result v11

    if-eqz v11, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calculateKernelWakeLocks # continue key:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " |totalTimeMillis:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-static {v4}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v11, "handle_plug_event"

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    iget-object v13, p0, Lcom/android/server/wm/OpPowerConsumpStats;->o:Ljava/util/HashMap;

    invoke-virtual {v13, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/OpPowerConsumpStats$vju;

    if-nez v12, :cond_3

    new-instance v12, Lcom/android/server/wm/OpPowerConsumpStats$vju;

    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    invoke-direct {v12, v4, v7, v8, v5}, Lcom/android/server/wm/OpPowerConsumpStats$vju;-><init>(Ljava/lang/String;JI)V

    goto :goto_2

    :cond_3
    new-instance v13, Lcom/android/server/wm/OpPowerConsumpStats$vju;

    invoke-direct {v13, v12}, Lcom/android/server/wm/OpPowerConsumpStats$vju;-><init>(Lcom/android/server/wm/OpPowerConsumpStats$vju;)V

    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    invoke-static {v13, v7, v8, v5}, Lcom/android/server/wm/OpPowerConsumpStats$vju;->zta(Lcom/android/server/wm/OpPowerConsumpStats$vju;JI)V

    move-object v12, v13

    :goto_2
    const/4 v5, 0x1

    iget-boolean v6, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ire:Z

    if-eqz v6, :cond_4

    iget-object v5, p0, Lcom/android/server/wm/OpPowerConsumpStats;->p:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/OpPowerConsumpStats$vju;

    invoke-static {v12, v5}, Lcom/android/server/wm/OpPowerConsumpStats$vju;->you(Lcom/android/server/wm/OpPowerConsumpStats$vju;Lcom/android/server/wm/OpPowerConsumpStats$vju;)Z

    move-result v5

    :cond_4
    if-eqz v5, :cond_6

    iget-wide v5, v12, Lcom/android/server/wm/OpPowerConsumpStats$vju;->you:J

    cmp-long v5, v5, v9

    if-lez v5, :cond_6

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/wm/OpPowerConsumpStats;->n:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-virtual {v0, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calculateKernelWakeLocks # wakeLock_new = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_7
    return-object v0
.end method

.method private g1()V
    .locals 3

    const-string v0, "handlePastBatteryStatsRelated"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->bio:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->wtn:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->kth:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->kth:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ire:Z

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->h0()V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->i0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePastBatteryStatsRelated Exception e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPCS"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->c1()V

    :goto_0
    return-void
.end method

.method static synthetic gck(Lcom/android/server/wm/OpPowerConsumpStats;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->e0:J

    return-wide v0
.end method

.method static synthetic gwm(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->Z0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic h(Lcom/android/server/wm/OpPowerConsumpStats;)D
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->cgv:D

    return-wide v0
.end method

.method private h0()V
    .locals 10

    const-string v0, "calculatePastKernelWakeLocks"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->wtn:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Timer;

    const/4 v5, 0x2

    invoke-static {v4, v1, v2, v5}, Lcom/android/server/wm/OpPowerConsumpStats;->A0(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v8, Lcom/android/server/wm/OpPowerConsumpStats$vju;

    invoke-virtual {v4, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v4

    invoke-direct {v8, v3, v6, v7, v4}, Lcom/android/server/wm/OpPowerConsumpStats$vju;-><init>(Ljava/lang/String;JI)V

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->p:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculatePastKernelWakeLocks # wakeLock_new = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private h1()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->P:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;

    const-string v1, " "

    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->ssp:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->kth:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->cno()V

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Cap] [Start] oops, why topPkg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->ssp:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->kth:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Cap] [Start] oops, why can\'t locate current topPkg: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    :goto_1
    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->P:Ljava/util/HashMap;

    const-string v0, "LockScreen"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;

    if-eqz p0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->ssp:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->kth:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->cno()V

    goto :goto_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Cap] [Start] oops, why dummy Pkg: LockScreen "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->ssp:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->kth:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_3
    const-string p0, "[Cap] oops, why can\'t locate dummy topPkg: LockScreen"

    :goto_2
    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method static synthetic hmo(Lcom/android/server/wm/OpPowerConsumpStats;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->zta:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic i(Lcom/android/server/wm/OpPowerConsumpStats;D)D
    .locals 0

    iput-wide p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->cgv:D

    return-wide p1
.end method

.method private i0()V
    .locals 10

    const-string v0, "calculatePastKernelWakeupReasons"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->wtn:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Timer;

    const/4 v5, 0x2

    invoke-static {v4, v1, v2, v5}, Lcom/android/server/wm/OpPowerConsumpStats;->A0(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v8, Lcom/android/server/wm/OpPowerConsumpStats$vju;

    invoke-virtual {v4, v5}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v4

    invoke-direct {v8, v3, v6, v7, v4}, Lcom/android/server/wm/OpPowerConsumpStats$vju;-><init>(Ljava/lang/String;JI)V

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->t:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculatePastKernelWakeupReasons # reason_new = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private i1(ZLcom/android/server/wm/IOpPowerConsumpStats$OrderType;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlePersist shutDown:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x51

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->I:Lcom/android/server/wm/OpPowerConsumpStats$bud;

    invoke-virtual {v0}, Lcom/android/server/wm/OpPowerConsumpStats$bud;->cno()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oxb:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStats;->t0:Z

    if-eqz v0, :cond_1

    const-string v0, "OPCS"

    const-string v1, "ScreenOnWatchTimer re-start again...."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->I:Lcom/android/server/wm/OpPowerConsumpStats$bud;

    invoke-virtual {v0}, Lcom/android/server/wm/OpPowerConsumpStats$bud;->ssp()V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->I:Lcom/android/server/wm/OpPowerConsumpStats$bud;

    invoke-virtual {v0}, Lcom/android/server/wm/OpPowerConsumpStats$bud;->you()V

    :cond_3
    const-string v0, "handlePersist"

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->a1(Ljava/lang/String;)Lcom/android/server/wm/OpPowerConsumpStats$veq;

    move-result-object v0

    if-nez v0, :cond_4

    const-string p0, "handlePersist StatisticalData is null, return"

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    return-void

    :cond_4
    sget-object v1, Lcom/android/server/wm/OpPowerConsumpStats$PersistType;->zta:Lcom/android/server/wm/OpPowerConsumpStats$PersistType;

    invoke-direct {p0, v0, v1, p2}, Lcom/android/server/wm/OpPowerConsumpStats;->I1(Lcom/android/server/wm/OpPowerConsumpStats$veq;Lcom/android/server/wm/OpPowerConsumpStats$PersistType;Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;)V

    if-nez p1, :cond_5

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->l0()V

    :cond_5
    return-void
.end method

.method static synthetic ibl(Lcom/android/server/wm/OpPowerConsumpStats;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/OpPowerConsumpStats;->O1(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic igw(Lcom/android/server/wm/OpPowerConsumpStats;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->d0:J

    return-wide v0
.end method

.method static synthetic ire(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->c0()V

    return-void
.end method

.method static synthetic irq(Lcom/android/server/wm/OpPowerConsumpStats;)J
    .locals 2

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Q0()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic ivd(Lcom/android/server/wm/OpPowerConsumpStats;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->gck:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic j()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStats;->x0:Z

    return v0
.end method

.method private j0(J)J
    .locals 4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "calculateReportTime tRealStartTime:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    sget-wide v0, Lcom/android/server/wm/OpPowerConsumpStats;->G1:J

    const-wide/32 v2, 0x5265c00

    sub-long/2addr v2, v0

    add-long/2addr p1, v2

    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    sget-wide v0, Lcom/android/server/wm/OpPowerConsumpStats;->G1:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr p0, v0

    return-wide p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "calculateReportTime Exception e:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OPCS"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private j1()V
    .locals 1

    const-string v0, "frontPkg"

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->F0(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->A1(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic k(Lcom/android/server/wm/OpPowerConsumpStats;)Lcom/android/server/wm/WindowManagerService;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->igw:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method private k0(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/OpPowerConsumpStats$vju;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calculateWakeupReasons from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->r:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->wtn:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Timer;

    const/4 v6, 0x2

    invoke-static {v5, v2, v3, v6}, Lcom/android/server/wm/OpPowerConsumpStats;->A0(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-lez v11, :cond_0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v11, p0, Lcom/android/server/wm/OpPowerConsumpStats;->s:Ljava/util/HashMap;

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/OpPowerConsumpStats$vju;

    new-instance v12, Lcom/android/server/wm/OpPowerConsumpStats$vju;

    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v13

    invoke-direct {v12, v4, v7, v8, v13}, Lcom/android/server/wm/OpPowerConsumpStats$vju;-><init>(Ljava/lang/String;JI)V

    if-eqz v11, :cond_1

    invoke-static {v11, v12}, Lcom/android/server/wm/OpPowerConsumpStats$vju;->tsu(Lcom/android/server/wm/OpPowerConsumpStats$vju;Lcom/android/server/wm/OpPowerConsumpStats$vju;)Z

    move-result v11

    if-eqz v11, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calculateWakeupReasons # continue key:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " |totalTimeMillis:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-static {v4}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v11, "handle_plug_event"

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    iget-object v13, p0, Lcom/android/server/wm/OpPowerConsumpStats;->s:Ljava/util/HashMap;

    invoke-virtual {v13, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/OpPowerConsumpStats$vju;

    if-nez v12, :cond_3

    new-instance v12, Lcom/android/server/wm/OpPowerConsumpStats$vju;

    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    invoke-direct {v12, v4, v7, v8, v5}, Lcom/android/server/wm/OpPowerConsumpStats$vju;-><init>(Ljava/lang/String;JI)V

    goto :goto_2

    :cond_3
    new-instance v13, Lcom/android/server/wm/OpPowerConsumpStats$vju;

    invoke-direct {v13, v12}, Lcom/android/server/wm/OpPowerConsumpStats$vju;-><init>(Lcom/android/server/wm/OpPowerConsumpStats$vju;)V

    invoke-virtual {v5, v6}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v5

    invoke-static {v13, v7, v8, v5}, Lcom/android/server/wm/OpPowerConsumpStats$vju;->zta(Lcom/android/server/wm/OpPowerConsumpStats$vju;JI)V

    move-object v12, v13

    :goto_2
    const/4 v5, 0x1

    iget-boolean v6, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ire:Z

    if-eqz v6, :cond_4

    iget-object v5, p0, Lcom/android/server/wm/OpPowerConsumpStats;->t:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/OpPowerConsumpStats$vju;

    invoke-static {v12, v5}, Lcom/android/server/wm/OpPowerConsumpStats$vju;->you(Lcom/android/server/wm/OpPowerConsumpStats$vju;Lcom/android/server/wm/OpPowerConsumpStats$vju;)Z

    move-result v5

    :cond_4
    if-eqz v5, :cond_6

    iget-wide v5, v12, Lcom/android/server/wm/OpPowerConsumpStats$vju;->you:J

    cmp-long v5, v5, v9

    if-lez v5, :cond_6

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/wm/OpPowerConsumpStats;->r:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-virtual {v0, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calculateWakeupReasons # reason_new = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_7
    return-object v0
.end method

.method private k1(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->cjf:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ivd:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->sis(Lcom/android/server/wm/OpPowerConsumpStats$lqr;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->qeg:Lcom/android/server/wm/OpPowerConsumpStats$bvj;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->zta(Lcom/android/server/wm/OpPowerConsumpStats$bvj;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->a:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->zta(Lcom/android/server/wm/OpPowerConsumpStats$lqr;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->m:Lcom/android/server/wm/OpPowerConsumpStats$obl;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$obl;->you(Lcom/android/server/wm/OpPowerConsumpStats$obl;)Z

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->h1()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ivd:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->zta(Lcom/android/server/wm/OpPowerConsumpStats$lqr;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->qeg:Lcom/android/server/wm/OpPowerConsumpStats$bvj;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->you(Lcom/android/server/wm/OpPowerConsumpStats$bvj;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->a:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->sis(Lcom/android/server/wm/OpPowerConsumpStats$lqr;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->m:Lcom/android/server/wm/OpPowerConsumpStats$obl;

    invoke-static {v0, p1}, Lcom/android/server/wm/OpPowerConsumpStats$obl;->zta(Lcom/android/server/wm/OpPowerConsumpStats$obl;I)Z

    const-string v0, "handle_plug_event"

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->Z0(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->q1()V

    :goto_0
    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oxb:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->cjf:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->e:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->sis(Lcom/android/server/wm/OpPowerConsumpStats$lqr;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->f:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->zta(Lcom/android/server/wm/OpPowerConsumpStats$lqr;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->c:Lcom/android/server/wm/OpPowerConsumpStats$bvj;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->zta(Lcom/android/server/wm/OpPowerConsumpStats$bvj;)V

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oxb:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->cjf:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->e:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->zta(Lcom/android/server/wm/OpPowerConsumpStats$lqr;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->f:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->sis(Lcom/android/server/wm/OpPowerConsumpStats$lqr;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->c:Lcom/android/server/wm/OpPowerConsumpStats$bvj;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->you(Lcom/android/server/wm/OpPowerConsumpStats$bvj;)V

    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oxb:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->cjf:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->j:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->sis(Lcom/android/server/wm/OpPowerConsumpStats$lqr;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->k:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->zta(Lcom/android/server/wm/OpPowerConsumpStats$lqr;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->h:Lcom/android/server/wm/OpPowerConsumpStats$bvj;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->zta(Lcom/android/server/wm/OpPowerConsumpStats$bvj;)V

    goto :goto_2

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oxb:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->cjf:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->j:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->zta(Lcom/android/server/wm/OpPowerConsumpStats$lqr;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->k:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->sis(Lcom/android/server/wm/OpPowerConsumpStats$lqr;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->h:Lcom/android/server/wm/OpPowerConsumpStats$bvj;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->you(Lcom/android/server/wm/OpPowerConsumpStats$bvj;)V

    :cond_4
    :goto_2
    const-string v0, "plug"

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->F0(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->R0(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->B1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic kth(Lcom/android/server/wm/OpPowerConsumpStats;ILcom/android/server/wm/OpPowerConsumpStats$NetworkType;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/OpPowerConsumpStats;->J0(ILcom/android/server/wm/OpPowerConsumpStats$NetworkType;)I

    move-result p0

    return p0
.end method

.method static synthetic l(Lcom/android/server/wm/OpPowerConsumpStats;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->fto:Ljava/lang/String;

    return-object p0
.end method

.method private l0()V
    .locals 11

    const-string v0, "calibrateCalculateAlarm"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->rtg:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->k0:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    sget-wide v0, Lcom/android/server/wm/OpPowerConsumpStats;->H1:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/android/server/wm/OpPowerConsumpStats;->H1:J

    add-long v6, v0, v2

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->rtg:Landroid/app/AlarmManager;

    const/4 v5, 0x3

    iget-object v9, p0, Lcom/android/server/wm/OpPowerConsumpStats;->k0:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v10, p0, Lcom/android/server/wm/OpPowerConsumpStats;->gck:Landroid/os/Handler;

    const-string v8, "OPCS_CalculateAlarm"

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method private l1()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->m:Lcom/android/server/wm/OpPowerConsumpStats$obl;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$obl;->rtg(Lcom/android/server/wm/OpPowerConsumpStats$obl;)Z

    const-string v0, "plug"

    const-string v1, "FASTCHARGE"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/OpPowerConsumpStats;->B1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic les(Lcom/android/server/wm/OpPowerConsumpStats;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->zgw:J

    return-wide p1
.end method

.method static synthetic lqr(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->w1()V

    return-void
.end method

.method static synthetic m(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->fto:Ljava/lang/String;

    return-object p1
.end method

.method private m0()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->rtg:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->lqr:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oif:Lcom/android/server/wm/OpPowerConsumpStats$veq;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, v0, Lcom/android/server/wm/OpPowerConsumpStats$veq;->you:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/OpPowerConsumpStats;->j0(J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calibrateReportAlarm timeLeft:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " |nextReportAlarmTime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    const-wide/32 v4, 0x5265c00

    cmp-long v0, v0, v4

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->rtg:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->lqr:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->c1()V

    :goto_0
    return-void
.end method

.method private m1(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->cjf:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->a:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->zgw:J

    invoke-static {v0, v1, v2}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->you(Lcom/android/server/wm/OpPowerConsumpStats$lqr;J)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->m:Lcom/android/server/wm/OpPowerConsumpStats$obl;

    invoke-static {v0, p1}, Lcom/android/server/wm/OpPowerConsumpStats$obl;->zta(Lcom/android/server/wm/OpPowerConsumpStats$obl;I)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ivd:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->zgw:J

    invoke-static {v0, v1, v2}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->you(Lcom/android/server/wm/OpPowerConsumpStats$lqr;J)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->qeg:Lcom/android/server/wm/OpPowerConsumpStats$bvj;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->zta(Lcom/android/server/wm/OpPowerConsumpStats$bvj;)V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->g1()V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->h1()V

    :goto_0
    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->e1()V

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oxb:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->d:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->i:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    :goto_1
    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->zgw:J

    invoke-static {v0, v1, v2}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->you(Lcom/android/server/wm/OpPowerConsumpStats$lqr;J)Z

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oxb:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->cjf:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->e:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->zgw:J

    invoke-static {v0, v1, v2}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->you(Lcom/android/server/wm/OpPowerConsumpStats$lqr;J)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->c:Lcom/android/server/wm/OpPowerConsumpStats$bvj;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->zta(Lcom/android/server/wm/OpPowerConsumpStats$bvj;)V

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oxb:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->cjf:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->f:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->zgw:J

    invoke-static {v0, v1, v2}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->you(Lcom/android/server/wm/OpPowerConsumpStats$lqr;J)Z

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oxb:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->cjf:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->j:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->zgw:J

    invoke-static {v0, v1, v2}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->you(Lcom/android/server/wm/OpPowerConsumpStats$lqr;J)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->h:Lcom/android/server/wm/OpPowerConsumpStats$bvj;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->zta(Lcom/android/server/wm/OpPowerConsumpStats$bvj;)V

    :cond_4
    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oxb:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->cjf:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->k:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->zgw:J

    invoke-static {v0, v1, v2}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->you(Lcom/android/server/wm/OpPowerConsumpStats$lqr;J)Z

    :cond_5
    const-string v0, "plug"

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->F0(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->R0(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->B1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic n(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->j1()V

    return-void
.end method

.method private n0()V
    .locals 12

    const-string v0, "calibrateTrackAlarm"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sget v3, Lcom/android/server/wm/OpPowerConsumpStats;->F1:I

    mul-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-long v3, v0

    add-long v7, v1, v3

    iget-object v5, p0, Lcom/android/server/wm/OpPowerConsumpStats;->rtg:Landroid/app/AlarmManager;

    iget-object v10, p0, Lcom/android/server/wm/OpPowerConsumpStats;->l0:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v11, p0, Lcom/android/server/wm/OpPowerConsumpStats;->gck:Landroid/os/Handler;

    const/4 v6, 0x2

    const-string v9, "OPCS_TrackAlarm"

    invoke-virtual/range {v5 .. v11}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void
.end method

.method private n1(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->cjf:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->vdw:Lcom/android/server/wm/OpPowerConsumpStats$fto;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$fto;->zta(Lcom/android/server/wm/OpPowerConsumpStats$fto;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->cjf:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oxb:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->b:Lcom/android/server/wm/OpPowerConsumpStats$fto;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$fto;->zta(Lcom/android/server/wm/OpPowerConsumpStats$fto;)V

    :cond_1
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->cjf:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oxb:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->g:Lcom/android/server/wm/OpPowerConsumpStats$fto;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$fto;->zta(Lcom/android/server/wm/OpPowerConsumpStats$fto;)V

    :cond_2
    if-nez p1, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->cjf:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->hmo:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->m:Lcom/android/server/wm/OpPowerConsumpStats$obl;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$obl;->ssp(Lcom/android/server/wm/OpPowerConsumpStats$obl;)Z

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlePowerLevelEvent isDown:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->P0(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double p1, v0, v2

    if-eqz p1, :cond_4

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->cgv:D

    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->h:Lcom/android/server/wm/OpPowerConsumpStats$bvj;

    invoke-static {p1, v0, v1}, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->sis(Lcom/android/server/wm/OpPowerConsumpStats$bvj;D)V

    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->c:Lcom/android/server/wm/OpPowerConsumpStats$bvj;

    iget-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->cgv:D

    invoke-static {p1, v0, v1}, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->sis(Lcom/android/server/wm/OpPowerConsumpStats$bvj;D)V

    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->qeg:Lcom/android/server/wm/OpPowerConsumpStats$bvj;

    iget-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->cgv:D

    invoke-static {p1, v0, v1}, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->sis(Lcom/android/server/wm/OpPowerConsumpStats$bvj;D)V

    :cond_4
    const-string p1, "powerLevel"

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->F0(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->A1(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic o(Lcom/android/server/wm/OpPowerConsumpStats;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->x1()Z

    move-result p0

    return p0
.end method

.method private o0()V
    .locals 2

    const-string v0, "cancelAlarm"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->rtg:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->k0:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->rtg:Landroid/app/AlarmManager;

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->lqr:Landroid/app/PendingIntent;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private o1(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleReport immediately:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->o0()V

    const-string v0, "handleReport"

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->a1(Ljava/lang/String;)Lcom/android/server/wm/OpPowerConsumpStats$veq;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->bvj:Lcom/android/server/wm/OpPowerConsumpStats$veq;

    if-nez v0, :cond_0

    const-string p0, "handleReport mReportData is null, return"

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->N0(Lcom/android/server/wm/OpPowerConsumpStats$veq;)V

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->Q1()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->n0()V

    :goto_0
    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->r0()V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->L1()V

    return-void
.end method

.method static synthetic obl(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->g0(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic oif()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStats;->y0:Z

    return v0
.end method

.method static synthetic oxb(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->L0()V

    return-void
.end method

.method static synthetic p(Lcom/android/server/wm/OpPowerConsumpStats;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->m1(I)V

    return-void
.end method

.method private p0()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->gwm:Lcom/android/server/wm/OpPowerConsumpStatsInjector$ResetParamListener;

    const-string v1, "OPCS"

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/server/wm/OpPowerConsumpStatsInjector$ResetParamListener;->getPlugState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-boolean v3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->cjf:Z

    if-eq v3, v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkState mPlugState is error, correct to:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " |plugType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->cjf:Z

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->k1(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->dma:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    iget-boolean v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oxb:Z

    if-eq v2, v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkState mScreenState is error, correct to:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oxb:Z

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->p1()V

    :cond_2
    return-void
.end method

.method private p1()V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->x1()Z

    move-result v0

    const-string v1, "[Cap] it\'s time to maunually trigger current top pkg: "

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oxb:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->U:Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;

    sget-object v2, Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;->you:Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->V:Lcom/android/server/wm/OpPowerConsumpStats$OccludedStatus;

    sget-object v2, Lcom/android/server/wm/OpPowerConsumpStats$OccludedStatus;->you:Lcom/android/server/wm/OpPowerConsumpStats$OccludedStatus;

    if-ne v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Topping when ScreenON (before ready)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Q:Ljava/lang/String;

    sget-object v1, Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;->zta:Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/OpPowerConsumpStats;->f1(Ljava/lang/String;Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;)V

    goto :goto_1

    :cond_0
    const-string v0, "[Cap] Manually simulate Dummy Lock Screen Topping when screenON (before ready)"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats$StatusType;->you:Lcom/android/server/wm/OpPowerConsumpStats$StatusType;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->U1()V

    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats$StatusType;->zta:Lcom/android/server/wm/OpPowerConsumpStats$StatusType;

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->S1(Lcom/android/server/wm/OpPowerConsumpStats$StatusType;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oxb:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->d:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->sis(Lcom/android/server/wm/OpPowerConsumpStats$lqr;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->i:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->zta(Lcom/android/server/wm/OpPowerConsumpStats$lqr;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->m:Lcom/android/server/wm/OpPowerConsumpStats$obl;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$obl;->sis(Lcom/android/server/wm/OpPowerConsumpStats$obl;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->U:Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;

    sget-object v2, Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;->you:Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;

    const-string v3, " Topping when ScreenON"

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->V:Lcom/android/server/wm/OpPowerConsumpStats$OccludedStatus;

    sget-object v2, Lcom/android/server/wm/OpPowerConsumpStats$OccludedStatus;->you:Lcom/android/server/wm/OpPowerConsumpStats$OccludedStatus;

    if-ne v0, v2, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :cond_4
    const-string v0, "[Cap] Manually simulate Dummy Lock Screen Topping when screenON"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats$StatusType;->you:Lcom/android/server/wm/OpPowerConsumpStats$StatusType;

    goto :goto_3

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Q:Ljava/lang/String;

    sget-object v1, Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;->zta:Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/OpPowerConsumpStats;->f1(Ljava/lang/String;Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;)V

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->d:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->zta(Lcom/android/server/wm/OpPowerConsumpStats$lqr;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->i:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->sis(Lcom/android/server/wm/OpPowerConsumpStats$lqr;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->m:Lcom/android/server/wm/OpPowerConsumpStats$obl;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$obl;->tsu(Lcom/android/server/wm/OpPowerConsumpStats$obl;)V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->U1()V

    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats$StatusType;->zta:Lcom/android/server/wm/OpPowerConsumpStats$StatusType;

    :goto_3
    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->S1(Lcom/android/server/wm/OpPowerConsumpStats$StatusType;)V

    :goto_4
    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->cjf:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oxb:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->e:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->sis(Lcom/android/server/wm/OpPowerConsumpStats$lqr;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->j:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->zta(Lcom/android/server/wm/OpPowerConsumpStats$lqr;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->h:Lcom/android/server/wm/OpPowerConsumpStats$bvj;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->you(Lcom/android/server/wm/OpPowerConsumpStats$bvj;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->c:Lcom/android/server/wm/OpPowerConsumpStats$bvj;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->zta(Lcom/android/server/wm/OpPowerConsumpStats$bvj;)V

    goto :goto_5

    :cond_7
    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->cjf:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oxb:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->e:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->zta(Lcom/android/server/wm/OpPowerConsumpStats$lqr;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->j:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->sis(Lcom/android/server/wm/OpPowerConsumpStats$lqr;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->h:Lcom/android/server/wm/OpPowerConsumpStats$bvj;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->zta(Lcom/android/server/wm/OpPowerConsumpStats$bvj;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->c:Lcom/android/server/wm/OpPowerConsumpStats$bvj;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->you(Lcom/android/server/wm/OpPowerConsumpStats$bvj;)V

    :cond_8
    :goto_5
    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->cjf:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oxb:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->f:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->sis(Lcom/android/server/wm/OpPowerConsumpStats$lqr;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->k:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->zta(Lcom/android/server/wm/OpPowerConsumpStats$lqr;)Z

    goto :goto_6

    :cond_9
    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->cjf:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oxb:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->f:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->zta(Lcom/android/server/wm/OpPowerConsumpStats$lqr;)Z

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->k:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->sis(Lcom/android/server/wm/OpPowerConsumpStats$lqr;)Z

    :cond_a
    :goto_6
    const-string v0, "screen"

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->F0(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->A1(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic q(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->l1()V

    return-void
.end method

.method private q0()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->P:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Q:Ljava/lang/String;

    sget-object v1, Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;->you:Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/OpPowerConsumpStats;->f1(Ljava/lang/String;Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;)V

    return-void
.end method

.method private q1()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->P:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;

    const/4 v1, 0x1

    const-string v2, " "

    if-eqz v0, :cond_1

    iget-boolean v3, v0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->ssp:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->wtn:Z

    if-eqz v3, :cond_0

    iput-boolean v1, v0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->kth:Z

    sget-object v3, Lcom/android/server/wm/OpPowerConsumpStats$SettleType;->zta:Lcom/android/server/wm/OpPowerConsumpStats$SettleType;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->kth(Lcom/android/server/wm/OpPowerConsumpStats$SettleType;)Lcom/android/server/wm/OpPowerConsumpStats$vdb;

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Cap] [Stop] oops, why topPkg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Q:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->ssp:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->wtn:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Cap] [Stop] oops, why can\'t locate current topPkg: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Q:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    :goto_1
    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->P:Ljava/util/HashMap;

    const-string v0, "LockScreen"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;

    if-eqz p0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->ssp:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->wtn:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->kth:Z

    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats$SettleType;->zta:Lcom/android/server/wm/OpPowerConsumpStats$SettleType;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->kth(Lcom/android/server/wm/OpPowerConsumpStats$SettleType;)Lcom/android/server/wm/OpPowerConsumpStats$vdb;

    goto :goto_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Cap] [Start] oops, why dummy Pkg: LockScreen "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->ssp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->kth:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_3
    const-string p0, "[Cap] oops, why can\'t locate dummy topPkg: LockScreen"

    :goto_2
    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method static synthetic qbh(Lcom/android/server/wm/OpPowerConsumpStats;)I
    .locals 0

    iget p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->vju:I

    return p0
.end method

.method static synthetic qeg(Lcom/android/server/wm/OpPowerConsumpStats;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->cjf:Z

    return p1
.end method

.method static synthetic r(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->p1()V

    return-void
.end method

.method private r0()V
    .locals 2

    const-string v0, "clearAllData"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->s0()V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->y0()V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->z0()V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->u0()V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->x0()V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->t0()V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->v0()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oif:Lcom/android/server/wm/OpPowerConsumpStats$veq;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->zgw:J

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->obl:J

    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStats;->x0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->x:I

    iput v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->y:I

    iput v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->z:I

    iput v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->A:I

    iput v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->B:I

    iput v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->C:I

    :cond_0
    return-void
.end method

.method private r1()V
    .locals 3

    const-string v0, "initCapConsumption"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oif:Lcom/android/server/wm/OpPowerConsumpStats$veq;

    iget-object v0, v0, Lcom/android/server/wm/OpPowerConsumpStats$veq;->ire:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->B0(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->W:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initCapConsumption, mCapConsumptionList\'size= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->W:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->W:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/OpPowerConsumpStats$ugm;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initCapConsumption "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/wm/OpPowerConsumpStats$ugm;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic rtg(Lcom/android/server/wm/OpPowerConsumpStats;J)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/OpPowerConsumpStats;->H0(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic s(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->b1(Ljava/lang/String;)V

    return-void
.end method

.method private s0()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->vdb:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ssp:Lcom/android/server/wm/OpPowerConsumpStats$gwm;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private s1()V
    .locals 2

    const-string v0, "initConsumption"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->n:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oif:Lcom/android/server/wm/OpPowerConsumpStats$veq;

    iget-object v1, v1, Lcom/android/server/wm/OpPowerConsumpStats$veq;->obl:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->r:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oif:Lcom/android/server/wm/OpPowerConsumpStats$veq;

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$veq;->oxb:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic sis(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->E0()V

    return-void
.end method

.method static synthetic ssp(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)Lcom/android/server/wm/OpPowerConsumpStats$veq;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->a1(Ljava/lang/String;)Lcom/android/server/wm/OpPowerConsumpStats$veq;

    move-result-object p0

    return-object p0
.end method

.method static synthetic t(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->l0()V

    return-void
.end method

.method private t0()V
    .locals 1

    const-string v0, "clearCapConsumption"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->q0()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->W:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->X:Ljava/util/HashMap;

    return-void
.end method

.method private t1()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;

    invoke-direct {v0, p0}, Lcom/android/server/wm/OpPowerConsumpStats$ssp;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->N:Lcom/android/server/OnePlusUtil$zta$you;

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->rtg()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->N:Lcom/android/server/OnePlusUtil$zta$you;

    invoke-virtual {v0, p0}, Lcom/android/server/OnePlusUtil$zta;->bio(Lcom/android/server/OnePlusUtil$zta$you;)V

    return-void
.end method

.method static synthetic tsu(Lcom/android/server/wm/OpPowerConsumpStats;)Landroid/net/ConnectivityManager;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->L:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static synthetic u(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->m0()V

    return-void
.end method

.method private u0()V
    .locals 1

    const-string v0, "clearFragment"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->bud:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->les:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->irq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->l:Lcom/android/server/wm/OpPowerConsumpStats$ear;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$ear;->sis(Lcom/android/server/wm/OpPowerConsumpStats$ear;)V

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->m:Lcom/android/server/wm/OpPowerConsumpStats$obl;

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats$obl;->cno(Lcom/android/server/wm/OpPowerConsumpStats$obl;)V

    return-void
.end method

.method private u1()V
    .locals 5

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->zta:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->gck:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/wm/OpPowerConsumpStats$oxb;

    invoke-direct {v3, p0}, Lcom/android/server/wm/OpPowerConsumpStats$oxb;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    const-string v4, "OPCS"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->you:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->gck:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    sget-wide v1, Lcom/android/server/wm/OpPowerConsumpStats;->I1:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method static synthetic ugm(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->M0()V

    return-void
.end method

.method static synthetic v(Lcom/android/server/wm/OpPowerConsumpStats;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ear:Z

    return p0
.end method

.method private v0()V
    .locals 1

    const-string v0, "clearLocalData"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->sis:Landroid/util/AtomicFile;

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->w0(Landroid/util/AtomicFile;)V

    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStats;->x0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->tsu:Landroid/util/AtomicFile;

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->w0(Landroid/util/AtomicFile;)V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->d0()V

    :cond_0
    return-void
.end method

.method private v1()V
    .locals 7

    const-string v0, "initScreenOnTimer io close exception :"

    const-string v1, "OPCS"

    const-string v2, "initScreenOnTimer"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/File;

    const-string v3, "/mnt/vendor/persist/engineermode/screenontimebyhours"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const-string v0, "file not exists : /mnt/vendor/persist/engineermode/screenontimebyhours"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v3, v5

    goto :goto_4

    :catch_1
    move-exception v2

    move-object v3, v5

    goto :goto_1

    :catch_2
    move-exception v2

    move-object v3, v5

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_3
    move-exception v2

    :goto_1
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initScreenOnTimer NumberFormatException:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_4
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :catch_5
    move-exception v2

    :goto_2
    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initScreenOnTimer io exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v3, :cond_2

    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_3

    :catch_6
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_2
    :goto_3
    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$bud;

    const-string v1, "ScreenON"

    invoke-direct {v0, p0, v1, v4}, Lcom/android/server/wm/OpPowerConsumpStats$bud;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;F)V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->I:Lcom/android/server/wm/OpPowerConsumpStats$bud;

    invoke-virtual {v0}, Lcom/android/server/wm/OpPowerConsumpStats$bud;->ssp()V

    return-void

    :goto_4
    if-eqz v3, :cond_3

    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_5

    :catch_7
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_5
    throw p0
.end method

.method static synthetic vdb(Lcom/android/server/wm/OpPowerConsumpStats;Lcom/android/server/wm/OpPowerConsumpStats$veq;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->N0(Lcom/android/server/wm/OpPowerConsumpStats$veq;)V

    return-void
.end method

.method static synthetic vdw(Lcom/android/server/wm/OpPowerConsumpStats;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->cjf:Z

    return p0
.end method

.method static synthetic veq(Lcom/android/server/wm/OpPowerConsumpStats;)Lcom/android/server/wm/OpPowerConsumpStats$veq;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oif:Lcom/android/server/wm/OpPowerConsumpStats$veq;

    return-object p0
.end method

.method static synthetic vju(Lcom/android/server/wm/OpPowerConsumpStats;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->W0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic w(Lcom/android/server/wm/OpPowerConsumpStats;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ear:Z

    return p1
.end method

.method private w0(Landroid/util/AtomicFile;)V
    .locals 5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "clearPersistData file:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    const-string p0, "OPCS"

    if-nez p1, :cond_0

    const-string p1, "persistToDisk file is null, return"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "persistToDisk Exception e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private w1()V
    .locals 8

    const-string v0, "initStatistics"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->z1()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oif:Lcom/android/server/wm/OpPowerConsumpStats$veq;

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "initStatistics Not load correctly"

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->v0()V

    iput-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oif:Lcom/android/server/wm/OpPowerConsumpStats$veq;

    :cond_1
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oif:Lcom/android/server/wm/OpPowerConsumpStats$veq;

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->W0()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oif:Lcom/android/server/wm/OpPowerConsumpStats$veq;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$veq;->you:J

    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/OpPowerConsumpStats;->j0(J)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oif:Lcom/android/server/wm/OpPowerConsumpStats$veq;

    iget-object v4, v4, Lcom/android/server/wm/OpPowerConsumpStats$veq;->zta:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "initStatistics version change"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->v0()V

    iput-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oif:Lcom/android/server/wm/OpPowerConsumpStats$veq;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->veq:Z

    goto :goto_1

    :cond_2
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const-wide/32 v4, 0x5265c00

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-gez v6, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v2, v6

    cmp-long v6, v6, v4

    if-gez v6, :cond_3

    const-string v0, "initStatistics load correctly, continue to statistic"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oif:Lcom/android/server/wm/OpPowerConsumpStats$veq;

    iget-boolean v0, v0, Lcom/android/server/wm/OpPowerConsumpStats$veq;->rtg:Z

    iput-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->veq:Z

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->s1()V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->r1()V

    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStats;->x0:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->y1()V

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v0, v6, v2

    if-lez v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    cmp-long v0, v6, v4

    if-gez v0, :cond_4

    const-string v0, "initStatistics load correctly, report and start new statistics"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oif:Lcom/android/server/wm/OpPowerConsumpStats$veq;

    iget-boolean v2, v0, Lcom/android/server/wm/OpPowerConsumpStats$veq;->rtg:Z

    iput-boolean v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->veq:Z

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->R1(Lcom/android/server/wm/OpPowerConsumpStats$veq;)V

    goto :goto_0

    :cond_4
    const-string v0, "initStatistics clear data and start new statistics"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->v0()V

    iput-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oif:Lcom/android/server/wm/OpPowerConsumpStats$veq;

    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->L1()V

    return-void
.end method

.method static synthetic wtn(Lcom/android/server/wm/OpPowerConsumpStats;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->d0:J

    return-wide p1
.end method

.method static synthetic x(Lcom/android/server/wm/OpPowerConsumpStats;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->k1(I)V

    return-void
.end method

.method private x0()V
    .locals 1

    const-string v0, "clearPowerConsumption"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->W:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->X:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->n:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->o:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->p:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->q:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->r:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->s:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->t:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->u:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ire:Z

    return-void
.end method

.method private x1()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->vdb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ssp:Lcom/android/server/wm/OpPowerConsumpStats$gwm;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :cond_0
    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic y(Lcom/android/server/wm/OpPowerConsumpStats;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->n1(Z)V

    return-void
.end method

.method private y0()V
    .locals 1

    const-string v0, "clearSpecificCounter"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->vdw:Lcom/android/server/wm/OpPowerConsumpStats$fto;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$fto;->you(Lcom/android/server/wm/OpPowerConsumpStats$fto;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->b:Lcom/android/server/wm/OpPowerConsumpStats$fto;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$fto;->you(Lcom/android/server/wm/OpPowerConsumpStats$fto;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->g:Lcom/android/server/wm/OpPowerConsumpStats$fto;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$fto;->you(Lcom/android/server/wm/OpPowerConsumpStats$fto;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->h:Lcom/android/server/wm/OpPowerConsumpStats$bvj;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->tsu(Lcom/android/server/wm/OpPowerConsumpStats$bvj;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->c:Lcom/android/server/wm/OpPowerConsumpStats$bvj;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->tsu(Lcom/android/server/wm/OpPowerConsumpStats$bvj;)V

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->qeg:Lcom/android/server/wm/OpPowerConsumpStats$bvj;

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats$bvj;->tsu(Lcom/android/server/wm/OpPowerConsumpStats$bvj;)V

    return-void
.end method

.method private y1()V
    .locals 10

    const-string v0, "loadBaseEventFromDisk"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->tsu:Landroid/util/AtomicFile;

    const-string v1, "OPCS"

    if-nez v0, :cond_0

    const-string p0, "loadBaseEventFromDisk mBaseData is null, return"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->tsu:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    :goto_0
    const/4 v6, 0x1

    if-eq v5, v6, :cond_8

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BaseEvent"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    new-instance v5, Lcom/android/server/wm/OpPowerConsumpStats$ibl;

    invoke-direct {v5, p0}, Lcom/android/server/wm/OpPowerConsumpStats$ibl;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    const-string v6, "totalSeq"

    invoke-interface {v2, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/android/server/wm/OpPowerConsumpStats$ibl;->zta:I

    iput v6, p0, Lcom/android/server/wm/OpPowerConsumpStats;->x:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/wm/OpPowerConsumpStats;->x:I

    const-string v6, "eventType"

    invoke-interface {v2, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/wm/OpPowerConsumpStats$ibl;->sis:Ljava/lang/String;

    const-string v6, "typeSeq"

    invoke-interface {v2, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/android/server/wm/OpPowerConsumpStats$ibl;->you:I

    const-string v6, "powerLevel"

    iget-object v7, v5, Lcom/android/server/wm/OpPowerConsumpStats$ibl;->sis:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v7, "frontPkg"

    if-eqz v6, :cond_2

    :try_start_2
    iget v6, v5, Lcom/android/server/wm/OpPowerConsumpStats$ibl;->you:I

    iput v6, p0, Lcom/android/server/wm/OpPowerConsumpStats;->y:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/wm/OpPowerConsumpStats;->y:I

    goto :goto_1

    :cond_2
    const-string v6, "screen"

    iget-object v8, v5, Lcom/android/server/wm/OpPowerConsumpStats$ibl;->sis:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget v6, v5, Lcom/android/server/wm/OpPowerConsumpStats$ibl;->you:I

    iput v6, p0, Lcom/android/server/wm/OpPowerConsumpStats;->z:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/wm/OpPowerConsumpStats;->z:I

    goto :goto_1

    :cond_3
    const-string v6, "plug"

    iget-object v8, v5, Lcom/android/server/wm/OpPowerConsumpStats$ibl;->sis:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget v6, v5, Lcom/android/server/wm/OpPowerConsumpStats$ibl;->you:I

    iput v6, p0, Lcom/android/server/wm/OpPowerConsumpStats;->A:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/wm/OpPowerConsumpStats;->A:I

    goto :goto_1

    :cond_4
    const-string v6, "doze"

    iget-object v8, v5, Lcom/android/server/wm/OpPowerConsumpStats$ibl;->sis:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget v6, v5, Lcom/android/server/wm/OpPowerConsumpStats$ibl;->you:I

    iput v6, p0, Lcom/android/server/wm/OpPowerConsumpStats;->B:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/wm/OpPowerConsumpStats;->B:I

    goto :goto_1

    :cond_5
    iget-object v6, v5, Lcom/android/server/wm/OpPowerConsumpStats$ibl;->sis:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget v6, v5, Lcom/android/server/wm/OpPowerConsumpStats$ibl;->you:I

    iput v6, p0, Lcom/android/server/wm/OpPowerConsumpStats;->C:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/server/wm/OpPowerConsumpStats;->C:I

    :cond_6
    :goto_1
    const-string v6, "relativeTime"

    invoke-interface {v2, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v5, Lcom/android/server/wm/OpPowerConsumpStats$ibl;->tsu:J

    const-string v6, "realTime"

    invoke-interface {v2, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v5, Lcom/android/server/wm/OpPowerConsumpStats$ibl;->rtg:J

    const-string v6, "screenState"

    invoke-interface {v2, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/android/server/wm/OpPowerConsumpStats$ibl;->ssp:Z

    const-string v6, "plugState"

    invoke-interface {v2, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/android/server/wm/OpPowerConsumpStats$ibl;->cno:Z

    const-string v6, "idleState"

    invoke-interface {v2, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/android/server/wm/OpPowerConsumpStats$ibl;->kth:Z

    const-string v6, "powerlevelState"

    invoke-interface {v2, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/android/server/wm/OpPowerConsumpStats$ibl;->bio:I

    invoke-interface {v2, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/wm/OpPowerConsumpStats$ibl;->igw:Ljava/lang/String;

    const-string v6, "description"

    invoke-interface {v2, v3, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/server/wm/OpPowerConsumpStats$ibl;->wtn:Ljava/lang/String;

    iget v6, v5, Lcom/android/server/wm/OpPowerConsumpStats$ibl;->zta:I

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_7
    :goto_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto/16 :goto_0

    :cond_8
    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->F:Landroid/util/SparseArray;

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->C0()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_0
    move-exception p0

    move-object v3, v4

    goto :goto_4

    :catch_0
    move-exception p0

    move-object v3, v4

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception p0

    :goto_3
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadBaseEventFromDisk Exception e:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :goto_4
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0
.end method

.method static synthetic you()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStats;->D1:Z

    return v0
.end method

.method static synthetic ywr(Lcom/android/server/wm/OpPowerConsumpStats;)I
    .locals 0

    iget p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->g0:I

    return p0
.end method

.method static synthetic z(Lcom/android/server/wm/OpPowerConsumpStats;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Q:Ljava/lang/String;

    return-object p0
.end method

.method private z0()V
    .locals 1

    const-string v0, "clearSpecificTimer"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ivd:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->tsu(Lcom/android/server/wm/OpPowerConsumpStats$lqr;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->a:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->tsu(Lcom/android/server/wm/OpPowerConsumpStats$lqr;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->d:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->tsu(Lcom/android/server/wm/OpPowerConsumpStats$lqr;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->e:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->tsu(Lcom/android/server/wm/OpPowerConsumpStats$lqr;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->f:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->tsu(Lcom/android/server/wm/OpPowerConsumpStats$lqr;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->i:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->tsu(Lcom/android/server/wm/OpPowerConsumpStats$lqr;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->j:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->tsu(Lcom/android/server/wm/OpPowerConsumpStats$lqr;)V

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->k:Lcom/android/server/wm/OpPowerConsumpStats$lqr;

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats$lqr;->tsu(Lcom/android/server/wm/OpPowerConsumpStats$lqr;)V

    return-void
.end method

.method private z1()Z
    .locals 26

    move-object/from16 v1, p0

    const-string v2, "pkgName"

    const-string v3, "loadFromDisk"

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/wm/OpPowerConsumpStats;->sis:Landroid/util/AtomicFile;

    const-string v4, "OPCS"

    const/4 v5, 0x0

    if-nez v3, :cond_0

    const-string v1, "loadFromDisk mStatisticalData is null, return"

    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    new-instance v3, Lcom/android/server/wm/OpPowerConsumpStats$veq;

    invoke-direct {v3, v1}, Lcom/android/server/wm/OpPowerConsumpStats$veq;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    const/4 v7, 0x0

    :try_start_0
    iget-object v8, v1, Lcom/android/server/wm/OpPowerConsumpStats;->sis:Landroid/util/AtomicFile;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v9}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    move v10, v5

    :goto_0
    const/4 v11, 0x1

    if-eq v9, v11, :cond_21

    const/4 v11, 0x2

    if-eq v9, v11, :cond_1

    move-object v5, v6

    move-object/from16 v16, v8

    goto/16 :goto_e

    :cond_1
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-string v13, "duration"

    if-eqz v12, :cond_2

    :try_start_2
    const-string v12, "os_version"

    invoke-interface {v6, v7, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v3, Lcom/android/server/wm/OpPowerConsumpStats$veq;->zta:Ljava/lang/String;

    const-string v12, "realStartTime"

    invoke-interface {v6, v7, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v3, Lcom/android/server/wm/OpPowerConsumpStats$veq;->you:J

    const-string v12, "realEndTime"

    invoke-interface {v6, v7, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v3, Lcom/android/server/wm/OpPowerConsumpStats$veq;->sis:J

    invoke-interface {v6, v7, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v3, Lcom/android/server/wm/OpPowerConsumpStats$veq;->tsu:J

    const-string v12, "firstReport"

    invoke-interface {v6, v7, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    iput-boolean v12, v3, Lcom/android/server/wm/OpPowerConsumpStats$veq;->rtg:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v7, v8

    goto/16 :goto_14

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v7, v8

    goto/16 :goto_13

    :cond_2
    :goto_1
    :try_start_3
    const-string v12, "oldTotalDischarge"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const-string v14, "count"

    if-eqz v12, :cond_3

    :try_start_4
    invoke-interface {v6, v7, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v3, Lcom/android/server/wm/OpPowerConsumpStats$veq;->ssp:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-int/lit8 v10, v10, 0x1

    :cond_3
    :try_start_5
    const-string v12, "totalDischarge"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v12, :cond_4

    :try_start_6
    invoke-interface {v6, v7, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v16, v6

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    iput-wide v5, v3, Lcom/android/server/wm/OpPowerConsumpStats$veq;->cno:D
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v16, v6

    :goto_2
    :try_start_7
    const-string v5, "totalDischargeDuration"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object/from16 v5, v16

    invoke-interface {v5, v7, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object/from16 v16, v8

    :try_start_8
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v3, Lcom/android/server/wm/OpPowerConsumpStats$veq;->kth:J

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_5
    move-object/from16 v5, v16

    move-object/from16 v16, v8

    :goto_3
    const-string v6, "totalChargeDuration"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x0

    invoke-interface {v5, v6, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/server/wm/OpPowerConsumpStats$veq;->bio:J

    add-int/lit8 v10, v10, 0x1

    :cond_6
    const-string v6, "oldScreenOnDischarge"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v6, 0x0

    invoke-interface {v5, v6, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v3, Lcom/android/server/wm/OpPowerConsumpStats$veq;->igw:I

    add-int/lit8 v10, v10, 0x1

    :cond_7
    const-string v6, "screenOnDischarge"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x0

    invoke-interface {v5, v6, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/server/wm/OpPowerConsumpStats$veq;->wtn:D

    add-int/lit8 v10, v10, 0x1

    :cond_8
    const-string v6, "totalScreenOnDuration"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v6, 0x0

    invoke-interface {v5, v6, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/server/wm/OpPowerConsumpStats$veq;->gck:J

    add-int/lit8 v10, v10, 0x1

    :cond_9
    const-string v6, "screenOnDischargeDuration"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v6, 0x0

    invoke-interface {v5, v6, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/server/wm/OpPowerConsumpStats$veq;->dma:J

    add-int/lit8 v10, v10, 0x1

    :cond_a
    const-string v6, "screenOnChargeDuration"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    const/4 v6, 0x0

    invoke-interface {v5, v6, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/server/wm/OpPowerConsumpStats$veq;->ywr:J

    add-int/lit8 v10, v10, 0x1

    :cond_b
    const-string v6, "oldScreenOffDischarge"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    const/4 v6, 0x0

    invoke-interface {v5, v6, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v3, Lcom/android/server/wm/OpPowerConsumpStats$veq;->qbh:I

    add-int/lit8 v10, v10, 0x1

    :cond_c
    const-string v6, "screenOffDischarge"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v6, 0x0

    invoke-interface {v5, v6, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/server/wm/OpPowerConsumpStats$veq;->oif:D

    add-int/lit8 v10, v10, 0x1

    :cond_d
    const-string v6, "totalScreenOffDuration"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    const/4 v6, 0x0

    invoke-interface {v5, v6, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/server/wm/OpPowerConsumpStats$veq;->bvj:J

    add-int/lit8 v10, v10, 0x1

    :cond_e
    const-string v6, "screenOffDischargeDuration"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    const/4 v6, 0x0

    invoke-interface {v5, v6, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/server/wm/OpPowerConsumpStats$veq;->ibl:J

    add-int/lit8 v10, v10, 0x1

    :cond_f
    const-string v6, "screenOffChargeDuration"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    const/4 v6, 0x0

    invoke-interface {v5, v6, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/server/wm/OpPowerConsumpStats$veq;->gwm:J

    add-int/lit8 v10, v10, 0x1

    :cond_10
    const-string v6, "capacity"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    const-string v6, "charge_full"

    const/4 v7, 0x0

    invoke-interface {v5, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Cap] [capacity] charge_full: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    :cond_11
    const-string v6, "dozeFragment"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    const-string v7, "endPowerLevel"

    const-string v8, "beginPowerLevel"

    const-string v12, "realBeginTime"

    const-string v15, "relativeEndTime"

    move/from16 v18, v9

    const-string v9, "relativeBeginTime"

    if-eqz v6, :cond_12

    :try_start_9
    new-instance v6, Lcom/android/server/wm/OpPowerConsumpStats$cjf;

    invoke-direct {v6, v1}, Lcom/android/server/wm/OpPowerConsumpStats$cjf;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    move/from16 v19, v10

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v20, v11

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v6, Lcom/android/server/wm/OpPowerConsumpStats$cjf;->zta:J

    const/4 v10, 0x0

    invoke-interface {v5, v10, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v6, Lcom/android/server/wm/OpPowerConsumpStats$cjf;->you:J

    const/4 v10, 0x0

    invoke-interface {v5, v10, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v6, Lcom/android/server/wm/OpPowerConsumpStats$cjf;->tsu:J

    const/4 v10, 0x0

    invoke-interface {v5, v10, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v6, Lcom/android/server/wm/OpPowerConsumpStats$cjf;->sis:J

    const/4 v10, 0x0

    invoke-interface {v5, v10, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v6, Lcom/android/server/wm/OpPowerConsumpStats$cjf;->rtg:I

    invoke-interface {v5, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v6, Lcom/android/server/wm/OpPowerConsumpStats$cjf;->ssp:I

    const-string v11, "exitReason"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v6, Lcom/android/server/wm/OpPowerConsumpStats$cjf;->cno:Ljava/lang/String;

    iget-object v11, v3, Lcom/android/server/wm/OpPowerConsumpStats$veq;->ugm:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_12
    move/from16 v19, v10

    move-object/from16 v20, v11

    :goto_4
    const-string v6, "chargeFragment"

    move-object/from16 v11, v20

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    new-instance v6, Lcom/android/server/wm/OpPowerConsumpStats$zgw;

    invoke-direct {v6, v1}, Lcom/android/server/wm/OpPowerConsumpStats$zgw;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v20, v11

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v6, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->zta:J

    const/4 v9, 0x0

    invoke-interface {v5, v9, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v6, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->you:J

    invoke-interface {v5, v9, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v6, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->ssp:J

    invoke-interface {v5, v9, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v6, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->sis:J

    invoke-interface {v5, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v6, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->tsu:I

    invoke-interface {v5, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->rtg:I

    const-string v7, "screenOnDuration"

    invoke-interface {v5, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->cno:J

    const-string v7, "firstFullTimeToRelativeBeginTime"

    invoke-interface {v5, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, v6, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->kth:J

    const-string v7, "plugType"

    invoke-interface {v5, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/server/wm/OpPowerConsumpStats$zgw;->bio:Ljava/lang/String;

    iget-object v7, v3, Lcom/android/server/wm/OpPowerConsumpStats$veq;->vdb:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_13
    move-object/from16 v20, v11

    :goto_5
    const-string v6, "errlist"

    move-object/from16 v7, v20

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    const-string v6, "des"

    const/4 v8, 0x0

    invoke-interface {v5, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v8, v3, Lcom/android/server/wm/OpPowerConsumpStats$veq;->zgw:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    const-string v6, "kernelWakeLocks"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    const-string v8, "name"

    const-wide/16 v9, 0x0

    const-string v11, "time"

    if-eqz v6, :cond_16

    :try_start_a
    new-instance v6, Lcom/android/server/wm/OpPowerConsumpStats$vju;

    invoke-direct {v6}, Lcom/android/server/wm/OpPowerConsumpStats$vju;-><init>()V

    const/4 v12, 0x0

    invoke-interface {v5, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    cmp-long v13, v20, v9

    if-nez v13, :cond_15

    move-object v6, v12

    goto :goto_7

    :cond_15
    invoke-interface {v5, v12, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v6, Lcom/android/server/wm/OpPowerConsumpStats$vju;->zta:Ljava/lang/String;

    invoke-interface {v5, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v6, Lcom/android/server/wm/OpPowerConsumpStats$vju;->you:J

    invoke-interface {v5, v12, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v6, Lcom/android/server/wm/OpPowerConsumpStats$vju;->sis:I

    iget-object v9, v3, Lcom/android/server/wm/OpPowerConsumpStats$veq;->obl:Ljava/util/HashMap;

    iget-object v10, v6, Lcom/android/server/wm/OpPowerConsumpStats$vju;->zta:Ljava/lang/String;

    invoke-virtual {v9, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    const-string v6, "kernelWakeupReasons"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    new-instance v6, Lcom/android/server/wm/OpPowerConsumpStats$vju;

    invoke-direct {v6}, Lcom/android/server/wm/OpPowerConsumpStats$vju;-><init>()V

    const/4 v9, 0x0

    invoke-interface {v5, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    const-wide/16 v20, 0x0

    cmp-long v10, v12, v20

    if-nez v10, :cond_17

    move-object v6, v9

    goto :goto_7

    :cond_17
    invoke-interface {v5, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/android/server/wm/OpPowerConsumpStats$vju;->zta:Ljava/lang/String;

    invoke-interface {v5, v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v6, Lcom/android/server/wm/OpPowerConsumpStats$vju;->you:J

    invoke-interface {v5, v9, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v6, Lcom/android/server/wm/OpPowerConsumpStats$vju;->sis:I

    iget-object v8, v3, Lcom/android/server/wm/OpPowerConsumpStats$veq;->oxb:Ljava/util/HashMap;

    iget-object v9, v6, Lcom/android/server/wm/OpPowerConsumpStats$vju;->zta:Ljava/lang/String;

    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_18
    const-wide/16 v20, 0x0

    :goto_6
    const-string v6, "capConsumption"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    const/4 v6, 0x0

    invoke-interface {v5, v6, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_19

    :goto_7
    move-object v7, v6

    move-object/from16 v8, v16

    move/from16 v9, v18

    move/from16 v10, v19

    move-object v6, v5

    goto/16 :goto_f

    :cond_19
    invoke-interface {v5, v6, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "versionCode"

    invoke-interface {v5, v6, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const-string v10, "gapTouchCount"

    invoke-interface {v5, v6, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1a

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    goto :goto_8

    :cond_1a
    const/4 v15, 0x0

    :goto_8
    const-string v6, "gapTouchMs"

    const/4 v10, 0x0

    invoke-interface {v5, v10, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1b

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    goto :goto_9

    :cond_1b
    move-wide/from16 v10, v20

    :goto_9
    new-instance v6, Lcom/android/server/wm/OpPowerConsumpStats$ugm;

    invoke-direct {v6, v1, v8, v9}, Lcom/android/server/wm/OpPowerConsumpStats$ugm;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;I)V

    invoke-virtual {v6, v15, v10, v11}, Lcom/android/server/wm/OpPowerConsumpStats$ugm;->ssp(IJ)V

    const/4 v15, 0x0

    :goto_a
    sget-object v9, Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;->sis:Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    if-gt v15, v9, :cond_1f

    const/4 v9, 0x0

    :goto_b
    const/4 v10, 0x5

    if-ge v9, v10, :cond_1e

    sget-object v10, Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;->zta:Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    if-ne v15, v10, :cond_1c

    const-string v10, "W_"

    goto :goto_c

    :cond_1c
    sget-object v10, Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;->you:Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    if-ne v15, v10, :cond_1d

    const-string v10, "M_"

    goto :goto_c

    :cond_1d
    const-string v10, "N_"

    :goto_c
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "R"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v5, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v23

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "C"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v5, v11, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    invoke-static {v15}, Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;->zta(I)Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    move-result-object v22

    move-object/from16 v20, v6

    move/from16 v21, v9

    invoke-virtual/range {v20 .. v25}, Lcom/android/server/wm/OpPowerConsumpStats$ugm;->cno(ILcom/android/server/wm/OpPowerConsumpStats$NetworkType;JI)V

    iget-object v10, v3, Lcom/android/server/wm/OpPowerConsumpStats$veq;->ire:Ljava/util/HashMap;

    invoke-virtual {v10, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    :cond_1e
    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    :cond_1f
    const-string v6, "capStatistics"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    const-string v6, "drop"

    const/4 v7, 0x0

    invoke-interface {v5, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const-string v8, "run"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[Cap] [capStatistics]: ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1, v8, v9}, Lcom/android/server/wm/OpPowerConsumpStats;->H0(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")]"

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    goto :goto_d

    :cond_20
    const/4 v7, 0x0

    :goto_d
    move/from16 v10, v19

    :goto_e
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    move-object v6, v5

    move-object/from16 v8, v16

    :goto_f
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_21
    move-object/from16 v16, v8

    sget-boolean v2, Lcom/android/server/wm/OpPowerConsumpStats;->v0:Z

    if-nez v2, :cond_22

    sget-boolean v2, Lcom/android/server/wm/OpPowerConsumpStats;->u0:Z

    if-eqz v2, :cond_23

    :cond_22
    const-string v2, "loadFromDisk()"

    invoke-virtual {v3, v2}, Lcom/android/server/wm/OpPowerConsumpStats$veq;->zta(Ljava/lang/String;)V

    :cond_23
    iput-object v3, v1, Lcom/android/server/wm/OpPowerConsumpStats;->oif:Lcom/android/server/wm/OpPowerConsumpStats$veq;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/16 v1, 0xf

    if-ne v10, v1, :cond_24

    return v11

    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadFromDisk incomplete data, return false count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    const/4 v1, 0x0

    return v1

    :catchall_1
    move-exception v0

    goto :goto_11

    :catch_1
    move-exception v0

    goto :goto_12

    :catchall_2
    move-exception v0

    move-object/from16 v16, v8

    :goto_11
    move-object v1, v0

    move-object/from16 v7, v16

    goto :goto_14

    :catch_2
    move-exception v0

    move-object/from16 v16, v8

    :goto_12
    move-object v1, v0

    move-object/from16 v7, v16

    goto :goto_13

    :catchall_3
    move-exception v0

    move-object v1, v0

    goto :goto_14

    :catch_3
    move-exception v0

    move-object v1, v0

    :goto_13
    :try_start_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadFromDisk Exception e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_10

    :goto_14
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method static synthetic zgw(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->C0()V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->veq:Z

    return p0
.end method


# virtual methods
.method T1()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->P:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/server/wm/OpPowerConsumpStats$StatusType;->zta:Lcom/android/server/wm/OpPowerConsumpStats$StatusType;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->gck(Lcom/android/server/wm/OpPowerConsumpStats$StatusType;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Cap] oops, why can\'t locate last topPkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->P:Ljava/util/HashMap;

    const-string v0, "LockScreen"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;

    if-eqz p0, :cond_1

    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats$StatusType;->zta:Lcom/android/server/wm/OpPowerConsumpStats$StatusType;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->gck(Lcom/android/server/wm/OpPowerConsumpStats$StatusType;)V

    goto :goto_1

    :cond_1
    const-string p0, "[Cap] oops, why can\'t locate dummy topPkg: LockScreen"

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public V0(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/am/BatteryStatsService;Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/wm/OpPowerConsumpStats;
    .locals 3

    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats;->r0:Lcom/android/server/wm/OpPowerConsumpStats;

    if-nez v0, :cond_4

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->zta:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->igw:Lcom/android/server/wm/WindowManagerService;

    iput-object p3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->bio:Lcom/android/server/am/BatteryStatsService;

    iput-object p4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->K:Lcom/android/server/am/ActivityManagerService;

    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object p2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->zta:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->M:Lcom/android/internal/widget/LockPatternUtils;

    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->zta:Landroid/content/Context;

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->L:Landroid/net/ConnectivityManager;

    new-instance p1, Lcom/android/server/wm/OpPowerConsumpStats$ire;

    invoke-direct {p1, p0}, Lcom/android/server/wm/OpPowerConsumpStats$ire;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->O:Lcom/android/server/wm/OpPowerConsumpStats$ire;

    iget-object p2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->L:Landroid/net/ConnectivityManager;

    invoke-virtual {p2, p1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const-string p1, "persist.sys.opcs.debug_log"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/android/server/wm/OpPowerConsumpStats;->u0:Z

    const-string p1, "persist.sys.opcs.debug_specific"

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/android/server/wm/OpPowerConsumpStats;->w0:Z

    const-string p1, "persist.sys.opcs.debug_verify"

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/android/server/wm/OpPowerConsumpStats;->x0:Z

    const-string p1, "ro.boot.project_name"

    const-string p3, "19805"

    invoke-static {p1, p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "19811"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 p4, 0x1

    if-nez p3, :cond_0

    const-string p3, "19821"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    const-string p3, "19855"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    const-string p3, "19867"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "projectName: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", need to relief logic accordingly"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    sput-boolean p4, Lcom/android/server/wm/OpPowerConsumpStats;->y0:Z

    :cond_1
    const-string p1, "persist.sys.opcs.debug_gaptouch"

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/android/server/wm/OpPowerConsumpStats;->g2:Z

    new-instance p1, Landroid/os/HandlerThread;

    const-string p3, "mConsumptionDetectorThread"

    invoke-direct {p1, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p3, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p3, p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->gck:Landroid/os/Handler;

    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->zta:Landroid/content/Context;

    const-string p3, "alarm"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->rtg:Landroid/app/AlarmManager;

    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->zta:Landroid/content/Context;

    const-string p3, "power"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->dma:Landroid/os/PowerManager;

    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->zta:Landroid/content/Context;

    const-string p3, "batterymanager"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BatteryManager;

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->cno:Landroid/os/BatteryManager;

    const-string p1, "package"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p3

    check-cast p3, Lcom/android/server/pm/PackageManagerService;

    iput-object p3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->ywr:Lcom/android/server/pm/PackageManagerService;

    new-instance p3, Lcom/android/internal/os/BatteryStatsHelper;

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->zta:Landroid/content/Context;

    invoke-direct {p3, v0, p2, p2}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;ZZ)V

    iput-object p3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->kth:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object p3

    new-instance v0, Ljava/io/File;

    const-string v1, "system"

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p3, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string v2, "consumptionDetector_statistcal_data.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p3, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object p3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->sis:Landroid/util/AtomicFile;

    new-instance p3, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string v2, "consumptionDetector_base_data.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p3, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object p3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->tsu:Landroid/util/AtomicFile;

    new-instance p3, Landroid/content/IntentFilter;

    invoke-direct {p3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.oneplus.intent.OPCS_DEBUG"

    invoke-virtual {p3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->zta:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->j0:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance p3, Landroid/content/IntentFilter;

    invoke-direct {p3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.oneplus.intent.OPCS_REPORT"

    invoke-virtual {p3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p3, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {p3, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p3, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->zta:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->i0:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance p3, Landroid/content/IntentFilter;

    invoke-direct {p3}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p3, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->zta:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->h0:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->zta:Landroid/content/Context;

    const/high16 v0, 0x8000000

    invoke-static {p3, p2, p1, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->lqr:Landroid/app/PendingIntent;

    new-array p1, p4, [I

    const/16 p3, 0x51

    aput p3, p1, p2

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->v1()V

    :cond_2
    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->u1()V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->t1()V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->U1()V

    iget-boolean p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->T:Z

    if-nez p1, :cond_3

    sget-object p1, Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;->you:Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->U:Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;

    sget-object p1, Lcom/android/server/wm/OpPowerConsumpStats$OccludedStatus;->zta:Lcom/android/server/wm/OpPowerConsumpStats$OccludedStatus;

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->V:Lcom/android/server/wm/OpPowerConsumpStats$OccludedStatus;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[Cap] Init mKeyguardStatus: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->U:Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", mOccludedStatus: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->V:Lcom/android/server/wm/OpPowerConsumpStats$OccludedStatus;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    const-string p1, "[Cap] Manually simulate Dummy Lock Screen Topping when booting"

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    sget-object p1, Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;->sis:Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    const-string p2, "LockScreen"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->f1(Ljava/lang/String;Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;)V

    :cond_3
    sput-object p0, Lcom/android/server/wm/OpPowerConsumpStats;->r0:Lcom/android/server/wm/OpPowerConsumpStats;

    sput-object p0, Lcom/android/server/wm/OpPowerConsumpStats;->s0:Lcom/android/server/wm/OpPowerConsumpStats;

    :cond_4
    sget-object p0, Lcom/android/server/wm/OpPowerConsumpStats;->r0:Lcom/android/server/wm/OpPowerConsumpStats;

    return-object p0
.end method

.method public dumpDailyPowerFiles(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 8

    const-string v0, "get IOException error: "

    const-string v1, "OPCS"

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/power-history"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    invoke-direct {v3, p0}, Lcom/android/server/wm/OpPowerConsumpStats$qbh;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_4

    array-length v3, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    new-instance v3, Lcom/android/server/wm/OpPowerConsumpStats$oif;

    invoke-direct {v3, p0}, Lcom/android/server/wm/OpPowerConsumpStats$oif;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

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

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

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

.method public dumpPkgStatInfo(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Landroid/os/OpBatteryStatsInjector;->getScreenBrightness()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Cap] Now isBaseTimerInited: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->x1()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPCS"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Cap] Now mDisableMDMReporting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Y:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPCS"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Cap] Now brightnessLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPCS"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Cap] Now LockScreenDisabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->T:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " UserId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPCS"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Cap] Now mKeyguardStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->U:Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mOccludedStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->V:Lcom/android/server/wm/OpPowerConsumpStats$OccludedStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPCS"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Cap] mCurrentTopPkgName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPCS"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[GapTouch] mGapTouchPeriod: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->g0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPCS"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[GapTouch] mCurGapTouchPkgName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPCS"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[GapTouch] mLastUserActivityTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->e0:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPCS"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[GapTouch] mPreUserActivityTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->d0:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPCS"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Cap] ===dumpPkgStatInfo=== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPCS"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->P:Ljava/util/HashMap;

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->P:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    const-string v1, "OPCS"

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/OpPowerConsumpStats$hmo;

    invoke-virtual {p1}, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->P:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/OpPowerConsumpStats$hmo;

    if-eqz p0, :cond_1

    const-string p1, "OPCS"

    invoke-virtual {p0}, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

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

.method f1(Ljava/lang/String;Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Cap] OnPkgStateChanged: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] [mScreenState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oxb:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "] pkg "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;->tsu:Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    if-ne p2, v1, :cond_0

    sget-object v1, Lcom/android/server/wm/OpPowerConsumpStats$StatusType;->zta:Lcom/android/server/wm/OpPowerConsumpStats$StatusType;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/server/wm/OpPowerConsumpStats$StatusType;->you:Lcom/android/server/wm/OpPowerConsumpStats$StatusType;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;->zta:Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->T1()V

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Q:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Cap] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] Update mCurrentTopPkgName to pkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oxb:Z

    if-nez v0, :cond_3

    const-string p0, "[Cap] due to screen-off, no need to execute any-topping action."

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;->sis:Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    if-ne p2, v0, :cond_2

    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->T1()V

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;->tsu:Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    if-ne p2, v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    sget-object v0, Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;->tsu:Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    if-eq p2, v0, :cond_5

    iget-object p2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->P:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/OpPowerConsumpStats$hmo;

    if-nez p2, :cond_4

    new-instance p2, Lcom/android/server/wm/OpPowerConsumpStats$hmo;

    invoke-direct {p2, p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats$hmo;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->P:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    sget-object p0, Lcom/android/server/wm/OpPowerConsumpStats$StatusType;->you:Lcom/android/server/wm/OpPowerConsumpStats$StatusType;

    invoke-virtual {p2, p0}, Lcom/android/server/wm/OpPowerConsumpStats$hmo;->gck(Lcom/android/server/wm/OpPowerConsumpStats$StatusType;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public getResult(Ljava/io/PrintWriter;Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=== getResult === order by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPCS"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "cmd persist"

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->a1(Ljava/lang/String;)Lcom/android/server/wm/OpPowerConsumpStats$veq;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "OPCS data is null, just return"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->a0:J

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->a0:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getResult at: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->a0:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/wm/OpPowerConsumpStats;->a2:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/wm/OpPowerConsumpStats$PersistType;->zta:Lcom/android/server/wm/OpPowerConsumpStats$PersistType;

    invoke-direct {p0, v0, v2, p2}, Lcom/android/server/wm/OpPowerConsumpStats;->I1(Lcom/android/server/wm/OpPowerConsumpStats$veq;Lcom/android/server/wm/OpPowerConsumpStats$PersistType;Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->sis:Landroid/util/AtomicFile;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OPCS result is ready on "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->sis:Landroid/util/AtomicFile;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", order by "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p0, "OPCS mPersistData is still null, just return"

    :goto_0
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public handleShowOrOccludedChanged(Lcom/android/server/wm/KeyguardController;ZZLcom/android/server/wm/ActivityStackSupervisor;)V
    .locals 0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "handleShowOrOccludedChanged: showing: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, " occluded: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->gck:Landroid/os/Handler;

    const/16 p4, 0x11

    invoke-virtual {p1, p4, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->gck:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public init(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/am/BatteryStatsService;Lcom/android/server/am/ActivityManagerService;)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/OpPowerConsumpStats;->V0(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/am/BatteryStatsService;Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/wm/OpPowerConsumpStats;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public initPlugState(ZIZ)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initPlugState Plug:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |plugType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |isFastCharge:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->gck:Landroid/os/Handler;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->gck:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public notifyBGCMDMReady(Ljava/lang/StringBuilder;Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyBGCMDMReady, forQuickDebug: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->gck:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->gck:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->gck:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->gck:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyBatteryLevelEvent(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyBatteryLevelEvent Level:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->x1()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "notifyBatteryLevelEvent not yet timing, return"

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->gck:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->gck:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyDozeEvent(ZLjava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDozeEvent idle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->x1()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "notifyDozeEvent not yet timing, return"

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->gck:Landroid/os/Handler;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->gck:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyFastChargeEvent(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyFastChargeEvent isFastCharge:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->x1()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "notifyFastChargeEvent not yet timing, return"

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->gck:Landroid/os/Handler;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public notifyPkgEvent(Landroid/content/ComponentName;Z)V
    .locals 2

    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStats;->x0:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->x1()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "notifyPkgEvent not yet timing, return"

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->gck:Landroid/os/Handler;

    const/16 v0, 0xe

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->gck:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method

.method public notifyPlugEvent(Ljava/lang/Boolean;IZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyPlugEvent Plug:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " |plugType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |isFastCharge:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->x1()Z

    move-result p3

    if-nez p3, :cond_0

    const-string p0, "notifyPlugEvent not yet timing, return"

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->gck:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v1, ""

    invoke-virtual {p3, v0, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->gck:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyScreenEvent(Ljava/lang/Boolean;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyScreenEvent Screen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->gck:Landroid/os/Handler;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v0, v3, p1, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->gck:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public registerResetParamListener(Lcom/android/server/wm/OpPowerConsumpStatsInjector$ResetParamListener;)V
    .locals 1

    const-string v0, "registerResetParamListener"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->gwm:Lcom/android/server/wm/OpPowerConsumpStatsInjector$ResetParamListener;

    return-void
.end method

.method public resetClean(Ljava/io/PrintWriter;)V
    .locals 6

    const-string v0, "OPCS"

    const-string v1, "=== resetClean ==="

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->x1()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "OPCS BaseTimer not yet timing, just return"

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->E1(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Y:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Z:J

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Z:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetClean at: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->Z:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/wm/OpPowerConsumpStats;->a2:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->a0:J

    const-string v2, "Enable OPCS testing procedure mode, start skipping any MDM data reporting on 03:00AM"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/OpPowerConsumpStats;->notifyBGCMDMReady(Ljava/lang/StringBuilder;Z)V

    return-void
.end method

.method public declared-synchronized updateLastUserActivityTime(JIII)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStats;->g2:Z

    if-eqz v0, :cond_0

    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GapTouch] updateLastUserActivityTime: eventTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", uid="

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-wide p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->e0:J

    iget-wide p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->d0:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_3

    iget-wide p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->e0:J

    iget-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->d0:J

    sub-long/2addr p1, v0

    sget-boolean p4, Lcom/android/server/wm/OpPowerConsumpStats;->g2:Z

    if-eqz p4, :cond_1

    const-string p4, "OPCS"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[GapTouch] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->d0:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->e0:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "], diff= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget p4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->g0:I

    int-to-long v0, p4

    cmp-long p4, p1, v0

    if-lez p4, :cond_3

    iget-boolean p4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->oxb:Z

    const/4 v0, 0x1

    if-ne p4, v0, :cond_2

    iget-object p4, p0, Lcom/android/server/wm/OpPowerConsumpStats;->gck:Landroid/os/Handler;

    const/16 v0, 0x14

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, v0, p3, p5, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/wm/OpPowerConsumpStats;->gck:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    sget-boolean p1, Lcom/android/server/wm/OpPowerConsumpStats;->g2:Z

    if-eqz p1, :cond_3

    const-string p1, "OPCS"

    const-string p2, "[GapTouch] skip send gap-touch event due to under screen-off..."

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    iget-wide p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->e0:J

    iput-wide p1, p0, Lcom/android/server/wm/OpPowerConsumpStats;->d0:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateScreenState(I)V
    .locals 4

    sget-boolean v0, Lcom/android/server/wm/OpPowerConsumpStats;->v0:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateScreenState to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPCS"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x51

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->I:Lcom/android/server/wm/OpPowerConsumpStats$bud;

    invoke-virtual {p0}, Lcom/android/server/wm/OpPowerConsumpStats$bud;->cno()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats;->I:Lcom/android/server/wm/OpPowerConsumpStats$bud;

    invoke-virtual {p0}, Lcom/android/server/wm/OpPowerConsumpStats$bud;->ssp()V

    :cond_2
    :goto_0
    return-void
.end method
