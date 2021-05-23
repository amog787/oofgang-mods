.class public Lcom/android/server/power/OnePlusStandbyAnalyzer;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$ibl;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$cgv;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$fto;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$TriggerQxdmReason;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$hmo;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$ugm;,
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
        Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$KnownUIDs;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$oif;,
        Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;
    }
.end annotation


# static fields
.field private static A1:F = 0.0f

.field private static B1:I = 0x0

.field private static C1:F = 0.0f

.field private static D1:F = 0.0f

.field private static E1:F = 0.0f

.field private static final F0:Z

.field private static F1:F = 0.0f

.field private static final G0:Ljava/lang/String; = "persist.sys.standby_debug"

.field private static G1:F = 0.0f

.field static final H0:Z

.field private static H1:F = 0.0f

.field private static I0:Ljava/lang/String; = null

.field private static I1:I = 0x0

.field public static final J0:Ljava/lang/String; = "persist.sys.standby_qxdm_recording"

.field private static J1:F = 0.0f

.field public static final K0:Ljava/lang/String; = "persist.sys.standby_qxdm"

.field private static K1:F = 0.0f

.field public static final L0:Ljava/lang/String; = "persist.sys.qxdm_clean_old"

.field private static L1:F = 0.0f

.field private static final M0:I = 0x3

.field private static M1:J = 0x0L

.field private static final N0:I = 0x3

.field private static N1:F = 0.0f

.field private static final O0:I = 0x1

.field private static O1:J = 0x0L

.field public static final P0:I = -0x3e7

.field public static final Q0:I = 0x124f800

.field public static final R0:I = -0x1

.field public static final S0:Ljava/lang/String; = "NYNCG4I0TI"

.field public static final T0:Ljava/lang/String; = "standby"

.field public static final U0:Ljava/lang/String; = "tp"

.field public static final V0:Ljava/lang/String; = "dl"

.field public static final W0:Ljava/lang/String; = "pn"

.field public static final X0:I = 0x32

.field private static final Y0:I = -0x1

.field private static final Z0:Ljava/lang/String; = "PowerStandbyOnlineConfig"

.field static final a1:I = 0x3e8

.field static final b1:I = 0x3e9

.field static final c1:I = 0x3ea

.field static final d1:I = 0x3eb

.field static final e1:I = 0x3ec

.field static final f1:I = 0x3ed

.field static final g1:I = 0x3ee

.field static final h1:I = 0x3ef

.field static final i1:I = 0x3f0

.field static final j1:I = 0x3f1

.field static final k1:J = 0x2710L

.field private static final l1:Ljava/lang/String; = "OPSA"

.field private static final m1:Ljava/lang/String; = "PowerManagerService.WakeLocks"

.field public static n1:Ljava/lang/String; = null

.field public static final o1:Ljava/lang/String; = "/d/rpm_stats"

.field public static p1:Ljava/lang/String; = null

.field public static q1:Ljava/lang/String; = null

.field public static final r1:Ljava/lang/String; = "/d/rpm_master_stats"

.field public static final s1:Ljava/lang/String; = "/data/system/power/diagnosis_standby.txt"

.field public static final t1:Ljava/lang/String; = "/data/system/power/diagnosis_assist.txt"

.field public static final u1:Ljava/lang/String; = "/data/system/power/diagnosis_rpm.txt"

.field private static final v1:I = 0x28

.field private static final w1:J = 0x1388L

.field public static x1:Ljava/lang/String; = null

.field public static final y1:Ljava/lang/String; = "/sys/kernel/debug/wlan_wakeup/wlan_wakeup_reason"

.field private static z1:F


# instance fields
.field A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;",
            ">;"
        }
    .end annotation
.end field

.field A0:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;",
            ">;"
        }
    .end annotation
.end field

.field B:J

.field B0:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$cgv;",
            ">;"
        }
    .end annotation
.end field

.field C:J

.field C0:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;",
            ">;"
        }
    .end annotation
.end field

.field D:J

.field D0:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;",
            ">;"
        }
    .end annotation
.end field

.field E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field E0:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;",
            ">;"
        }
    .end annotation
.end field

.field F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;",
            ">;"
        }
    .end annotation
.end field

.field I:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;",
            ">;"
        }
    .end annotation
.end field

.field J:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$fto;",
            ">;"
        }
    .end annotation
.end field

.field K:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$WifiWakeUpType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field L:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$WifiWakeUpType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field M:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$cgv;",
            ">;"
        }
    .end annotation
.end field

.field N:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;",
            ">;"
        }
    .end annotation
.end field

.field O:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;",
            ">;"
        }
    .end annotation
.end field

.field P:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;",
            ">;"
        }
    .end annotation
.end field

.field Q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;",
            ">;"
        }
    .end annotation
.end field

.field R:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;",
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

.field private T:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private U:Z

.field private V:Z

.field private W:Z

.field private X:Ljava/util/regex/Pattern;

.field private Y:Ljava/util/regex/Pattern;

.field private Z:Ljava/util/regex/Pattern;

.field private a:Z

.field private final a0:Ljava/lang/String;

.field private b:J

.field private final b0:Ljava/lang/String;

.field private bio:Z

.field private bud:J

.field private bvj:Z

.field private c:Z

.field private c0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private cgv:I

.field private cjf:J

.field private cno:Z

.field private d:Lcom/android/server/power/you;

.field private d0:Ljava/util/regex/Pattern;

.field private dma:J

.field private e:Lnet/oneplus/odm/OpDeviceManagerInjector;

.field private e0:J

.field private ear:I

.field private f:Z

.field private f0:J

.field private fto:Z

.field private g:Lcom/android/server/am/BatteryStatsService;

.field private g0:J

.field private gck:Lcom/android/server/power/OnePlusStandbyAnalyzer$TriggerQxdmReason;

.field private gwm:Z

.field private h:Landroid/content/Context;

.field private h0:I

.field private hmo:Z

.field private i:Landroid/telephony/TelephonyManager;

.field private i0:F

.field private ibl:Landroid/os/BatteryManagerInternal;

.field private igw:Z

.field private ire:F

.field private irq:Lcom/oneplus/config/ConfigObserver;

.field private ivd:Z

.field private j:Lcom/oneplus/os/IOnePlusExService;

.field private j0:F

.field k:Lcom/android/internal/os/BatteryStatsHelper;

.field private k0:I

.field private kth:Z

.field l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private l0:J

.field private final les:I

.field private lqr:J

.field m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private m0:J

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

.field private oif:I

.field private oxb:I

.field p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;",
            ">;"
        }
    .end annotation
.end field

.field private p0:J

.field q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private q0:Lcom/android/internal/os/BatterySipper;

.field private qbh:J

.field private qeg:Z

.field r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private r0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private rtg:Ljava/lang/String;

.field s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;",
            ">;"
        }
    .end annotation
.end field

.field private s0:D

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

.field t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;",
            ">;"
        }
    .end annotation
.end field

.field private t0:Landroid/content/IntentFilter;

.field private tsu:Ljava/lang/String;

.field u:J

.field private u0:Lcom/android/server/power/OnePlusStandbyAnalyzer$ear;

.field private ugm:Lcom/android/internal/os/PowerProfile;

.field v:J

.field private v0:Z

.field private vdb:I

.field private vdw:Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;

.field private veq:J

.field private vju:I

.field w:J

.field private w0:Lcom/android/server/power/OnePlusStandbyAnalyzer$ugm;

.field private wtn:Z

.field x:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private x0:Z

.field y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private y0:Landroid/telephony/PhoneStateListener;

.field private you:Z

.field private ywr:J

.field z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;",
            ">;"
        }
    .end annotation
.end field

.field z0:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;",
            ">;"
        }
    .end annotation
.end field

.field private zgw:I

