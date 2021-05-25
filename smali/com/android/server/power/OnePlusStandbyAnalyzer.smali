.class public Lcom/android/server/power/OnePlusStandbyAnalyzer;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/OnePlusStandbyAnalyzer$ugm;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$ibl;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$cgv;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$MeasureType;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$vju;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$fto;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$ear;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaSimpleType;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$WifiWakeUpType;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmCategory;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterCheckOrderSdm845;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterTypeForMsm8998;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmCxState;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$PacketType;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$SimId;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$KnownUIDs;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$oif;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;
    }
.end annotation


# static fields
.field public static final A1:Ljava/lang/String; = "rpm"

.field private static A2:F = 0.0f

.field public static final B1:Ljava/lang/String; = "rpm_master"

.field private static B2:F = 0.0f

.field public static final C1:Ljava/lang/String; = "telephony"

.field private static C2:I = 0x0

.field public static final D1:Ljava/lang/String; = "conn_chg"

.field private static D2:I = 0x0

.field public static final E1:I = 0x32

.field private static E2:J = 0x0L

.field public static final F1:I = 0x7d0

.field private static F2:F = 0.0f

.field private static G1:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static G2:J = 0x0L

.field private static final H1:I = -0x1

.field private static H2:J = 0x0L

.field private static final I1:Ljava/lang/String; = "PowerStandbyOnlineConfig"

.field private static I2:J = 0x0L

.field static final J1:I = 0x3e8

.field static final K1:I = 0x3e9

.field static final L1:I = 0x3ea

.field static final M1:I = 0x3eb

.field static final N1:I = 0x3ec

.field static final O1:I = 0x3ed

.field static final P1:I = 0x3ee

.field static final Q1:J = 0x2710L

.field private static final R0:Z

.field static final R1:I = -0x3e7

.field private static final S0:Ljava/lang/String; = "persist.sys.standby_debug"

.field static final S1:D = -1.0

.field static final T0:Z

.field private static T1:Ljava/lang/String; = null

.field private static U0:Ljava/lang/String; = null

.field private static U1:Ljava/lang/String; = null

.field private static final V0:I = 0x1

.field private static V1:Ljava/lang/String; = null

.field public static final W0:I = -0x3e7

.field static final W1:Ljava/lang/String; = "/sys/class/oplus_chg/battery/remaining_capacity"

.field public static final X0:I = 0x124f800

.field static final X1:Ljava/lang/String; = "/sys/class/oplus_chg/battery/charge_full"

.field public static final Y0:I = -0x1

.field static final Y1:Ljava/lang/String; = "/sys/class/oplus_chg/battery/battery_health"

.field public static final Z0:Ljava/lang/String; = "NYNCG4I0TI"

.field private static final Z1:Ljava/lang/String; = "OPSA"

.field public static final a1:Ljava/lang/String; = "standby"

.field private static final a2:Ljava/lang/String; = "PowerManagerService.WakeLocks"

.field public static final b1:Ljava/lang/String; = "tp"

.field public static b2:Ljava/lang/String; = null

.field public static final c1:Ljava/lang/String; = "dl"

.field public static final c2:Ljava/lang/String; = "/d/rpm_stats"

.field public static final d1:Ljava/lang/String; = "pn"

.field public static d2:Ljava/lang/String; = null

.field public static final e1:Ljava/lang/String; = "version"

.field public static e2:Ljava/lang/String; = null

.field public static final f1:Ljava/lang/String; = "measure_type"

.field public static final f2:Ljava/lang/String; = "/d/rpm_master_stats"

.field public static final g1:Ljava/lang/String; = "average_current"

.field public static final g2:Ljava/lang/String; = "/data/system/power/diagnosis_standby.txt"

.field public static final h1:Ljava/lang/String; = "charge_full"

.field public static final h2:Ljava/lang/String; = "/data/system/power/diagnosis_assist.txt"

.field public static final i1:Ljava/lang/String; = "health"

.field public static final i2:Ljava/lang/String; = "/data/system/power/diagnosis_rpm.txt"

.field public static final j1:Ljava/lang/String; = "reason_str"

.field private static final j2:I = 0x28

.field public static final k1:Ljava/lang/String; = "standby_hr"

.field private static final k2:J = 0x1388L

.field public static final l1:Ljava/lang/String; = "suspend_ratio"

.field public static l2:Ljava/lang/String; = null

.field public static final m1:Ljava/lang/String; = "level_drop"

.field private static m2:F = 0.0f

.field public static final n1:Ljava/lang/String; = "capacity_drop"

.field private static n2:F = 0.0f

.field public static final o1:Ljava/lang/String; = "deepsleep_ratio"

.field private static o2:I = 0x0

.field public static final p1:Ljava/lang/String; = "wifi_per_hr"

.field private static p2:F = 0.0f

.field public static final q1:Ljava/lang/String; = "mobile_per_hr"

.field private static q2:F = 0.0f

.field public static final r1:Ljava/lang/String; = "top_pkt"

.field private static r2:F = 0.0f

.field public static final s1:Ljava/lang/String; = "wl_ratio"

.field private static s2:F = 0.0f

.field public static final t1:Ljava/lang/String; = "top_wl"

.field private static t2:I = 0x0

.field public static final u1:Ljava/lang/String; = "kwl_ratio"

.field private static u2:F = 0.0f

.field public static final v1:Ljava/lang/String; = "top_kwl"

.field private static v2:F = 0.0f

.field public static final w1:Ljava/lang/String; = "wr_ratio"

.field private static w2:F = 0.0f

.field public static final x1:Ljava/lang/String; = "top_wr"

.field private static x2:I = 0x0

.field public static final y1:Ljava/lang/String; = "wua_ratio"

.field private static y2:F = 0.0f

.field public static final z1:Ljava/lang/String; = "top_wua"

.field private static z2:F


# instance fields
.field A:J

.field private A0:Landroid/content/IntentFilter;

.field B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;",
            ">;"
        }
    .end annotation
.end field

.field private B0:Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;

.field C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;",
            ">;"
        }
    .end annotation
.end field

.field private C0:Z

.field D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;",
            ">;"
        }
    .end annotation
.end field

.field private D0:Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

.field E:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$WifiWakeUpType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private E0:Z

.field F:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$WifiWakeUpType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private F0:Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

.field G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$vju;",
            ">;"
        }
    .end annotation
.end field

.field private G0:Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

.field H:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;",
            ">;"
        }
    .end annotation
.end field

.field private H0:Landroid/content/IntentFilter;

.field I:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;",
            ">;"
        }
    .end annotation
.end field

.field private I0:Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;

.field J:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;",
            ">;"
        }
    .end annotation
.end field

.field private J0:Landroid/telephony/PhoneStateListener;

.field K:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;",
            ">;"
        }
    .end annotation
.end field

.field K0:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;",
            ">;"
        }
    .end annotation
.end field

.field L:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;",
            ">;"
        }
    .end annotation
.end field

.field L0:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;",
            ">;"
        }
    .end annotation
.end field

.field M:J

.field M0:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$vju;",
            ">;"
        }
    .end annotation
.end field

.field N:J

.field N0:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;",
            ">;"
        }
    .end annotation
.end field

.field O:J

.field O0:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$cgv;",
            ">;"
        }
    .end annotation
.end field

.field P:J

.field P0:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;",
            ">;"
        }
    .end annotation
.end field

.field private Q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field Q0:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;",
            ">;"
        }
    .end annotation
.end field

.field private R:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private S:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private T:Z

.field private U:Z

.field private V:Z

.field private W:Z

.field private X:Ljava/util/regex/Pattern;

.field private Y:Ljava/util/regex/Pattern;

.field private Z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private a:Lcom/android/server/power/you;

.field private a0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lnet/oneplus/odm/OpDeviceManagerInjector;

.field private b0:Ljava/util/regex/Pattern;

.field private bio:Landroid/os/BatteryManagerInternal;

.field private bud:I

.field private bvj:I

.field private c:Z

.field private c0:J

.field private cgv:Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;

.field private cjf:J

.field private cno:Z

.field private d:Lcom/android/server/am/BatteryStatsService;

.field private d0:F

.field private dma:I

.field private e:Landroid/content/Context;

.field private e0:J

.field private ear:I

.field private f:Landroid/telephony/TelephonyManager;

.field private f0:J

.field private fto:J

.field private g:Lcom/oneplus/os/IOnePlusExService;

.field private g0:F

.field private gck:I

.field private gwm:I

.field h:Lcom/android/internal/os/BatteryStatsHelper;

.field private h0:I

.field private hmo:I

.field i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private i0:I

.field private ibl:J

.field private igw:Z

.field private ire:I

.field private irq:Z

.field private ivd:Z

.field j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private j0:I

.field k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private k0:F

.field private kth:Z

.field l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private l0:F

.field private les:Z

.field private final lqr:I

.field m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;",
            ">;"
        }
    .end annotation
.end field

.field private m0:I

.field n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private n0:J

.field o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private o0:J

.field private obl:Z

.field private oif:Lcom/android/server/power/OnePlusStandbyAnalyzer$MeasureType;

.field private oxb:J

.field p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;",
            ">;"
        }
    .end annotation
.end field

.field private p0:J

.field q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;",
            ">;"
        }
    .end annotation
.end field

.field private q0:J

.field private qbh:I

.field private qeg:J

.field r:J

.field private r0:J

.field private rtg:Ljava/lang/String;

.field s:J

.field private s0:J

.field private sis:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ssp:Z

.field t:J

.field private t0:F

.field private tsu:Ljava/lang/String;

.field u:J

.field private u0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ugm:F

.field v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private v0:I

.field private vdb:F

.field private vdw:Z

.field private veq:Lcom/oneplus/config/ConfigObserver;

.field private vju:Z

.field w:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private w0:I

.field private wtn:Lcom/android/internal/os/PowerProfile;

.field x:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$cgv;",
            ">;"
        }
    .end annotation
.end field

.field private x0:Lcom/android/internal/os/BatterySipper;

.field y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$cgv;",
            ">;"
        }
    .end annotation
.end field

.field private y0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private you:Z

.field private ywr:Z

.field z:J

.field private z0:D

.field private zgw:Z