.field private zta:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0:Z

    const-string v0, "persist.sys.standby_debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->H0:Z

    const-string v0, "2.03"

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I0:Ljava/lang/String;

    const-string v0, "/sys/power/rpmh/stats"

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->n1:Ljava/lang/String;

    const-string v0, "/sys/power/rpmh/master_stats"

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p1:Ljava/lang/String;

    const-string v0, "/proc/rpmh_modem/sleepinfo"

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->q1:Ljava/lang/String;

    const-string v0, "/sys/kernel/debug/wlan_wakeup/wlan_wakeup_reason"

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->x1:Ljava/lang/String;

    const/high16 v0, 0x41200000    # 10.0f

    sput v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->z1:F

    sput v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->A1:F

    const/16 v1, 0xc8

    sput v1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->B1:I

    const v1, 0x4479c000    # 999.0f

    sput v1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C1:F

    const/high16 v2, 0x42a00000    # 80.0f

    sput v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->D1:F

    const/high16 v2, 0x40a00000    # 5.0f

    sput v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->E1:F

    sput v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F1:F

    sput v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->G1:F

    sput v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->H1:F

    const/16 v0, 0x96

    sput v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I1:I

    sput v1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->J1:F

    const/high16 v0, 0x42480000    # 50.0f

    sput v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->K1:F

    const/high16 v0, 0x40600000    # 3.5f

    sput v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L1:F

    const-wide/16 v0, 0x708

    sput-wide v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->M1:J

    const/high16 v0, 0x42200000    # 40.0f

    sput v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->N1:F

    const-wide/32 v0, 0x100000

    sput-wide v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->O1:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta:Z

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->you:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis:Ljava/util/Map;

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ssp:Z

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cno:Z

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->kth:Z

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->bio:Z

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->igw:Z

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->wtn:Z

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$TriggerQxdmReason;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$TriggerQxdmReason;

    iput-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->gck:Lcom/android/server/power/OnePlusStandbyAnalyzer$TriggerQxdmReason;

    const-wide/32 v1, 0xa4cb800

    iput-wide v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->dma:J

    const-wide/32 v1, 0x6ddd00

    iput-wide v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ywr:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->qbh:J

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->oif:I

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->bvj:Z

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->gwm:Z

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->obl:Z

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ear:I

    const/high16 v1, 0x42700000    # 60.0f

    iput v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ire:F

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->hmo:Z

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->fto:Z

    const-wide/16 v1, 0x7530

    iput-wide v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->lqr:J

    iput-wide v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->veq:J

    const/16 v1, 0x32

    iput v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cgv:I

    const/16 v1, 0x22b

    iput v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vju:I

    const-wide/32 v1, 0x1499700

    iput-wide v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->bud:J

    const/4 v1, 0x5

    iput v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->les:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ivd:Z

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->a:Z

    const-wide/16 v2, 0x2710

    iput-wide v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->b:J

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->c:Z

    iput-boolean v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->f:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->S:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->T:Ljava/util/List;

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->U:Z

    iput-boolean v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->V:Z

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->W:Z

    const-string v1, "RPM Mode:vlow\\n\\t\\scount:(\\d*)\\n.*time since last mode\\(sec\\):(\\d*).*RPM Mode:vmin\\n\\t\\scount:(\\d*)\\n.*time since last mode\\(sec\\):(\\d*)\\n.*"

    const/16 v2, 0x20

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->X:Ljava/util/regex/Pattern;

    const-string v1, "RPM Mode:aosd\\n\\t\\scount:(\\d*)\\n.*time since last mode\\(sec\\):(\\d*).*RPM Mode:cxsd\\n\\t\\scount:(\\d*)\\n.*time since last mode\\(sec\\):(\\d*)\\n.*"

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Y:Ljava/util/regex/Pattern;

    const-string v1, ".*MPSS\\n\\tVersion.*\\tSleep Accumulated Duration:0x([0-9a-f]*)\\n\\nADSP\\n\\tVersion.*\\tSleep Accumulated Duration:0x([0-9a-f]*)\\n\\nCDSP\\n\\tVersion.*"

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z:Ljava/util/regex/Pattern;

    const-string v1, "\\n\\tshutdown_req.*\\n\\twakeup_ind.*\\n\\tbringup_req.*\\n\\tbringup_ack.*\\n\\txo_last_entered_at:0x([0-9a-fA-F]*)\\n\\txo_last_exited_at:0x([0-9a-fA-F]*)\\n\\txo_accumulated_duration:0x([0-9a-fA-F]*)\\n\\tlast_sleep_transition_duration.*\\n\\tlast_wake_transition_duration.*\\n\\txo_count:0x([0-9a-fA-F]*)\\n"

    iput-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->a0:Ljava/lang/String;

    const-string v1, "\\n\\tVersion:\\s?0x([0-9a-f]*)\\n\\tSleep Count:\\s?0x([0-9a-f]*)\\n\\tSleep Last Entered At:\\s?0x([0-9a-f]*)\\n\\tSleep Last Exited At:\\s?0x([0-9a-f]*)\\n\\tSleep Accumulated Duration:\\s?0x([0-9a-f]*)\\n\\n?"

    iput-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->b0:Ljava/lang/String;

    const-string v1, "uc (\\d*) bc (\\d*) v4_mc (\\d*) v6_mc (\\d*) ra (\\d*) ns (\\d*) na (\\d*) pno_match (\\d*) pno_complete (\\d*) gscan (\\d*) low_rssi (\\d*) rssi_breach (\\d*) icmp (\\d*) icmpv6 (\\d*) oem (\\d*) unspecified (\\d*).*"

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->d0:Ljava/util/regex/Pattern;

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->v0:Z

    new-instance v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$ugm;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$ugm;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;Lcom/android/server/power/OnePlusStandbyAnalyzer$ssp;)V

    iput-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->w0:Lcom/android/server/power/OnePlusStandbyAnalyzer$ugm;

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->x0:Z

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$kth;

    invoke-direct {v0, p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$kth;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->y0:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$bio;

    invoke-direct {v0, p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$bio;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->z0:Ljava/util/Comparator;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$igw;

    invoke-direct {v0, p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$igw;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->A0:Ljava/util/Comparator;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;

    invoke-direct {v0, p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$wtn;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->B0:Ljava/util/Comparator;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$zta;

    invoke-direct {v0, p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$zta;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C0:Ljava/util/Comparator;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$you;

    invoke-direct {v0, p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$you;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->D0:Ljava/util/Comparator;

    new-instance v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;

    invoke-direct {v0, p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->E0:Ljava/util/Comparator;

    const-string v0, "OPSA"

    const-string v1, "init OnePlusStandbyAnalyzer"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->h:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->kth:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "init reporting-flag to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->kth:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private A(Ljava/lang/String;Ljava/util/Map;Z)V
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

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private A0()V
    .locals 5

    new-instance v0, Lcom/android/internal/os/PowerProfile;

    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->h:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ugm:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v0}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ear:I

    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ibl:Landroid/os/BatteryManagerInternal;

    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e:Lnet/oneplus/odm/OpDeviceManagerInjector;

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ibl:Landroid/os/BatteryManagerInternal;

    const-string v1, "OPSA"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vdb:I

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zgw:I

    sget-boolean v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[opbugreportlite] mCurrentBatteryLevel = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vdb:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[opbugreportlite] mBatteryCapacity = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ear:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mAh"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[opbugreportlite] mEnablePowerStandbyDetect = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->gwm:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[opbugreportlite] mEnablePowerStandbyDiagnosis = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ivd:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[opbugreportlite] mMaCriteria = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ire:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " mA"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[opbugreportlite] mMinimumPeriod = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->bud:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->j:Lcom/oneplus/os/IOnePlusExService;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/server/OnePlusExService;->getDefault()Lcom/oneplus/os/IOnePlusExService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->j:Lcom/oneplus/os/IOnePlusExService;

    :cond_2
    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vdw:Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;

    invoke-virtual {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;->rtg()V

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->h:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vdw:Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;

    invoke-virtual {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;->you()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$oif;

    invoke-direct {v3, p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$oif;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V

    const-string v4, "PowerStandbyOnlineConfig"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->irq:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vdw:Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;

    const/16 v0, 0x3e8

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;->cno(IJ)V

    return-void
.end method

.method private B(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;",
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

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private B0()V
    .locals 10

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->c0:Ljava/util/Map;

    iget-boolean v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->V:Z

    const/16 v2, 0x20

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-string v6, ".*%s%s.*"

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    new-array v7, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    const-string v8, "\\n\\tVersion:\\s?0x([0-9a-f]*)\\n\\tSleep Count:\\s?0x([0-9a-f]*)\\n\\tSleep Last Entered At:\\s?0x([0-9a-f]*)\\n\\tSleep Last Exited At:\\s?0x([0-9a-f]*)\\n\\tSleep Accumulated Duration:\\s?0x([0-9a-f]*)\\n\\n?"

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->c0:Ljava/util/Map;

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    new-array v7, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v4

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->c0:Ljava/util/Map;

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    new-array v7, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v4

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->c0:Ljava/util/Map;

    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;->ssp:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    aput-object v8, v1, v3

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    new-array v7, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    const-string v8, "\\n\\tshutdown_req.*\\n\\twakeup_ind.*\\n\\tbringup_req.*\\n\\tbringup_ack.*\\n\\txo_last_entered_at:0x([0-9a-fA-F]*)\\n\\txo_last_exited_at:0x([0-9a-fA-F]*)\\n\\txo_accumulated_duration:0x([0-9a-fA-F]*)\\n\\tlast_sleep_transition_duration.*\\n\\tlast_wake_transition_duration.*\\n\\txo_count:0x([0-9a-fA-F]*)\\n"

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->c0:Ljava/util/Map;

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    new-array v7, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v4

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->c0:Ljava/util/Map;

    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;->ssp:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    aput-object v8, v1, v3

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private C0()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->a:Z

    const-string v1, "OPSA"

    if-nez v0, :cond_1

    sget-boolean p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0:Z

    if-eqz p0, :cond_0

    const-string p0, "[opbugreportlite] m1stLightIdle is false, abort enteringDeepIdleLocked, just return"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vdb:I

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->oxb:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cjf:J

    sget-boolean v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[opbugreportlite] Entering DeepIdle, batteryLevel = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->oxb:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", nowElapseRealTime = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cjf:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", now="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->c:Z

    iget-boolean v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ivd:Z

    if-eqz v2, :cond_4

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->obl:Z

    :try_start_0
    sget-boolean v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0:Z

    if-eqz v0, :cond_3

    const-string v0, "[opbugreportlite] Snapshot of start"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->W0(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[opbugreportlite] got exception while snapshot of start:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method private D(Ljava/util/List;)V
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

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

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

.method private D0()Z
    .locals 1

    const-string p0, "persist.vendor.qxdm.copylog"

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "QXDM log is ready"

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    return v0

    :cond_0
    const-string p0, "QXDM log is NOT ready"

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private E(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;",
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

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

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

.method private static E0(I)Z
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

.method private F(Ljava/lang/String;Ljava/util/Map;)V
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

    invoke-static {p2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static F0(I)Z
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

.method private G(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$cgv;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    const/4 p0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_2

    if-eqz p3, :cond_0

    const/4 v0, 0x3

    if-lt p0, v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPSA"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "list == null"

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private G0()Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;->cno:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->H:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->H:Ljava/util/List;

    invoke-direct {v0, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->k(Ljava/util/List;)Z

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
    iget-object v10, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v14, v10, :cond_3

    iget-object v10, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I:Ljava/util/List;

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;

    iget-wide v6, v10, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->ssp:J

    cmp-long v6, v4, v6

    if-gez v6, :cond_1

    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;

    iget-wide v4, v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->ssp:J

    :cond_1
    iget-object v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I:Ljava/util/List;

    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;

    iget-wide v6, v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->ssp:J

    cmp-long v6, v11, v6

    if-ltz v6, :cond_2

    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;

    iget-wide v6, v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->ssp:J

    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I:Ljava/util/List;

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

    invoke-static {v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

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
    invoke-static {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    sget v3, Lcom/android/server/power/OnePlusStandbyAnalyzer;->N1:F

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
    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v10, v2, :cond_e

    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I:Ljava/util/List;

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

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;

    iget-wide v3, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->sis:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", criteria="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/android/server/power/OnePlusStandbyAnalyzer;->O1:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;

    iget-wide v2, v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->sis:J

    sget-wide v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->O1:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmCategory;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmCategory;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

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
    iget-object v7, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_8

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v10, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;

    iget-object v10, v10, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    invoke-virtual {v10}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;

    iget-object v7, v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmCxState;

    sget-object v10, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmCxState;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmCxState;

    if-ne v7, v10, :cond_b

    iget-object v7, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;

    iget-object v7, v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    invoke-direct {v0, v7}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->i0(Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;)J

    move-result-wide v10

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[judgeRPM] CX_STATE:Active "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I:Ljava/util/List;

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

    invoke-static {v7}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    cmp-long v7, v10, v8

    if-eqz v7, :cond_a

    iget-object v7, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I:Ljava/util/List;

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

    iget-object v15, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I:Ljava/util/List;

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

    invoke-static {v14}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    sget v14, Lcom/android/server/power/OnePlusStandbyAnalyzer;->N1:F

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

    invoke-static {v11}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

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

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    return-object v1
.end method

.method private H(Ljava/util/List;)V
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

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private H0()Z
    .locals 33

    move-object/from16 v0, p0

    sget v1, Landroid/os/OPDiagnoseManager;->ISSUE_POWER_OTHER:I

    iget-wide v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e0:J

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

    iget-wide v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->u:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->B:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e0:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " is less than 0, can\'t judge anything, need just return"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    return v8

    :cond_0
    iget-wide v9, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->f0:J

    cmp-long v2, v2, v9

    if-gez v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->u:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->B:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e0:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " is less than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->f0:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms, it\'s false alarm, just return"

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-boolean v8, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->you:Z

    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->rtg:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->d:Lcom/android/server/power/you;

    const-string v6, "/data/system/power/diagnosis_assist.txt"

    invoke-virtual {v5, v6}, Lcom/android/server/power/you;->wtn(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->d:Lcom/android/server/power/you;

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

    iget-wide v11, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e0:J

    invoke-static {v10, v11, v12}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "###### Time of Standby period : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->setLength(I)V

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

    invoke-static {v11}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis:Ljava/util/Map;

    sget-object v13, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    iget v14, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->h0:I

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "###### EverEnterDeepIdle : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->U:Z

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    new-instance v11, Ljava/math/BigDecimal;

    iget v13, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->i0:F

    float-to-double v13, v13

    invoke-direct {v11, v13, v14}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v13, 0x3

    const/4 v14, 0x4

    invoke-virtual {v11, v13, v14}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v11

    invoke-virtual {v11}, Ljava/math/BigDecimal;->floatValue()F

    move-result v11

    iput v11, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->i0:F

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "###### Average Current of Standby period : "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->i0:F

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v15, " mA, criteria="

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->j0:F

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v15, " mA"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis:Ljava/util/Map;

    sget-object v15, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->rtg:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    iget v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->i0:F

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis:Ljava/util/Map;

    sget-object v11, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->ssp:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    iget v15, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->j0:F

    invoke-static {v15}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v4, v11, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis:Ljava/util/Map;

    sget-object v11, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->cno:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    sget v15, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F1:F

    invoke-static {v15}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v4, v11, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->i0:F

    iget v11, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->j0:F

    sub-float/2addr v4, v11

    sget v11, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F1:F

    cmpg-float v4, v4, v11

    if-gtz v4, :cond_2

    const-string v4, "###### Minor exceeding, lower down the criteria accordingly"

    invoke-static {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    sget v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I1:I

    sget v11, Lcom/android/server/power/OnePlusStandbyAnalyzer;->G1:F

    sget v15, Lcom/android/server/power/OnePlusStandbyAnalyzer;->H1:F

    sget v17, Lcom/android/server/power/OnePlusStandbyAnalyzer;->J1:F

    sget v18, Lcom/android/server/power/OnePlusStandbyAnalyzer;->K1:F

    sget v19, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L1:F

    goto :goto_1

    :cond_2
    const-string v4, "###### Normal exceeding, use the normal criteria accordingly"

    invoke-static {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    sget v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->B1:I

    sget v11, Lcom/android/server/power/OnePlusStandbyAnalyzer;->z1:F

    sget v15, Lcom/android/server/power/OnePlusStandbyAnalyzer;->A1:F

    sget v17, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C1:F

    sget v18, Lcom/android/server/power/OnePlusStandbyAnalyzer;->D1:F

    sget v19, Lcom/android/server/power/OnePlusStandbyAnalyzer;->E1:F

    :goto_1
    move/from16 v13, v19

    const v20, 0x4479c000    # 999.0f

    cmpl-float v20, v13, v20

    if-nez v20, :cond_3

    const-string v20, "oops, observe the magic number - 999.0, skip checkifRPMAbnormal at this round"

    invoke-static/range {v20 .. v20}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    const/16 v20, 0x1

    goto :goto_2

    :cond_3
    move/from16 v20, v8

    :goto_2
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    move/from16 v21, v15

    iget-wide v14, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->g0:J

    invoke-static {v10, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "###### CPU Uptime of Standby period : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-wide v14, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->l0:J

    invoke-static {v10, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "###### UserSpace-WL(PowerManagerService.WakeLocks) of Standby period : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-wide v14, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m0:J

    invoke-static {v10, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "###### (Uptime - UserSpace-WL)KernelSpace of Standby period : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "###### Userspace WUA Count of Standby period : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->k0:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " times"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    sget-boolean v14, Lcom/android/server/power/OnePlusStandbyAnalyzer;->H0:Z

    if-eqz v14, :cond_4

    iget-object v14, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->O:Ljava/util/List;

    const-string v8, "Diff"

    move/from16 v23, v1

    const/4 v1, 0x1

    invoke-direct {v0, v8, v14, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->B(Ljava/lang/String;Ljava/util/List;Z)V

    goto :goto_3

    :cond_4
    move/from16 v23, v1

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "###### Kernel Wake-Up Count of Standby period : "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v14, v6

    iget-wide v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->n0:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->t:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->H(Ljava/util/List;)V

    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->H:Ljava/util/List;

    const-string v5, "Diff-RPM"

    invoke-direct {v0, v5, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->v(Ljava/lang/String;Ljava/util/List;)V

    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I:Ljava/util/List;

    const-string v6, "Diff-RPMMaster"

    invoke-direct {v0, v6, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->u(Ljava/lang/String;Ljava/util/List;)V

    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->H:Ljava/util/List;

    iget-object v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I:Ljava/util/List;

    invoke-direct {v0, v1, v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->W(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget-object v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->d:Lcom/android/server/power/you;

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    iget-wide v7, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e0:J

    move-object/from16 v26, v14

    iget v14, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->h0:I

    invoke-virtual {v6, v7, v8, v14, v1}, Lcom/android/server/power/you;->rtg(JILjava/util/List;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->tsu:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->H:Ljava/util/List;

    iget-object v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I:Ljava/util/List;

    invoke-direct {v0, v5, v1, v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->V(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I:Ljava/util/List;

    invoke-direct {v0, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->T(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "###### RPM MDM_Detail : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OPSA"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->M:Ljava/util/List;

    const-string v7, "Diff-WiFiWakeUp"

    const/4 v8, 0x1

    invoke-direct {v0, v7, v5, v8}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->G(Ljava/lang/String;Ljava/util/List;Z)V

    const/4 v5, 0x0

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-wide v7, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->o0:J

    invoke-static {v10, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "###### Signal Bad (None + Poor) of Standby period : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[NoSignal] mStandbyNoSignalUnderSimDetectedMs="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p0:J

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    iget-wide v7, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p0:J

    invoke-static {v10, v7, v8}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "###### No Signal (under SIM Detected) of Standby period : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->J:Ljava/util/List;

    invoke-direct {v0, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Y(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "###### Diff-TeleChgInfo : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->J:Ljava/util/List;

    invoke-direct {v0, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->g0(Ljava/util/List;)Lcom/android/server/power/OnePlusStandbyAnalyzer$fto;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "##### 1st-TelephonyAnomaly : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v6, Lcom/android/server/power/OnePlusStandbyAnalyzer;->H0:Z

    if-eqz v6, :cond_5

    iget-object v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->r0:Ljava/util/List;

    const-string v7, "Diff - totalPowerMah"

    const/4 v8, 0x1

    invoke-direct {v0, v7, v6, v8}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p(Ljava/lang/String;Ljava/util/List;Z)V

    :cond_5
    iget-object v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->r0:Ljava/util/List;

    if-eqz v6, :cond_6

    new-instance v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$gck;

    invoke-direct {v7, v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$gck;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    sget-boolean v6, Lcom/android/server/power/OnePlusStandbyAnalyzer;->H0:Z

    if-eqz v6, :cond_6

    iget-object v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->r0:Ljava/util/List;

    const-string v7, "Diff - wakeLockTimeMs"

    const/4 v8, 0x1

    invoke-direct {v0, v7, v6, v8}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p(Ljava/lang/String;Ljava/util/List;Z)V

    :cond_6
    iget-object v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis:Ljava/util/Map;

    sget-object v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    sget-object v8, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I0:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e0:J

    long-to-float v6, v6

    const v7, 0x4a5bba00    # 3600000.0f

    div-float/2addr v6, v7

    new-instance v7, Ljava/math/BigDecimal;

    move-wide/from16 v27, v2

    float-to-double v2, v6

    invoke-direct {v7, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v2, 0x4

    const/4 v3, 0x3

    invoke-virtual {v7, v3, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigDecimal;->floatValue()F

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "###### standbyHrs : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " h"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis:Ljava/util/Map;

    sget-object v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->l0:J

    long-to-float v3, v6

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v3, v6

    iget-wide v7, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e0:J

    long-to-float v7, v7

    div-float/2addr v3, v7

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v3, v7

    new-instance v8, Ljava/math/BigDecimal;

    float-to-double v6, v3

    invoke-direct {v8, v6, v7}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v3, 0x4

    const/4 v6, 0x3

    invoke-virtual {v8, v6, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "###### userSpaceWLPercentage : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis:Ljava/util/Map;

    sget-object v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->g0:J

    long-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v6, v7

    iget-wide v7, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e0:J

    long-to-float v7, v7

    div-float/2addr v6, v7

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v6, v7

    new-instance v7, Ljava/math/BigDecimal;

    move v8, v11

    float-to-double v10, v6

    invoke-direct {v7, v10, v11}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v6, 0x4

    const/4 v10, 0x3

    invoke-virtual {v7, v10, v6}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->floatValue()F

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "###### cpuRuningPercentage : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis:Ljava/util/Map;

    sget-object v10, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sub-float/2addr v6, v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "###### kernelSpaceWLPercentage : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis:Ljava/util/Map;

    sget-object v10, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->igw:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-float v4, v4

    mul-float/2addr v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "###### localWRCountCriteria : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    iget-wide v10, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->o0:J

    long-to-float v4, v10

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v4, v7

    iget-wide v10, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e0:J

    long-to-float v10, v10

    div-float/2addr v4, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v4, v10

    new-instance v10, Ljava/math/BigDecimal;

    float-to-double v14, v4

    invoke-direct {v10, v14, v15}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v4, 0x4

    const/4 v14, 0x3

    invoke-virtual {v10, v14, v4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "###### signalBadPercentage : "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v14, "  %"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    iget-object v10, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis:Ljava/util/Map;

    sget-object v15, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->gck:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v10, v15, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v12

    iget-wide v11, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p0:J

    long-to-float v11, v11

    const/high16 v12, 0x3f800000    # 1.0f

    mul-float/2addr v11, v12

    move v15, v13

    iget-wide v12, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e0:J

    long-to-float v12, v12

    div-float/2addr v11, v12

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v11, v10

    new-instance v10, Ljava/math/BigDecimal;

    float-to-double v11, v11

    invoke-direct {v10, v11, v12}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v11, 0x4

    const/4 v12, 0x3

    invoke-virtual {v10, v12, v11}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigDecimal;->floatValue()F

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "###### signalNonePercentage(Under SIM detected) : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis:Ljava/util/Map;

    sget-object v12, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->dma:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    invoke-static {v10}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->G0()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "###### [judgeRPM] :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    iget-object v12, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis:Ljava/util/Map;

    sget-object v14, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->qbh:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    move/from16 v29, v15

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v12, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis:Ljava/util/Map;

    sget-object v14, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->wtn:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    move v15, v10

    move-object/from16 v30, v11

    iget-wide v10, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->n0:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v12, v14, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v12, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->q0:Lcom/android/internal/os/BatterySipper;

    if-eqz v12, :cond_8

    iget-wide v10, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->s0:D

    const-wide/16 v31, 0x0

    cmpl-double v14, v10, v31

    move/from16 v31, v15

    if-eqz v14, :cond_7

    iget-wide v14, v12, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    div-double/2addr v14, v10

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double/2addr v14, v10

    new-instance v10, Ljava/math/BigDecimal;

    invoke-direct {v10, v14, v15}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v11, 0x4

    const/4 v12, 0x3

    invoke-virtual {v10, v12, v11}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "###### existd unaccounted sipper, the percentage "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v14, " % ("

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->q0:Lcom/android/internal/os/BatterySipper;

    iget-wide v14, v14, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    invoke-static {v14, v15}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " / "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->s0:D

    invoke-static {v14, v15}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ")"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    iget-object v12, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis:Ljava/util/Map;

    sget-object v14, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->ywr:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_7
    const-string v10, "###### existd unaccounted sipper, but mStadbyTotalPowerMah is 0"

    invoke-static {v10}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    move/from16 v31, v15

    const-string v10, "###### No-unaccounted sipper existed."

    invoke-static {v10}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    iget-object v10, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis:Ljava/util/Map;

    sget-object v11, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->ywr:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    const-string v12, "-999"

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->q()V

    iget-object v12, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis:Ljava/util/Map;

    sget-object v14, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    const-string v15, "1"

    invoke-interface {v12, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->N0()V

    iget-boolean v12, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->wtn:Z

    const/4 v14, 0x2

    const-string v15, ";"

    if-eqz v12, :cond_e

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->cno:[I

    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->gck:Lcom/android/server/power/OnePlusStandbyAnalyzer$TriggerQxdmReason;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_a

    if-eq v1, v14, :cond_9

    goto :goto_a

    :cond_9
    sget-object v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->gwm:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    invoke-virtual {v7}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->gwm:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_6
    move-object v6, v5

    :goto_7
    move-object v12, v15

    :goto_8
    move/from16 v14, v23

    goto :goto_c

    :cond_a
    if-eqz v5, :cond_d

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->zta:[I

    iget-object v2, v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$fto;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_c

    const/4 v2, 0x6

    if-eq v1, v2, :cond_b

    move-object/from16 v7, v24

    goto :goto_9

    :cond_b
    sget-object v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->oxb:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    goto :goto_9

    :cond_c
    sget-object v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->vdb:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    :goto_9
    invoke-virtual {v7}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer$fto;->you()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$fto;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    iget-boolean v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->wtn:Z

    invoke-static {v1, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;->you(Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;Z)Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    :cond_d
    :goto_a
    move-object v12, v15

    move/from16 v14, v23

    move-object/from16 v7, v24

    :goto_b
    move-object/from16 v5, v25

    move-object/from16 v6, v26

    :goto_c
    const/4 v8, 0x0

    const/16 v22, 0x1

    goto/16 :goto_23

    :cond_e
    iget-boolean v12, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->bvj:Z

    if-nez v12, :cond_f

    iget-boolean v12, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->U:Z

    if-nez v12, :cond_f

    sget-object v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    invoke-virtual {v7}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->sis:Ljava/util/Map;

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$DiagnosisDataType;

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    :cond_f
    move-object v12, v15

    iget-wide v14, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->n0:J

    long-to-float v14, v14

    cmpl-float v2, v14, v2

    if-ltz v2, :cond_17

    sget-object v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->ssp:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    invoke-virtual {v7}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->A:Ljava/util/List;

    if-eqz v1, :cond_16

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_16

    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->A:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->A:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;

    invoke-virtual {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/OPDiagnoseManager;->ISSUE_POWER_ALARM_WAKEUP:I

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->A:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;

    iget-object v2, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;->zta:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;->zta(Ljava/lang/String;)Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;

    move-result-object v2

    sget-object v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->kth:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v4, v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_11

    const/4 v4, 0x2

    if-eq v2, v4, :cond_11

    const/4 v4, 0x3

    if-eq v2, v4, :cond_10

    :goto_d
    move-object v5, v3

    goto :goto_e

    :cond_10
    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$KernelWakeypType;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    sget v2, Landroid/os/OPDiagnoseManager;->ISSUE_POWER_MODEM_WAKEUP:I

    move-object v5, v1

    move v1, v2

    goto :goto_e

    :cond_11
    sget v1, Landroid/os/OPDiagnoseManager;->ISSUE_POWER_WIFI_WAKEUP:I

    goto :goto_d

    :goto_e
    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->A:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;

    iget-object v6, v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;->zta:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->M:Ljava/util/List;

    if-eqz v2, :cond_13

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_13

    const/4 v2, 0x0

    :goto_f
    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->M:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_13

    const/4 v3, 0x3

    if-ge v2, v3, :cond_12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->M:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$cgv;

    invoke-virtual {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer$cgv;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_13
    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->O:Ljava/util/List;

    if-eqz v2, :cond_14

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_14

    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->O:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->O:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;

    invoke-virtual {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;->zta()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    :cond_14
    const/4 v3, 0x0

    :cond_15
    :goto_10
    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->t:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;

    invoke-virtual {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    move v14, v1

    goto/16 :goto_c

    :cond_16
    move/from16 v14, v23

    goto/16 :goto_b

    :cond_17
    cmpl-float v2, v3, v8

    if-gez v2, :cond_25

    cmpl-float v2, v6, v21

    if-ltz v2, :cond_18

    goto/16 :goto_17

    :cond_18
    cmpl-float v2, v4, v17

    if-ltz v2, :cond_19

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->cno:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;->rtg:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;->rtg:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v1

    goto/16 :goto_8

    :cond_19
    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->H:Ljava/util/List;

    invoke-direct {v0, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->j(Ljava/util/List;)Z

    move-result v2

    const-string v3, "# [judgeRPM]=["

    const-string v4, "_"

    if-eqz v2, :cond_1c

    if-nez v20, :cond_1c

    sget-object v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->igw:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    invoke-virtual {v7}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/OPDiagnoseManager;->ISSUE_POWER_HW_SUBSYSTEM:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v30

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] #"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->V:Z

    if-eqz v1, :cond_1a

    const-string v1, "aosd_no_increase"

    goto :goto_11

    :cond_1a
    const-string v1, "vmin_no_increase"

    :goto_11
    move-object v5, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "###### [RPM] :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;->cno:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;->cno:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    :cond_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_16

    :cond_1c
    move-object/from16 v6, v30

    move/from16 v1, v29

    float-to-double v1, v1

    cmpl-double v1, v10, v1

    if-lez v1, :cond_20

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unaccounted:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/OPDiagnoseManager;->ISSUE_POWER_HW_SUBSYSTEM:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] #"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "high_unaccounted"

    if-eqz v5, :cond_1e

    iget v7, v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$fto;->you:I

    if-lez v7, :cond_1e

    invoke-virtual {v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer$fto;->you()Ljava/lang/String;

    move-result-object v7

    iget-object v5, v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$fto;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    const/4 v8, 0x0

    invoke-static {v5, v8}, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;->you(Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;->cno:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    invoke-virtual {v7}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;->cno:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_13

    :cond_1d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_13

    :cond_1e
    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;->cno:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;->cno:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_13
    move-object v5, v3

    move-object v6, v4

    goto/16 :goto_15

    :cond_1f
    move-object v5, v3

    goto/16 :goto_15

    :cond_20
    if-eqz v5, :cond_23

    iget v1, v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$fto;->you:I

    if-lez v1, :cond_23

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->zta:[I

    iget-object v2, v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$fto;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_22

    const/4 v2, 0x6

    if-eq v1, v2, :cond_21

    move/from16 v1, v23

    move-object/from16 v7, v24

    goto :goto_14

    :cond_21
    sget-object v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->obl:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    sget v1, Landroid/os/OPDiagnoseManager;->ISSUE_POWER_NETWORK_WAKEUP:I

    goto :goto_14

    :cond_22
    sget-object v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->vdb:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    sget v1, Landroid/os/OPDiagnoseManager;->ISSUE_POWRE_NO_SIGNAL_INTERSECTION:I

    :goto_14
    invoke-virtual {v7}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer$fto;->you()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$fto;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;->you(Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;Z)Ljava/lang/String;

    move-result-object v5

    move v14, v1

    move-object v6, v5

    goto/16 :goto_c

    :cond_23
    cmpl-float v1, v31, v18

    if-ltz v1, :cond_24

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->ugm:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v3, v31

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;->ssp:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;->ssp:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    sget v2, Landroid/os/OPDiagnoseManager;->ISSUE_POWER_NO_SIGNAL:I

    :goto_15
    move-object v7, v1

    :goto_16
    move v14, v2

    goto/16 :goto_c

    :cond_24
    sget-object v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    invoke-virtual {v7}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_8

    :cond_25
    :goto_17
    cmpl-float v1, v3, v6

    if-lez v1, :cond_2f

    sget-object v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    invoke-virtual {v7}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p:Ljava/util/List;

    if-eqz v1, :cond_2e

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2e

    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2e

    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;

    iget v1, v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;->zta:I

    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->r0:Ljava/util/List;

    if-eqz v2, :cond_2a

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_18
    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->r0:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_29

    if-nez v2, :cond_26

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->r0:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatterySipper;

    move-object v4, v3

    :cond_26
    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->r0:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatterySipper;

    iget-object v3, v3, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v3, :cond_27

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->r0:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatterySipper;

    iget-object v3, v3, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    goto :goto_19

    :cond_27
    const/4 v3, -0x1

    :goto_19
    iget-object v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->r0:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatterySipper;

    iget-object v5, v5, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v5, v6, :cond_28

    if-ne v3, v1, :cond_28

    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->r0:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatterySipper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "###### Matched Sipper at ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v0, v2, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->P(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    move-object v4, v1

    goto :goto_1a

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_29
    :goto_1a
    if-eqz v4, :cond_2b

    const-string v1, ""

    invoke-direct {v0, v1, v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->P(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    goto :goto_1b

    :cond_2a
    const/4 v4, 0x0

    :cond_2b
    :goto_1b
    invoke-direct {v0, v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->r0(Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;

    invoke-virtual {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;->you()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1st-WL:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;

    invoke-virtual {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;->zta()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;

    iget-object v6, v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;->sis:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->T:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    const-string v1, "1st-WL is one of Audio skipping lists, skip audio-relative MDM-reporting"

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    sget v1, Landroid/os/OPDiagnoseManager;->ISSUE_POWER_MUSIC:I

    const/4 v2, 0x1

    goto :goto_1c

    :cond_2c
    move/from16 v1, v23

    const/4 v2, 0x0

    :goto_1c
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;

    invoke-virtual {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;->you()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->d:Lcom/android/server/power/you;

    iget-wide v10, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e0:J

    iget v8, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->h0:I

    invoke-virtual {v4, v10, v11, v8, v3}, Lcom/android/server/power/you;->rtg(JILjava/util/List;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->rtg:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I0()Z

    move-result v3

    if-eqz v3, :cond_2d

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->you:Z

    sget v1, Landroid/os/OPDiagnoseManager;->ISSUE_POWER_MUSIC:I

    const/4 v8, 0x0

    goto :goto_1d

    :cond_2d
    const/4 v3, 0x1

    move v8, v3

    goto :goto_1d

    :cond_2e
    const/4 v3, 0x1

    move v8, v3

    move/from16 v1, v23

    move-object/from16 v5, v25

    move-object/from16 v6, v26

    const/4 v2, 0x0

    :goto_1d
    move v14, v1

    move/from16 v22, v8

    move v8, v2

    goto/16 :goto_23

    :cond_2f
    const/4 v3, 0x1

    sget-object v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;->rtg:Lcom/android/server/power/OnePlusStandbyAnalyzer$BatteryOutlierType;

    invoke-virtual {v7}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->t:Ljava/util/List;

    if-eqz v1, :cond_37

    invoke-direct {v0, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->f0(Ljava/util/List;)Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;

    move-result-object v1

    if-eqz v1, :cond_36

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->zta:Ljava/lang/String;

    if-eqz v2, :cond_33

    const-string v4, "alarmtimer"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_30

    iget-object v2, v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->zta:Ljava/lang/String;

    const-string v4, "timerfd"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_33

    :cond_30
    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->R:Ljava/util/List;

    if-eqz v2, :cond_31

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_31

    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->R:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_32

    iget-object v2, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->R:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "1st-pkt:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->you:Ljava/lang/String;

    move-object/from16 v16, v2

    goto :goto_1e

    :cond_31
    const/4 v4, 0x0

    :cond_32
    move-object/from16 v5, v25

    const/16 v16, 0x0

    :goto_1e
    sget v2, Landroid/os/OPDiagnoseManager;->ISSUE_POWER_DOWNLOAD:I

    goto :goto_20

    :cond_33
    const/4 v4, 0x0

    iget-object v2, v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->zta:Ljava/lang/String;

    if-eqz v2, :cond_34

    const-string v5, "qcom_rx_wakelock"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_34

    sget v2, Landroid/os/OPDiagnoseManager;->ISSUE_POWER_DOWNLOAD:I

    goto :goto_1f

    :cond_34
    move/from16 v2, v23

    :goto_1f
    sget-object v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer$MdmFixedType;

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v16, 0x0

    :goto_20
    iget-object v6, v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->zta:Ljava/lang/String;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-eqz v16, :cond_35

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->zta()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_21

    :cond_35
    invoke-virtual {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_21
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->d:Lcom/android/server/power/you;

    iget-wide v10, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e0:J

    iget v13, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->h0:I

    invoke-virtual {v1, v10, v11, v13, v8}, Lcom/android/server/power/you;->rtg(JILjava/util/List;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->rtg:Ljava/lang/String;

    move v1, v2

    goto :goto_22

    :cond_36
    const/4 v4, 0x0

    move/from16 v1, v23

    move-object/from16 v5, v25

    move-object/from16 v6, v26

    :goto_22
    move v14, v1

    move/from16 v22, v3

    move v8, v4

    goto :goto_23

    :cond_37
    const/4 v4, 0x0

    move/from16 v22, v3

    move v8, v4

    move/from16 v14, v23

    move-object/from16 v5, v25

    move-object/from16 v6, v26

    :goto_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "###### [RootCause] :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "###### [DiagnoseCode] :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    iget-object v13, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->d:Lcom/android/server/power/you;

    iget-wide v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e0:J

    iget v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->h0:I

    iget v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->i0:F

    move-wide v15, v1

    move/from16 v17, v3

    move/from16 v18, v4

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/power/you;->ssp(IJIFLjava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->d:Lcom/android/server/power/you;

    invoke-virtual {v1}, Lcom/android/server/power/you;->tsu()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "###### [MDM_PACKAGE] :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "###### [MDM_DETAIL] :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->f:Z

    if-eqz v1, :cond_3a

    iget-boolean v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->you:Z

    if-eqz v1, :cond_38

    const-string v0, "This round of abnormal diagnoses as normal, skip MDM-reporting"

    :goto_24
    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    goto :goto_25

    :cond_38
    if-nez v8, :cond_39

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "tp"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "pn"

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "dl"

    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "appid"

    const-string v4, "NYNCG4I0TI"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e:Lnet/oneplus/odm/OpDeviceManagerInjector;

    if-eqz v3, :cond_3a

    iget-object v0, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->h:Landroid/content/Context;

    const-string v4, "standby"

    invoke-virtual {v3, v0, v4, v1, v2}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_25

    :cond_39
    const-string v0, "Directly skip audio-relative MDM-reporting"

    goto :goto_24

    :cond_3a
    :goto_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@@@@[Judge] in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long v1, v1, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    return v22
.end method

.method private I0()Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p:Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    const/4 v0, -0x1

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    iget-object v6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " nd-WL:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;

    invoke-virtual {v7}, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;->zta()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->T:Ljava/util/List;

    iget-object v7, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;

    iget-object v7, v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;->sis:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v1

    :cond_0
    if-nez v3, :cond_1

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;

    iget v0, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;->zta:I

    goto :goto_1

    :cond_1
    const/4 v6, 0x2

    if-le v3, v6, :cond_2

    goto :goto_2

    :cond_2
    iget-object v6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;

    iget v6, v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;->zta:I

    if-ne v6, v0, :cond_3

    move v5, v1

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    if-eqz v4, :cond_5

    if-eqz v5, :cond_5

    const-string p0, "Match audio-normal pattern, diagnosis as normal"

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    return v1
.end method

.method static synthetic J0(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
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

.method private L(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I:Ljava/util/List;

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
    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;

    iget-object v0, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    if-ne v0, p2, :cond_1

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;

    invoke-virtual {v0, p3, p4, p5, p6}, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->you(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static L0(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0:Z

    if-eqz v0, :cond_0

    const-string v0, "OPSA"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private M(Ljava/io/PrintWriter;)V
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

.method private N0()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p:Ljava/util/List;

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->h:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;

    iget v4, v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;->zta:I

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->O0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;

    iget v4, v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;->zta:I

    invoke-static {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer$KnownUIDs;->zta(I)Lcom/android/server/power/OnePlusStandbyAnalyzer$KnownUIDs;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    iget-object v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;

    invoke-virtual {v4, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;->sis(Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->O:Ljava/util/List;

    if-eqz v0, :cond_5

    move v0, v2

    :goto_2
    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->O:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    if-lt v0, v1, :cond_3

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->h:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->O:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;

    iget v4, v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;->zta:I

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->O0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    iget-object v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->O:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;

    iget v4, v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;->zta:I

    invoke-static {v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer$KnownUIDs;->zta(I)Lcom/android/server/power/OnePlusStandbyAnalyzer$KnownUIDs;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_4
    iget-object v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->O:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;

    invoke-virtual {v4, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;->you(Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->R:Ljava/util/List;

    if-eqz v0, :cond_8

    :goto_4
    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->R:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_8

    if-lt v2, v1, :cond_6

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->R:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;

    iget v3, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->sis:I

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->O0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->R:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;

    iget v3, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->sis:I

    invoke-static {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$KnownUIDs;->zta(I)Lcom/android/server/power/OnePlusStandbyAnalyzer$KnownUIDs;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->R:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;

    invoke-virtual {v3, v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->you(Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    :goto_5
    return-void
.end method

.method private O(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[opbugreportlite] mStandbyAbnReportingEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->kth:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", needGenBatteryOutlier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->kth:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string p1, "[opbugreportlite] report it !, in 20 sec later"

    invoke-static {p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vdw:Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;

    const/16 p1, 0x3f1

    const-wide/16 v0, 0x4e20

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;->cno(IJ)V

    goto :goto_0

    :cond_0
    const-string p1, "[opbugreportlite] NOT report it, check if need cleanup qxdm logs immediately."

    invoke-static {p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->R0()V

    :goto_0
    return-void
.end method

.method private O0(Ljava/lang/String;)Ljava/lang/String;
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

.method private P(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;
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

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, " |wLTMs="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p2, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " |pkg="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->h:Landroid/content/Context;

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

    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->k:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, " |pt="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->k:Lcom/android/internal/os/BatteryStatsHelper;

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

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private Q(Ljava/io/PrintWriter;)V
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

    sget v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->z1:F

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/power/OnePlusStandbyAnalyzer;->G1:F

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

    sget v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->A1:F

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->H1:F

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

    sget v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->B1:I

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I1:I

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

    sget v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C1:F

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->J1:F

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

    sget v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->D1:F

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->K1:F

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

    sget v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->E1:F

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L1:F

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaSimpleType;->cno:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaSimpleType;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F1:F

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaSimpleType;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaSimpleType;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Lcom/android/server/power/OnePlusStandbyAnalyzer;->M1:J

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaSimpleType;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaSimpleType;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->N1:F

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaSimpleType;->igw:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaSimpleType;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->O1:J

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private Q0(Lorg/json/JSONArray;)V
    .locals 11

    const-string v0, "[OnlineConfig], error message:"

    const-string v1, "name"

    const-string v2, "OPSA"

    if-nez p1, :cond_0

    const-string p0, "[OnlineConfig] jsonArray is null"

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1f

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "config_enable"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "value"

    if-eqz v6, :cond_1

    :try_start_1
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->gwm:Z

    invoke-virtual {p0, v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m1(Z)V

    sget-boolean v6, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0:Z

    if-eqz v6, :cond_19

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[OnlineConfig] Has config for config_enable, updated to "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->gwm:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "config_ma_criteria"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->hmo:Z

    if-nez v6, :cond_2

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iput v6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ire:F

    sget-boolean v6, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0:Z

    if-eqz v6, :cond_19

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[OnlineConfig] Has config for config_ma_criteria, updated to "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ire:F

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    sget-boolean v6, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0:Z

    if-eqz v6, :cond_19

    const-string v6, "[OnlineConfig] Has config for config_ma_criteria, but adb-configuration is set, so skip this way"

    goto :goto_1

    :cond_3
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "config_min_period"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->bud:J

    sget-boolean v6, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0:Z

    if-eqz v6, :cond_19

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[OnlineConfig] Has config for config_min_period, updated to "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->bud:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_4
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "config_enable_self_diagnosis"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ivd:Z

    sget-boolean v6, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0:Z

    if-eqz v6, :cond_19

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[OnlineConfig] Has config for config_enable_self_diagnosis, updated to "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ivd:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "config_uwl_criteria"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sget-object v8, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-virtual {p0, v8, v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p1(Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;F)V

    sget-boolean v8, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0:Z

    if-eqz v8, :cond_19

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig] Has config for config_uwl_criteria, updated to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "config_uwl_criteria_minor"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sget-object v8, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-virtual {p0, v8, v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p1(Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;F)V

    sget-boolean v8, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0:Z

    if-eqz v8, :cond_19

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig] Has config for config_uwl_criteria_minor, updated to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "config_kwl_criteria"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sget-object v8, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-virtual {p0, v8, v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p1(Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;F)V

    sget-boolean v8, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0:Z

    if-eqz v8, :cond_19

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig] Has config for config_kwl_criteria, updated to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "config_kwl_criteria_minor"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sget-object v8, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-virtual {p0, v8, v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p1(Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;F)V

    sget-boolean v8, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0:Z

    if-eqz v8, :cond_19

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig] Has config for config_kwl_criteria_minor, updated to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "config_wr_criteria"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    sget-object v8, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->rtg:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    int-to-float v9, v6

    invoke-virtual {p0, v8, v9}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p1(Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;F)V

    sget-boolean v8, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0:Z

    if-eqz v8, :cond_19

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig] Has config for config_wr_criteria, updated to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "config_wr_criteria_minor"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    sget-object v8, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->ssp:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    int-to-float v9, v6

    invoke-virtual {p0, v8, v9}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p1(Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;F)V

    sget-boolean v8, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0:Z

    if-eqz v8, :cond_19

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig] Has config for config_wr_criteria_minor, updated to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_b
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "config_sb_criteria"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sget-object v8, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->cno:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-virtual {p0, v8, v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p1(Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;F)V

    sget-boolean v8, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0:Z

    if-eqz v8, :cond_19

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig] Has config for config_sb_criteria, updated to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_c
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "config_sb_criteria_minor"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sget-object v8, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->kth:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-virtual {p0, v8, v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p1(Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;F)V

    sget-boolean v8, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0:Z

    if-eqz v8, :cond_19

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig] Has config for config_sb_criteria_minor, updated to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_d
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "config_sn_criteria"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sget-object v8, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->qbh:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-virtual {p0, v8, v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p1(Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;F)V

    sget-boolean v8, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0:Z

    if-eqz v8, :cond_19

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig] Has config for config_sn_criteria, updated to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_e
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "config_sn_criteria_minor"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sget-object v8, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->oif:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-virtual {p0, v8, v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p1(Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;F)V

    sget-boolean v8, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0:Z

    if-eqz v8, :cond_19

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig] Has config for config_sn_criteria_minor, updated to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_f
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "config_unacc_criteria"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sget-object v8, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->bio:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-virtual {p0, v8, v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p1(Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;F)V

    sget-boolean v8, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0:Z

    if-eqz v8, :cond_19

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig] Has config for config_unacc_criteria, updated to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_10
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "config_unacc_criteria_minor"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sget-object v8, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->igw:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-virtual {p0, v8, v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p1(Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;F)V

    sget-boolean v8, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0:Z

    if-eqz v8, :cond_19

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig] Has config for config_unacc_criteria_minor, updated to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_11
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "config_minor_criteria"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sget-object v8, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->wtn:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-virtual {p0, v8, v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p1(Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;F)V

    sget-boolean v8, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0:Z

    if-eqz v8, :cond_19

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig] Has config for config_minor_criteria, updated to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_12
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "config_time_slm_sec"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sget-object v8, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->gck:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-virtual {p0, v8, v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p1(Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;F)V

    sget-boolean v8, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0:Z

    if-eqz v8, :cond_19

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig] Has config for config_time_slm_sec, updated to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_13
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "config_sleep_acc_dur_criteria"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sget-object v8, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->dma:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-virtual {p0, v8, v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p1(Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;F)V

    sget-boolean v8, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0:Z

    if-eqz v8, :cond_19

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig] Has config for config_sleep_acc_dur_criteria, updated to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_14
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "config_sleepcount_criteria"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sget-object v8, Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;->ywr:Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;

    invoke-virtual {p0, v8, v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p1(Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;F)V

    sget-boolean v8, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0:Z

    if-eqz v8, :cond_19

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig] Has config for config_sleepcount_criteria, updated to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_15
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "qxdm_enable"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->i1(Z)V

    sget-boolean v8, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0:Z

    if-eqz v8, :cond_19

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig] Has config for qxdm_enable, updated to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_16
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "qxdm_min_grab_period"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->j1(J)V

    sget-boolean v6, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0:Z

    if-eqz v6, :cond_19

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[OnlineConfig] Has config for qxdm_min_grab_period, updated to "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_17
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "qxdm_min_grab_gap"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->h1(J)V

    sget-boolean v6, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0:Z

    if-eqz v6, :cond_19

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[OnlineConfig] Has config for qxdm_min_grab_gap, updated to "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_18
    sget-boolean v6, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0:Z

    if-eqz v6, :cond_19

    const-string v6, "[OnlineConfig] No config for updating, no updated"

    goto/16 :goto_1

    :cond_19
    :goto_3
    const-string v6, "ro.build.beta"

    invoke-static {v6, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    const/4 v8, 0x1

    if-eq v6, v8, :cond_1b

    const-string v6, "ro.build.alpha"

    invoke-static {v6, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v8, :cond_1a

    goto :goto_4

    :cond_1a
    move v8, v3

    :cond_1b
    :goto_4
    if-eqz v8, :cond_1e

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "config_beta_config_enable"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    sget-boolean v6, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0:Z

    if-eqz v6, :cond_1c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[OnlineConfig] Has config for config_beta_enable, begin "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->gwm:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->gwm:Z

    invoke-virtual {p0, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m1(Z)V

    :cond_1d
    sget-boolean v5, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0:Z

    if-eqz v5, :cond_1e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] Has config for config_beta_enable, end to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->gwm:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    :goto_5
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    return-void
.end method

.method private R(Ljava/io/PrintWriter;)V
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

.method private S(Ljava/io/PrintWriter;)V
    .locals 4

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "**** Standby Diagnosis KWL info ****"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->t:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->t:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->t:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;

    iget-object v2, v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->zta:Ljava/lang/String;

    const-string v3, "PowerManagerService.WakeLocks"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->t:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;

    invoke-virtual {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    :cond_0
    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private T(Ljava/util/List;)Ljava/lang/String;
    .locals 2
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

    invoke-virtual {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->sis()Ljava/lang/String;

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

.method private U(Ljava/io/PrintWriter;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "**** Standby Diagnosis pkt info ****"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->R:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->R:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->R:Ljava/util/List;

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

.method private V(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
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

.method private W(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
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

.method private X(Ljava/io/PrintWriter;)V
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

.method private Y(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$fto;",
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

    check-cast v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$fto;

    invoke-virtual {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$fto;->toString()Ljava/lang/String;

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

.method private Z(Ljava/io/PrintWriter;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "**** Telephony Abnormal Counting Info ****"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->J:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->J:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->J:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$fto;

    invoke-virtual {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$fto;->you()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private Z0()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->t0:Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->h:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->u0:Lcom/android/server/power/OnePlusStandbyAnalyzer$ear;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string p0, "Start listen SIM Change events..."

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    return-void
.end method

.method private a()V
    .locals 19

    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->B:J

    iget-wide v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->u:J

    sub-long/2addr v3, v5

    iput-wide v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e0:J

    iget-wide v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C:J

    iget-wide v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->v:J

    sub-long/2addr v3, v5

    iput-wide v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->g0:J

    iget-wide v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->D:J

    iget-wide v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->w:J

    sub-long/2addr v3, v5

    iput-wide v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p0:J

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->s:Ljava/util/Map;

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->l0:J

    iget-object v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->r:Ljava/util/Map;

    if-eqz v5, :cond_3

    iget-object v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->q:Ljava/util/Map;

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    iget-object v8, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->q:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v8, v14, v8

    move-wide v12, v8

    goto :goto_1

    :cond_0
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-wide v12, v14

    :goto_1
    iget-object v10, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->s:Ljava/util/Map;

    new-instance v11, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-object v8, v11

    move-object v9, v7

    move-object v6, v10

    move-object v3, v11

    move-wide v10, v12

    move-object/from16 v18, v5

    move-wide v4, v12

    move-wide/from16 v12, v16

    invoke-direct/range {v8 .. v15}, Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;-><init>(Ljava/lang/String;JJJ)V

    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "PowerManagerService.WakeLocks"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-wide v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->l0:J

    :cond_1
    move-object/from16 v5, v18

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->t:Ljava/util/List;

    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->s:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->t:Ljava/util/List;

    iget-object v4, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->E0:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->z:Ljava/util/Map;

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->n0:J

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->y:Ljava/util/Map;

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    iget-object v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->x:Ljava/util/Map;

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->x:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sub-int/2addr v5, v9

    goto :goto_3

    :cond_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :goto_3
    iget-object v9, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->z:Ljava/util/Map;

    new-instance v10, Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v10, v6, v5, v8, v7}, Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;-><init>(Ljava/lang/String;III)V

    invoke-interface {v9, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->n0:J

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->n0:J

    goto :goto_2

    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->A:Ljava/util/List;

    iget-object v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->z:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->A:Ljava/util/List;

    new-instance v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$ywr;

    invoke-direct {v5, v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$ywr;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->G:Ljava/util/List;

    const-wide/16 v5, 0x0

    iput-wide v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->o0:J

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F:Ljava/util/List;

    if-eqz v3, :cond_8

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->E:Ljava/util/List;

    if-eqz v3, :cond_8

    move v3, v4

    :goto_4
    sget v5, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    if-ge v3, v5, :cond_8

    iget-object v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v7, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->E:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iget-object v7, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->G:Ljava/util/List;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    if-gt v3, v7, :cond_7

    iget-wide v7, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->o0:J

    add-long/2addr v7, v5

    iput-wide v7, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->o0:J

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->l:Ljava/util/List;

    iget-object v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m:Ljava/util/List;

    invoke-direct {v0, v3, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->c(Ljava/util/List;Ljava/util/List;)V

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->n:Ljava/util/Map;

    iget-object v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->o:Ljava/util/Map;

    invoke-direct {v0, v3, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->d(Ljava/util/Map;Ljava/util/Map;)V

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Q:Ljava/util/Map;

    invoke-virtual {v0, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->n(Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->R:Ljava/util/List;

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->N:Ljava/util/Map;

    iget-object v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->P:Ljava/util/Map;

    invoke-direct {v0, v3, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e(Ljava/util/Map;Ljava/util/Map;)V

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->K:Ljava/util/Map;

    iget-object v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L:Ljava/util/Map;

    invoke-direct {v0, v3, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->f(Ljava/util/Map;Ljava/util/Map;)V

    iget-wide v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->g0:J

    iget-wide v7, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->l0:J

    sub-long/2addr v5, v7

    iput-wide v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m0:J

    sget-boolean v3, Lcom/android/server/power/OnePlusStandbyAnalyzer;->H0:Z

    if-eqz v3, :cond_9

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p:Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->D(Ljava/util/List;)V

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->t:Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->r(Ljava/util/List;)V

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->A:Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->E(Ljava/util/List;)V

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->R:Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->s(Ljava/util/List;)V

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->G:Ljava/util/List;

    const-string v5, "Diff-Signal"

    invoke-direct {v0, v5, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->x(Ljava/lang/String;Ljava/util/List;)V

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->H:Ljava/util/List;

    const-string v5, "Diff-RPM"

    invoke-direct {v0, v5, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->v(Ljava/lang/String;Ljava/util/List;)V

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I:Ljava/util/List;

    const-string v5, "Diff-RPMMaster"

    invoke-direct {v0, v5, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->u(Ljava/lang/String;Ljava/util/List;)V

    iget-object v3, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->M:Ljava/util/List;

    const-string v5, "Diff-WiFiWakeUp"

    invoke-direct {v0, v5, v3, v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->G(Ljava/lang/String;Ljava/util/List;Z)V

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@@@[calculateDiff] in "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    return-void
.end method

.method private a1()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->J:Ljava/util/List;

    invoke-static {}, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;->values()[Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->J:Ljava/util/List;

    new-instance v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$fto;

    invoke-direct {v5, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$fto;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->i:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    const-string v0, "Start listen Telephony Anomaly..."

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->i:Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->y0:Landroid/telephony/PhoneStateListener;

    const v1, 0x10000001

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    return-void
.end method

.method private b(Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->H:Ljava/util/List;

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

    check-cast v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;

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
    iget-object v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->H:Ljava/util/List;

    new-instance v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;

    invoke-direct {v5, v1, v3, v0, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;III)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b0(Ljava/io/PrintWriter;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "**** Standby Diagnosis WL info ****"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;

    invoke-virtual {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$obl;->you()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private b1(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/BatterySipper;)V
    .locals 8

    iget-wide v0, p2, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const-string v2, "]"

    const-string v3, ", "

    if-gez v0, :cond_0

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

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    sub-long/2addr v4, v6

    iput-wide v4, p2, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_1

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

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    move v0, v1

    :cond_1
    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    sub-double/2addr v4, v6

    iput-wide v4, p2, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_2

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

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    move v0, v1

    :cond_2
    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    sub-double/2addr v4, v6

    iput-wide v4, p2, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_3

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

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    move v0, v1

    :cond_3
    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    sub-double/2addr v4, v6

    iput-wide v4, p2, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_4

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

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    move v0, v1

    :cond_4
    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    sub-double/2addr v4, v6

    iput-wide v4, p2, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_5

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

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    move v0, v1

    :cond_5
    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    sub-double/2addr v4, v6

    iput-wide v4, p2, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_6

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

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    move v0, v1

    :cond_6
    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    sub-double/2addr v4, v6

    iput-wide v4, p2, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_7

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

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    move v0, v1

    :cond_7
    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    sub-double/2addr v4, v6

    iput-wide v4, p2, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_8

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

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    move v0, v1

    :cond_8
    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    sub-double/2addr v4, v6

    iput-wide v4, p2, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_9

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

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    move v0, v1

    :cond_9
    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    sub-double/2addr v4, v6

    iput-wide v4, p2, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_a

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

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    move v0, v1

    :cond_a
    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    sub-double/2addr v4, v6

    iput-wide v4, p2, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-wide v6, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_b

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

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    move v1, v0

    :goto_1
    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-wide v4, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    sub-double/2addr v2, v4

    iput-wide v2, p2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    if-eqz v1, :cond_c

    const-string v0, "Abn-Start"

    invoke-direct {p0, v0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->P(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    const-string p1, "Abn-End"

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->P(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    :cond_c
    return-void
.end method

.method static synthetic bio(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Lcom/android/server/am/BatteryStatsService;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->g:Lcom/android/server/am/BatteryStatsService;

    return-object p0
.end method

.method static synthetic bud(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->obl:Z

    return p0
.end method

.method static synthetic bvj(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->x0:Z

    return p0
.end method

.method private c(Ljava/util/List;Ljava/util/List;)V
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

    invoke-direct {p0, p2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->r0:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->q0:Lcom/android/internal/os/BatterySipper;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->s0:D

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

    invoke-static {p2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->r0:Ljava/util/List;

    if-eqz p2, :cond_5

    const/4 p2, 0x0

    move v0, p2

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->r0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->r0:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatterySipper;

    iget-object v3, v2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v4, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v3, v4, :cond_0

    iput-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->q0:Lcom/android/internal/os/BatterySipper;

    :cond_0
    move v3, p2

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatterySipper;

    invoke-direct {p0, v2, v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->x0(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/BatterySipper;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0, v4, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->b1(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/BatterySipper;)V

    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-nez v1, :cond_3

    const-string v3, "No-Match"

    invoke-direct {p0, v3, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->P(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    :cond_3
    iget-wide v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->s0:D

    iget-wide v5, v2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    add-double/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->s0:D

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->r0:Ljava/util/List;

    new-instance p2, Lcom/android/server/power/OnePlusStandbyAnalyzer$tsu;

    invoke-direct {p2, p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$tsu;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_3

    :cond_5
    const-string p0, "## fetal error, mStandbySipperList == null"

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    :goto_3
    return-void

    :cond_6
    const-string p0, "## one of sippers is null, can\'t calculate just return."

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    return-void
.end method

.method private c0(Ljava/io/PrintWriter;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "**** Standby Diagnosis WR info ****"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->A:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->A:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->A:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;

    invoke-virtual {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method static synthetic cgv(Lcom/android/server/power/OnePlusStandbyAnalyzer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->O(Z)V

    return-void
.end method

.method static synthetic cjf(Lcom/android/server/power/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic cno(Lcom/android/server/power/OnePlusStandbyAnalyzer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ssp:Z

    return p1
.end method

.method private d(Ljava/util/Map;Ljava/util/Map;)V
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

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p:Ljava/util/List;

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
    iget-object v10, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p:Ljava/util/List;

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
    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->D0:Ljava/util/Comparator;

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-void
.end method

.method static synthetic dma(Lcom/android/server/power/OnePlusStandbyAnalyzer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cno:Z

    return p1
.end method

.method private e(Ljava/util/Map;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->O:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->k0:I

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

    check-cast v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;

    iget v3, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;->sis:I

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;

    if-eqz v1, :cond_0

    iget v1, v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;->sis:I

    sub-int v4, v3, v1

    goto :goto_1

    :cond_0
    move v1, v0

    move v4, v3

    :goto_1
    iget-object v5, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->O:Ljava/util/List;

    new-instance v6, Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v6, v2, v4, v1, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;-><init>(IIII)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->k0:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->k0:I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->O:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->z0:Ljava/util/Comparator;

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-void
.end method

.method private e0(Ljava/io/PrintWriter;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "**** Standby Diagnosis Wifi Wakeup info ****"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->M:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->M:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->M:Ljava/util/List;

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

.method private e1()V
    .locals 2

    const-string v0, "Trigger QXDM cleanUp task..."

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "net.oneplus.powercontroller.intent.CLEAN_QXDM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.oem.oemlogkit"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->h:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic ear(Lcom/android/server/power/OnePlusStandbyAnalyzer;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->h0:I

    return p1
.end method

.method private f(Ljava/util/Map;Ljava/util/Map;)V
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

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->M:Ljava/util/List;

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
    iget-object v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->M:Ljava/util/List;

    new-instance v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$cgv;

    invoke-direct {v5, v1, v3, v0, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$cgv;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer$WifiWakeUpType;III)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->M:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->B0:Ljava/util/Comparator;

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-void
.end method

.method private f0(Ljava/util/List;)Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;
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

    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->S:Ljava/util/List;

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
    const/4 v3, 0x3

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

    invoke-static {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private f1(I)V
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

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void
.end method

.method static synthetic fto(Lcom/android/server/power/OnePlusStandbyAnalyzer;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->f0:J

    return-wide p1
.end method

.method private g0(Ljava/util/List;)Lcom/android/server/power/OnePlusStandbyAnalyzer$fto;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$fto;",
            ">;)",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$fto;"
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

    check-cast v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$fto;

    iget-object v0, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$fto;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;->rtg:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    if-eq v0, v1, :cond_1

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$fto;

    iget-object v0, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$fto;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

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

    check-cast p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$fto;

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    return-object p0
.end method

.method static synthetic gck(Lcom/android/server/power/OnePlusStandbyAnalyzer;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Q0(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic gwm(Lcom/android/server/power/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->A(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method static synthetic hmo(Lcom/android/server/power/OnePlusStandbyAnalyzer;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->j0:F

    return p1
.end method

.method private i0(Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;)J
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;

    iget-object v3, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    sget-object v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;->ssp:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;

    iget-object v3, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    if-eq v3, p1, :cond_1

    iget-object v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;

    iget-wide v3, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->ssp:J

    cmp-long v3, v0, v3

    if-gez v3, :cond_1

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I:Ljava/util/List;

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

.method static synthetic ibl(Lcom/android/server/power/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p(Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic igw(Lcom/android/server/power/OnePlusStandbyAnalyzer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->f1(I)V

    return-void
.end method

.method static synthetic ire(Lcom/android/server/power/OnePlusStandbyAnalyzer;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->i0:F

    return p1
.end method

.method static synthetic irq(Lcom/android/server/power/OnePlusStandbyAnalyzer;)F
    .locals 0

    iget p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ire:F

    return p0
.end method

.method static synthetic ivd(Lcom/android/server/power/OnePlusStandbyAnalyzer;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->bud:J

    return-wide v0
.end method

.method private j(Ljava/util/List;)Z
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

    invoke-static {p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return p0
.end method

.method private k(Ljava/util/List;)Z
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

    invoke-static {p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return p0
.end method

.method private k1(Z)V
    .locals 3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Update QXDM packing-flag to "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "1"

    const-string v1, "0"

    if-eqz p1, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    const-string p0, "persist.sys.standby_qxdm"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic kth(Lcom/android/server/power/OnePlusStandbyAnalyzer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->bvj:Z

    return p1
.end method

.method private l()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->J:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->J:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->J:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$fto;

    invoke-virtual {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$fto;->zta()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private l1(Z)V
    .locals 3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Update QXDM recording-flag to "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "1"

    const-string v1, "0"

    if-eqz p1, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    const-string p0, "persist.sys.standby_qxdm_recording"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic les(Lcom/android/server/power/OnePlusStandbyAnalyzer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->obl:Z

    return p1
.end method

.method static synthetic lqr(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->a()V

    return-void
.end method

.method private m(Ljava/util/List;)Ljava/util/List;
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

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method

.method private o(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$qbh;",
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

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

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

.method private o1(Landroid/telephony/ServiceState;)V
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

    invoke-static {p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->v0:Z

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_0
    const-string p1, "[ServiceState] STATE_POWER_OFF"

    invoke-static {p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->v0:Z

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_1
    const-string p1, "[ServiceState] STATE_EMERGENCY_ONLY"

    invoke-static {p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->v0:Z

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_2
    const-string p1, "[ServiceState] STATE_OUT_OF_SERVICE"

    invoke-static {p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->v0:Z

    if-eqz p1, :cond_4

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->x0:Z

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->w0:Lcom/android/server/power/OnePlusStandbyAnalyzer$ugm;

    invoke-virtual {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$ugm;->tsu()V

    goto :goto_2

    :cond_3
    const-string p1, "[ServiceState] STATE_IN_SERVICE"

    invoke-static {p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->v0:Z

    if-eqz p1, :cond_4

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->x0:Z

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->w0:Lcom/android/server/power/OnePlusStandbyAnalyzer$ugm;

    invoke-virtual {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$ugm;->rtg()V

    :cond_4
    :goto_2
    return-void
.end method

.method static synthetic obl(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C0()V

    return-void
.end method

.method static synthetic oif(Lcom/android/server/power/OnePlusStandbyAnalyzer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->k1(Z)V

    return-void
.end method

.method static synthetic oxb(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->l()V

    return-void
.end method

.method private p(Ljava/lang/String;Ljava/util/List;Z)V
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

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

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
    invoke-direct {p0, p1, v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->P(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
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

    :cond_3
    const-string p0, "sippers == null or sippers.size() == 0"

    :goto_1
    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    return-void
.end method

.method private q()V
    .locals 3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WL=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->z1:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->G1:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "] |KWL=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->A1:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->H1:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "] |KW=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->B1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] |SB=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C1:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->J1:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "] |HUC=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->E1:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L1:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "] |MINOR="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F1:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " |RPM_TSLM_SEC="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->M1:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " |RPM_SAD="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->N1:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " |RPM_SLPI_SC="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->O1:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic qbh(Lcom/android/server/power/OnePlusStandbyAnalyzer;Lcom/android/server/power/OnePlusStandbyAnalyzer$TriggerQxdmReason;)Lcom/android/server/power/OnePlusStandbyAnalyzer$TriggerQxdmReason;
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->gck:Lcom/android/server/power/OnePlusStandbyAnalyzer$TriggerQxdmReason;

    return-object p1
.end method

.method static synthetic qeg(Lcom/android/server/power/OnePlusStandbyAnalyzer;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->lqr:J

    return-wide v0
.end method

.method private r(Ljava/util/List;)V
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

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

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

.method private r0(Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->h:Landroid/content/Context;

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

    invoke-direct {p0, v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->O0(Ljava/lang/String;)Ljava/lang/String;

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

.method static synthetic rtg(Lcom/android/server/power/OnePlusStandbyAnalyzer;Landroid/telephony/ServiceState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->o1(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method private s(Ljava/util/List;)V
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

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

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

.method static synthetic sis(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Lcom/android/server/power/OnePlusStandbyAnalyzer$ugm;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->w0:Lcom/android/server/power/OnePlusStandbyAnalyzer$ugm;

    return-object p0
.end method

.method static synthetic ssp(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ssp:Z

    return p0
.end method

.method private t(Ljava/lang/String;Ljava/lang/String;)V
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

    invoke-static {p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

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

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v1, p1

    const-wide/16 v3, 0x1388

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    const-string p0, "**** Exceed read timeout, force exit ***"

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V
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

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V
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

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V
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

.method static synthetic tsu(Lcom/android/server/power/OnePlusStandbyAnalyzer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->v0:Z

    return p1
.end method

.method private u(Ljava/lang/String;Ljava/util/List;)V
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

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "list == null"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method static synthetic ugm(Lcom/android/server/power/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->x(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private v(Ljava/lang/String;Ljava/util/List;)V
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

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "list == null"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method static synthetic vdb(Lcom/android/server/power/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->t(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic vdw(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->fto:Z

    return p0
.end method

.method static synthetic veq(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->H0()Z

    move-result p0

    return p0
.end method

.method static synthetic vju()J
    .locals 2

    sget-wide v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->M1:J

    return-wide v0
.end method

.method private w(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;",
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

    check-cast v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;

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

    invoke-static {p2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic wtn(Lcom/android/server/power/OnePlusStandbyAnalyzer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->U:Z

    return p1
.end method

.method private x(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ge p0, p1, :cond_1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "list == null"

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private x0(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/BatterySipper;)Z
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

.method static synthetic you(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->h:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic ywr(Lcom/android/server/power/OnePlusStandbyAnalyzer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->wtn:Z

    return p1
.end method

.method static synthetic zgw(Lcom/android/server/power/OnePlusStandbyAnalyzer;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->W:Z

    return p0
.end method

.method static synthetic zta()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0:Z

    return v0
.end method


# virtual methods
.method public C(Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->z0:Ljava/util/Comparator;

    invoke-static {v0, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->B(Ljava/lang/String;Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public declared-synchronized I(ZLcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;Z)V
    .locals 10

    monitor-enter p0

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/16 v3, 0x3ec

    if-eqz p1, :cond_10

    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ssp:Z

    if-eqz v4, :cond_f

    const-string v4, "persist.sys.qxdm"

    const-string v5, "no"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "yes"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string p1, "OPSA"

    const-string p2, "oops, QXDM is under recoding by oemlogkit, so do nothing"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->g()Z

    move-result v4

    if-eqz v4, :cond_e

    iget-boolean v5, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->kth:Z

    if-eqz v5, :cond_e

    iget-boolean v5, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->bio:Z

    if-eqz v5, :cond_e

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->u:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-ltz v8, :cond_d

    iget-wide v8, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ywr:J

    cmp-long v4, v4, v8

    if-gez v4, :cond_1

    goto/16 :goto_7

    :cond_1
    iget-wide v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->qbh:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->qbh:J

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->dma:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    const-string p1, "OPSA"

    const-string p2, "oops, away from the latest QXDM grabbing is too short, so skip this round QXDM recording"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    iget-boolean v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->wtn:Z

    if-nez v4, :cond_c

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->wtn:Z

    const-string v5, "it\'s time to enable 1st-QXDM-recording now under this round of standby period"

    invoke-static {v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    sget-object v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->you:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v5, p3

    const/4 v5, 0x2

    if-eq p3, v4, :cond_4

    if-eq p3, v5, :cond_3

    goto :goto_1

    :cond_3
    sget-object p3, Lcom/android/server/power/OnePlusStandbyAnalyzer$TriggerQxdmReason;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$TriggerQxdmReason;

    :goto_0
    iput-object p3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->gck:Lcom/android/server/power/OnePlusStandbyAnalyzer$TriggerQxdmReason;

    goto :goto_1

    :cond_4
    sget-object p3, Lcom/android/server/power/OnePlusStandbyAnalyzer$TriggerQxdmReason;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$TriggerQxdmReason;

    goto :goto_0

    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Triggering Reason : "

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->gck:Lcom/android/server/power/OnePlusStandbyAnalyzer$TriggerQxdmReason;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->igw:Z

    if-eqz p3, :cond_5

    const-string p1, "OPSA"

    const-string p2, "QXDM is still under recording, do nothing."

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_5
    iput-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->igw:Z

    const-string p1, "OPSA"

    const-string p3, "Start QXDM recording..."

    invoke-static {p1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cno:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->qbh:J

    iput v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->oif:I

    sget-object p1, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->zta:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v4, :cond_9

    if-eq p1, v5, :cond_8

    if-eq p1, v1, :cond_7

    if-eq p1, v0, :cond_6

    const-string p1, "persist.sys.power_mask"

    const-string p2, "service"

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "OPSA"

    const-string p2, "Copy service-mask (rest.)"

    :goto_2
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    const-string p1, "persist.sys.power_mask"

    const-string p2, "service"

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "OPSA"

    const-string p2, "Copy service-mask"

    goto :goto_2

    :cond_7
    const-string p1, "persist.sys.power_mask"

    const-string p2, "ims"

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "OPSA"

    const-string p2, "Copy ims-mask"

    goto :goto_2

    :cond_8
    const-string p1, "persist.sys.power_mask"

    const-string p2, "data"

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "OPSA"

    const-string p2, "Copy data-mask"

    goto :goto_2

    :cond_9
    const-string p1, "persist.sys.power_mask"

    const-string p2, "service"

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "OPSA"

    const-string p2, "Copy service-mask"

    goto :goto_2

    :goto_3
    const-string p1, "persist.vendor.diag.max.num"

    const-string p2, "2"

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "persist.vendor.diag.max.size"

    const-string p2, "25"

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->l1(Z)V

    const-string p1, "persist.sys.qxdm"

    const-string p2, "yes"

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "persist.vendor.qxdm.copymask"

    const-string p2, "1"

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "diag_mdlog_start"

    invoke-static {p1}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    const-string p1, "OPSA"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "And schedule "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_a

    const-string p3, "20 sec"

    goto :goto_4

    :cond_a
    const-string p3, "2 min"

    :goto_4
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " later to stop"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vdw:Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;

    if-eqz p4, :cond_b

    const-wide/16 p2, 0x4e20

    goto :goto_5

    :cond_b
    const-wide/32 p2, 0x1d4c0

    :goto_5
    invoke-virtual {p1, v3, p2, p3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;->cno(IJ)V

    goto/16 :goto_9

    :cond_c
    const-string p1, "already have telephony-abn action, do nothing."

    :goto_6
    invoke-static {p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_d
    :goto_7
    const-string p1, "OPSA"

    const-string p2, "oops, not satisfy standby-gap, so skip this round QXDM recording"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_e
    :try_start_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "BugReportLite:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " | abn-reporting: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->kth:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " | qxdm-grab: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->bio:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", do nothing when telephony-abn in standby period"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_f
    const-string p1, "Not under standby period, do nothing when telephony abnormal"

    goto :goto_6

    :cond_10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Stop QXDM recording by reason : "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->igw:Z

    const/4 p4, 0x5

    if-eqz p2, :cond_14

    iput-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->igw:Z

    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vdw:Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;

    invoke-virtual {p1, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;->ssp(I)V

    const-string p1, "persist.sys.qxdm"

    const-string p2, "no"

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->l1(Z)V

    const-string p1, "diag_mdlog_stop"

    invoke-static {p1}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    sget-object p1, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->you:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/16 p2, 0x3ef

    const-wide/16 v2, 0xbb8

    if-eq p1, v1, :cond_13

    if-eq p1, v0, :cond_12

    if-eq p1, p4, :cond_11

    goto :goto_9

    :cond_11
    const-string p1, "OPSA"

    const-string p2, "Schedule 3 sec later to execute vendor clean-up task directly"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vdw:Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;

    const/16 p2, 0x3ed

    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;->cno(IJ)V

    goto :goto_9

    :cond_12
    const-string p1, "OPSA"

    const-string p3, "Schedule 3 sec later to execute copy-qxdm-to-sdcard task."

    invoke-static {p1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vdw:Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;

    :goto_8
    invoke-virtual {p1, p2, v2, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;->cno(IJ)V

    goto :goto_9

    :cond_13
    const-string p1, "OPSA"

    const-string p3, "Schedule 3 sec later to execute copy-qxdm-to-sdcard task."

    invoke-static {p1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vdw:Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;

    goto :goto_8

    :cond_14
    const-string p1, "QXDM is already disabled, do nothing."

    invoke-static {p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    sget-object p1, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->you:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, p4, :cond_15

    goto :goto_9

    :cond_15
    iget-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cno:Z

    if-eqz p1, :cond_16

    const-string p1, "[opbugreportlite] Ever gen-QXDM logs, so schedule 10 sec later to cleanUp Sdcard\'s QXDM logs."

    invoke-static {p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vdw:Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;

    const/16 p2, 0x3ee

    const-wide/16 p3, 0x2710

    invoke-virtual {p1, p2, p3, p4}, Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;->cno(IJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_16
    :goto_9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public J(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->fto:Z

    return-void
.end method

.method public K()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter First LightIdle, schedule to SNAPSHOT in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms, now="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPSA"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vdw:Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;

    new-instance v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$ssp;

    invoke-direct {v1, p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$ssp;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V

    iget-wide v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;->tsu(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public K0(Z)V
    .locals 7

    iget-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cjf:J

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    const-string v6, "OPSA"

    if-nez v5, :cond_1

    sget-boolean p1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0:Z

    if-eqz p1, :cond_7

    const-string p1, "[opbugreportlite] Leaving DeepIdle, but reset, so skip"

    :goto_0
    invoke-static {v6, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_1
    sub-long/2addr v1, v3

    iget-boolean v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->a:Z

    if-eqz v3, :cond_6

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->fto:Z

    if-eqz p1, :cond_2

    iget-wide v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->lqr:J

    goto :goto_1

    :cond_2
    iget-wide v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->bud:J

    :goto_1
    cmp-long p1, v1, v3

    if-lez p1, :cond_6

    :cond_3
    iget p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ear:I

    if-lez p1, :cond_7

    iget-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->fto:Z

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cgv:I

    goto :goto_2

    :cond_4
    iget p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->oxb:I

    iget v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vdb:I

    sub-int/2addr p1, v0

    :goto_2
    sget-boolean v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[opbugreportlite] Leaving DeepIdle, period = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " (ms), batteryLevel = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vdb:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", levelDrop = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", start to evaulate the battery-drain."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->w0(IJ)Z

    move-result v0

    goto :goto_3

    :cond_6
    sget-boolean p1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0:Z

    if-eqz p1, :cond_7

    const-string p1, "[opbugreportlite] Leaving DeepIdle, too short, so skip"

    goto :goto_0

    :cond_7
    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->z0(Z)V

    return-void
.end method

.method public M0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->U:Z

    return-void
.end method

.method public N()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->j:Lcom/oneplus/os/IOnePlusExService;

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->j:Lcom/oneplus/os/IOnePlusExService;

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

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V
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

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public P0()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cjf:J

    return-void
.end method

.method public R0()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cno:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->D0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e1()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cno:Z

    goto :goto_1

    :cond_0
    const-string p0, "oops, although diagnose as normal, but QXDM log is not ready, no way to clean it :("

    goto :goto_0

    :cond_1
    const-string p0, "No need to cleanup due to no qxdm generation at this round."

    :goto_0
    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public S0(Lcom/android/server/am/BatteryStatsService;)V
    .locals 3

    const-string v0, "OPSA"

    const-string v1, "setIn BatteryStatsService, and init rest part at this moment"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->g:Lcom/android/server/am/BatteryStatsService;

    new-instance p1, Lcom/android/server/power/you;

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->h:Landroid/content/Context;

    const-string v1, "/data/system/power/diagnosis_standby.txt"

    const/16 v2, 0x28

    invoke-direct {p1, v1, v2, v0}, Lcom/android/server/power/you;-><init>(Ljava/lang/String;ILandroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->d:Lcom/android/server/power/you;

    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->h:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->i:Landroid/telephony/TelephonyManager;

    new-instance p1, Lcom/android/internal/os/BatteryStatsHelper;

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->h:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, v1}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;ZZ)V

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->k:Lcom/android/internal/os/BatteryStatsHelper;

    new-instance p1, Lcom/android/server/power/OnePlusStandbyAnalyzer$ear;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$ear;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;Lcom/android/server/power/OnePlusStandbyAnalyzer$ssp;)V

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->u0:Lcom/android/server/power/OnePlusStandbyAnalyzer$ear;

    new-instance p1, Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;

    invoke-direct {p1, p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;)V

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vdw:Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;

    invoke-direct {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->A0()V

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

    const-string v1, "/d/rpm_stats"

    sput-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->n1:Ljava/lang/String;

    const-string v1, "/d/rpm_master_stats"

    sput-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p1:Ljava/lang/String;

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->q1:Ljava/lang/String;

    const-string v0, "/sys/kernel/debug/wlan_wakeup/wlan_wakeup_reason"

    sput-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->x1:Ljava/lang/String;

    :cond_1
    const-string v0, "kona"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->W:Z

    :cond_2
    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->S:Ljava/util/List;

    const-string v1, "PowerManagerService.WakeLocks"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->S:Ljava/util/List;

    const-string v1, "NETLINK"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->T:Ljava/util/List;

    const-string v1, "AudioMix"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->T:Ljava/util/List;

    const-string v1, "AudioDirectOut"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->T:Ljava/util/List;

    const-string v1, "AudioOffload"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->T:Ljava/util/List;

    const-string v1, "AudioIn"

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->B0()V

    invoke-direct {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z0()V

    invoke-direct {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->a1()V

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta:Z

    return-void
.end method

.method public T0(J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reset mLastQXDMGrabTimeStamp to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    iput-wide p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->qbh:J

    return-void
.end method

.method public U0(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/os/ShellCommand;)Z
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "copy2"

    const-string v4, "copy1"

    const-string v5, "%-25s: %1d ms"

    const-string v6, "%-25s: %1b"

    const-string v7, "abn_reporting"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "disabled"

    const-string v9, "enabled"

    const-string v10, "OPSA"

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v7, :cond_5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    invoke-virtual/range {p3 .. p3}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "abn_reporting: "

    if-eqz v1, :cond_3

    :try_start_1
    sget-boolean v6, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0:Z

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iput-boolean v11, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->gwm:Z

    invoke-virtual {v0, v11}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m1(Z)V

    const-string v0, "abn_reporting is enabled"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v12, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->gwm:Z

    invoke-virtual {v0, v12}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m1(Z)V

    const-string v0, "abn_reporting is disabled"

    goto :goto_0

    :cond_2
    const-string v0, "please enter abn_reporting [enabled|disabled]"

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->gwm:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_4
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_5
    const-string v7, "standby"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_2
    invoke-virtual/range {p3 .. p3}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    sget-boolean v5, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0:Z

    if-eqz v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "standby: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string v5, "set_criteria"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual/range {p3 .. p3}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v5, 0x0

    cmpl-float v5, v1, v5

    if-lez v5, :cond_7

    iput v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ire:F

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "config standby criteria to "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ire:F

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " mA, and not allow update via online-config."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {v10, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v11, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->hmo:Z

    goto :goto_1

    :cond_7
    const-string v0, "invalid standby criteria."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    const-string v5, "get_criteria"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current standby criteria : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ire:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " mA"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_9
    const-string v7, "rpm"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-boolean v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->W:Z

    if-eqz v1, :cond_a

    invoke-virtual/range {p3 .. p3}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "try to trigger MPSS rpm update, sleepMs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->q1:Ljava/lang/String;

    const-string v3, "MPSS"

    invoke-direct {v0, v3, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->t(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->f1(I)V

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->q1:Ljava/lang/String;

    invoke-direct {v0, v3, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->t(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_2
    move v5, v11

    goto/16 :goto_9

    :cond_b
    const-string v7, "fast_report"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_3
    invoke-virtual/range {p3 .. p3}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const-string v5, "fast_report: "

    if-eqz v1, :cond_f

    :try_start_4
    sget-boolean v6, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0:Z

    if-eqz v6, :cond_c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    iput-boolean v11, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->fto:Z

    const-string v0, "fast_report is enabled"

    :goto_3
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iput-boolean v12, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->fto:Z

    const-string v0, "fast_report is disabled"

    goto :goto_3

    :cond_e
    const-string v0, "please enter fast_report [enabled|disabled]"

    goto :goto_3

    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->fto:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_10
    const-string v13, "qxdm"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    :try_start_5
    invoke-virtual/range {p3 .. p3}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_23

    sget-boolean v15, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0:Z

    if-eqz v15, :cond_11

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "qxdm: "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const-string v10, "status"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->g()Z

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->l0()Z

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->n0()Z

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m0()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->k0()J

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->s0()J

    move-result-wide v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->h0()J

    move-result-wide v19

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v12, Ljava/util/Formatter;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-wide/from16 v21, v13

    :try_start_6
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v12, v15, v13}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    const/4 v13, 0x2

    new-array v14, v13, [Ljava/lang/Object;

    const-string v23, "BugReportLiteEnable"

    const/4 v13, 0x0

    aput-object v23, v14, v13

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v16, 0x1

    aput-object v1, v14, v16

    invoke-virtual {v12, v6, v14}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuffer;->setLength(I)V

    const/4 v1, 0x2

    new-array v14, v1, [Ljava/lang/Object;

    const-string v1, "standby-abn-reporting"

    aput-object v1, v14, v13

    iget-boolean v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->gwm:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v13, 0x1

    aput-object v1, v14, v13

    invoke-virtual {v12, v6, v14}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    const/4 v13, 0x2

    new-array v14, v13, [Ljava/lang/Object;

    aput-object v7, v14, v1

    iget-boolean v0, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->fto:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v14, v1

    invoke-virtual {v12, v6, v14}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    const/4 v1, 0x2

    new-array v7, v1, [Ljava/lang/Object;

    const-string v1, "qxdm-grab"

    aput-object v1, v7, v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v7, v3

    invoke-virtual {v12, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const-string v1, "qxdm-under-recording"

    aput-object v1, v3, v0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v12, v6, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const-string v1, "minGrabGap"

    aput-object v1, v3, v0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v12, v5, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const-string v1, "latestStandbyStart"

    aput-object v1, v3, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v12, v5, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const-string v1, "minGrabPeriod"

    aput-object v1, v3, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v12, v5, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const-string v1, "lastGrabTimeStamp"

    aput-object v1, v3, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v12, v5, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "now"

    aput-object v3, v1, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v1, v3

    invoke-virtual {v12, v5, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_5

    :cond_12
    move-wide/from16 v21, v13

    const-string v5, "time_reset"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_14

    invoke-virtual {v0, v6, v7}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->T0(J)V

    const-string v0, "reset lastGrabTimeStamp to 0"

    :goto_4
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_13
    :goto_5
    const/4 v5, 0x1

    goto/16 :goto_8

    :cond_14
    const-string v5, "time_set"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v5, :cond_1a

    :try_start_7
    invoke-virtual/range {p3 .. p3}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    const-string v3, "last"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    const-string v4, " ms"

    if-eqz v3, :cond_16

    :try_start_8
    invoke-virtual/range {p3 .. p3}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v3, v8, v6

    if-gez v3, :cond_15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "input an invalid time(ms):"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_15
    invoke-virtual {v0, v8, v9}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->T0(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set lastGrabTimeStamp to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_16
    const-string v3, "min"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual/range {p3 .. p3}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v3, v8, v6

    if-gez v3, :cond_17

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "input an invalid minGrabPeriod(ms):"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_17
    invoke-virtual {v0, v8, v9}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->j1(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set minGrabPeriod to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_18
    const-string v3, "gap"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual/range {p3 .. p3}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v3, v8, v6

    if-gez v3, :cond_19

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "input an invalid minGrabGap(ms):"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    :cond_19
    invoke-virtual {v0, v8, v9}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->h1(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set minGrabGap to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto/16 :goto_6

    :catch_0
    move-exception v0

    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    :cond_1a
    const-string v5, "grab"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-virtual/range {p3 .. p3}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->i1(Z)V

    const-string v0, "config QXDMGrabMechanism to true"

    goto/16 :goto_4

    :cond_1b
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->i1(Z)V

    const-string v0, "config QXDMGrabMechanism to false"

    goto/16 :goto_4

    :cond_1c
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-virtual/range {p3 .. p3}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    const-string v3, "short"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const-string v1, "qxdm short is enabled(20sec auto-stop)"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->V0(Z)V

    goto/16 :goto_8

    :cond_1d
    const/4 v5, 0x1

    const-string v3, "normal"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    const-string v1, "qxdm normal is enabled(2 min auto-stop)"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->V0(Z)V

    goto :goto_8

    :cond_1e
    const/4 v5, 0x1

    const-string v6, "clean"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    const-string v1, "Try to clean up the latest QXDM logs under sdcard..."

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "net.oneplus.powercontroller.intent.CLEAN_QXDM"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.oem.oemlogkit"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->h:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_8

    :cond_1f
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    const-string v6, "persist.sys.power_mask"

    if-eqz v0, :cond_20

    :try_start_a
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "data"

    :goto_7
    invoke-static {v6, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_20
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "service"

    goto :goto_7

    :cond_21
    const-string v0, "copy3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "ims"

    goto :goto_7

    :cond_22
    const-string v0, "please enter qxdm [enabled|disabled]"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_8

    :catchall_3
    move-exception v0

    goto :goto_a

    :cond_23
    move v5, v11

    move-wide/from16 v21, v13

    :cond_24
    :goto_8
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_9
    move v11, v5

    goto :goto_b

    :catchall_4
    move-exception v0

    move-wide/from16 v21, v13

    :goto_a
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_25
    move v1, v12

    move v11, v1

    :goto_b
    return v11
.end method

.method public declared-synchronized V0(Z)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;->rtg:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    sget-object v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I(ZLcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public W0(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vdw:Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;

    new-instance v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;)V

    invoke-virtual {v0, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;->sis(Ljava/lang/Runnable;)V

    return-void
.end method

.method public X0(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;IFFJZ)V
    .locals 12

    move-object v1, p0

    iget-object v10, v1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vdw:Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;

    new-instance v11, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;

    move-object v0, v11

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;IFFJZ)V

    invoke-virtual {v10, v11}, Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;->sis(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y0(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;J)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vdw:Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;

    new-instance v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$ire;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;Lcom/android/server/power/OnePlusStandbyAnalyzer$StatisticType;)V

    invoke-virtual {v0, v1, p3, p4}, Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;->tsu(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public a0(Lcom/android/internal/os/BatteryStatsImpl;JLcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;)Ljava/util/Map;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatteryStatsImpl;",
            "J",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;",
            ">;"
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v13, p4

    const-string v0, ":"

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    const/4 v2, 0x0

    if-ne v13, v1, :cond_0

    iput-object v2, v12, Lcom/android/server/power/OnePlusStandbyAnalyzer;->n:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v12, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Q:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iput-object v2, v12, Lcom/android/server/power/OnePlusStandbyAnalyzer;->o:Ljava/util/Map;

    :goto_0
    if-eqz p1, :cond_7

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v10

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v11

    const/4 v8, 0x0

    move v9, v8

    :goto_1
    if-ge v9, v11, :cond_6

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/os/BatteryStats$Uid;

    invoke-virtual {v6, v8, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v4

    const/4 v7, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v16

    const/4 v1, 0x2

    invoke-virtual {v6, v1, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v18

    const/4 v1, 0x3

    invoke-virtual {v6, v1, v8}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v20

    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-object/from16 v22, v6

    move/from16 v23, v7

    move-wide/from16 v6, v16

    move v12, v8

    move/from16 v16, v9

    move-wide/from16 v8, v18

    move-object/from16 v17, v10

    move/from16 v18, v11

    move-wide/from16 v10, v20

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->j0(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;IJJJJ)V

    invoke-virtual/range {v22 .. v22}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_2
    if-ltz v2, :cond_3

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid$Wakelock;

    invoke-virtual {v3, v12}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v3

    if-eqz v3, :cond_1

    move-wide/from16 v4, p2

    invoke-virtual {v3, v4, v5, v12}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    const-wide/16 v8, 0x1f4

    add-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v22 .. v22}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v22 .. v22}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v14, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_1
    move-wide/from16 v4, p2

    :cond_2
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_3
    move-wide/from16 v4, p2

    invoke-virtual/range {v22 .. v22}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v8, v12

    :goto_4
    if-ltz v2, :cond_5

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid$Pkg;

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_5
    if-ltz v6, :cond_4

    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/BatteryStats$Counter;

    invoke-virtual {v7, v12}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v7

    add-int/2addr v8, v7

    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    :cond_5
    invoke-virtual/range {v22 .. v22}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;

    invoke-virtual/range {v22 .. v22}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    invoke-direct {v2, v3, v8}, Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;-><init>(II)V

    invoke-interface {v15, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v9, v16, 0x1

    move v8, v12

    move-object/from16 v10, v17

    move/from16 v11, v18

    move-object/from16 v12, p0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    move-object v2, v14

    goto :goto_6

    :cond_7
    move-object v15, v2

    :goto_6
    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    move-object/from16 v1, p0

    if-ne v13, v0, :cond_8

    iput-object v2, v1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->n:Ljava/util/Map;

    goto :goto_7

    :cond_8
    iput-object v2, v1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->o:Ljava/util/Map;

    :goto_7
    return-object v15
.end method

.method public c1()V
    .locals 1

    const-string v0, "triggering clean-up QXDM trash under vendor partition directly"

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cno:Z

    const-string p0, "persist.sys.qxdm_clean_old"

    const-string v0, "1"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d0(Ljava/io/PrintWriter;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "**** Standby Diagnosis WUA info ****"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->O:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->O:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->O:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;

    invoke-virtual {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$lqr;->zta()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public d1()V
    .locals 3

    const-string v0, "OPSA"

    const-string v1, "Start to copy qxdm log to sdcard"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "persist.vendor.qxdm.copylog"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vdw:Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;

    const/16 v0, 0x3f0

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;->cno(IJ)V

    return-void
.end method

.method public g()Z
    .locals 2

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->h:Landroid/content/Context;

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

.method public g1(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->a:Z

    return-void
.end method

.method public h(Landroid/content/Intent;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zta:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, -0x1

    const-string v1, "level"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_4

    iget v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vdb:I

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->zgw:I

    iput p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vdb:I

    const/4 v1, 0x5

    if-gt p1, v1, :cond_4

    if-le v0, p1, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cjf:J

    sub-long/2addr v0, v2

    iget-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->qeg:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->a:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->fto:Z

    if-eqz p1, :cond_1

    iget-wide v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->lqr:J

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->bud:J

    :goto_0
    cmp-long p1, v0, v2

    if-lez p1, :cond_4

    iget p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ear:I

    if-lez p1, :cond_4

    iget-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->fto:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cgv:I

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->oxb:I

    iget v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vdb:I

    sub-int/2addr p1, v2

    :goto_1
    sget-boolean v2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[opbugreportlite] Doesn\'t leaving DeepIdle, but Battery Low, period = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " (ms), batteryLevel = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vdb:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", levelDrop = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", start to evaulate the battery-drain."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OPSA"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->K0(Z)V

    :cond_4
    return-void
.end method

.method public h0()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->qbh:J

    return-wide v0
.end method

.method public h1(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mQXDMGrabGapAfterStandbyStart : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    iput-wide p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ywr:J

    :cond_0
    return-void
.end method

.method public i()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->D0()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->k1(Z)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mQxdmReadyCheckCount ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->oif:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->oif:I

    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->oif:I

    const-string v0, "re-schedule 5 sec later to check again."

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vdw:Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;

    const/16 v0, 0x3f0

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;->cno(IJ)V

    goto :goto_0

    :cond_1
    const-string p0, "reach maximum checking, abort re-schedule"

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public i1(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update mQXDMGrabMechanism : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->bio:Z

    return-void
.end method

.method public j0(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;IJJJJ)V
    .locals 14

    move-object v0, p0

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    move-object v3, p1

    if-ne v3, v1, :cond_0

    iget-object v0, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Q:Ljava/util/Map;

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
    iget-object v1, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Q:Ljava/util/Map;

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

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/power/OnePlusStandbyAnalyzer$zgw;->sis(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;IJJJJ)V

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Q:Ljava/util/Map;

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

.method public j1(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update updateQXDMGrabMinimumPeriod : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    iput-wide p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->dma:J

    :cond_0
    return-void
.end method

.method public k0()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ywr:J

    return-wide v0
.end method

.method public l0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->bio:Z

    return p0
.end method

.method public m0()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->dma:J

    return-wide v0
.end method

.method public declared-synchronized m1(Z)V
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

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->kth:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public n(Ljava/util/Map;)Ljava/util/List;
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

    iget-object p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->A0:Ljava/util/Comparator;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public declared-synchronized n0()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->igw:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public n1(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->qeg:Z

    return-void
.end method

.method public o0(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;Ljava/lang/String;)V
    .locals 12

    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->H:Ljava/util/List;

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x400

    new-array v1, v1, [B

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    :cond_1
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_9

    new-instance v0, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v0, v1, v5, p2}, Ljava/lang/String;-><init>([BII)V

    iget-boolean p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->V:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Y:Ljava/util/regex/Pattern;

    :goto_0
    invoke-virtual {p2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->X:Ljava/util/regex/Pattern;

    goto :goto_0

    :goto_1
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "RPM Matched...."

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {p2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {p2, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {p2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    sget-object v10, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    if-ne p1, v10, :cond_5

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->H:Ljava/util/List;

    new-instance v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;

    iget-boolean v7, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->V:Z

    if-eqz v7, :cond_3

    sget-object v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;

    goto :goto_2

    :cond_3
    sget-object v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;

    :goto_2
    invoke-direct {v5, v7, v6, v8}, Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->H:Ljava/util/List;

    new-instance v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;

    iget-boolean v7, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->V:Z

    if-eqz v7, :cond_4

    sget-object v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;

    goto :goto_3

    :cond_4
    sget-object v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;

    :goto_3
    invoke-direct {v5, v7, v9, p2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    sget-object v10, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    if-ne p1, v10, :cond_6

    iget-object v10, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->H:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lt v10, v7, :cond_6

    iget-object v7, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->H:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;

    invoke-virtual {v5, v6, v8}, Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;->rtg(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->H:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;

    invoke-virtual {v0, v9, p2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;->rtg(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_4
    iget-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->V:Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v5, "]"

    const-string v7, "#### ["

    const-string v10, "OPSA"

    const-string v11, ", "

    if-eqz v0, :cond_7

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] rpm_stats [aosd, "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "], [cxsd, "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_5
    invoke-static {v10, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] rpm_stats [vlow, "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "], [vmin, "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_5

    :cond_8
    const-string p2, "RPM Can\'t matched...."

    invoke-static {p2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    :goto_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/16 v7, 0x1388

    cmp-long p2, v5, v7

    if-ltz p2, :cond_1

    const-string p0, "**** Exceed read timeout, force exit ***"

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_9
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_a

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    :catchall_0
    move-exception p0

    move-object v0, v2

    goto :goto_b

    :catch_1
    move-exception p0

    move-object v0, v2

    goto :goto_7

    :catch_2
    move-exception p0

    move-object v0, v2

    goto :goto_8

    :catch_3
    move-exception p0

    move-object v0, v2

    goto :goto_9

    :catchall_1
    move-exception p0

    goto :goto_b

    :catch_4
    move-exception p0

    :goto_7
    :try_start_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "**** Failed, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_a

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_a

    :catch_5
    move-exception p0

    :goto_8
    :try_start_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "**** Failed to read, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v0, :cond_a

    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_a

    :catch_6
    move-exception p0

    :goto_9
    :try_start_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "**** File not found, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v0, :cond_a

    :try_start_9
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    :cond_a
    :goto_a
    return-void

    :goto_b
    if-eqz v0, :cond_b

    :try_start_a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_c

    :catch_7
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_b
    :goto_c
    throw p0
.end method

.method public p0(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    :cond_0
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_3

    new-instance v1, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v1, v0, v5, p2}, Ljava/lang/String;-><init>([BII)V

    iget-boolean p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->V:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z:Ljava/util/regex/Pattern;

    :goto_0
    invoke-virtual {p2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z:Ljava/util/regex/Pattern;

    goto :goto_0

    :goto_1
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Matched...."

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    invoke-interface {p1, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    const-string p2, "Can\'t matched...."

    invoke-static {p2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/16 v7, 0x1388

    cmp-long p2, v5, v7

    if-ltz p2, :cond_0

    const-string p0, "**** Exceed read timeout, force exit ***"

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_6

    :catch_1
    move-exception p0

    move-object v1, v2

    goto :goto_3

    :catch_2
    move-exception p0

    move-object v1, v2

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_6

    :catch_3
    move-exception p0

    :goto_3
    :try_start_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "**** Failed to read, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    :catch_4
    move-exception p0

    :goto_4
    :try_start_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "**** File not found, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_4

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_4
    :goto_5
    return-object p1

    :goto_6
    if-eqz v1, :cond_5

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_7

    :catch_5
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_7
    throw p0
.end method

.method public p1(Lcom/android/server/power/OnePlusStandbyAnalyzer$CriteriaType;F)V
    .locals 0

    sget-object p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->sis:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Update mRpmSlpiSleepCountDiffCriteria : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int p1, p2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    int-to-long p0, p1

    sput-wide p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->O1:J

    goto/16 :goto_0

    :pswitch_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Update mRpmSleepAccDurationDiffPercent : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    sput p2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->N1:F

    goto/16 :goto_0

    :pswitch_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Update mRpmTimeSlmSecCriteria : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int p1, p2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    int-to-long p0, p1

    sput-wide p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->M1:J

    goto/16 :goto_0

    :pswitch_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Update mAverageCurrentExceedForMinor : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    sput p2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F1:F

    goto/16 :goto_0

    :pswitch_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Update mUnaccountedCriteriaForMinor : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    sput p2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L1:F

    goto/16 :goto_0

    :pswitch_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Update mUnaccountedCriteria : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    sput p2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->E1:F

    goto/16 :goto_0

    :pswitch_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Update mSignalNoneCriteriaForMinor : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    sput p2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->K1:F

    goto/16 :goto_0

    :pswitch_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Update mSignalNoneCriteria : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    sput p2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->D1:F

    goto/16 :goto_0

    :pswitch_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Update mSignalBadCriteriaForMinor : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    sput p2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->J1:F

    goto/16 :goto_0

    :pswitch_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Update mSignalBadCriteria : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    sput p2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C1:F

    goto/16 :goto_0

    :pswitch_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Update mKernelWakeUpCountCriteriaForMinor : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int p1, p2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    sput p1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I1:I

    goto :goto_0

    :pswitch_b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Update mKernelWakeUpCountCriteria : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int p1, p2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    sput p1, Lcom/android/server/power/OnePlusStandbyAnalyzer;->B1:I

    goto :goto_0

    :pswitch_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Update mkernelSpaceWLCriteriaForMinor : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    sput p2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->H1:F

    goto :goto_0

    :pswitch_d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Update mkernelSpaceWLCriteria : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    sput p2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->A1:F

    goto :goto_0

    :pswitch_e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Update mUserSpaceWLCriteriaForMinor : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    sput p2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->G1:F

    goto :goto_0

    :pswitch_f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Update mUserSpaceWLCriteria : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    sput p2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->z1:F

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public q0(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 27

    move-object/from16 v8, p0

    move-object/from16 v0, p3

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    move-object/from16 v9, p1

    if-ne v9, v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v8, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I:Ljava/util/List;

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

    iget-object v0, v8, Lcom/android/server/power/OnePlusStandbyAnalyzer;->c0:Ljava/util/Map;

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

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

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
    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v0, v0, v19

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    invoke-static {v14}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V
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

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V
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

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V
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

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V
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

    iget-object v1, v8, Lcom/android/server/power/OnePlusStandbyAnalyzer;->c0:Ljava/util/Map;

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

    invoke-static {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

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

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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

    invoke-static {v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

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

    invoke-static {v14}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V
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

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V
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

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V
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

    invoke-static {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V
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

.method public s0()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->u:J

    return-wide v0
.end method

.method public t0(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
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

    invoke-static {p2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->d0:Ljava/util/regex/Pattern;

    invoke-virtual {p2, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Matched...."

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

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

    invoke-static {p2}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-wide/16 v8, 0x1388

    cmp-long p2, v6, v8

    if-ltz p2, :cond_0

    const-string p0, "**** Exceed read timeout, force exit ***"

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V
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

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V
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

    invoke-static {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L0(Ljava/lang/String;)V
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

.method public u0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->you:Z

    return p0
.end method

.method public v0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->cno:Z

    return p0
.end method

.method public w0(IJ)Z
    .locals 4

    if-lez p1, :cond_3

    long-to-float p2, p2

    const p3, 0x4a5bba00    # 3600000.0f

    div-float/2addr p2, p3

    iget p3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ear:I

    int-to-float p3, p3

    int-to-float v0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    mul-float/2addr p3, v0

    div-float/2addr p3, p2

    sget-boolean v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0:Z

    const-string v1, "OPSA"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[opbugreportlite] levelDrop = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " %, hours = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", average current = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " mA, criteria = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ire:F

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " mA"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ire:F

    cmpl-float p2, p3, p2

    if-lez p2, :cond_3

    sget-boolean p2, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0:Z

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[opbugreportlite] hit the criteria, mEnablePowerStandbyDetect = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->gwm:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mEnablePowerStandbyDiagnosis ="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ivd:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mAlreadyReported = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->c:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mAlreadyDiagnosed = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->obl:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ivd:Z

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    sget-boolean v0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F0:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "schedule to SNAPSHOT in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms, now="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->vdw:Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;

    new-instance v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;

    invoke-direct {v1, p0, p1, p3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$cno;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer;IF)V

    iget-wide p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->b:J

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer$vdb;->tsu(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public y(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;)V
    .locals 3

    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$rtg;->tsu:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->m:Ljava/util/List;

    const-string v0, "End"

    if-eqz p1, :cond_1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p(Ljava/lang/String;Ljava/util/List;Z)V

    :cond_1
    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->o:Ljava/util/Map;

    if-eqz p1, :cond_2

    const-string v2, "End-WL"

    invoke-direct {p0, v2, p1, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->A(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_2
    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->P:Ljava/util/Map;

    if-eqz p1, :cond_3

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_3
    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F:Ljava/util/List;

    if-eqz p1, :cond_4

    const-string v0, "End-Signal"

    invoke-direct {p0, v0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->x(Ljava/lang/String;Ljava/util/List;)V

    :cond_4
    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->L:Ljava/util/Map;

    if-eqz p1, :cond_a

    const-string v0, "End-WiFi"

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->l:Ljava/util/List;

    const-string v0, "Start"

    if-eqz p1, :cond_6

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->p(Ljava/lang/String;Ljava/util/List;Z)V

    :cond_6
    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->n:Ljava/util/Map;

    if-eqz p1, :cond_7

    const-string v2, "Start-WL"

    invoke-direct {p0, v2, p1, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->A(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_7
    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->N:Ljava/util/Map;

    if-eqz p1, :cond_8

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->C(Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_8
    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->E:Ljava/util/List;

    if-eqz p1, :cond_9

    const-string v0, "Start-Signal"

    invoke-direct {p0, v0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->x(Ljava/lang/String;Ljava/util/List;)V

    :cond_9
    iget-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->K:Ljava/util/Map;

    if-eqz p1, :cond_a

    const-string v0, "Start-WiFi"

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->F(Ljava/lang/String;Ljava/util/Map;)V

    :cond_a
    :goto_1
    return-void
.end method

.method public y0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ssp:Z

    return p0
.end method

.method public z(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Q(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->R(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->b0(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->S(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->c0(Ljava/io/PrintWriter;)V

    invoke-virtual {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->d0(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->e0(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->U(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->M(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->X(Ljava/io/PrintWriter;)V

    invoke-direct {p0, p1}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Z(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public declared-synchronized z0(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "OPSA"

    const-string v1, "======BE_IMFORMED_SCREEN_ON======"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer;->ssp:Z

    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;->rtg:Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;

    :goto_0
    invoke-virtual {p0, v0, v1, p1, v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->I(ZLcom/android/server/power/OnePlusStandbyAnalyzer$TelephonyType;Lcom/android/server/power/OnePlusStandbyAnalyzer$QxdmReason;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