.field private zta:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->R0:Z

    const-string v0, "persist.sys.standby_debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->T0:Z

    const-string v0, "2.04"

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->U0:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->G1:Ljava/util/Map;

    const-string v0, "/sys/class/power_supply/bms/remaining_capacity"

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->T1:Ljava/lang/String;

    const-string v0, "/sys/class/power_supply/bms/charge_full"

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->U1:Ljava/lang/String;

    const-string v0, "/sys/class/power_supply/bms/battery_h"

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->V1:Ljava/lang/String;

    const-string v0, "/sys/power/rpmh/stats"

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->b2:Ljava/lang/String;

    const-string v0, "/sys/power/rpmh/master_stats"

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->d2:Ljava/lang/String;

    const-string v0, "/proc/rpmh_modem/sleepinfo"

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e2:Ljava/lang/String;

    const-string v0, "/sys/kernel/debug/wlan_wakeup/wlan_wakeup_reason"

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->l2:Ljava/lang/String;

    const/high16 v0, 0x41200000    # 10.0f

    sput v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m2:F

    sput v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->n2:F

    const/16 v2, 0xc8

    sput v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->o2:I

    const/high16 v2, 0x42a00000    # 80.0f

    sput v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p2:F

    const/high16 v2, 0x40a00000    # 5.0f

    sput v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->q2:F

    const/high16 v3, 0x41a00000    # 20.0f

    sput v3, Lcom/android/server/power/OnePlusStandbyAnalyzer;->r2:F

    sput v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->s2:F

    const/4 v3, 0x5

    sput v3, Lcom/android/server/power/OnePlusStandbyAnalyzer;->t2:I

    sput v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->u2:F

    sput v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->v2:F

    sput v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->w2:F

    const/16 v2, 0x96

    sput v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->x2:I

    const/high16 v2, 0x42480000    # 50.0f

    sput v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->y2:F

    const/high16 v2, 0x40600000    # 3.5f

    sput v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->z2:F

    sput v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->A2:F

    const/high16 v0, 0x40400000    # 3.0f

    sput v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->B2:F

    const/4 v0, 0x3

    sput v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C2:I

    sput v1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->D2:I

    const-wide/16 v0, 0x708

    sput-wide v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->E2:J

    const/high16 v0, 0x42200000    # 40.0f

    sput v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F2:F

    const-wide/32 v0, 0x100000

    sput-wide v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->G2:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->you:Z

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis:Ljava/util/Map;

    iput-boolean v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ssp:Z

    iput-boolean v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cno:Z

    iput-boolean v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->kth:Z

    iput-boolean v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->igw:Z

    iput-boolean v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ywr:Z

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$MeasureType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$MeasureType;

    iput-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->oif:Lcom/android/server/power/OnePlusStandbyAnalyzer$MeasureType;

    iput v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->gwm:I

    const/high16 v2, 0x42700000    # 60.0f

    iput v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ugm:F

    const v2, 0x41d5999a    # 26.7f

    iput v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vdb:F

    iput-boolean v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zgw:Z

    iput-boolean v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->obl:Z

    const-wide/16 v2, 0x7530

    iput-wide v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->oxb:J

    iput-wide v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cjf:J

    const/16 v2, 0x32

    iput v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ear:I

    const/16 v2, 0x7d0

    iput v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ire:I

    const/16 v2, 0x22b

    iput v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->hmo:I

    const-wide/32 v2, 0x1499700

    iput-wide v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->fto:J

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->lqr:I

    iput-boolean v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->les:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->irq:Z

    iput-boolean v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vdw:Z

    const-wide/16 v2, 0x2710

    iput-wide v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->qeg:J

    iput-boolean v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ivd:Z

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->c:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Q:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->R:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->S:Ljava/util/List;

    iput-boolean v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->T:Z

    iput-boolean v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->U:Z

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->V:Z

    iput-boolean v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->W:Z

    const-string v0, "RPM Mode:vlow\\n\\t\\scount:(\\d*)\\n.*time since last mode\\(sec\\):(\\d*).*RPM Mode:vmin\\n\\t\\scount:(\\d*)\\n.*time since last mode\\(sec\\):(\\d*)\\n.*"

    const/16 v2, 0x20

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->X:Ljava/util/regex/Pattern;

    const-string v0, "RPM Mode:aosd\\n\\t\\scount:(\\d*)\\n.*time since last mode\\(sec\\):(\\d*).*RPM Mode:cxsd\\n\\t\\scount:(\\d*)\\n.*time since last mode\\(sec\\):(\\d*)\\n.*"

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Y:Ljava/util/regex/Pattern;

    const-string v0, "uc (\\d*) bc (\\d*) v4_mc (\\d*) v6_mc (\\d*) ra (\\d*) ns (\\d*) na (\\d*) pno_match (\\d*) pno_complete (\\d*) gscan (\\d*) low_rssi (\\d*) rssi_breach (\\d*) icmp (\\d*) icmpv6 (\\d*) oem (\\d*) unspecified (\\d*).*"

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->b0:Ljava/util/regex/Pattern;

    iput-boolean v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C0:Z

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

    new-instance v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$fto;

    invoke-direct {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$fto;-><init>()V

    const-string v3, "NoSignalTimer"

    invoke-direct {v0, v3, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;-><init>(Ljava/lang/String;Lcom/android/server/power/OnePlusStandbyAnalyzer$fto;)V

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->D0:Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

    iput-boolean v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->E0:Z

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

    new-instance v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$fto;

    invoke-direct {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$fto;-><init>()V

    const-string v2, "AODTimer"

    invoke-direct {v0, v2, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;-><init>(Ljava/lang/String;Lcom/android/server/power/OnePlusStandbyAnalyzer$fto;)V

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0:Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

    new-instance v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$fto;

    invoke-direct {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$fto;-><init>()V

    const-string v2, "DeepSleepTimer"

    invoke-direct {v0, v2, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;-><init>(Ljava/lang/String;Lcom/android/server/power/OnePlusStandbyAnalyzer$fto;)V

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->G0:Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$kth;

    invoke-direct {v0, p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$kth;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->J0:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bio;

    invoke-direct {v0, p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$bio;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->K0:Ljava/util/Comparator;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$igw;

    invoke-direct {v0, p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$igw;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0:Ljava/util/Comparator;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;

    invoke-direct {v0, p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->M0:Ljava/util/Comparator;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$ywr;

    invoke-direct {v0, p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$ywr;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->N0:Ljava/util/Comparator;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$zta;

    invoke-direct {v0, p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$zta;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->O0:Ljava/util/Comparator;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$you;

    invoke-direct {v0, p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$you;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->P0:Ljava/util/Comparator;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;

    invoke-direct {v0, p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Q0:Ljava/util/Comparator;

    const-string v0, "OPSA"

    const-string v1, "init OnePlusStandbyAnalyzer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cno:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "init reporting-flag to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cno:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private A0(Ljava/util/List;)Lcom/android/internal/os/BatterySipper;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;)",
            "Lcom/android/internal/os/BatterySipper;"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatterySipper;

    iget-wide v1, v1, Lcom/android/internal/os/BatterySipper;->flashlightTimeMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "###### Observed FlashLightScene at ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatterySipper;

    const-string v3, ""

    invoke-direct {p0, v3, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->b0(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/os/BatterySipper;

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private B(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatterySipper;

    iget-wide v5, v4, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    add-double/2addr v0, v5

    if-eqz p3, :cond_0

    if-eqz p3, :cond_1

    const/16 v5, 0xa

    if-ge v3, v5, :cond_1

    :cond_0
    invoke-direct {p0, p1, v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->b0(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "["

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], accumulated sum-up totalPowerMah="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    const-string p0, "sippers == null or sippers.size() == 0"

    :goto_1
    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    return-void
.end method

.method private B0(Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;)J
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;

    iget-object v3, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;->ssp:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;

    iget-object v3, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    if-eq v3, p1, :cond_1

    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;

    iget-wide v3, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->ssp:J

    cmp-long v3, v0, v3

    if-gez v3, :cond_1

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;

    iget-wide v0, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->ssp:J

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method private C()V
    .locals 4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WL=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m2:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->v2:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "] |KWL=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->n2:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->w2:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "] |KW=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->o2:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->x2:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] |NS=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p2:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->y2:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "] |HUC=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->q2:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->z2:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "] |MINOR="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->u2:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " |RPM_TSLM_SEC="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->E2:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |RPM_SAD="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F2:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " |RPM_SLPI_SC="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->G2:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |DWN_WIFI=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->r2:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->A2:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "] |DWN_MOBILE=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->s2:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->B2:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "] |PKG_INSTALL=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->D2:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] |CONN_CHG=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->t2:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    return-void
.end method

.method private D(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OPSA"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private E(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "After Calcu # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private F(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "After Calcu # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private F0(Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->d1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p1, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method private G(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/16 p0, 0x400

    new-array p0, p0, [B

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#### ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    :cond_0
    invoke-virtual {v0, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v1}, Ljava/lang/String;-><init>([BII)V

    const-string v1, "OPSA"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v1, p1

    const-wide/16 v3, 0x1388

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    const-string p0, "**** Exceed read timeout, force exit ***"

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object p1, v0

    goto :goto_3

    :catch_1
    move-exception p0

    move-object p1, v0

    goto :goto_0

    :catch_2
    move-exception p0

    move-object p1, v0

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_3
    move-exception p0

    :goto_0
    :try_start_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "**** Failed to read, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p1, :cond_2

    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_4
    move-exception p0

    :goto_1
    :try_start_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "**** File not found, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p1, :cond_2

    :try_start_6
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_2
    :goto_2
    return-void

    :goto_3
    if-eqz p1, :cond_3

    :try_start_7
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_4

    :catch_5
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_4
    throw p0
.end method

.method private H(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;",
            ">;)V"
        }
    .end annotation

    const-string p0, "OPSA"

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "list == null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private I(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;",
            ">;)V"
        }
    .end annotation

    const-string p0, "OPSA"

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "list == null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private J0(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/BatterySipper;)Z
    .locals 2

    iget-object p0, p1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    const/4 v0, -0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    iget-object v1, p2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v0

    :cond_1
    iget-object p1, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    iget-object p2, p2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    const/4 v1, 0x0

    if-eq p1, p2, :cond_2

    return v1

    :cond_2
    if-eq p0, v0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private L(Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object p2, Lcom/android/server/power/zta;->zta:Lcom/android/server/power/zta;

    invoke-static {p0, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_1

    if-eqz p3, :cond_0

    if-eqz p3, :cond_1

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "],"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private L0()Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e:Landroid/content/Context;

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result p0

    const/16 v0, 0xd

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private M(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_1

    if-eqz p3, :cond_0

    if-eqz p3, :cond_1

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "],"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private N0()V
    .locals 5

    new-instance v0, Lcom/android/internal/os/PowerProfile;

    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->wtn:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v0}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->gwm:I

    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->bio:Landroid/os/BatteryManagerInternal;

    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->b:Lnet/oneplus/odm/OpDeviceManagerInjector;

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->bio:Landroid/os/BatteryManagerInternal;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->gck:I

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->dma:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[opbugreportlite] mCurrentBatteryLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->gck:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    :cond_0
    sget-boolean v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->R0:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[opbugreportlite] mMeasureType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->oif:Lcom/android/server/power/OnePlusStandbyAnalyzer$MeasureType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPSA"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[opbugreportlite] mBatteryCapacity = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->gwm:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mAh"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[opbugreportlite] mEnablePowerStandbyDetect = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->igw:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[opbugreportlite] mEnablePowerStandbyDiagnosis = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->irq:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[opbugreportlite] mMaCriteria = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ugm:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " mA"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[opbugreportlite] mMinimumPeriod = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->fto:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->g:Lcom/oneplus/os/IOnePlusExService;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/server/OnePlusExService;->getDefault()Lcom/oneplus/os/IOnePlusExService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->g:Lcom/oneplus/os/IOnePlusExService;

    :cond_2
    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cgv:Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;

    invoke-virtual {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;->rtg()V

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cgv:Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;

    invoke-virtual {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;->you()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$oif;

    invoke-direct {v3, p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$oif;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V

    const-string v4, "PowerStandbyOnlineConfig"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->veq:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cgv:Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;

    const/16 v0, 0x3e8

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;->cno(IJ)V

    return-void
.end method

.method private O(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OPSA"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private O0()V
    .locals 10

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->a0:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z:Ljava/util/Map;

    iget-boolean v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->V:Z

    const/16 v2, 0x20

    const/4 v3, 0x2

    const-string v4, ".*%s%s.*"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    const-string v8, "\\n\\tVersion:\\s?0x([0-9a-f]*)\\n\\tSleep Count:\\s?0x([0-9a-f]*)\\n\\tSleep Last Entered At:\\s?0x([0-9a-f]*)\\n\\tSleep Last Exited At:\\s?0x([0-9a-f]*)\\n\\tSleep Accumulated Duration:\\s?0x([0-9a-f]*)\\n\\n?"

    aput-object v8, v7, v5

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z:Ljava/util/Map;

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v6

    aput-object v8, v7, v5

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z:Ljava/util/Map;

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v6

    aput-object v8, v7, v5

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z:Ljava/util/Map;

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;->ssp:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v6

    aput-object v8, v7, v5

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v5, [I

    const/16 v1, 0x14d

    aput v1, v0, v6

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->a0:Ljava/util/Map;

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    const-string v8, "\\n\\tCount\\s*:(\\d*)\\n\\tLast Entered At\\(sec\\)\\s*:(\\d*)\\n\\tLast Exited At\\(sec\\)\\s*:(\\d*)\\n\\tAccumulated Duration\\(sec\\):(\\d*)\\n\\tClient Votes\\s*:0x([0-9a-f]*)\\n\\n"

    aput-object v8, v7, v5

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->a0:Ljava/util/Map;

    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    aput-object v8, v1, v5

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    const-string v8, "\\n\\tshutdown_req.*\\n\\twakeup_ind.*\\n\\tbringup_req.*\\n\\tbringup_ack.*\\n\\txo_last_entered_at:0x([0-9a-fA-F]*)\\n\\txo_last_exited_at:0x([0-9a-fA-F]*)\\n\\txo_accumulated_duration:0x([0-9a-fA-F]*)\\n\\tlast_sleep_transition_duration.*\\n\\tlast_wake_transition_duration.*\\n\\txo_count:0x([0-9a-fA-F]*)\\n"

    aput-object v8, v7, v5

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z:Ljava/util/Map;

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v6

    aput-object v8, v7, v5

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z:Ljava/util/Map;

    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;->ssp:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    aput-object v8, v1, v5

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private P(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "After Calcu # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;

    invoke-virtual {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;->zta()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private P0()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Q:Ljava/util/List;

    const-string v1, "PowerManagerService.WakeLocks"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Q:Ljava/util/List;

    const-string v1, "NETLINK"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->R:Ljava/util/List;

    const-string v1, "AudioMix"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->R:Ljava/util/List;

    const-string v1, "AudioDirectOut"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->R:Ljava/util/List;

    const-string v1, "AudioOffload"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->R:Ljava/util/List;

    const-string v1, "AudioIn"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->S:Ljava/util/List;

    const-string v1, "com.android.chrome"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->S:Ljava/util/List;

    const-string v1, "com.appmagna.sleepaidfan"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->S:Ljava/util/List;

    const-string v1, "com.google.android.apps.youtube.music"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->S:Ljava/util/List;

    const-string v1, "com.google.android.music"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->S:Ljava/util/List;

    const-string v1, "com.google.android.youtube"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->S:Ljava/util/List;

    const-string v1, "com.mynoise.mynoise"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->S:Ljava/util/List;

    const-string v1, "com.vanced.android.youtube"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->S:Ljava/util/List;

    const-string v1, "com.urbandroid.sleep"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->S:Ljava/util/List;

    const-string v1, "cn.missevan"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->S:Ljava/util/List;

    const-string v1, "com.psyone.brainmusic"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->S:Ljava/util/List;

    const-string v1, "au.com.shiftyjelly.pocketcasts"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->S:Ljava/util/List;

    const-string v1, "com.seblong.idream"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->S:Ljava/util/List;

    const-string v0, "com.xiaomi.xiaoailite"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private Q(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$cgv;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "After Calcu # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private Q0()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vdw:Z

    if-nez v0, :cond_0

    const-string p0, "[opbugreportlite] m1stLightIdle is false, abort enteringDeepIdleLocked, just return"

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->gck:I

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->qbh:I

    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->T1:Ljava/lang/String;

    const/16 v1, -0x3e7

    invoke-static {v0, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e1(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->bvj:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ibl:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[opbugreportlite] Entering DeepIdle, batteryLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->qbh:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", capacity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->bvj:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", nowElapseRealTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ibl:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", now="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ivd:Z

    iget-boolean v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->irq:Z

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ywr:Z

    :try_start_0
    const-string v0, "[opbugreportlite] Snapshot of start"

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    invoke-virtual {p0, v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->k1(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[opbugreportlite] got exception while snapshot of start:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OPSA"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private R(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$WifiWakeUpType;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$WifiWakeUpType;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static R0(I)Z
    .locals 0

    invoke-static {p0}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private S(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$vju;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    if-eqz p3, :cond_0

    iget v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta:I

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPSA"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "list == null"

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private static S0(I)Z
    .locals 1

    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2710

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private T(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_1

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;

    iget-object v0, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->zta:Ljava/lang/String;

    const-string v1, "PowerManagerService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "After Calcu # "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private T0()Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;->cno:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->B:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->B:Ljava/util/List;

    invoke-direct {v0, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->x(Ljava/util/List;)Z

    move-result v2

    const-string v3, " %"

    const-wide/16 v8, 0x0

    if-eqz v2, :cond_7

    const-wide v11, 0x7fffffffffffffffL

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;->cno:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    const/4 v13, 0x0

    move-wide v4, v8

    const/4 v14, 0x0

    :goto_0
    iget-object v10, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v14, v10, :cond_3

    iget-object v10, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C:Ljava/util/List;

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;

    iget-wide v6, v10, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->ssp:J

    cmp-long v6, v4, v6

    if-gez v6, :cond_1

    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;

    iget-wide v4, v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->ssp:J

    :cond_1
    iget-object v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C:Ljava/util/List;

    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;

    iget-wide v6, v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->ssp:J

    cmp-long v6, v11, v6

    if-ltz v6, :cond_2

    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;

    iget-wide v6, v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->ssp:J

    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;

    iget-object v2, v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    move-wide v11, v6

    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[judgeRPM] longestAccTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", smallestAccTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", smallestType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    cmp-long v6, v4, v8

    if-eqz v6, :cond_4

    sub-long v6, v4, v11

    long-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v6, v7

    long-to-float v4, v4

    div-float/2addr v6, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v6, v4

    new-instance v4, Ljava/math/BigDecimal;

    float-to-double v5, v6

    invoke-direct {v4, v5, v6}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v5, 0x4

    const/4 v6, 0x3

    invoke-virtual {v4, v6, v5}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->floatValue()F

    move-result v13

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[judgeRPM] percent[(longest-smallest)/longest] ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    const-string v3, "[judgeRPM] longestAccTime == 0"

    :goto_1
    invoke-static {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    sget v3, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F2:F

    cmpl-float v3, v13, v3

    if-ltz v3, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmCategory;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmCategory;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    const/4 v10, 0x0

    :goto_3
    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v10, v2, :cond_e

    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;

    iget-object v2, v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    sget-object v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;->ssp:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    if-ne v2, v3, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[judgeRPM] SLPI\'s SleepCount_Diff="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;

    iget-wide v3, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->sis:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", criteria="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/android/server/power/OnePlusStandbyAnalyzer;->G2:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;

    iget-wide v2, v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->sis:J

    sget-wide v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->G2:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmCategory;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmCategory;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;->ssp:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_7
    invoke-static {}, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterCheckOrderSdm845;->values()[Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterCheckOrderSdm845;

    move-result-object v1

    array-length v2, v1

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v2, :cond_d

    aget-object v5, v1, v4

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterCheckOrderSdm845;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterCheckOrderSdm845;

    if-ne v5, v6, :cond_9

    :cond_8
    const/4 v7, 0x4

    const/high16 v10, 0x42c80000    # 100.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x3

    goto/16 :goto_7

    :cond_9
    const/4 v6, 0x0

    :goto_5
    iget-object v7, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_8

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v10, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;

    iget-object v10, v10, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    invoke-virtual {v10}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;

    iget-object v7, v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    invoke-direct {v0, v7}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->B0(Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;)J

    move-result-wide v10

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[judgeRPM] CX_STATE:Active "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C:Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;

    iget-object v12, v12, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ", longestRPMSAD="

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    cmp-long v7, v10, v8

    if-eqz v7, :cond_a

    iget-object v7, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;

    iget-wide v12, v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->ssp:J

    sub-long v12, v10, v12

    long-to-float v7, v12

    const/high16 v12, 0x3f800000    # 1.0f

    mul-float/2addr v7, v12

    long-to-float v10, v10

    div-float/2addr v7, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v7, v10

    new-instance v11, Ljava/math/BigDecimal;

    float-to-double v13, v7

    invoke-direct {v11, v13, v14}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v7, 0x4

    const/4 v13, 0x3

    invoke-virtual {v11, v13, v7}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v11

    invoke-virtual {v11}, Ljava/math/BigDecimal;->floatValue()F

    move-result v11

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[judgeRPM] percent[(longest-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C:Ljava/util/List;

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;

    iget-object v15, v15, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, "\'s SAD)/longest] ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    sget v14, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F2:F

    cmpl-float v11, v11, v14

    if-ltz v11, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmCategory;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmCategory;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_a
    const/4 v7, 0x4

    const/high16 v10, 0x42c80000    # 100.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x3

    const-string v11, "[judgeRPM] longestRPMSAD == 0"

    invoke-static {v11}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    const/4 v7, 0x4

    const/high16 v10, 0x42c80000    # 100.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x3

    :cond_c
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5

    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmCategory;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmCategory;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;->cno:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_e
    return-object v1

    :cond_f
    :goto_8
    const-string v0, "[judgeRPM] oops, rpm data is not well retrieved, just return UNKNOWN"

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    return-object v1
.end method

.method private U0()Z
    .locals 53

    move-object/from16 v0, p0

    sget v1, Landroid/os/OPDiagnoseManager;->ISSUE_POWER_OTHER:I

    iget-wide v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->c0:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    const-string v5, "]="

    const-string v6, ", "

    const-string v7, "###### Due to mStandbyMs: ["

    const/4 v8, 0x0

    if-gtz v4, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->r:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->s:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->c0:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " is less than 0, can\'t judge anything, need just return"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    return v8

    :cond_0
    iget-wide v9, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e0:J

    cmp-long v2, v2, v9

    if-gez v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->r:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->s:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->c0:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " is less than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e0:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms, it\'s false alarm, just return"

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->rtg:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->a:Lcom/android/server/power/you;

    const-string v6, "/data/system/power/diagnosis_assist.txt"

    invoke-virtual {v5, v6}, Lcom/android/server/power/you;->wtn(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->a:Lcom/android/server/power/you;

    const-string v6, "/data/system/power/diagnosis_rpm.txt"

    invoke-virtual {v5, v6}, Lcom/android/server/power/you;->wtn(Ljava/lang/String;)V

    sget-object v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    invoke-virtual {v6}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v11, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->c0:J

    invoke-static {v10, v11, v12}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "###### Time of Standby period : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "###### Battery-Drop of Standby period : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->h0:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " %"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis:Ljava/util/Map;

    sget-object v13, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->rtg:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    iget v14, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->h0:I

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "###### Capacity-Drop of Standby period : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->i0:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " mAh"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis:Ljava/util/Map;

    sget-object v14, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->ssp:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    iget v15, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->i0:I

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v11, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "###### AOD-Impact of Standby period : "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->j0:I

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis:Ljava/util/Map;

    sget-object v13, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    iget v14, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->j0:I

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v11, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis:Ljava/util/Map;

    sget-object v13, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->cno:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    iget v14, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vdb:F

    invoke-static {v14}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lcom/android/server/power/OnePlusStandbyAnalyzer;->U1:Ljava/lang/String;

    const/16 v13, -0x3e7

    invoke-static {v11, v13}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e1(Ljava/lang/String;I)I

    move-result v11

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "###### Charge_Full of Standby period : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-object v14, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis:Ljava/util/Map;

    sget-object v15, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v14, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->V1:Ljava/lang/String;

    invoke-static {v4, v13}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e1(Ljava/lang/String;I)I

    move-result v4

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "###### BH of Standby period : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-object v13, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis:Ljava/util/Map;

    sget-object v14, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->ire:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "###### EverEnterDeepIdle : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v14, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->T:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    new-instance v13, Ljava/math/BigDecimal;

    iget v14, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->k0:F

    float-to-double v14, v14

    invoke-direct {v13, v14, v15}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v14, 0x3

    const/4 v15, 0x4

    invoke-virtual {v13, v14, v15}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v13

    invoke-virtual {v13}, Ljava/math/BigDecimal;->floatValue()F

    move-result v13

    iput v13, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->k0:F

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "###### Average Current of Standby period : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->k0:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v14, " mA, criteria="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->l0:F

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v14, " mA"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-object v13, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis:Ljava/util/Map;

    sget-object v14, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->igw:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    iget v15, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->k0:F

    invoke-static {v15}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v13, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis:Ljava/util/Map;

    sget-object v14, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->wtn:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    iget v15, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->l0:F

    invoke-static {v15}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v13, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis:Ljava/util/Map;

    sget-object v14, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->gck:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    sget v15, Lcom/android/server/power/OnePlusStandbyAnalyzer;->u2:F

    invoke-static {v15}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v13, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->k0:F

    iget v14, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->l0:F

    sub-float/2addr v13, v14

    sget v14, Lcom/android/server/power/OnePlusStandbyAnalyzer;->u2:F

    cmpg-float v13, v13, v14

    if-gtz v13, :cond_2

    const-string v13, "###### Minor exceeding, lower down the criteria accordingly"

    invoke-static {v13}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    sget v13, Lcom/android/server/power/OnePlusStandbyAnalyzer;->x2:I

    sget v14, Lcom/android/server/power/OnePlusStandbyAnalyzer;->v2:F

    sget v15, Lcom/android/server/power/OnePlusStandbyAnalyzer;->w2:F

    sget v17, Lcom/android/server/power/OnePlusStandbyAnalyzer;->y2:F

    sget v18, Lcom/android/server/power/OnePlusStandbyAnalyzer;->z2:F

    sget v19, Lcom/android/server/power/OnePlusStandbyAnalyzer;->A2:F

    sget v20, Lcom/android/server/power/OnePlusStandbyAnalyzer;->B2:F

    goto :goto_1

    :cond_2
    const-string v13, "###### Normal exceeding, use the normal criteria accordingly"

    invoke-static {v13}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    sget v13, Lcom/android/server/power/OnePlusStandbyAnalyzer;->o2:I

    sget v14, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m2:F

    sget v15, Lcom/android/server/power/OnePlusStandbyAnalyzer;->n2:F

    sget v17, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p2:F

    sget v18, Lcom/android/server/power/OnePlusStandbyAnalyzer;->q2:F

    sget v19, Lcom/android/server/power/OnePlusStandbyAnalyzer;->r2:F

    sget v20, Lcom/android/server/power/OnePlusStandbyAnalyzer;->s2:F

    :goto_1
    move/from16 v8, v18

    const v21, 0x4479c000    # 999.0f

    cmpl-float v21, v8, v21

    move/from16 v22, v1

    if-nez v21, :cond_3

    const-string v21, "oops, observe the magic number - 999.0, skip checkifRPMAbnormal at this round"

    invoke-static/range {v21 .. v21}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/16 v21, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    const/16 v21, 0x0

    :goto_2
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    move-wide/from16 v23, v2

    iget-wide v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->f0:J

    invoke-static {v10, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "###### CPU Uptime of Standby period : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-wide v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->n0:J

    invoke-static {v10, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "###### UserSpace-WL(PowerManagerService.WakeLocks) of Standby period : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-wide v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->o0:J

    invoke-static {v10, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "###### (Uptime - UserSpace-WL)KernelSpace of Standby period : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "###### Userspace WUA Count of Standby period : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m0:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " times"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->T0:Z

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I:Ljava/util/List;

    const-string v3, "Diff"

    move-object/from16 v25, v5

    const/4 v5, 0x1

    invoke-direct {v0, v3, v1, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->M(Ljava/lang/String;Ljava/util/List;Z)V

    goto :goto_3

    :cond_4
    move-object/from16 v25, v5

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "###### Kernel Wake-Up Count of Standby period : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, v6

    iget-wide v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p0:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->q:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->T(Ljava/util/List;)V

    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->B:Ljava/util/List;

    const-string v5, "Diff-RPM"

    invoke-direct {v0, v5, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I(Ljava/lang/String;Ljava/util/List;)V

    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C:Ljava/util/List;

    const-string v5, "Diff-RPMMaster"

    invoke-direct {v0, v5, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->H(Ljava/lang/String;Ljava/util/List;)V

    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->B:Ljava/util/List;

    iget-object v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C:Ljava/util/List;

    invoke-direct {v0, v1, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->j0(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget-object v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->a:Lcom/android/server/power/you;

    move-object/from16 v26, v7

    iget-wide v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->c0:J

    move-object/from16 v27, v3

    iget v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->h0:I

    invoke-virtual {v5, v6, v7, v3, v1}, Lcom/android/server/power/you;->rtg(JILjava/util/List;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->tsu:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->B:Ljava/util/List;

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C:Ljava/util/List;

    const-string v5, "Diff-RPM"

    invoke-direct {v0, v5, v1, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->i0(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->B:Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->f0(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C:Ljava/util/List;

    invoke-direct {v0, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->g0(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "###### RPM MDM_Detail : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "OPSA"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->G:Ljava/util/List;

    move-object/from16 v28, v5

    const-string v5, "Diff-WiFiWakeUp"

    move-object/from16 v29, v3

    const/4 v3, 0x1

    invoke-direct {v0, v5, v6, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->S(Ljava/lang/String;Ljava/util/List;Z)V

    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[NoSignal] mStandbyNoSignalUnderSimDetectedMs="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->q0:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-wide v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->q0:J

    invoke-static {v10, v5, v6}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "###### No Signal (under SIM Detected) of Standby period : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->D:Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->l0(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "###### Diff-TeleChgInfo : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->D:Ljava/util/List;

    invoke-direct {v0, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->z0(Ljava/util/List;)Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "##### 1st-TelephonyAnomaly : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v6, Lcom/android/server/power/OnePlusStandbyAnalyzer;->T0:Z

    if-eqz v6, :cond_5

    iget-object v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->y0:Ljava/util/List;

    const-string v7, "Diff - totalPowerMah"

    const/4 v10, 0x1

    invoke-direct {v0, v7, v6, v10}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->B(Ljava/lang/String;Ljava/util/List;Z)V

    :cond_5
    iget-object v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->y0:Ljava/util/List;

    if-eqz v6, :cond_6

    new-instance v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$gck;

    invoke-direct {v7, v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$gck;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    sget-boolean v6, Lcom/android/server/power/OnePlusStandbyAnalyzer;->T0:Z

    if-eqz v6, :cond_6

    iget-object v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->y0:Ljava/util/List;

    const-string v7, "Diff - wakeLockTimeMs"

    const/4 v10, 0x1

    invoke-direct {v0, v7, v6, v10}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->B(Ljava/lang/String;Ljava/util/List;Z)V

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->c1()V

    iget-object v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis:Ljava/util/Map;

    sget-object v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    sget-object v10, Lcom/android/server/power/OnePlusStandbyAnalyzer;->U0:Ljava/lang/String;

    invoke-interface {v6, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis:Ljava/util/Map;

    sget-object v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    iget-object v10, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->oif:Lcom/android/server/power/OnePlusStandbyAnalyzer$MeasureType;

    invoke-virtual {v10}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->c0:J

    long-to-float v6, v6

    const v7, 0x4a5bba00    # 3600000.0f

    div-float/2addr v6, v7

    iput v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->d0:F

    new-instance v6, Ljava/math/BigDecimal;

    iget v7, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->d0:F

    move-object/from16 v30, v3

    move v10, v4

    float-to-double v3, v7

    invoke-direct {v6, v3, v4}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v3, 0x4

    const/4 v4, 0x3

    invoke-virtual {v6, v4, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    iput v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->d0:F

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "###### mStandbyHrs : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->d0:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " h"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis:Ljava/util/Map;

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    iget v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->d0:F

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->n0:J

    long-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    iget-wide v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->c0:J

    long-to-float v6, v6

    div-float/2addr v3, v6

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v3, v6

    new-instance v7, Ljava/math/BigDecimal;

    move-object/from16 v31, v5

    float-to-double v4, v3

    invoke-direct {v7, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v3, 0x4

    const/4 v4, 0x3

    invoke-virtual {v7, v4, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "###### userSpaceWLPercentage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis:Ljava/util/Map;

    sget-object v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->dma:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->f0:J

    long-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    iget-wide v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->c0:J

    long-to-float v6, v6

    div-float/2addr v4, v6

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    new-instance v6, Ljava/math/BigDecimal;

    float-to-double v4, v4

    invoke-direct {v6, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v4, 0x4

    const/4 v5, 0x3

    invoke-virtual {v6, v5, v4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "###### cpuRuningPercentage : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis:Ljava/util/Map;

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->ywr:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v5, 0x42c80000    # 100.0f

    sub-float v6, v5, v4

    iput v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->g0:F

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "###### SuspendRatio : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    new-array v5, v7, [Ljava/lang/Object;

    iget v7, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->g0:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const/16 v18, 0x0

    aput-object v7, v5, v18

    const-string v7, "%.2f"

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    sub-float/2addr v4, v3

    new-instance v5, Ljava/math/BigDecimal;

    move/from16 v34, v10

    move v6, v11

    float-to-double v10, v4

    invoke-direct {v5, v10, v11}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v4, 0x4

    const/4 v10, 0x3

    invoke-virtual {v5, v10, v4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "###### kernelSpaceWLPercentage : "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis:Ljava/util/Map;

    sget-object v10, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->qbh:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v10, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p0:J

    long-to-float v5, v10

    iget v10, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->d0:F

    div-float/2addr v5, v10

    new-instance v10, Ljava/math/BigDecimal;

    move v11, v6

    float-to-double v5, v5

    invoke-direct {v10, v5, v6}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v5, 0x4

    const/4 v6, 0x3

    invoke-virtual {v10, v6, v5}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigDecimal;->floatValue()F

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "###### wrRatio : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, " count/h"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m0:I

    int-to-float v6, v6

    iget v10, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->d0:F

    div-float/2addr v6, v10

    new-instance v10, Ljava/math/BigDecimal;

    move/from16 v35, v5

    float-to-double v5, v6

    invoke-direct {v10, v5, v6}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v5, 0x4

    const/4 v6, 0x3

    invoke-virtual {v10, v6, v5}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigDecimal;->floatValue()F

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "###### wuaRatio : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, " count/h"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->d0:F

    int-to-float v10, v13

    mul-float/2addr v6, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "###### localWRCountCriteria : "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    move v2, v11

    iget-wide v10, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->q0:J

    long-to-float v10, v10

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float/2addr v10, v11

    move-object v13, v12

    iget-wide v11, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->c0:J

    long-to-float v11, v11

    div-float/2addr v10, v11

    const/high16 v11, 0x42c80000    # 100.0f

    mul-float/2addr v10, v11

    new-instance v11, Ljava/math/BigDecimal;

    move-object/from16 v33, v13

    float-to-double v12, v10

    invoke-direct {v11, v12, v13}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v10, 0x4

    const/4 v12, 0x3

    invoke-virtual {v11, v12, v10}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v11

    invoke-virtual {v11}, Ljava/math/BigDecimal;->floatValue()F

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "###### signalNonePercentage(Under SIM detected) : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, "  %"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis:Ljava/util/Map;

    sget-object v12, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->bvj:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->V0()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "###### musicPkgName : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "###### mWifiApEnabled : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->U:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "###### mStandbyAODMs : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v13, v1

    move/from16 v36, v2

    iget-wide v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->r0:J

    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "  ms"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis:Ljava/util/Map;

    sget-object v12, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->oxb:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    move/from16 v37, v4

    move/from16 v38, v5

    iget-wide v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->r0:J

    const-wide/16 v39, 0x3e8

    div-long v4, v4, v39

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "###### mStandbyDSMs : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->s0:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis:Ljava/util/Map;

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->cjf:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    move-object v5, v13

    iget-wide v12, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->s0:J

    div-long v12, v12, v39

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v12, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->s0:J

    long-to-float v2, v12

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v2, v4

    iget-wide v12, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->c0:J

    long-to-float v4, v12

    div-float/2addr v2, v4

    iput v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->t0:F

    new-instance v2, Ljava/math/BigDecimal;

    iget v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->t0:F

    float-to-double v12, v4

    invoke-direct {v2, v12, v13}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v4, 0x4

    const/4 v12, 0x3

    invoke-virtual {v2, v12, v4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v2

    iput v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->t0:F

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "###### mStandbyDSRatio : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->t0:F

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->u0:Ljava/util/List;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    :goto_4
    iput v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->v0:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "###### mStandbyPkgInstallCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->v0:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis:Ljava/util/Map;

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->zgw:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    iget v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->v0:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "###### mStandbyConnChgCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->w0:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis:Ljava/util/Map;

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->obl:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    iget v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->w0:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->w0:I

    iget-wide v12, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->s0:J

    invoke-direct {v0, v1, v12, v13}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->v(IJ)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "###### standbyConnChgAsNormal : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->T0()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "###### [judgeRPM] :"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis:Ljava/util/Map;

    sget-object v13, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->gwm:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    move/from16 v32, v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis:Ljava/util/Map;

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->oif:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    move-object/from16 v39, v12

    iget-wide v12, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p0:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v1, v4, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->x0:Lcom/android/internal/os/BatterySipper;

    if-eqz v1, :cond_9

    iget-wide v12, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->z0:D

    const-wide/16 v42, 0x0

    cmpl-double v4, v12, v42

    move-object/from16 v42, v5

    if-eqz v4, :cond_8

    iget-wide v4, v1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    div-double/2addr v4, v12

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v12

    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v4, 0x4

    const/4 v5, 0x3

    invoke-virtual {v1, v5, v4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "###### existd unaccounted sipper, the percentage "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, " % ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->x0:Lcom/android/internal/os/BatterySipper;

    iget-wide v4, v4, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    invoke-static {v4, v5}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " / "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->z0:D

    invoke-static {v4, v5}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis:Ljava/util/Map;

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->ibl:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_8
    const-string v1, "###### existd unaccounted sipper, but mStadbyTotalPowerMah is 0"

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    move-object/from16 v42, v5

    const-string v1, "###### No-unaccounted sipper existed."

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis:Ljava/util/Map;

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->ibl:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    const-string v5, "-999"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    :goto_6
    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->y0(Ljava/util/List;)Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;

    move-result-object v1

    sget-wide v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->H2:J

    long-to-float v4, v4

    const/high16 v5, 0x49800000    # 1048576.0f

    div-float/2addr v4, v5

    iget v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->d0:F

    div-float/2addr v4, v5

    move-wide/from16 v40, v12

    sget-wide v12, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I2:J

    long-to-float v12, v12

    const/high16 v13, 0x49800000    # 1048576.0f

    div-float/2addr v12, v13

    div-float/2addr v12, v5

    cmpl-float v5, v4, v19

    if-lez v5, :cond_a

    const/4 v5, 0x1

    goto :goto_7

    :cond_a
    const/4 v5, 0x0

    :goto_7
    cmpl-float v13, v12, v20

    if-lez v13, :cond_b

    const/4 v13, 0x1

    goto :goto_8

    :cond_b
    const/4 v13, 0x0

    :goto_8
    or-int/2addr v5, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v10

    const-string v10, "###### mStandbyWifiPktDelta: "

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v19, v2

    move v10, v3

    sget-wide v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->H2:J

    invoke-virtual {v13, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " Bytes"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "###### mStandbyMobilePktDelta: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v14

    sget-wide v13, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I2:J

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " Bytes"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "###### avgWifiPktPerHour: "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    const/16 v18, 0x0

    aput-object v13, v14, v18

    invoke-static {v7, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "  MB/hr"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "###### avgMobilePktPerHour: "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    const/16 v18, 0x0

    aput-object v13, v14, v18

    invoke-static {v7, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "  MB/hr"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C()V

    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis:Ljava/util/Map;

    sget-object v13, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    const-string v14, "1"

    invoke-interface {v2, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis:Ljava/util/Map;

    sget-object v13, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->vdb:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    move-object/from16 v20, v14

    iget-boolean v14, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->U:Z

    move/from16 v43, v12

    const-string v12, "0"

    if-eqz v14, :cond_c

    move-object/from16 v14, v20

    goto :goto_9

    :cond_c
    move-object v14, v12

    :goto_9
    invoke-interface {v2, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->y0:Ljava/util/List;

    invoke-direct {v0, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->A0(Ljava/util/List;)Lcom/android/internal/os/BatterySipper;

    move-result-object v2

    iget-object v13, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis:Ljava/util/Map;

    sget-object v14, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->ugm:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    move/from16 v44, v4

    if-eqz v2, :cond_d

    move-object/from16 v4, v20

    goto :goto_a

    :cond_d
    move-object v4, v12

    :goto_a
    invoke-interface {v13, v14, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->kth:Z

    const-string v13, ";"

    if-nez v4, :cond_e

    iget-boolean v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->T:Z

    if-nez v4, :cond_e

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis:Ljava/util/Map;

    sget-object v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    invoke-interface {v2, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    :goto_b
    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    move/from16 v2, v22

    :goto_c
    const/4 v3, 0x1

    goto/16 :goto_27

    :cond_e
    iget-boolean v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->U:Z

    if-eqz v4, :cond_f

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->veq:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_d
    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    move/from16 v2, v22

    :goto_e
    const/4 v3, 0x0

    goto/16 :goto_27

    :cond_f
    if-eqz v2, :cond_10

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->fto:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0(Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    move-result-object v5

    goto :goto_d

    :cond_10
    if-eqz v5, :cond_13

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->hmo:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_12

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_11

    iget-object v3, v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->you:Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->lqr:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->lqr:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/OPDiagnoseManager;->ISSUE_POWER_MUSIC:I

    move-object v5, v11

    goto :goto_e

    :cond_11
    iget-object v5, v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->you:Ljava/lang/String;

    sget-object v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->you:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    :cond_12
    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_f
    sget v1, Landroid/os/OPDiagnoseManager;->ISSUE_POWER_DOWNLOAD:I

    :goto_10
    const/4 v3, 0x1

    :goto_11
    move-object/from16 v52, v2

    move v2, v1

    move-object/from16 v1, v52

    goto/16 :goto_27

    :cond_13
    iget-wide v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p0:J

    long-to-float v2, v4

    cmpl-float v2, v2, v6

    if-ltz v2, :cond_1b

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->ssp:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->y:Ljava/util/List;

    if-eqz v2, :cond_1a

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1a

    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->y:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1a

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->y:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$cgv;

    invoke-virtual {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$cgv;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/OPDiagnoseManager;->ISSUE_POWER_ALARM_WAKEUP:I

    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->y:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$cgv;

    iget-object v3, v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$cgv;->zta:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;->zta(Ljava/lang/String;)Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;

    move-result-object v3

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->ssp:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v5, v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_15

    const/4 v5, 0x2

    if-eq v3, v5, :cond_15

    const/4 v5, 0x3

    if-eq v3, v5, :cond_14

    :goto_12
    move-object v5, v4

    goto :goto_13

    :cond_14
    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    sget v3, Landroid/os/OPDiagnoseManager;->ISSUE_POWER_MODEM_WAKEUP:I

    move-object v5, v2

    move v2, v3

    goto :goto_13

    :cond_15
    sget v2, Landroid/os/OPDiagnoseManager;->ISSUE_POWER_WIFI_WAKEUP:I

    goto :goto_12

    :goto_13
    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->y:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$cgv;

    iget-object v6, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$cgv;->zta:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->G:Ljava/util/List;

    if-eqz v3, :cond_17

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_17

    const/4 v3, 0x0

    :goto_14
    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->G:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_17

    const/4 v4, 0x3

    if-ge v3, v4, :cond_16

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->G:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/power/OnePlusStandbyAnalyzer$vju;

    invoke-virtual {v8}, Lcom/android/server/power/OnePlusStandbyAnalyzer$vju;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_17
    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I:Ljava/util/List;

    if-eqz v3, :cond_18

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_18

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_19

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;

    invoke-virtual {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;->you()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    :cond_18
    const/4 v4, 0x0

    :cond_19
    :goto_15
    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->q:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;

    invoke-virtual {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_1a
    :goto_16
    move/from16 v2, v22

    move-object/from16 v5, v25

    move-object/from16 v6, v27

    goto/16 :goto_c

    :cond_1b
    cmpl-float v2, v10, v3

    if-gez v2, :cond_2a

    cmpl-float v2, v37, v15

    if-ltz v2, :cond_1c

    goto/16 :goto_1e

    :cond_1c
    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->B:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->w(Ljava/util/List;)Z

    move-result v1

    const-string v2, "_"

    if-eqz v1, :cond_1f

    if-nez v21, :cond_1f

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->igw:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Landroid/os/OPDiagnoseManager;->ISSUE_POWER_HW_SUBSYSTEM:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v39

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v19

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# [judgeRPM]=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v42

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->V:Z

    if-eqz v4, :cond_1d

    const-string v4, "aosd_no_increase"

    goto :goto_17

    :cond_1d
    const-string v4, "vmin_no_increase"

    :goto_17
    move-object v5, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "###### [RPM] :"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;->cno:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;->ssp:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18

    :cond_1e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_18
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1a

    :cond_1f
    move-object/from16 v6, v19

    move-object/from16 v5, v39

    float-to-double v3, v8

    cmpl-double v1, v40, v3

    if-lez v1, :cond_23

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unaccounted:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v14, v40

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-object/from16 v4, v33

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Landroid/os/OPDiagnoseManager;->ISSUE_POWER_HW_SUBSYSTEM:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# [judgeRPM]=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "high_unaccounted"

    if-eqz v31, :cond_21

    move-object/from16 v5, v31

    iget v8, v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;->you:I

    if-lez v8, :cond_21

    invoke-virtual {v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;->you()Ljava/lang/String;

    move-result-object v8

    iget-object v5, v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    invoke-static {v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;->you(Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;->cno:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    invoke-virtual {v8}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;->ssp:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_19

    :cond_20
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_19

    :cond_21
    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;->cno:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;->ssp:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_19
    move-object v6, v2

    :cond_22
    move-object v5, v4

    :goto_1a
    move v2, v3

    goto/16 :goto_c

    :cond_23
    move-object/from16 v5, v31

    move-object/from16 v4, v33

    if-eqz v5, :cond_26

    iget v1, v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;->you:I

    if-lez v1, :cond_26

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->zta:[I

    iget-object v2, v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_25

    const/4 v2, 0x6

    if-eq v1, v2, :cond_24

    move/from16 v1, v22

    goto :goto_1c

    :cond_24
    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->obl:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    sget v2, Landroid/os/OPDiagnoseManager;->ISSUE_POWER_NETWORK_WAKEUP:I

    goto :goto_1b

    :cond_25
    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->vdb:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    sget v2, Landroid/os/OPDiagnoseManager;->ISSUE_POWRE_NO_SIGNAL_INTERSECTION:I

    :goto_1b
    move-object/from16 v26, v1

    move v1, v2

    :goto_1c
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;->you()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;->you(Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;)Ljava/lang/String;

    move-result-object v5

    move v2, v1

    move-object v6, v5

    move-object/from16 v1, v26

    goto/16 :goto_c

    :cond_26
    cmpl-float v1, v16, v17

    if-ltz v1, :cond_27

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->ugm:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v3, v16

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;->rtg:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;->rtg:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    sget v2, Landroid/os/OPDiagnoseManager;->ISSUE_POWER_NO_SIGNAL:I

    goto/16 :goto_c

    :cond_27
    iget v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->v0:I

    sget v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->D2:I

    if-le v1, v2, :cond_28

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->ire:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    :goto_1d
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    goto/16 :goto_b

    :cond_28
    if-nez v32, :cond_29

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->cjf:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    goto :goto_1d

    :cond_29
    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;->cno:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;->cno:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    goto/16 :goto_b

    :cond_2a
    :goto_1e
    cmpl-float v2, v10, v37

    if-lez v2, :cond_33

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m:Ljava/util/List;

    if-eqz v2, :cond_32

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_32

    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_32

    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;

    iget v2, v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;->zta:I

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->y0:Ljava/util/List;

    if-eqz v3, :cond_2f

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1f
    iget-object v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->y0:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_2e

    if-nez v3, :cond_2b

    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->y0:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatterySipper;

    :cond_2b
    iget-object v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->y0:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatterySipper;

    iget-object v5, v5, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v5, :cond_2c

    iget-object v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->y0:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatterySipper;

    iget-object v5, v5, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    goto :goto_20

    :cond_2c
    const/4 v5, -0x1

    :goto_20
    iget-object v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->y0:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BatterySipper;

    iget-object v6, v6, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v8, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v6, v8, :cond_2d

    if-ne v5, v2, :cond_2d

    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->y0:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatterySipper;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "###### Matched Sipper at ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v0, v3, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->b0(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    move-object v4, v2

    goto :goto_21

    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_2e
    :goto_21
    if-eqz v4, :cond_30

    const-string v2, ""

    invoke-direct {v0, v2, v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->b0(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    goto :goto_22

    :cond_2f
    const/4 v4, 0x0

    :cond_30
    :goto_22
    invoke-direct {v0, v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0(Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;

    invoke-virtual {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;->sis()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1st-WL:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;

    invoke-virtual {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;->zta()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;

    iget-object v6, v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;->sis:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;

    invoke-virtual {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;->sis()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->a:Lcom/android/server/power/you;

    iget-wide v14, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->c0:J

    iget v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->h0:I

    invoke-virtual {v3, v14, v15, v4, v2}, Lcom/android/server/power/you;->rtg(JILjava/util/List;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->rtg:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_31

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->lqr:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->lqr:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/OPDiagnoseManager;->ISSUE_POWER_MUSIC:I

    move-object v5, v11

    const/4 v3, 0x0

    move/from16 v52, v2

    move-object v2, v1

    move/from16 v1, v52

    goto/16 :goto_11

    :cond_31
    move-object v2, v1

    move/from16 v1, v22

    goto/16 :goto_10

    :cond_32
    move-object v2, v1

    move/from16 v1, v22

    move-object/from16 v5, v25

    move-object/from16 v6, v27

    goto/16 :goto_10

    :cond_33
    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->rtg:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->q:Ljava/util/List;

    if-eqz v3, :cond_3a

    invoke-direct {v0, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->x0(Ljava/util/List;)Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;

    move-result-object v3

    if-eqz v3, :cond_39

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->zta:Ljava/lang/String;

    if-eqz v4, :cond_36

    const-string v5, "alarmtimer"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_34

    iget-object v4, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->zta:Ljava/lang/String;

    const-string v5, "timerfd"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_36

    :cond_34
    if-eqz v1, :cond_35

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "1st-pkt:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->you:Ljava/lang/String;

    goto :goto_23

    :cond_35
    move-object/from16 v5, v25

    :goto_23
    sget v4, Landroid/os/OPDiagnoseManager;->ISSUE_POWER_DOWNLOAD:I

    goto :goto_25

    :cond_36
    iget-object v4, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->zta:Ljava/lang/String;

    if-eqz v4, :cond_37

    const-string v5, "qcom_rx_wakelock"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_37

    sget v4, Landroid/os/OPDiagnoseManager;->ISSUE_POWER_DOWNLOAD:I

    goto :goto_24

    :cond_37
    move/from16 v4, v22

    :goto_24
    sget-object v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_25
    iget-object v6, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->zta:Ljava/lang/String;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_38

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->you()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_26

    :cond_38
    invoke-virtual {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_26
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->a:Lcom/android/server/power/you;

    iget-wide v14, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->c0:J

    iget v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->h0:I

    invoke-virtual {v1, v14, v15, v3, v8}, Lcom/android/server/power/you;->rtg(JILjava/util/List;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->rtg:Ljava/lang/String;

    move v1, v4

    goto/16 :goto_10

    :cond_39
    move/from16 v1, v22

    move-object/from16 v5, v25

    move-object/from16 v6, v27

    goto/16 :goto_10

    :cond_3a
    move-object v1, v2

    goto/16 :goto_16

    :goto_27
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "###### [RootCause] :"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "###### [DiagnoseCode] :"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v8, ","

    invoke-virtual {v4, v8, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v51

    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->a:Lcom/android/server/power/you;

    iget-wide v8, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->c0:J

    iget v11, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->h0:I

    iget v13, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->k0:F

    move-object/from16 v45, v4

    move/from16 v46, v2

    move-wide/from16 v47, v8

    move/from16 v49, v11

    move/from16 v50, v13

    invoke-virtual/range {v45 .. v51}, Lcom/android/server/power/you;->ssp(IJIFLjava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->a:Lcom/android/server/power/you;

    invoke-virtual {v2}, Lcom/android/server/power/you;->tsu()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "###### [MDM_PACKAGE] :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "###### [MDM_DETAIL] :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-boolean v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->c:Z

    if-eqz v2, :cond_3d

    if-nez v3, :cond_3b

    const-string v1, "This round of abnormal diagnoses is normal, skip MDM-reporting"

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    goto/16 :goto_28

    :cond_3b
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v8, "tp"

    invoke-virtual {v2, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "pn"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "dl"

    invoke-virtual {v2, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->U0:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "version"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->oif:Lcom/android/server/power/OnePlusStandbyAnalyzer$MeasureType;

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "measure_type"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->k0:F

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    const-string v5, "average_current"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "charge_full"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "health"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "reason_str"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->d0:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    const-string v4, "standby_hr"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    iget v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->g0:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "suspend_ratio"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->h0:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "level_drop"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->i0:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "capacity_drop"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->t0:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    const-string v4, "deepsleep_ratio"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->w0:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "conn_chg"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static/range {v44 .. v44}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "wifi_per_hr"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static/range {v43 .. v43}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v6

    invoke-static {v7, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "mobile_per_hr"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->o0(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "top_pkt"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v4, "wl_ratio"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p0(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "top_wl"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v37 .. v37}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v4, "kwl_ratio"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->q:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->n0(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "top_kwl"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v4, "wr_ratio"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->y:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->q0(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "top_wr"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v4, "wua_ratio"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->r0(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "top_wua"

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "rpm"

    move-object/from16 v4, v29

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "rpm_master"

    move-object/from16 v4, v28

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "telephony"

    move-object/from16 v4, v30

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->R0:Z

    if-eqz v1, :cond_3c

    invoke-direct {v0, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Y0(Ljava/util/HashMap;)V

    :cond_3c
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v4, "appid"

    const-string v5, "NYNCG4I0TI"

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->b:Lnet/oneplus/odm/OpDeviceManagerInjector;

    if-eqz v4, :cond_3d

    iget-object v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e:Landroid/content/Context;

    const-string v6, "standby"

    invoke-virtual {v4, v5, v6, v2, v1}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    :cond_3d
    :goto_28
    iget-object v0, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis:Ljava/util/Map;

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->ear:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    if-eqz v3, :cond_3e

    move-object/from16 v14, v20

    goto :goto_29

    :cond_3e
    move-object v14, v12

    :goto_29
    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@@@@[Judge] in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long v1, v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    return v3
.end method

.method private V0()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m:Ljava/util/List;

    const-string v1, ""

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    const/4 v2, -0x1

    move v3, v0

    move-object v5, v1

    move v4, v2

    move v2, v3

    :goto_0
    iget-object v6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " nd-WL:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;

    invoke-virtual {v7}, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;->zta()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->R:Ljava/util/List;

    iget-object v7, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;

    iget-object v7, v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;->sis:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    move v2, v7

    :cond_0
    if-nez v0, :cond_1

    iget-object v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;

    iget v4, v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;->zta:I

    if-eqz v2, :cond_3

    iget-object v5, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;

    iget-object v5, v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;->tsu:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v6, 0x2

    if-le v0, v6, :cond_2

    goto :goto_2

    :cond_2
    iget-object v6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;

    iget v6, v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;->zta:I

    if-ne v6, v4, :cond_3

    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;

    iget-object v5, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;->tsu:Ljava/lang/String;

    move v3, v7

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    if-eqz v2, :cond_6

    if-eqz v3, :cond_5

    const-string p0, "Match audio-normal pattern I, may diagnosis as normal later"

    :goto_3
    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->S:Ljava/util/List;

    invoke-interface {p0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "Match audio-normal pattern II, may diagnosis as normal later"

    goto :goto_3

    :goto_4
    move-object v1, v5

    :cond_6
    return-object v1
.end method

.method private W(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C:Ljava/util/List;

    new-instance p1, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;

    iget-object v0, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    if-ne v0, p2, :cond_1

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;

    invoke-virtual {v0, p3, p4, p5, p6}, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->zta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic W0(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p1, p0}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p0

    return p0
.end method

.method private X(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->B:Ljava/util/List;

    new-instance p1, Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;

    invoke-direct {p1, p2, p3, p4}, Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->B:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;

    iget-object v0, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;

    if-ne v0, p2, :cond_1

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->B:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;

    invoke-virtual {v0, p3, p4}, Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;->rtg(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private Y(Ljava/io/PrintWriter;)V
    .locals 1

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "**** Standby Diagnosis Assist info (WL/KWL) ****"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->rtg:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private Y0(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MDM - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static Z0(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->R0:Z

    if-eqz v0, :cond_0

    const-string v0, "OPSA"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/android/server/power/OnePlusStandbyAnalyzer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->a0(Z)V

    return-void
.end method

.method private a0(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[opbugreportlite] mStandbyAbnReportingEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cno:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", needGenBatteryOutlier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cno:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string p1, "[opbugreportlite] report it !, in 20 sec later"

    invoke-static {p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cgv:Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;

    const/16 p1, 0x3ec

    const-wide/16 v0, 0x4e20

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;->cno(IJ)V

    :cond_0
    return-void
.end method

.method static synthetic b()J
    .locals 2

    sget-wide v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->E2:J

    return-wide v0
.end method

.method private b0(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " |T="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " |uid="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    const/4 v2, -0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " |sPower="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " |wLTMs="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p2, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " |pkg="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v3, p2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v2

    :cond_1
    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " |pkgWHD="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " |TPower="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->h:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " |pt="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->h:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v2

    div-double/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic bio(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Lcom/android/server/am/BatteryStatsService;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->d:Lcom/android/server/am/BatteryStatsService;

    return-object p0
.end method

.method static synthetic bud(Lcom/android/server/power/OnePlusStandbyAnalyzer;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->l0:F

    return p1
.end method

.method static synthetic bvj(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->E0:Z

    return p0
.end method

.method static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->h1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private c0(Ljava/io/PrintWriter;)V
    .locals 6

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string p0, "**** Standby Diagnosis Config info ****"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# Config ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaSimpleType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaSimpleType;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], ["

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m2:F

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/power/OnePlusStandbyAnalyzer;->v2:F

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaSimpleType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaSimpleType;

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->n2:F

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->w2:F

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaSimpleType;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaSimpleType;

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->o2:I

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->x2:I

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaSimpleType;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaSimpleType;

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p2:F

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->y2:F

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaSimpleType;->rtg:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaSimpleType;

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->q2:F

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->z2:F

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaSimpleType;->ssp:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaSimpleType;

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->u2:F

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaSimpleType;->cno:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaSimpleType;

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->E2:J

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaSimpleType;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaSimpleType;

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F2:F

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaSimpleType;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaSimpleType;

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->G2:J

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaSimpleType;->igw:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaSimpleType;

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->r2:F

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->A2:F

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaSimpleType;->wtn:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaSimpleType;

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->s2:F

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->B2:F

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaSimpleType;->gck:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaSimpleType;

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->t2:I

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C2:I

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaSimpleType;->dma:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaSimpleType;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->D2:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private c1()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta:I

    if-lt v0, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;

    iget v3, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;->zta:I

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->d1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;

    iget v3, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;->zta:I

    invoke-static {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$KnownUIDs;->zta(I)Lcom/android/server/power/OnePlusStandbyAnalyzer$KnownUIDs;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;

    invoke-virtual {v3, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;->tsu(Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I:Ljava/util/List;

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    iget v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta:I

    if-lt v0, v2, :cond_3

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;

    iget v3, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;->zta:I

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->d1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;

    iget v3, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;->zta:I

    invoke-static {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$KnownUIDs;->zta(I)Lcom/android/server/power/OnePlusStandbyAnalyzer$KnownUIDs;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;

    invoke-virtual {v3, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;->sis(Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L:Ljava/util/List;

    if-eqz v0, :cond_8

    :goto_4
    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    iget v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta:I

    if-lt v1, v0, :cond_6

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;

    iget v2, v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->sis:I

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->d1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;

    iget v2, v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->sis:I

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$KnownUIDs;->zta(I)Lcom/android/server/power/OnePlusStandbyAnalyzer$KnownUIDs;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;

    invoke-virtual {v2, v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->sis(Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    :goto_5
    return-void
.end method

.method static synthetic cgv(Lcom/android/server/power/OnePlusStandbyAnalyzer;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->j0:I

    return p1
.end method

.method static synthetic cjf(Lcom/android/server/power/OnePlusStandbyAnalyzer;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->u0:Ljava/util/List;

    return-object p1
.end method

.method static synthetic cno(Lcom/android/server/power/OnePlusStandbyAnalyzer;Landroid/telephony/ServiceState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->w1(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic d(J)J
    .locals 2

    sget-wide v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I2:J

    add-long/2addr v0, p0

    sput-wide v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I2:J

    return-wide v0
.end method

.method private d0(Ljava/io/PrintWriter;)V
    .locals 7

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "**** Standby Diagnosis info ****"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->values()[Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# Info ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], ["

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private d1(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    const-string p0, ":"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 p1, 0x0

    aget-object p1, p0, p1

    :cond_0
    return-object p1
.end method

.method static synthetic dma(Lcom/android/server/power/OnePlusStandbyAnalyzer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ssp:Z

    return p1
.end method

.method static synthetic e(J)J
    .locals 2

    sget-wide v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->H2:J

    add-long/2addr v0, p0

    sput-wide v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->H2:J

    return-wide v0
.end method

.method private e0(Ljava/io/PrintWriter;)V
    .locals 4

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "**** Standby Diagnosis KWL info ****"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->q:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->q:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->q:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;

    iget-object v2, v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->zta:Ljava/lang/String;

    const-string v3, "PowerManagerService.WakeLocks"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->q:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;

    invoke-virtual {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    :cond_0
    iget v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta:I

    if-lt v1, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method static e1(Ljava/lang/String;I)I
    .locals 5

    const-string v0, "OPSA"

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

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
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

    move-result v0
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v0, p1

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccurateCounter readIntFromFile path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", result:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", defaultValue:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    return v0

    :catchall_1
    move-exception p0

    move-object v2, v3

    :goto_3
    if-eqz v2, :cond_2

    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_4
    throw p0
.end method

.method static synthetic ear(Lcom/android/server/power/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->G(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Q0()V

    return-void
.end method

.method private f0(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;

    invoke-virtual {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;->ssp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic fto(Lcom/android/server/power/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->R(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic g(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ywr:Z

    return p0
.end method

.method private g0(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->you(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private g1(Lorg/json/JSONArray;)V
    .locals 8

    if-nez p1, :cond_0

    const-string p0, "OPSA"

    const-string p1, "[OnlineConfig] jsonArray is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_24

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_enable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->igw:Z

    invoke-virtual {p0, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->t1(Z)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] Has config for config_enable, updated to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->igw:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-static {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_ma_criteria"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zgw:Z

    if-nez v3, :cond_2

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iput v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ugm:F

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] Has config for config_ma_criteria, updated to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ugm:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    const-string v3, "[OnlineConfig] Has config for config_ma_criteria, but adb-configuration is set, so skip this way"

    goto :goto_1

    :cond_3
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_min_period"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->fto:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] Has config for config_min_period, updated to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->fto:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_enable_self_diagnosis"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->irq:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] Has config for config_enable_self_diagnosis, updated to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->irq:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_5
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_uwl_criteria"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-virtual {p0, v4, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->x1(Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;F)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] Has config for config_uwl_criteria, updated to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_6
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_uwl_criteria_minor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-virtual {p0, v4, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->x1(Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;F)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] Has config for config_uwl_criteria_minor, updated to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_7
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_kwl_criteria"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-virtual {p0, v4, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->x1(Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;F)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] Has config for config_kwl_criteria, updated to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_8
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_kwl_criteria_minor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-virtual {p0, v4, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->x1(Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;F)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] Has config for config_kwl_criteria_minor, updated to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_9
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_wr_criteria"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->rtg:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    int-to-float v5, v3

    invoke-virtual {p0, v4, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->x1(Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;F)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] Has config for config_wr_criteria, updated to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_a
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_wr_criteria_minor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->ssp:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    int-to-float v5, v3

    invoke-virtual {p0, v4, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->x1(Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;F)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] Has config for config_wr_criteria_minor, updated to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_b
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_sn_criteria"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->dma:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-virtual {p0, v4, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->x1(Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;F)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] Has config for config_sn_criteria, updated to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_c
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_sn_criteria_minor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->ywr:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-virtual {p0, v4, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->x1(Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;F)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] Has config for config_sn_criteria_minor, updated to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_d
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_unacc_criteria"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->cno:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-virtual {p0, v4, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->x1(Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;F)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] Has config for config_unacc_criteria, updated to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_e
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_unacc_criteria_minor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-virtual {p0, v4, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->x1(Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;F)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] Has config for config_unacc_criteria_minor, updated to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_f
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_minor_criteria"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-virtual {p0, v4, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->x1(Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;F)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] Has config for config_minor_criteria, updated to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_10
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_time_slm_sec"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->igw:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-virtual {p0, v4, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->x1(Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;F)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] Has config for config_time_slm_sec, updated to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_11
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_sleep_acc_dur_criteria"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->wtn:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-virtual {p0, v4, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->x1(Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;F)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] Has config for config_sleep_acc_dur_criteria, updated to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_12
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_sleepcount_criteria"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->gck:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-virtual {p0, v4, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->x1(Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;F)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] Has config for config_sleepcount_criteria, updated to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_13
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_download_wifi_criteria"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->qbh:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-virtual {p0, v4, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->x1(Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;F)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] Has config for config_download_criteria, updated to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_14
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_download_wifi_criteria_minor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->oif:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-virtual {p0, v4, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->x1(Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;F)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] Has config for config_download_wifi_criteria_minor, updated to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_15
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_download_mobile_criteria"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->bvj:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-virtual {p0, v4, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->x1(Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;F)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] Has config for config_download_mobile_criteria, updated to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_16
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_download_mobile_criteria_minor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->ibl:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-virtual {p0, v4, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->x1(Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;F)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] Has config for config_download_mobile_criteria_minor, updated to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_17
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_conn_chg_event"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->gwm:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    int-to-float v5, v3

    invoke-virtual {p0, v4, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->x1(Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;F)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] Has config for config_conn_chg_event, updated to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_18
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_conn_chg_event_with_ds"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->ugm:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    int-to-float v5, v3

    invoke-virtual {p0, v4, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->x1(Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;F)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] Has config for config_conn_chg_event_with_ds, updated to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_19
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pkg_install_count"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->vdb:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    int-to-float v5, v3

    invoke-virtual {p0, v4, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->x1(Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;F)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] Has config for pkg_install_count, updated to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_1a
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "aod_impact_ma"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->zgw:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-virtual {p0, v4, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->x1(Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;F)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] Has config for aod_impact_ma, updated to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_1b
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "measure_type"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$MeasureType;->zta(Ljava/lang/String;)Lcom/android/server/power/OnePlusStandbyAnalyzer$MeasureType;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->oif:Lcom/android/server/power/OnePlusStandbyAnalyzer$MeasureType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] Has config for measure_type, updated to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->oif:Lcom/android/server/power/OnePlusStandbyAnalyzer$MeasureType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_1c
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "collect_count"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->obl:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    int-to-float v5, v3

    invoke-virtual {p0, v4, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->x1(Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;F)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] Has config for collect_count, updated to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    :cond_1d
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_audio_pkg_list"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->S:Ljava/util/List;

    monitor-enter v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v5, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->S:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    move v5, v0

    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_1e

    iget-object v6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->S:Ljava/util/List;

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] Has config for config_audio_pkg_list, updated to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->S:Ljava/util/List;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    monitor-exit v4

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :cond_1f
    const-string v3, "[OnlineConfig] No config for updating, no updated"

    goto/16 :goto_1

    :goto_3
    const-string v3, "ro.build.beta"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_21

    const-string v3, "ro.build.alpha"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_20

    goto :goto_4

    :cond_20
    move v4, v0

    :cond_21
    :goto_4
    if-eqz v4, :cond_23

    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_beta_config_enable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] Has config for config_beta_enable, begin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->igw:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->igw:Z

    invoke-virtual {p0, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->t1(Z)V

    :cond_22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] Has config for config_beta_enable, end to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->igw:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig], error message:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig], error message:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    :goto_5
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPSA"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    return-void
.end method

.method static synthetic gck(Lcom/android/server/power/OnePlusStandbyAnalyzer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->T:Z

    return p1
.end method

.method static synthetic gwm(Lcom/android/server/power/OnePlusStandbyAnalyzer;)I
    .locals 0

    iget p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->bud:I

    return p0
.end method

.method static synthetic h(Lcom/android/server/power/OnePlusStandbyAnalyzer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ywr:Z

    return p1
.end method

.method private h0(Ljava/io/PrintWriter;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "**** Standby Diagnosis pkt info ****"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta:I

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;

    invoke-virtual {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private static h1(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->G1:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x5

    invoke-static {p0, v0, v1}, Landroid/os/OpBatteryStatsInjector;->getScrubPIIStr(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->G1:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method static synthetic hmo(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->y()V

    return-void
.end method

.method static synthetic i(Lcom/android/server/power/OnePlusStandbyAnalyzer;)F
    .locals 0

    iget p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ugm:F

    return p0
.end method

.method private i0(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 p1, 0x0

    const-string v0, ";"

    if-eqz p2, :cond_1

    move v1, p1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_3

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-eq p1, p2, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic ibl(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0:Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

    return-object p0
.end method

.method static synthetic igw(Lcom/android/server/power/OnePlusStandbyAnalyzer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->q1(I)V

    return-void
.end method

.method static synthetic ire(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->W:Z

    return p0
.end method

.method static synthetic irq(Lcom/android/server/power/OnePlusStandbyAnalyzer;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->w0:I

    return p1
.end method

.method static synthetic ivd(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->U0()Z

    move-result p0

    return p0
.end method

.method static synthetic j(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->obl:Z

    return p0
.end method

.method private j0(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;

    invoke-virtual {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;

    invoke-virtual {p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method static synthetic k(Lcom/android/server/power/OnePlusStandbyAnalyzer;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->oxb:J

    return-wide v0
.end method

.method private k0(Ljava/io/PrintWriter;)V
    .locals 1

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "**** Standby Diagnosis Assist RPM info ****"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->tsu:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic kth(Lcom/android/server/power/OnePlusStandbyAnalyzer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->kth:Z

    return p1
.end method

.method private l()I
    .locals 4

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0:Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

    invoke-virtual {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;->rtg()V

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0:Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

    invoke-virtual {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;->you()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->N:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[AOD] mAODOfEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->N:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->bud:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string v0, "[AOD] Keep starting"

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0:Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

    invoke-virtual {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;->tsu()V

    :cond_0
    iget-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->N:J

    iget-wide v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->M:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->r0:J

    long-to-float v0, v0

    const v1, 0x4a5bba00    # 3600000.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vdb:F

    mul-float/2addr v1, v0

    new-instance v0, Ljava/math/BigDecimal;

    float-to-double v1, v1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "###### mStandbyAODMs : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->r0:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "  ms, mAODImpactmA: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vdb:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " mA, aodImpactmah: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " mAh"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    float-to-int p0, v0

    return p0
.end method

.method private l0(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;

    invoke-virtual {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic les(Lcom/android/server/power/OnePlusStandbyAnalyzer;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e0:J

    return-wide p1
.end method

.method static synthetic lqr(Lcom/android/server/power/OnePlusStandbyAnalyzer;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->h0:I

    return p1
.end method

.method private m()V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->s:J

    iget-wide v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->r:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->c0:J

    iget-wide v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->u:J

    iget-wide v6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->t:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->f0:J

    cmp-long v4, v4, v2

    if-lez v4, :cond_0

    iput-wide v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->f0:J

    :cond_0
    iget-wide v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->A:J

    iget-wide v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->z:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->q0:J

    iget-wide v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->P:J

    iget-wide v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->O:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->s0:J

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->n:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->o:Ljava/util/Map;

    invoke-direct {p0, v2, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->n(Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->q:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->v:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->w:Ljava/util/Map;

    invoke-direct {p0, v2, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p(Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->y:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->i:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->j:Ljava/util/List;

    invoke-direct {p0, v2, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->o(Ljava/util/List;Ljava/util/List;)V

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->k:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->l:Ljava/util/Map;

    invoke-direct {p0, v2, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->q(Ljava/util/Map;Ljava/util/Map;)V

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->K:Ljava/util/Map;

    invoke-virtual {p0, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->A(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->H:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->J:Ljava/util/Map;

    invoke-direct {p0, v2, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->r(Ljava/util/Map;Ljava/util/Map;)V

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->E:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F:Ljava/util/Map;

    invoke-direct {p0, v2, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->s(Ljava/util/Map;Ljava/util/Map;)V

    iget-wide v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->f0:J

    iget-wide v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->n0:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->o0:J

    sget-boolean v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->T0:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->P(Ljava/util/List;)V

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->q:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->E(Ljava/util/List;)V

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->y:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Q(Ljava/util/List;)V

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F(Ljava/util/List;)V

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->B:Ljava/util/List;

    const-string v3, "Diff-RPM"

    invoke-direct {p0, v3, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I(Ljava/lang/String;Ljava/util/List;)V

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C:Ljava/util/List;

    const-string v3, "Diff-RPMMaster"

    invoke-direct {p0, v3, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->H(Ljava/lang/String;Ljava/util/List;)V

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->G:Ljava/util/List;

    const/4 v3, 0x0

    const-string v4, "Diff-WiFiWakeUp"

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->S(Ljava/lang/String;Ljava/util/List;Z)V

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@@@[calculateDiff] in "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    return-void
.end method

.method private m0(Ljava/io/PrintWriter;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "**** Telephony Abnormal Counting Info ****"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->D:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->D:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->D:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;

    invoke-virtual {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;->you()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private m1()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->H0:Landroid/content/IntentFilter;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I0:Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->H0:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private n(Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->n0:J

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_3

    if-eqz v1, :cond_3

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v8, v14, v8

    move-wide v12, v8

    goto :goto_1

    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-wide v12, v14

    :goto_1
    new-instance v10, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-object v8, v10

    move-object v9, v7

    move-object v6, v10

    move-wide v10, v12

    move-wide v2, v12

    move-wide/from16 v12, v16

    invoke-direct/range {v8 .. v15}, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;-><init>(Ljava/lang/String;JJJ)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v6, "PowerManagerService.WakeLocks"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iput-wide v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->n0:J

    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->N0:Ljava/util/Comparator;

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_3
    return-object v4
.end method

.method private n0(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;

    iget-object v3, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->zta:Ljava/lang/String;

    const-string v4, "PowerManagerService.WakeLocks"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;

    iget-wide v3, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->tsu:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;

    invoke-virtual {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->zta()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    :cond_0
    iget v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta:I

    if-lt v2, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private n1()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->A0:Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->B0:Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string p0, "Start listen SIM Change events..."

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    return-void
.end method

.method private o(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->z(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->y0:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->x0:Lcom/android/internal/os/BatterySipper;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->z0:D

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "## sippers size[start, end]=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->y0:Ljava/util/List;

    if-eqz p2, :cond_5

    const/4 p2, 0x0

    move v0, p2

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->y0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->y0:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatterySipper;

    iget-object v3, v2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v4, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v3, v4, :cond_0

    iput-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->x0:Lcom/android/internal/os/BatterySipper;

    :cond_0
    move v3, p2

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatterySipper;

    invoke-direct {p0, v2, v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->J0(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/BatterySipper;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0, v4, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p1(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/BatterySipper;)V

    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-nez v1, :cond_3

    const-string v3, "No-Match"

    invoke-direct {p0, v3, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->b0(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    :cond_3
    iget-wide v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->z0:D

    iget-wide v5, v2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    add-double/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->z0:D

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->y0:Ljava/util/List;

    new-instance p2, Lcom/android/server/power/OnePlusStandbyAnalyzer$tsu;

    invoke-direct {p2, p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$tsu;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_3

    :cond_5
    const-string p0, "## fetal error, mStandbySipperList == null"

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    :goto_3
    return-void

    :cond_6
    const-string p0, "## one of sippers is null, can\'t calculate just return."

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    return-void
.end method

.method private o0(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta:I

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;

    iget-wide v2, v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->kth:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;

    invoke-virtual {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->zta()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private o1()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->D:Ljava/util/List;

    invoke-static {}, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;->values()[Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->D:Ljava/util/List;

    new-instance v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;

    invoke-direct {v5, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->f:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    const-string v0, "Start listen Telephony Anomaly..."

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->f:Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->J0:Landroid/telephony/PhoneStateListener;

    const v1, 0x10000001

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    return-void
.end method

.method static synthetic obl(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->u0:Ljava/util/List;

    return-object p0
.end method

.method static synthetic oif(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0()Z

    move-result p0

    return p0
.end method

.method static synthetic oxb(Lcom/android/server/power/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method private p(Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$cgv;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p0:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v1, v5

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_1
    new-instance v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$cgv;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v5, v2, v1, v4, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$cgv;-><init>(Ljava/lang/String;III)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p0:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p0:J

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->O0:Ljava/util/Comparator;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-object v0
.end method

.method private p0(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta:I

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;

    iget-wide v2, v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;->cno:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;

    invoke-virtual {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;->you()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private p1(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/BatterySipper;)V
    .locals 8

    iget-wide v0, p2, Lcom/android/internal/os/BatterySipper;->flashlightTimeMs:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->flashlightTimeMs:J

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const-string v2, "]"

    const-string v3, ", "

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "##[Abn][flashlightTimeMs] ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/android/internal/os/BatterySipper;->flashlightTimeMs:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->flashlightTimeMs:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->flashlightTimeMs:J

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->flashlightTimeMs:J

    sub-long/2addr v4, v6

    iput-wide v4, p2, Lcom/android/internal/os/BatterySipper;->flashlightTimeMs:J

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "##[Abn][wakeLockTimeMs] ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    move v0, v1

    :cond_1
    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    sub-long/2addr v4, v6

    iput-wide v4, p2, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "##[Abn][usagePowerMah] ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    move v0, v1

    :cond_2
    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    sub-double/2addr v4, v6

    iput-wide v4, p2, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "##[Abn][cpuPowerMah] ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    move v0, v1

    :cond_3
    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    sub-double/2addr v4, v6

    iput-wide v4, p2, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "##[Abn][wakeLockPowerMah] ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    move v0, v1

    :cond_4
    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    sub-double/2addr v4, v6

    iput-wide v4, p2, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "##[Abn][mobileRadioPowerMah] ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    move v0, v1

    :cond_5
    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    sub-double/2addr v4, v6

    iput-wide v4, p2, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "##[Abn][wifiPowerMah] ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    move v0, v1

    :cond_6
    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    sub-double/2addr v4, v6

    iput-wide v4, p2, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "##[Abn][bluetoothPowerMah] ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    move v0, v1

    :cond_7
    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    sub-double/2addr v4, v6

    iput-wide v4, p2, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "##[Abn][gpsPowerMah] ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    move v0, v1

    :cond_8
    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    sub-double/2addr v4, v6

    iput-wide v4, p2, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "##[Abn][sensorPowerMah] ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    move v0, v1

    :cond_9
    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    sub-double/2addr v4, v6

    iput-wide v4, p2, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "##[Abn][cameraPowerMah] ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    move v0, v1

    :cond_a
    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    sub-double/2addr v4, v6

    iput-wide v4, p2, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "##[Abn][flashlightPowerMah] ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    move v0, v1

    :cond_b
    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    sub-double/2addr v4, v6

    iput-wide v4, p2, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "##[Abn][totalPowerMah] ["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    goto :goto_1

    :cond_c
    move v1, v0

    :goto_1
    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-wide v4, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    sub-double/2addr v2, v4

    iput-wide v2, p2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    if-eqz v1, :cond_d

    const-string v0, "Abn-Start"

    invoke-direct {p0, v0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->b0(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    const-string p1, "Abn-End"

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->b0(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    :cond_d
    return-void
.end method

.method private q(Ljava/util/Map;Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, v8, v2

    move-wide v4, v2

    goto :goto_1

    :cond_0
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-wide v4, v8

    :goto_1
    iget-object v10, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m:Ljava/util/List;

    new-instance v11, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object v2, v11

    invoke-direct/range {v2 .. v9}, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;-><init>(Ljava/lang/String;JJJ)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->P0:Ljava/util/Comparator;

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-void
.end method

.method private q0(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$cgv;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta:I

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$cgv;

    iget v2, v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$cgv;->you:I

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$cgv;

    invoke-virtual {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$cgv;->zta()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private q1(I)V
    .locals 2

    iget-boolean p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->W:Z

    if-eqz p0, :cond_0

    :try_start_0
    const-string p0, "OPSA"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "qmi_master_stats_service start, sleepMs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "ctl.start"

    const-string v0, "qmi_master_stats_service"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    int-to-long p0, p1

    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "**** InterruptedException, "

    goto :goto_0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "**** RuntimeException, "

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void
.end method

.method static synthetic qbh(Lcom/android/server/power/OnePlusStandbyAnalyzer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->U:Z

    return p1
.end method

.method static synthetic qeg(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m()V

    return-void
.end method

.method private r(Ljava/util/Map;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m0:I

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;

    iget v3, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;->sis:I

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;

    if-eqz v1, :cond_0

    iget v1, v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;->sis:I

    sub-int v4, v3, v1

    goto :goto_1

    :cond_0
    move v1, v0

    move v4, v3

    :goto_1
    iget-object v5, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I:Ljava/util/List;

    new-instance v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v6, v2, v4, v1, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;-><init>(IIII)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m0:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m0:I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->K0:Ljava/util/Comparator;

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-void
.end method

.method private r0(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta:I

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;

    iget v2, v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;->sis:I

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;

    invoke-virtual {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;->zta()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic rtg(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->D0:Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

    return-object p0
.end method

.method private s(Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$WifiWakeUpType;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$WifiWakeUpType;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->G:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$WifiWakeUpType;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v3, v2, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    move v3, v2

    :goto_1
    iget-object v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->G:Ljava/util/List;

    new-instance v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$vju;

    invoke-direct {v5, v1, v3, v0, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$vju;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer$WifiWakeUpType;III)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->G:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->M0:Ljava/util/Comparator;

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-void
.end method

.method static synthetic sis(Lcom/android/server/power/OnePlusStandbyAnalyzer;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->fto:J

    return-wide v0
.end method

.method static synthetic ssp(Lcom/android/server/power/OnePlusStandbyAnalyzer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C0:Z

    return p1
.end method

.method private t0(Ljava/io/PrintWriter;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "**** Standby Diagnosis WL info ****"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta:I

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;

    invoke-virtual {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;->sis()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method static synthetic tsu(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cgv:Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;

    return-object p0
.end method

.method private u0(Ljava/io/PrintWriter;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "**** Standby Diagnosis WR info ****"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->y:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta:I

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->y:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$cgv;

    invoke-virtual {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$cgv;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method static synthetic ugm(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->G0:Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

    return-object p0
.end method

.method private v(IJ)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p2, v0

    if-lez p0, :cond_0

    sget p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->t2:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C2:I

    :goto_0
    if-gt p1, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method static synthetic vdb(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->les:Z

    return p0
.end method

.method static synthetic vdw(Lcom/android/server/power/OnePlusStandbyAnalyzer;)I
    .locals 2

    iget v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->w0:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->w0:I

    return v0
.end method

.method static synthetic veq(Lcom/android/server/power/OnePlusStandbyAnalyzer;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->i0:I

    return p1
.end method

.method static synthetic vju(Lcom/android/server/power/OnePlusStandbyAnalyzer;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->k0:F

    return p1
.end method

.method private w(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    move v0, p0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;

    invoke-virtual {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;->sis()Z

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;

    invoke-virtual {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;->tsu()Z

    move-result v1

    if-ne v1, v2, :cond_0

    move p0, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "list == null"

    invoke-static {p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return p0
.end method

.method private w0(Ljava/io/PrintWriter;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "**** Standby Diagnosis Wifi Wakeup info ****"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->G:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->G:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta:I

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->G:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$vju;

    invoke-virtual {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$vju;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private w1(Landroid/telephony/ServiceState;)V
    .locals 3

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const-string p1, "[ServiceState] STATE_UNKNOWN"

    invoke-static {p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C0:Z

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_0
    const-string p1, "[ServiceState] STATE_POWER_OFF"

    invoke-static {p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C0:Z

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_1
    const-string p1, "[ServiceState] STATE_EMERGENCY_ONLY"

    invoke-static {p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C0:Z

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_2
    const-string p1, "[ServiceState] STATE_OUT_OF_SERVICE"

    invoke-static {p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C0:Z

    if-eqz p1, :cond_4

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->E0:Z

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->D0:Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

    invoke-virtual {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;->tsu()V

    goto :goto_2

    :cond_3
    const-string p1, "[ServiceState] STATE_IN_SERVICE"

    invoke-static {p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C0:Z

    if-eqz p1, :cond_4

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->E0:Z

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->D0:Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

    invoke-virtual {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;->rtg()V

    :cond_4
    :goto_2
    return-void
.end method

.method static synthetic wtn(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ssp:Z

    return p0
.end method

.method private x(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    move v0, p0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;

    invoke-virtual {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;->sis()Z

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;

    invoke-virtual {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;->zta()Z

    move-result v1

    if-ne v1, v2, :cond_0

    move p0, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "list == null"

    invoke-static {p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return p0
.end method

.method private x0(Ljava/util/List;)Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;",
            ">;)",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Q:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;

    iget-object v4, v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->zta:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;

    :cond_0
    iget v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta:I

    if-ge v2, v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " st-KWL:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;

    invoke-virtual {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private y()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->D:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->D:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->D:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;

    invoke-virtual {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;->zta()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private y0(Ljava/util/List;)Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;",
            ">;)",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic you(Lcom/android/server/power/OnePlusStandbyAnalyzer;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->g1(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic ywr(Lcom/android/server/power/OnePlusStandbyAnalyzer;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->v0:I

    return p1
.end method

.method private z(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatterySipper;

    new-instance v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$ibl;

    invoke-direct {v1, v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$ibl;-><init>(Lcom/android/internal/os/BatterySipper;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p0, "## fetal error, oriList == null"

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method

.method private z0(Ljava/util/List;)Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;",
            ">;)",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;"
        }
    .end annotation

    if-eqz p1, :cond_2

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$dma;

    invoke-direct {v0, p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$dma;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_2

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;

    iget-object v0, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;->rtg:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    if-eq v0, v1, :cond_1

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;

    iget-object v0, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;->ssp:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    return-object p0
.end method

.method static synthetic zgw(Lcom/android/server/power/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->B(Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public A(Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0:Ljava/util/Comparator;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public C0(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;IJJJJ)V
    .locals 14

    move-object v0, p0

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    move-object v3, p1

    if-ne v3, v1, :cond_0

    iget-object v0, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->K:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v13, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;

    move-object v2, v13

    move-object v3, p1

    move/from16 v4, p2

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    invoke-direct/range {v2 .. v12}, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;IJJJJ)V

    :goto_0
    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->K:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;

    if-eqz v2, :cond_1

    move-object v3, p1

    move/from16 v4, p2

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->tsu(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;IJJJJ)V

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->K:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v13, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;

    move-object v2, v13

    move-object v3, p1

    move/from16 v4, p2

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    invoke-direct/range {v2 .. v12}, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;IJJJJ)V

    goto :goto_0

    :goto_1
    return-void
.end method

.method public D0(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    sget-object v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    if-ne v2, v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->B:Ljava/util/List;

    :cond_0
    const/4 v3, 0x0

    const/16 v4, 0x400

    new-array v4, v4, [B

    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    move-object/from16 v6, p2

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    :goto_0
    invoke-virtual {v5, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v8, -0x1

    if-eq v3, v8, :cond_c

    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v4, v9, v3}, Ljava/lang/String;-><init>([BII)V

    const/4 v3, 0x1

    new-array v10, v3, [I

    const/16 v11, 0x14d

    aput v11, v10, v9

    invoke-static {v10}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v10
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-string v12, "]"

    const-string v13, "#### ["

    const-string v14, "OPSA"

    const-string v15, ", "

    if-eqz v10, :cond_3

    :try_start_2
    iget-object v9, v1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->a0:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v11, v16

    check-cast v11, Ljava/util/regex/Pattern;

    invoke-virtual {v11, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v16

    if-eqz v16, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v4

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " Matched...."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x4

    invoke-virtual {v11, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;

    invoke-direct {v1, v2, v3, v4, v11}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->X(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "] rpm_stats ["

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    move-object/from16 v17, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " CAN NOT Matched...."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    move-object/from16 v4, v17

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_2
    move-object/from16 v17, v4

    move-object/from16 v18, v5

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v3, v5

    goto/16 :goto_12

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v3, v5

    goto/16 :goto_e

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v3, v5

    goto/16 :goto_f

    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v3, v5

    goto/16 :goto_10

    :cond_3
    move-object/from16 v17, v4

    :try_start_3
    iget-boolean v3, v1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->V:Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v3, :cond_4

    :try_start_4
    iget-object v3, v1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Y:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :cond_4
    :try_start_5
    iget-object v3, v1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->X:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    :goto_3
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "RPM Matched...."

    invoke-static {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    const/4 v9, 0x4

    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    sget-object v9, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    if-ne v2, v9, :cond_7

    iget-object v4, v1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->B:Ljava/util/List;

    new-instance v9, Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v18, v5

    :try_start_6
    iget-boolean v5, v1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->V:Z

    if-eqz v5, :cond_5

    sget-object v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;

    goto :goto_4

    :cond_5
    sget-object v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;

    :goto_4
    invoke-direct {v9, v5, v8, v10}, Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, v1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->B:Ljava/util/List;

    new-instance v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;

    iget-boolean v9, v1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->V:Z

    if-eqz v9, :cond_6

    sget-object v9, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;

    goto :goto_5

    :cond_6
    sget-object v9, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;

    :goto_5
    invoke-direct {v5, v9, v11, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_7
    move-object/from16 v18, v5

    sget-object v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    if-ne v2, v5, :cond_8

    iget-object v5, v1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->B:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, v4, :cond_8

    iget-object v4, v1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->B:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;

    invoke-virtual {v4, v8, v10}, Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;->rtg(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->B:Ljava/util/List;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;

    invoke-virtual {v4, v11, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;->rtg(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_6
    iget-boolean v4, v1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->V:Z

    if-eqz v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] rpm_stats [aosd, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "], [cxsd, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_7
    invoke-static {v14, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] rpm_stats [vlow, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "], [vmin, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_a
    move-object/from16 v18, v5

    const-string v3, "RPM Can\'t matched...."

    invoke-static {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    :goto_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v6

    const-wide/16 v8, 0x1388

    cmp-long v3, v3, v8

    if-ltz v3, :cond_b

    const-string v1, "**** Exceed read timeout, force exit ***"

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_9

    :cond_b
    move-object/from16 v4, v17

    move-object/from16 v5, v18

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    goto :goto_a

    :catch_3
    move-exception v0

    goto :goto_b

    :catch_4
    move-exception v0

    goto :goto_c

    :catch_5
    move-exception v0

    goto :goto_d

    :cond_c
    move-object/from16 v18, v5

    :goto_9
    :try_start_7
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_11

    :catch_6
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_11

    :catchall_2
    move-exception v0

    move-object/from16 v18, v5

    :goto_a
    move-object v1, v0

    move-object/from16 v3, v18

    goto/16 :goto_12

    :catch_7
    move-exception v0

    move-object/from16 v18, v5

    :goto_b
    move-object v1, v0

    move-object/from16 v3, v18

    goto :goto_e

    :catch_8
    move-exception v0

    move-object/from16 v18, v5

    :goto_c
    move-object v1, v0

    move-object/from16 v3, v18

    goto :goto_f

    :catch_9
    move-exception v0

    move-object/from16 v18, v5

    :goto_d
    move-object v1, v0

    move-object/from16 v3, v18

    goto :goto_10

    :catchall_3
    move-exception v0

    move-object v1, v0

    goto :goto_12

    :catch_a
    move-exception v0

    move-object v1, v0

    :goto_e
    :try_start_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "**** Failed, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v3, :cond_d

    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_11

    :catch_b
    move-exception v0

    move-object v1, v0

    :goto_f
    :try_start_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "**** Failed to read, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eqz v3, :cond_d

    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_11

    :catch_c
    move-exception v0

    move-object v1, v0

    :goto_10
    :try_start_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "**** File not found, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    if-eqz v3, :cond_d

    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    :cond_d
    :goto_11
    return-void

    :goto_12
    if-eqz v3, :cond_e

    :try_start_e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d

    goto :goto_13

    :catch_d
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_e
    :goto_13
    throw v1
.end method

.method public E0(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 27

    move-object/from16 v8, p0

    move-object/from16 v0, p3

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    move-object/from16 v9, p1

    if-ne v9, v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v8, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C:Ljava/util/List;

    :cond_0
    const/4 v1, 0x0

    const/16 v10, 0x400

    iget-boolean v2, v8, Lcom/android/server/power/OnePlusStandbyAnalyzer;->W:Z

    const-string v12, " Matched...."

    const-string v13, " CAN NOT Matched...."

    const-string v14, "**** Exceed read timeout, force exit ***"

    const/4 v7, 0x0

    const/4 v6, -0x1

    const-string v5, "**** Failed, "

    const-string v4, "**** Failed to read, "

    const-string v3, "**** File not found, "

    const/4 v11, 0x3

    const/4 v15, 0x2

    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    :try_start_0
    new-array v2, v10, [B

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    :goto_0
    invoke-virtual {v10, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    if-eq v0, v6, :cond_3

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2, v7, v0}, Ljava/lang/String;-><init>([BII)V

    iget-object v0, v8, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z:Ljava/util/Map;

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v22

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v23

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    sget-object v24, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v1, p0

    move-object/from16 v25, v2

    move-object/from16 v2, p1

    move-object v11, v3

    move-object/from16 v3, v24

    move-object v15, v4

    move-object v4, v6

    move-object v6, v5

    move-object/from16 v5, v22

    move-object v9, v6

    move-object/from16 v6, v23

    move-object/from16 v22, v12

    move v12, v7

    move-object v7, v0

    :try_start_2
    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->W(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object/from16 v25, v2

    move-object v11, v3

    move-object v15, v4

    move-object v9, v5

    move-object/from16 v22, v12

    move v12, v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v0, v0, v19

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    invoke-static {v14}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_2
    move-object v5, v9

    move-object v3, v11

    move v7, v12

    move-object v4, v15

    move-object/from16 v12, v22

    move-object/from16 v2, v25

    const/4 v6, -0x1

    const/4 v11, 0x3

    const/4 v15, 0x2

    move-object/from16 v9, p1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_6

    :cond_3
    move-object v11, v3

    move-object v15, v4

    move-object v9, v5

    move-object/from16 v22, v12

    move v12, v7

    :goto_2
    :try_start_3
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    move-object v1, v10

    goto/16 :goto_d

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v1, v10

    goto/16 :goto_b

    :catch_4
    move-exception v0

    move-object v11, v3

    move-object v15, v4

    move-object v9, v5

    move-object/from16 v22, v12

    move v12, v7

    :goto_4
    move-object v1, v10

    goto :goto_7

    :catch_5
    move-exception v0

    move-object v11, v3

    move-object v15, v4

    move-object v9, v5

    move-object/from16 v22, v12

    move v12, v7

    :goto_5
    move-object v1, v10

    goto :goto_9

    :catch_6
    move-exception v0

    move-object v11, v3

    move-object v15, v4

    move-object v9, v5

    move-object/from16 v22, v12

    move v12, v7

    :goto_6
    move-object v1, v10

    goto/16 :goto_a

    :catchall_1
    move-exception v0

    move-object v2, v0

    goto/16 :goto_b

    :catch_7
    move-exception v0

    move-object v11, v3

    move-object v15, v4

    move-object v9, v5

    move-object/from16 v22, v12

    move v12, v7

    :goto_7
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_6

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    goto/16 :goto_d

    :catch_8
    move-exception v0

    move-object v2, v0

    :goto_8
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_d

    :catch_9
    move-exception v0

    move-object v11, v3

    move-object v15, v4

    move-object v9, v5

    move-object/from16 v22, v12

    move v12, v7

    :goto_9
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_6

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a

    goto :goto_d

    :catch_a
    move-exception v0

    move-object v2, v0

    goto :goto_8

    :catch_b
    move-exception v0

    move-object v11, v3

    move-object v15, v4

    move-object v9, v5

    move-object/from16 v22, v12

    move v12, v7

    :goto_a
    :try_start_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v1, :cond_6

    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_c

    goto :goto_d

    :catch_c
    move-exception v0

    move-object v2, v0

    goto :goto_8

    :goto_b
    if-eqz v1, :cond_4

    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_d

    goto :goto_c

    :catch_d
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_c
    throw v2

    :cond_5
    move-object v11, v3

    move-object v15, v4

    move-object v9, v5

    move-object/from16 v22, v12

    move v12, v7

    :cond_6
    :goto_d
    const/16 v2, 0x400

    :try_start_b
    new-array v0, v2, [B

    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v2, p2

    invoke-direct {v10, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_14
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_13
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_12
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    :goto_e
    invoke-virtual {v10, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_b

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0, v12, v1}, Ljava/lang/String;-><init>([BII)V

    iget-object v1, v8, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_f
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/regex/Pattern;

    invoke-virtual {v2, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v22

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-boolean v3, v8, Lcom/android/server/power/OnePlusStandbyAnalyzer;->V:Z

    if-eqz v3, :cond_7

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v21

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v22

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v25, v2

    move-object/from16 v16, v4

    move-object/from16 v23, v22

    const/4 v4, 0x4

    const/4 v12, 0x3

    move-object/from16 v22, v21

    goto :goto_10

    :cond_7
    const/4 v3, 0x5

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v16

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v12, 0x2

    invoke-virtual {v2, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v22

    const/4 v12, 0x3

    invoke-virtual {v2, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v25, v2

    move-object/from16 v23, v22

    move-object/from16 v22, v3

    :goto_10
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/16 v17, 0x5

    move/from16 v26, v4

    move-object/from16 v4, v16

    move-object/from16 v16, v5

    move-object/from16 v5, v22

    move-object/from16 v22, v6

    move-object/from16 v6, v23

    move/from16 v23, v7

    move-object/from16 v7, v25

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->W(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_8
    move/from16 v23, v7

    move-object/from16 v16, v22

    const/4 v12, 0x3

    const/16 v17, 0x5

    const/16 v26, 0x4

    move-object/from16 v22, v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    :goto_11
    move-object/from16 v6, v22

    move/from16 v7, v23

    const/4 v12, 0x0

    move-object/from16 v22, v16

    goto/16 :goto_f

    :cond_9
    move/from16 v23, v7

    move-object/from16 v16, v22

    const/4 v12, 0x3

    const/16 v17, 0x5

    const/16 v26, 0x4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long v1, v1, v18

    const-wide/16 v3, 0x1388

    cmp-long v1, v1, v3

    if-ltz v1, :cond_a

    invoke-static {v14}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_11
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_10
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_f
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_12

    :cond_a
    move-object/from16 v22, v16

    const/4 v12, 0x0

    goto/16 :goto_e

    :cond_b
    :goto_12
    :try_start_d
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_e

    goto/16 :goto_16

    :catch_e
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_16

    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object v1, v10

    goto :goto_17

    :catch_f
    move-exception v0

    move-object v1, v10

    goto :goto_13

    :catch_10
    move-exception v0

    move-object v1, v10

    goto :goto_14

    :catch_11
    move-exception v0

    move-object v1, v10

    goto :goto_15

    :catchall_3
    move-exception v0

    move-object v2, v0

    goto :goto_17

    :catch_12
    move-exception v0

    :goto_13
    :try_start_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    if-eqz v1, :cond_c

    :try_start_f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_e

    goto :goto_16

    :catch_13
    move-exception v0

    :goto_14
    :try_start_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    if-eqz v1, :cond_c

    :try_start_11
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_e

    goto :goto_16

    :catch_14
    move-exception v0

    :goto_15
    :try_start_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    if-eqz v1, :cond_c

    :try_start_13
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_e

    :cond_c
    :goto_16
    return-void

    :goto_17
    if-eqz v1, :cond_d

    :try_start_14
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_15

    goto :goto_18

    :catch_15
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_d
    :goto_18
    throw v2
.end method

.method public G0()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->r:J

    return-wide v0
.end method

.method public H0(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$WifiWakeUpType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    :cond_0
    invoke-virtual {v3, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result p2

    const/4 v2, -0x1

    if-eq p2, v2, :cond_2

    new-instance v2, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v2, v1, v6, p2}, Ljava/lang/String;-><init>([BII)V

    const-string p2, "OPSA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] WiFi WakeUp content=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->b0:Ljava/util/regex/Pattern;

    invoke-virtual {p2, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Matched...."

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$WifiWakeUpType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$WifiWakeUpType;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$WifiWakeUpType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$WifiWakeUpType;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x3

    invoke-virtual {p2, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$WifiWakeUpType;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$WifiWakeUpType;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x4

    invoke-virtual {p2, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$WifiWakeUpType;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer$WifiWakeUpType;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x5

    invoke-virtual {p2, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$WifiWakeUpType;->rtg:Lcom/android/server/power/OnePlusStandbyAnalyzer$WifiWakeUpType;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x6

    invoke-virtual {p2, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$WifiWakeUpType;->ssp:Lcom/android/server/power/OnePlusStandbyAnalyzer$WifiWakeUpType;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x7

    invoke-virtual {p2, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$WifiWakeUpType;->cno:Lcom/android/server/power/OnePlusStandbyAnalyzer$WifiWakeUpType;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x8

    invoke-virtual {p2, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$WifiWakeUpType;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer$WifiWakeUpType;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x9

    invoke-virtual {p2, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$WifiWakeUpType;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer$WifiWakeUpType;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xa

    invoke-virtual {p2, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$WifiWakeUpType;->igw:Lcom/android/server/power/OnePlusStandbyAnalyzer$WifiWakeUpType;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xb

    invoke-virtual {p2, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$WifiWakeUpType;->wtn:Lcom/android/server/power/OnePlusStandbyAnalyzer$WifiWakeUpType;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xc

    invoke-virtual {p2, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$WifiWakeUpType;->gck:Lcom/android/server/power/OnePlusStandbyAnalyzer$WifiWakeUpType;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xd

    invoke-virtual {p2, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$WifiWakeUpType;->dma:Lcom/android/server/power/OnePlusStandbyAnalyzer$WifiWakeUpType;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xe

    invoke-virtual {p2, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$WifiWakeUpType;->ywr:Lcom/android/server/power/OnePlusStandbyAnalyzer$WifiWakeUpType;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0xf

    invoke-virtual {p2, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$WifiWakeUpType;->qbh:Lcom/android/server/power/OnePlusStandbyAnalyzer$WifiWakeUpType;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x10

    invoke-virtual {p2, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$WifiWakeUpType;->oif:Lcom/android/server/power/OnePlusStandbyAnalyzer$WifiWakeUpType;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string p2, "Can\'t matched...."

    invoke-static {p2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-wide/16 v8, 0x1388

    cmp-long p2, v6, v8

    if-ltz p2, :cond_0

    const-string p0, "**** Exceed read timeout, force exit ***"

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_4

    :catch_1
    move-exception p0

    move-object v2, v3

    goto :goto_1

    :catch_2
    move-exception p0

    move-object v2, v3

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_3
    move-exception p0

    :goto_1
    :try_start_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "**** Failed to read, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catch_4
    move-exception p0

    :goto_2
    :try_start_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "**** File not found, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_3
    :goto_3
    return-object v0

    :goto_4
    if-eqz v2, :cond_4

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_5

    :catch_5
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_5
    throw p0
.end method

.method public I0(IIJ)Z
    .locals 7

    long-to-float p3, p3

    const p4, 0x4a5bba00    # 3600000.0f

    div-float/2addr p3, p4

    invoke-direct {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->l()I

    move-result v4

    iget p4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->gwm:I

    int-to-float v0, p4

    int-to-float v1, p1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    div-float/2addr v0, p3

    int-to-float p4, p4

    mul-float/2addr p4, v1

    int-to-float v1, v4

    sub-float/2addr p4, v1

    div-float/2addr p4, p3

    int-to-float v1, p2

    div-float/2addr v1, p3

    sub-int v2, p2, v4

    int-to-float v2, v2

    div-float/2addr v2, p3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[opbugreportlite] MeasureType: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->oif:Lcom/android/server/power/OnePlusStandbyAnalyzer$MeasureType;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", standbyHours = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, " hr, levelDrop = "

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " %, capDrop = "

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " mAh, aodImpact = "

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " mAh, avg-cur(byLevel) = "

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, " mAh, avg-cur(byLevel-AOD) = "

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, " mA, avg-cur(byCap) = "

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, " mA, avg-cur(byCap-AOD) = "

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, " mA, criteria = "

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ugm:F

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, " mA"

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->oif:Lcom/android/server/power/OnePlusStandbyAnalyzer$MeasureType;

    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$MeasureType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$MeasureType;

    if-ne p3, v0, :cond_0

    move p3, p1

    goto :goto_0

    :cond_0
    move p3, p2

    :goto_0
    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->oif:Lcom/android/server/power/OnePlusStandbyAnalyzer$MeasureType;

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$MeasureType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$MeasureType;

    if-ne v0, v1, :cond_1

    move v5, p4

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    if-lez p3, :cond_2

    iget p3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ugm:F

    cmpl-float p3, v5, p3

    if-lez p3, :cond_2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "[opbugreportlite] hit the criteria, mEnablePowerStandbyDetect = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->igw:Z

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, ", mEnablePowerStandbyDiagnosis = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->irq:Z

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, ", mAlreadyReported = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ivd:Z

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, ", mAlreadyDiagnosed = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ywr:Z

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->irq:Z

    if-eqz p3, :cond_2

    const/4 p3, 0x1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "schedule to SNAPSHOT in "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->qeg:J

    invoke-virtual {p4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms, now="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cgv:Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;

    new-instance v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;IIIF)V

    iget-wide p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->qeg:J

    invoke-virtual {p4, v6, p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;->tsu(Ljava/lang/Runnable;J)V

    goto :goto_2

    :cond_2
    const/4 p3, 0x0

    :goto_2
    return p3
.end method

.method public J(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;)V
    .locals 2

    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->sis:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->j:Ljava/util/List;

    if-eqz p1, :cond_1

    const-string v0, "End"

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->B(Ljava/lang/String;Ljava/util/List;Z)V

    :cond_1
    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->l:Ljava/util/Map;

    if-eqz p1, :cond_2

    const-string v0, "End-WL"

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_2
    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->n:Ljava/util/Map;

    if-eqz p1, :cond_3

    const-string v0, "End-KWL"

    invoke-direct {p0, v0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->D(Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->v:Ljava/util/Map;

    if-eqz p1, :cond_4

    const-string v0, "End-WR"

    invoke-direct {p0, v0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->O(Ljava/lang/String;Ljava/util/Map;)V

    :cond_4
    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->J:Ljava/util/Map;

    if-eqz p1, :cond_5

    const-string v0, "End-WUA"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->N(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_5
    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F:Ljava/util/Map;

    if-eqz p1, :cond_c

    const-string v0, "End-WiFi"

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->i:Ljava/util/List;

    if-eqz p1, :cond_7

    const-string v0, "Start"

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->B(Ljava/lang/String;Ljava/util/List;Z)V

    :cond_7
    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->k:Ljava/util/Map;

    if-eqz p1, :cond_8

    const-string v0, "Start-WL"

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_8
    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->n:Ljava/util/Map;

    if-eqz p1, :cond_9

    const-string v0, "Start-KWL"

    invoke-direct {p0, v0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->D(Ljava/lang/String;Ljava/util/Map;)V

    :cond_9
    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->v:Ljava/util/Map;

    if-eqz p1, :cond_a

    const-string v0, "Start-WR"

    invoke-direct {p0, v0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->O(Ljava/lang/String;Ljava/util/Map;)V

    :cond_a
    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->H:Ljava/util/Map;

    if-eqz p1, :cond_b

    const-string v0, "Start-WUA"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->N(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_b
    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->E:Ljava/util/Map;

    if-eqz p1, :cond_c

    const-string v0, "Start-WiFi"

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->R(Ljava/lang/String;Ljava/util/Map;)V

    :cond_c
    :goto_1
    return-void
.end method

.method public K(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->c0(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->d0(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->t0(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e0(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->u0(Ljava/io/PrintWriter;)V

    invoke-virtual {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->v0(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->w0(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->h0(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Y(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->k0(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m0(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public K0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ssp:Z

    return p0
.end method

.method public declared-synchronized M0()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "OPSA"

    const-string v1, "======BE_IMFORMED_SCREEN_ON======"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ssp:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public N(Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->K0:Ljava/util/Comparator;

    invoke-static {v0, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->M(Ljava/lang/String;Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public U(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->obl:Z

    return-void
.end method

.method public V()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter First LightIdle, schedule to SNAPSHOT in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->qeg:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms, now="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPSA"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cgv:Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;

    new-instance v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$ssp;

    invoke-direct {v1, p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$ssp;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V

    iget-wide v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->qeg:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;->tsu(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public X0(Z)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->you:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ibl:J

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    const-string p1, "[opbugreportlite] Leaving DeepIdle, but reset, so skip"

    :goto_0
    invoke-static {p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_1
    sub-long/2addr v0, v2

    iget-boolean v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vdw:Z

    if-eqz v2, :cond_6

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->obl:Z

    if-eqz p1, :cond_2

    iget-wide v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->oxb:J

    goto :goto_1

    :cond_2
    iget-wide v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->fto:J

    :goto_1
    cmp-long p1, v0, v2

    if-lez p1, :cond_6

    :cond_3
    iget p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->gwm:I

    if-lez p1, :cond_7

    iget-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->obl:Z

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ear:I

    goto :goto_2

    :cond_4
    iget p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->qbh:I

    iget v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->gck:I

    sub-int/2addr p1, v2

    :goto_2
    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->T1:Ljava/lang/String;

    const/16 v3, -0x3e7

    invoke-static {v2, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e1(Ljava/lang/String;I)I

    move-result v2

    iget-boolean v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->obl:Z

    if-eqz v3, :cond_5

    iget v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ire:I

    goto :goto_3

    :cond_5
    iget v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->bvj:I

    sub-int v2, v3, v2

    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[opbugreportlite] Leaving DeepIdle, period = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " (ms), batteryLevel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->gck:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", levelDrop = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", capacityDrop = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", start to evaulate the battery-drain."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I0(IIJ)Z

    goto :goto_4

    :cond_6
    const-string p1, "[opbugreportlite] Leaving DeepIdle, too short, so skip"

    goto :goto_0

    :cond_7
    :goto_4
    invoke-virtual {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->M0()V

    return-void
.end method

.method public Z()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->g:Lcom/oneplus/os/IOnePlusExService;

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->g:Lcom/oneplus/os/IOnePlusExService;

    const-string v2, "battery_outlier"

    invoke-interface {p0, v2}, Lcom/oneplus/os/IOnePlusExService;->dumpLightBugreport(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[opbugreportlite] generate log spends "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "got exception while reporting:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OPSA"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public a1(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cgv:Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;->you()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cgv:Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;

    invoke-virtual {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;->you()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public b1()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->T:Z

    return-void
.end method

.method public f1()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ibl:J

    return-void
.end method

.method public i1(Lcom/android/server/am/BatteryStatsService;)V
    .locals 3

    const-string v0, "OPSA"

    const-string v1, "setIn BatteryStatsService, and init rest part at this moment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->d:Lcom/android/server/am/BatteryStatsService;

    new-instance p1, Lcom/android/server/power/you;

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e:Landroid/content/Context;

    const-string v1, "/data/system/power/diagnosis_standby.txt"

    const/16 v2, 0x28

    invoke-direct {p1, v1, v2, v0}, Lcom/android/server/power/you;-><init>(Ljava/lang/String;ILandroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->a:Lcom/android/server/power/you;

    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->f:Landroid/telephony/TelephonyManager;

    new-instance p1, Lcom/android/internal/os/BatteryStatsHelper;

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, v1}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;ZZ)V

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->h:Lcom/android/internal/os/BatteryStatsHelper;

    new-instance p1, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;Lcom/android/server/power/OnePlusStandbyAnalyzer$ssp;)V

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->B0:Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;

    new-instance p1, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;

    invoke-direct {p1, p0, v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;Lcom/android/server/power/OnePlusStandbyAnalyzer$ssp;)V

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I0:Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;

    new-instance p1, Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;

    invoke-direct {p1, p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cgv:Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;

    invoke-direct {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->N0()V

    const-string p1, "ro.board.platform"

    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "msm8996"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "msm8998"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "bengal"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iput-boolean v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->V:Z

    const-string v2, "/d/rpm_stats"

    sput-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->b2:Ljava/lang/String;

    const-string v2, "/d/rpm_master_stats"

    sput-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->d2:Ljava/lang/String;

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e2:Ljava/lang/String;

    :cond_1
    const-string v0, "kona"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->W:Z

    :cond_2
    new-array p1, v0, [I

    const/16 v2, 0x14d

    aput v2, p1, v1

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "/sys/class/oplus_chg/battery/remaining_capacity"

    sput-object p1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->T1:Ljava/lang/String;

    const-string p1, "/sys/class/oplus_chg/battery/charge_full"

    sput-object p1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->U1:Ljava/lang/String;

    const-string p1, "/sys/class/oplus_chg/battery/battery_health"

    sput-object p1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->V1:Ljava/lang/String;

    :cond_3
    invoke-direct {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->P0()V

    invoke-direct {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->O0()V

    invoke-direct {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->n1()V

    invoke-direct {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->o1()V

    invoke-direct {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m1()V

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->you:Z

    return-void
.end method

.method public j1(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/os/ShellCommand;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "%-25s: %1d ms"

    const-string v4, "%-25s: %1b"

    const-string v5, "abn_reporting"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "disabled"

    const-string v7, "enabled"

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    invoke-virtual/range {p3 .. p3}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "abn_reporting: "

    if-eqz v1, :cond_2

    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iput-boolean v8, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->igw:Z

    invoke-virtual {v0, v8}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->t1(Z)V

    const-string v0, "abn_reporting is enabled"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v9, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->igw:Z

    invoke-virtual {v0, v9}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->t1(Z)V

    const-string v0, "abn_reporting is disabled"

    goto :goto_0

    :cond_1
    const-string v0, "please enter abn_reporting [enabled|disabled]"

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->igw:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_4
    const-string v5, "standby"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_2
    invoke-virtual/range {p3 .. p3}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "standby: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    const-string v5, "set_criteria"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v6, "OPSA"

    if-eqz v5, :cond_6

    :try_start_3
    invoke-virtual/range {p3 .. p3}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-lez v5, :cond_5

    iput v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ugm:F

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "config standby criteria to "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ugm:F

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " mA, and not allow update via online-config."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v8, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zgw:Z

    goto :goto_1

    :cond_5
    const-string v0, "invalid standby criteria."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v5, "get_criteria"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current standby criteria : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ugm:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " mA"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_7
    const-string v5, "rpm"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-boolean v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->W:Z

    if-eqz v1, :cond_f

    invoke-virtual/range {p3 .. p3}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "try to trigger MPSS rpm update, sleepMs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e2:Ljava/lang/String;

    const-string v3, "MPSS"

    invoke-direct {v0, v3, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->G(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->q1(I)V

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e2:Ljava/lang/String;

    invoke-direct {v0, v3, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->G(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_8
    const-string v5, "fast_report"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_4
    invoke-virtual/range {p3 .. p3}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const-string v5, "fast_report: "

    if-eqz v1, :cond_b

    :try_start_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iput-boolean v8, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->obl:Z

    const-string v0, "fast_report is enabled"

    :goto_2
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iput-boolean v9, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->obl:Z

    const-string v0, "fast_report is disabled"

    goto :goto_2

    :cond_a
    const-string v0, "please enter fast_report [enabled|disabled]"

    goto :goto_2

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->obl:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_c
    const-string v6, "qxdm"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_6
    invoke-virtual/range {p3 .. p3}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "qxdm: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    const-string v10, "status"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->t()Z

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->G0()J

    move-result-wide v10

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v13, Ljava/util/Formatter;

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v13, v12, v14}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    const/4 v14, 0x2

    new-array v15, v14, [Ljava/lang/Object;

    const-string v16, "BugReportLiteEnable"

    aput-object v16, v15, v9

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v15, v8

    invoke-virtual {v13, v4, v15}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    new-array v1, v14, [Ljava/lang/Object;

    const-string v15, "standby-abn-reporting"

    aput-object v15, v1, v9

    iget-boolean v15, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->igw:Z

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v1, v8

    invoke-virtual {v13, v4, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    new-array v1, v14, [Ljava/lang/Object;

    aput-object v5, v1, v9

    iget-boolean v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->obl:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v1, v8

    invoke-virtual {v13, v4, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    new-array v1, v14, [Ljava/lang/Object;

    const-string v4, "latestStandbyStart"

    aput-object v4, v1, v9

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v8

    invoke-virtual {v13, v3, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    new-array v1, v14, [Ljava/lang/Object;

    const-string v4, "now"

    aput-object v4, v1, v9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v8

    invoke-virtual {v13, v3, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    const-string v1, "%-25s: %1s"

    new-array v3, v14, [Ljava/lang/Object;

    const-string v4, "mAudioPkgList"

    aput-object v4, v3, v9

    iget-object v0, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->S:Ljava/util/List;

    aput-object v0, v3, v8

    invoke-virtual {v13, v1, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuffer;->setLength(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_d
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    :catchall_3
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_e
    move v8, v9

    :cond_f
    :goto_3
    return v8
.end method

.method public k1(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cgv:Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;

    new-instance v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;

    invoke-direct {v1, p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;)V

    invoke-virtual {v0, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;->sis(Ljava/lang/Runnable;)V

    return-void
.end method

.method public l1(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;IIIFFJZ)V
    .locals 13

    move-object v1, p0

    iget-object v11, v1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cgv:Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;

    new-instance v12, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;

    move-object v0, v12

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;IIIFFJZ)V

    invoke-virtual {v11, v12}, Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;->sis(Ljava/lang/Runnable;)V

    return-void
.end method

.method public r1(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vdw:Z

    return-void
.end method

.method public s0(Lcom/android/internal/os/BatteryStatsImpl;JLcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;)Ljava/util/Map;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatteryStatsImpl;",
            "J",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;",
            ">;"
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v13, p4

    const-string v0, ":"

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    const-wide/16 v14, 0x0

    const/4 v2, 0x0

    if-ne v13, v1, :cond_0

    iput-object v2, v12, Lcom/android/server/power/OnePlusStandbyAnalyzer;->k:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v12, Lcom/android/server/power/OnePlusStandbyAnalyzer;->K:Ljava/util/Map;

    sput-wide v14, Lcom/android/server/power/OnePlusStandbyAnalyzer;->H2:J

    sput-wide v14, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I2:J

    goto :goto_0

    :cond_0
    iput-object v2, v12, Lcom/android/server/power/OnePlusStandbyAnalyzer;->l:Ljava/util/Map;

    :goto_0
    if-eqz p1, :cond_7

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v9

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v9, :cond_6

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/os/BatteryStats$Uid;

    invoke-virtual {v4, v6, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v16

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v18

    const/4 v1, 0x2

    invoke-virtual {v4, v1, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v20

    const/4 v1, 0x3

    invoke-virtual {v4, v1, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v22

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-object/from16 v24, v4

    move/from16 v25, v5

    move-wide/from16 v4, v16

    move v14, v6

    move v15, v7

    move-wide/from16 v6, v18

    move-object/from16 v18, v8

    move/from16 v19, v9

    move-wide/from16 v8, v20

    move-object/from16 v26, v10

    move-object/from16 v27, v11

    move-wide/from16 v10, v22

    :try_start_1
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C0(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;IJJJJ)V

    invoke-virtual/range {v24 .. v24}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_2
    if-ltz v2, :cond_3

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid$Wakelock;

    invoke-virtual {v3, v14}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v3

    if-eqz v3, :cond_2

    move-wide/from16 v4, p2

    invoke-virtual {v3, v4, v5, v14}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_1

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    const-wide/16 v10, 0x1f4

    add-long/2addr v6, v10

    const-wide/16 v10, 0x3e8

    div-long/2addr v6, v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v24 .. v24}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v24 .. v24}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v10

    invoke-static {v10}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v7, v26

    :try_start_2
    invoke-interface {v7, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_1
    move-object/from16 v7, v26

    goto :goto_3

    :cond_2
    move-wide/from16 v4, p2

    move-object/from16 v7, v26

    const-wide/16 v8, 0x0

    :goto_3
    add-int/lit8 v2, v2, -0x1

    move-object/from16 v26, v7

    goto :goto_2

    :cond_3
    move-wide/from16 v4, p2

    move-object/from16 v7, v26

    const-wide/16 v8, 0x0

    invoke-virtual/range {v24 .. v24}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v6, v14

    :goto_4
    if-ltz v2, :cond_5

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid$Pkg;

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    :goto_5
    if-ltz v10, :cond_4

    invoke-virtual {v3, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/BatteryStats$Counter;

    invoke-virtual {v11, v14}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v11

    add-int/2addr v6, v11

    add-int/lit8 v10, v10, -0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :cond_5
    invoke-virtual/range {v24 .. v24}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;

    invoke-virtual/range {v24 .. v24}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    invoke-direct {v2, v3, v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;-><init>(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v3, v27

    :try_start_3
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    add-int/lit8 v1, v15, 0x1

    move-object v11, v3

    move-object v10, v7

    move v6, v14

    move v7, v1

    move-wide v14, v8

    move-object/from16 v8, v18

    move/from16 v9, v19

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    move-object/from16 v7, v26

    :goto_6
    move-object/from16 v3, v27

    goto :goto_7

    :cond_6
    move-object v7, v10

    move-object v3, v11

    goto :goto_8

    :catch_3
    move-exception v0

    move-object v7, v10

    move-object v3, v11

    :goto_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_8
    move-object v2, v7

    goto :goto_9

    :cond_7
    move-object v3, v2

    :goto_9
    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    if-ne v13, v0, :cond_8

    iput-object v2, v12, Lcom/android/server/power/OnePlusStandbyAnalyzer;->k:Ljava/util/Map;

    goto :goto_a

    :cond_8
    iput-object v2, v12, Lcom/android/server/power/OnePlusStandbyAnalyzer;->l:Ljava/util/Map;

    :goto_a
    return-object v3
.end method

.method public s1(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->les:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUnderDeepSleep: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->les:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->G0:Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;->tsu()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;->rtg()V

    :goto_0
    return-void
.end method

.method public t()Z
    .locals 2

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "oem_join_stability_plan_settings"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method public declared-synchronized t1(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "OPSA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update reporting-flag to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cno:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public u(Landroid/content/Intent;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->you:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    const-string v1, "level"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_3

    iget v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->gck:I

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->dma:I

    iput p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->gck:I

    const/4 v1, 0x5

    if-gt p1, v1, :cond_3

    if-le v0, p1, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ibl:J

    sub-long/2addr v0, v2

    iget-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vju:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vdw:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->obl:Z

    if-eqz p1, :cond_1

    iget-wide v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->oxb:J

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->fto:J

    :goto_0
    cmp-long p1, v0, v2

    if-lez p1, :cond_3

    iget p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->gwm:I

    if-lez p1, :cond_3

    iget-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->obl:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ear:I

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->qbh:I

    iget v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->gck:I

    sub-int/2addr p1, v2

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[opbugreportlite] Doesn\'t leaving DeepIdle, but Battery Low, period = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " (ms), batteryLevel = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->gck:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", levelDrop = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", start to evaulate the battery-drain."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->X0(Z)V

    :cond_3
    return-void
.end method

.method public u1(I)V
    .locals 2

    iput p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->bud:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mScreenState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->bud:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    const/4 v0, 0x3

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0:Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;->tsu()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;->rtg()V

    :goto_0
    return-void
.end method

.method public v0(Ljava/io/PrintWriter;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "**** Standby Diagnosis WUA info ****"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta:I

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;

    invoke-virtual {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;->you()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public v1(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vju:Z

    return-void
.end method

.method public x1(Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;F)V
    .locals 1

    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->you:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Update mMaxDumpCount : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    float-to-int p1, p2

    iput p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta:I

    goto/16 :goto_0

    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Update mAODImpactmA : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    iput p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vdb:F

    goto/16 :goto_0

    :pswitch_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Update mPkgInstallThold : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    float-to-int p0, p2

    sput p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->D2:I

    goto/16 :goto_0

    :pswitch_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Update mConnChgTholdWithDeepSleep : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    float-to-int p0, p2

    sput p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->t2:I

    goto/16 :goto_0

    :pswitch_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Update mConnChgThold : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    float-to-int p0, p2

    sput p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C2:I

    goto/16 :goto_0

    :pswitch_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Update mMobilePktPerHourTholdForMinor : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    sput p2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->B2:F

    goto/16 :goto_0

    :pswitch_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Update mMobilePktPerHourThold : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    sput p2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->s2:F

    goto/16 :goto_0

    :pswitch_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Update mWifiPktPerHourTholdForMinor : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    sput p2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->A2:F

    goto/16 :goto_0

    :pswitch_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Update mWifiPktPerHourThold : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    sput p2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->r2:F

    goto/16 :goto_0

    :pswitch_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Update mRpmSlpiSleepCountDiffCriteria : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int p1, p2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    int-to-long p0, p1

    sput-wide p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->G2:J

    goto/16 :goto_0

    :pswitch_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Update mRpmSleepAccDurationDiffPercent : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    sput p2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F2:F

    goto/16 :goto_0

    :pswitch_b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Update mRpmTimeSlmSecCriteria : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int p1, p2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    int-to-long p0, p1

    sput-wide p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->E2:J

    goto/16 :goto_0

    :pswitch_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Update mAverageCurrentExceedForMinor : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    sput p2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->u2:F

    goto/16 :goto_0

    :pswitch_d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Update mUnaccountedCriteriaForMinor : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    sput p2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->z2:F

    goto/16 :goto_0

    :pswitch_e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Update mUnaccountedCriteria : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    sput p2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->q2:F

    goto/16 :goto_0

    :pswitch_f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Update mSignalNoneCriteriaForMinor : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    sput p2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->y2:F

    goto/16 :goto_0

    :pswitch_10
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Update mSignalNoneCriteria : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    sput p2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p2:F

    goto/16 :goto_0

    :pswitch_11
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Update mKernelWakeUpCountCriteriaForMinor : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int p1, p2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    sput p1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->x2:I

    goto :goto_0

    :pswitch_12
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Update mKernelWakeUpCountCriteria : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int p1, p2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    sput p1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->o2:I

    goto :goto_0

    :pswitch_13
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Update mkernelSpaceWLCriteriaForMinor : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    sput p2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->w2:F

    goto :goto_0

    :pswitch_14
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Update mkernelSpaceWLCriteria : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    sput p2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->n2:F

    goto :goto_0

    :pswitch_15
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Update mUserSpaceWLCriteriaForMinor : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    sput p2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->v2:F

    goto :goto_0

    :pswitch_16
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Update mUserSpaceWLCriteria : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0(Ljava/lang/String;)V

    sput p2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m2:F

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
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
