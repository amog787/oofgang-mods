.class public Lcom/android/server/am/oif;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/am/IExtBatteryStatsService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/oif$igw;,
        Lcom/android/server/am/oif$bio;,
        Lcom/android/server/am/oif$wtn;,
        Lcom/android/server/am/oif$kth;
    }
.end annotation


# static fields
.field public static final A0:Ljava/lang/String; = "temp"

.field public static final B0:Ljava/lang/String; = "charge_full"

.field public static final C0:Ljava/lang/String; = "health"

.field public static final D0:Ljava/lang/String; = "conn_chg"

.field public static final E0:Ljava/lang/String; = "deep_sleep"

.field public static final F0:Ljava/lang/String; = "wl_ms"

.field public static final G0:Ljava/lang/String; = "wl_list"

.field public static final H0:Ljava/lang/String; = "kwl_ms"

.field public static final I0:Ljava/lang/String; = "kwl_list"

.field public static final J0:Ljava/lang/String; = "wr_count"

.field public static final K0:Ljava/lang/String; = "wr_list"

.field public static final L0:Ljava/lang/String; = "uwa_count"

.field public static final M0:Ljava/lang/String; = "uwa_list"

.field public static final N0:Ljava/lang/String; = "wifi_pkt"

.field public static final O0:Ljava/lang/String; = "mobile_pkt"

.field public static final P0:Ljava/lang/String; = "pkt_list"

.field public static final Q0:Ljava/lang/String; = "rpm"

.field public static final R0:Ljava/lang/String; = "rpm_master"

.field public static final S0:Ljava/lang/String; = "hotspot"

.field public static final T0:Ljava/lang/String; = "flashlight"

.field private static final U0:Ljava/lang/String; = "PowerManagerService.WakeLocks"

.field private static final V0:I = 0x1e6c

.field private static final W0:I = 0x1e6d

.field private static final X0:I = 0x1e6e

.field private static final Y0:I = 0x1e6f

.field private static final Z0:I = 0x1e70

.field private static final a1:I = 0x1e71

.field private static final b1:I = 0x1e72

.field private static final c1:I = 0x1e73

.field private static d1:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static e1:Ljava/lang/String; = null

.field public static final f1:Ljava/lang/String; = "/d/rpm_stats"

.field public static g1:Ljava/lang/String; = null

.field public static h1:Ljava/lang/String; = null

.field public static final i1:Ljava/lang/String; = "/d/rpm_master_stats"

.field private static final j1:J = 0x1388L

.field private static final k1:Ljava/lang/String; = "com.oneplus:string/config_overheat_thermal_zone_path"

.field private static final l0:Ljava/lang/String; = "persist.sys.leveldrop_debug"

.field private static l1:Ljava/lang/String; = null

.field private static final m0:Z

.field private static m1:Ljava/lang/String; = null

.field private static final n0:Z

.field private static n1:Ljava/lang/String; = null

.field private static final o0:Ljava/lang/String; = "ExtBatteryStatsService"

.field private static p0:I = 0x0

.field public static final q0:Ljava/lang/String; = "NYNCG4I0TI"

.field public static final r0:Ljava/lang/String; = "protoDetail"

.field public static final s0:Ljava/lang/String; = "ver"

.field public static final t0:Ljava/lang/String; = "p_stat"

.field public static final u0:Ljava/lang/String; = "p_duration"

.field public static final v0:Ljava/lang/String; = "p_level_drop"

.field public static final w0:Ljava/lang/String; = "away_from_soff"

.field public static final x0:Ljava/lang/String; = "duration"

.field public static final y0:Ljava/lang/String; = "uptime"

.field public static final z0:Ljava/lang/String; = "capacity_drop"


# instance fields
.field private A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private B:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private C:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private D:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/oif$igw;",
            ">;"
        }
    .end annotation
.end field

.field private F:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;",
            ">;"
        }
    .end annotation
.end field

.field private G:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;",
            ">;"
        }
    .end annotation
.end field

.field private H:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;",
            ">;"
        }
    .end annotation
.end field

.field private I:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;",
            ">;"
        }
    .end annotation
.end field

.field private J:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/oif$bio;",
            ">;"
        }
    .end annotation
.end field

.field private K:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/oif$bio;",
            ">;"
        }
    .end annotation
.end field

.field private L:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/oif$bio;",
            ">;"
        }
    .end annotation
.end field

.field private M:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/oif$bio;",
            ">;"
        }
    .end annotation
.end field

.field private N:Ljava/util/regex/Pattern;

.field private O:Ljava/util/regex/Pattern;

.field private P:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private Q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private R:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;",
            ">;"
        }
    .end annotation
.end field

.field private S:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;",
            ">;"
        }
    .end annotation
.end field

.field private T:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;",
            ">;"
        }
    .end annotation
.end field

.field private U:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;",
            ">;"
        }
    .end annotation
.end field

.field private V:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;",
            ">;"
        }
    .end annotation
.end field

.field private W:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;",
            ">;"
        }
    .end annotation
.end field

.field private X:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;",
            ">;"
        }
    .end annotation
.end field

.field private Y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;",
            ">;"
        }
    .end annotation
.end field

.field private Z:Ljava/lang/String;

.field private a:I

.field private a0:Z

.field private b:I

.field private final b0:I

.field private bio:J

.field private bud:J

.field private bvj:Landroid/content/IntentFilter;

.field private c:I

.field private final c0:D

.field private cgv:J

.field private cjf:Z

.field private cno:Z

.field private d:I

.field private final d0:Ljava/lang/String;

.field private dma:J

.field private e:I

.field private final e0:Ljava/lang/String;

.field private ear:Z

.field private f:I

.field private final f0:Ljava/lang/String;

.field private fto:Landroid/os/Handler;

.field private g:I

.field g0:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/am/oif$igw;",
            ">;"
        }
    .end annotation
.end field

.field private gck:J

.field private gwm:I

.field private h:I

.field h0:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;",
            ">;"
        }
    .end annotation
.end field

.field private hmo:Landroid/content/Context;

.field private i:I

.field i0:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$cgv;",
            ">;"
        }
    .end annotation
.end field

.field private ibl:Lcom/android/server/am/oif$kth;

.field private igw:J

.field private ire:Lcom/android/internal/os/BatteryStatsHelper;

.field private irq:I

.field private ivd:I

.field private j:I

.field j0:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;",
            ">;"
        }
    .end annotation
.end field

.field private k:J

.field k0:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/am/oif$bio;",
            ">;"
        }
    .end annotation
.end field

.field private kth:Z

.field private l:J

.field private les:I

.field private lqr:Landroid/os/HandlerThread;

.field private m:J

.field private n:J

.field private o:J

.field private obl:Z

.field private oif:Lnet/oneplus/odm/OpDeviceManagerInjector;

.field private oxb:Z

.field private p:J

.field private q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private qbh:J

.field private qeg:I

.field private r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final rtg:Ljava/lang/String;

.field private s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private sis:Lcom/android/server/am/BatteryExternalStatsWorker;

.field private ssp:I

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;",
            ">;"
        }
    .end annotation
.end field

.field private tsu:J

.field private u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private ugm:Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

.field private v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private vdb:Lcom/android/internal/os/PowerProfile;

.field private vdw:I

.field public veq:J

.field private vju:J

.field private w:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private wtn:J

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$cgv;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private you:Lcom/android/internal/os/BatteryStatsImpl;

.field private ywr:J

.field private z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private zgw:I

.field private zta:Lcom/android/server/am/BatteryStatsService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "persist.sys.leveldrop_debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/oif;->m0:Z

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/oif;->n0:Z

    const/16 v0, 0xbb8

    sput v0, Lcom/android/server/am/oif;->p0:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/oif;->d1:Ljava/util/Map;

    const-string v0, "/sys/power/rpmh/stats"

    sput-object v0, Lcom/android/server/am/oif;->e1:Ljava/lang/String;

    const-string v0, "/sys/power/rpmh/master_stats"

    sput-object v0, Lcom/android/server/am/oif;->g1:Ljava/lang/String;

    const-string v0, "/proc/rpmh_modem/sleepinfo"

    sput-object v0, Lcom/android/server/am/oif;->h1:Ljava/lang/String;

    const-string v0, "/sys/class/power_supply/bms/remaining_capacity"

    sput-object v0, Lcom/android/server/am/oif;->l1:Ljava/lang/String;

    const-string v0, "/sys/class/power_supply/bms/charge_full"

    sput-object v0, Lcom/android/server/am/oif;->m1:Ljava/lang/String;

    const-string v0, "/sys/class/power_supply/bms/battery_h"

    sput-object v0, Lcom/android/server/am/oif;->n1:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/oif;->tsu:J

    const-string v0, "2.1"

    iput-object v0, p0, Lcom/android/server/am/oif;->rtg:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/am/oif;->ssp:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/oif;->cno:Z

    iput-boolean v0, p0, Lcom/android/server/am/oif;->kth:Z

    new-instance v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

    new-instance v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$fto;

    invoke-direct {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$fto;-><init>()V

    const-string v3, "DeepSleepTimer"

    invoke-direct {v1, v3, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;-><init>(Ljava/lang/String;Lcom/android/server/power/OnePlusStandbyAnalyzer$fto;)V

    iput-object v1, p0, Lcom/android/server/am/oif;->ugm:Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

    iput v0, p0, Lcom/android/server/am/oif;->zgw:I

    iput-boolean v0, p0, Lcom/android/server/am/oif;->obl:Z

    iput-boolean v0, p0, Lcom/android/server/am/oif;->oxb:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/oif;->cjf:Z

    iput-boolean v0, p0, Lcom/android/server/am/oif;->ear:Z

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/am/oif;->veq:J

    const-string v1, "RPM Mode:vlow\\n\\t\\scount:(\\d*)\\n.*time since last mode\\(sec\\):(\\d*).*RPM Mode:vmin\\n\\t\\scount:(\\d*)\\n.*time since last mode\\(sec\\):(\\d*)\\n.*"

    const/16 v2, 0x20

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/oif;->N:Ljava/util/regex/Pattern;

    const-string v1, "RPM Mode:aosd\\n\\t\\scount:(\\d*)\\n.*time since last mode\\(sec\\):(\\d*).*RPM Mode:cxsd\\n\\t\\scount:(\\d*)\\n.*time since last mode\\(sec\\):(\\d*)\\n.*"

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/oif;->O:Ljava/util/regex/Pattern;

    const-string v1, "/sys/class/thermal/thermal_zone27/temp"

    iput-object v1, p0, Lcom/android/server/am/oif;->Z:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/server/am/oif;->a0:Z

    const/16 v0, -0x3e7

    iput v0, p0, Lcom/android/server/am/oif;->b0:I

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/android/server/am/oif;->c0:D

    const-string v0, "/sys/class/oplus_chg/battery/remaining_capacity"

    iput-object v0, p0, Lcom/android/server/am/oif;->d0:Ljava/lang/String;

    const-string v0, "/sys/class/oplus_chg/battery/charge_full"

    iput-object v0, p0, Lcom/android/server/am/oif;->e0:Ljava/lang/String;

    const-string v0, "/sys/class/oplus_chg/battery/battery_health"

    iput-object v0, p0, Lcom/android/server/am/oif;->f0:Ljava/lang/String;

    new-instance v0, Lcom/android/server/am/oif$you;

    invoke-direct {v0, p0}, Lcom/android/server/am/oif$you;-><init>(Lcom/android/server/am/oif;)V

    iput-object v0, p0, Lcom/android/server/am/oif;->g0:Ljava/util/Comparator;

    new-instance v0, Lcom/android/server/am/oif$sis;

    invoke-direct {v0, p0}, Lcom/android/server/am/oif$sis;-><init>(Lcom/android/server/am/oif;)V

    iput-object v0, p0, Lcom/android/server/am/oif;->h0:Ljava/util/Comparator;

    new-instance v0, Lcom/android/server/am/oif$tsu;

    invoke-direct {v0, p0}, Lcom/android/server/am/oif$tsu;-><init>(Lcom/android/server/am/oif;)V

    iput-object v0, p0, Lcom/android/server/am/oif;->i0:Ljava/util/Comparator;

    new-instance v0, Lcom/android/server/am/oif$rtg;

    invoke-direct {v0, p0}, Lcom/android/server/am/oif$rtg;-><init>(Lcom/android/server/am/oif;)V

    iput-object v0, p0, Lcom/android/server/am/oif;->j0:Ljava/util/Comparator;

    new-instance v0, Lcom/android/server/am/oif$ssp;

    invoke-direct {v0, p0}, Lcom/android/server/am/oif$ssp;-><init>(Lcom/android/server/am/oif;)V

    iput-object v0, p0, Lcom/android/server/am/oif;->k0:Ljava/util/Comparator;

    return-void
.end method

.method private A()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/oif;->E:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/server/am/oif;->E:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget v2, p0, Lcom/android/server/am/oif;->ssp:I

    if-lt v0, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/oif;->hmo:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/oif;->E:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/oif$igw;

    iget v3, v3, Lcom/android/server/am/oif$igw;->zta:I

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/am/oif;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v3, p0, Lcom/android/server/am/oif;->E:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/oif$igw;

    iget v3, v3, Lcom/android/server/am/oif$igw;->zta:I

    invoke-static {v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$KnownUIDs;->zta(I)Lcom/android/server/power/OnePlusStandbyAnalyzer$KnownUIDs;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    iget-object v3, p0, Lcom/android/server/am/oif;->E:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/oif$igw;

    invoke-virtual {v3, v2}, Lcom/android/server/am/oif$igw;->tsu(Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/oif;->I:Ljava/util/List;

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/android/server/am/oif;->I:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    iget v2, p0, Lcom/android/server/am/oif;->ssp:I

    if-lt v0, v2, :cond_3

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/android/server/am/oif;->hmo:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/oif;->I:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;

    iget v3, v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;->zta:I

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/am/oif;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    iget-object v3, p0, Lcom/android/server/am/oif;->I:Ljava/util/List;

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
    iget-object v3, p0, Lcom/android/server/am/oif;->I:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;

    invoke-virtual {v3, v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;->sis(Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/android/server/am/oif;->M:Ljava/util/List;

    if-eqz v0, :cond_8

    :goto_4
    iget-object v0, p0, Lcom/android/server/am/oif;->M:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    iget v0, p0, Lcom/android/server/am/oif;->ssp:I

    if-lt v1, v0, :cond_6

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lcom/android/server/am/oif;->hmo:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/oif;->M:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/oif$bio;

    iget v2, v2, Lcom/android/server/am/oif$bio;->zta:I

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/am/oif;->C(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    iget-object v2, p0, Lcom/android/server/am/oif;->M:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/oif$bio;

    iget v2, v2, Lcom/android/server/am/oif$bio;->zta:I

    invoke-static {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$KnownUIDs;->zta(I)Lcom/android/server/power/OnePlusStandbyAnalyzer$KnownUIDs;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    iget-object v2, p0, Lcom/android/server/am/oif;->M:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/oif$bio;

    invoke-virtual {v2, v0}, Lcom/android/server/am/oif$bio;->sis(Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    :goto_5
    return-void
.end method

.method private B(Lcom/android/internal/os/BatteryStatsImpl;JLcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;)V
    .locals 21

    move-object/from16 v1, p0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_5

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_5

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/BatteryStats$Uid;

    invoke-virtual {v8, v6, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v11

    const/4 v15, 0x1

    invoke-virtual {v8, v15, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v13

    const/4 v9, 0x2

    invoke-virtual {v8, v9, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v16

    const/4 v9, 0x3

    invoke-virtual {v8, v9, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v18

    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-instance v9, Lcom/android/server/am/oif$bio;

    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v20

    move-object/from16 p1, v9

    move-object/from16 v9, p1

    move-object v6, v10

    move/from16 v10, v20

    move/from16 v20, v15

    move-wide/from16 v15, v16

    move-wide/from16 v17, v18

    invoke-direct/range {v9 .. v18}, Lcom/android/server/am/oif$bio;-><init>(IJJJJ)V

    invoke-interface {v4, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    :goto_1
    if-ltz v9, :cond_2

    invoke-virtual {v6, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/BatteryStats$Uid$Wakelock;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v10

    if-eqz v10, :cond_0

    move-wide/from16 v12, p2

    invoke-virtual {v10, v12, v13, v11}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v14

    const-wide/16 v10, 0x0

    cmp-long v10, v14, v10

    if-lez v10, :cond_1

    invoke-virtual {v6, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_1

    const-wide/16 v10, 0x1f4

    add-long/2addr v14, v10

    const-wide/16 v10, 0x3e8

    div-long/2addr v14, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v2, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_0
    move-wide/from16 v12, p2

    :cond_1
    :goto_2
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    :cond_2
    move-wide/from16 v12, p2

    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    const/4 v11, 0x0

    :goto_3
    if-ltz v9, :cond_4

    invoke-virtual {v6, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/BatteryStats$Uid$Pkg;

    invoke-virtual {v10}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    :goto_4
    if-ltz v14, :cond_3

    invoke-virtual {v10, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/BatteryStats$Counter;

    move-object/from16 p1, v0

    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v15

    add-int/2addr v11, v15

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p1

    goto :goto_4

    :cond_3
    move-object/from16 p1, v0

    const/4 v0, 0x0

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, p1

    goto :goto_3

    :cond_4
    move-object/from16 p1, v0

    const/4 v0, 0x0

    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v9, Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;

    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v8

    invoke-direct {v9, v8, v11}, Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;-><init>(II)V

    invoke-interface {v3, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v7, v7, 0x1

    move v6, v0

    move-object/from16 v0, p1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    move-object/from16 v5, p4

    if-ne v5, v0, :cond_6

    iput-object v2, v1, Lcom/android/server/am/oif;->B:Ljava/util/Map;

    iput-object v3, v1, Lcom/android/server/am/oif;->F:Ljava/util/Map;

    iput-object v4, v1, Lcom/android/server/am/oif;->J:Ljava/util/Map;

    goto :goto_5

    :cond_6
    iput-object v2, v1, Lcom/android/server/am/oif;->D:Ljava/util/Map;

    iput-object v3, v1, Lcom/android/server/am/oif;->H:Ljava/util/Map;

    iput-object v4, v1, Lcom/android/server/am/oif;->L:Ljava/util/Map;

    :goto_5
    return-void
.end method

.method private C(Ljava/lang/String;)Ljava/lang/String;
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

.method private D(Ljava/lang/String;I)I
    .locals 4

    const-string p0, "ExtBatteryStatsService"

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v2, v1

    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_0
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move p0, p2

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccurateCounter readIntFromFile path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", result:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", defaultValue:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    return p0

    :catchall_1
    move-exception p1

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_2

    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    :catch_4
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_4
    throw p1
.end method

.method private static E(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/android/server/am/oif;->d1:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x5

    invoke-static {p0, v0, v1}, Landroid/os/OpBatteryStatsInjector;->getScrubPIIStr(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/oif;->d1:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private F(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, v0, Lcom/android/server/am/oif;->you:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    const/4 v9, 0x0

    invoke-virtual {v4, v5, v6, v9}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryUptime(JI)J

    move-result-wide v4

    div-long/2addr v4, v7

    sget-object v6, Lcom/android/server/am/oif;->l1:Ljava/lang/String;

    const/16 v9, -0x3e7

    invoke-direct {v0, v6, v9}, Lcom/android/server/am/oif;->D(Ljava/lang/String;I)I

    move-result v6

    sget-object v10, Lcom/android/server/am/oif;->m1:Ljava/lang/String;

    invoke-direct {v0, v10, v9}, Lcom/android/server/am/oif;->D(Ljava/lang/String;I)I

    move-result v10

    sget-object v11, Lcom/android/server/am/oif;->n1:Ljava/lang/String;

    invoke-direct {v0, v11, v9}, Lcom/android/server/am/oif;->D(Ljava/lang/String;I)I

    move-result v9

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/oif;->n()I

    move-result v11

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/oif;->m()J

    move-result-wide v12

    new-instance v14, Ljava/util/ArrayList;

    iget-object v15, v0, Lcom/android/server/am/oif;->ire:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v15}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v15, v0, Lcom/android/server/am/oif;->you:Lcom/android/internal/os/BatteryStatsImpl;

    mul-long/2addr v7, v2

    invoke-direct {v0, v15, v7, v8, v1}, Lcom/android/server/am/oif;->B(Lcom/android/internal/os/BatteryStatsImpl;JLcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/oif;->snapShotKernelWakelockStats(J)Ljava/util/Map;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/oif;->snapShotWakeupReasonStats()Ljava/util/Map;

    move-result-object v8

    sget-object v15, Lcom/android/server/am/oif;->e1:Ljava/lang/String;

    invoke-virtual {v0, v1, v15}, Lcom/android/server/am/oif;->o(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v15

    move-object/from16 v16, v15

    sget-object v15, Lcom/android/server/am/oif;->g1:Ljava/lang/String;

    move-object/from16 v17, v8

    sget-object v8, Lcom/android/server/am/oif;->h1:Ljava/lang/String;

    invoke-virtual {v0, v1, v15, v8}, Lcom/android/server/am/oif;->p(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    sget-object v15, Lcom/android/server/am/oif$cno;->zta:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v15, v1

    const/4 v15, 0x1

    if-eq v1, v15, :cond_1

    const/4 v15, 0x2

    if-eq v1, v15, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    iput-wide v4, v0, Lcom/android/server/am/oif;->p:J

    iput-wide v2, v0, Lcom/android/server/am/oif;->m:J

    iput v6, v0, Lcom/android/server/am/oif;->d:I

    iput v10, v0, Lcom/android/server/am/oif;->g:I

    iput v9, v0, Lcom/android/server/am/oif;->j:I

    iput v11, v0, Lcom/android/server/am/oif;->a:I

    iget v1, v0, Lcom/android/server/am/oif;->gwm:I

    iput v1, v0, Lcom/android/server/am/oif;->vdw:I

    iput-wide v12, v0, Lcom/android/server/am/oif;->bud:J

    iput-object v14, v0, Lcom/android/server/am/oif;->A:Ljava/util/List;

    iput-object v7, v0, Lcom/android/server/am/oif;->s:Ljava/util/Map;

    move-object/from16 v1, v17

    iput-object v1, v0, Lcom/android/server/am/oif;->w:Ljava/util/Map;

    move-object/from16 v15, v16

    iput-object v15, v0, Lcom/android/server/am/oif;->T:Ljava/util/Map;

    iput-object v8, v0, Lcom/android/server/am/oif;->X:Ljava/util/Map;

    goto :goto_0

    :cond_1
    move-object/from16 v15, v16

    move-object/from16 v1, v17

    sget-object v16, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    iput-wide v4, v0, Lcom/android/server/am/oif;->n:J

    iput-wide v2, v0, Lcom/android/server/am/oif;->k:J

    iput v6, v0, Lcom/android/server/am/oif;->b:I

    iput v10, v0, Lcom/android/server/am/oif;->e:I

    iput v9, v0, Lcom/android/server/am/oif;->h:I

    iput v11, v0, Lcom/android/server/am/oif;->qeg:I

    iget v2, v0, Lcom/android/server/am/oif;->gwm:I

    iput v2, v0, Lcom/android/server/am/oif;->les:I

    iput-wide v12, v0, Lcom/android/server/am/oif;->cgv:J

    iput-object v14, v0, Lcom/android/server/am/oif;->y:Ljava/util/List;

    iput-object v7, v0, Lcom/android/server/am/oif;->q:Ljava/util/Map;

    iput-object v1, v0, Lcom/android/server/am/oif;->u:Ljava/util/Map;

    iput-object v15, v0, Lcom/android/server/am/oif;->R:Ljava/util/Map;

    iput-object v8, v0, Lcom/android/server/am/oif;->V:Ljava/util/Map;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/oif;->t()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/am/oif;->cno:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/oif;->s()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/am/oif;->kth:Z

    :goto_0
    return-void
.end method

.method private G()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/oif;->bvj:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/oif;->bvj:Landroid/content/IntentFilter;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    new-instance v0, Lcom/android/server/am/oif$kth;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/oif$kth;-><init>(Lcom/android/server/am/oif;Lcom/android/server/am/oif$zta;)V

    iput-object v0, p0, Lcom/android/server/am/oif;->ibl:Lcom/android/server/am/oif$kth;

    iget-object v1, p0, Lcom/android/server/am/oif;->hmo:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/am/oif;->bvj:Landroid/content/IntentFilter;

    invoke-virtual {v1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private H()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/am/oif;->flushExternal()V

    iget-object v0, p0, Lcom/android/server/am/oif;->ire:Lcom/android/internal/os/BatteryStatsHelper;

    iget-object v1, p0, Lcom/android/server/am/oif;->you:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    const-string v0, "mBatteryStatsHelper.refreshStats++++"

    invoke-static {v0}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/oif;->ire:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    const-string v0, "mBatteryStatsHelper.refreshStats----"

    invoke-static {v0}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/oif;->updateKernelWakelocks()V

    return-void
.end method

.method private I(I)V
    .locals 2

    iget-boolean p0, p0, Lcom/android/server/am/oif;->ear:Z

    if-eqz p0, :cond_0

    :try_start_0
    const-string p0, "ExtBatteryStatsService"

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

    invoke-static {p0}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    const/4 p0, 0x0

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

    if-eqz p3, :cond_0

    if-eqz p3, :cond_1

    const/16 v1, 0x14

    if-ge p0, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/am/oif$igw;",
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

    const/16 v1, 0x14

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

    check-cast v2, Lcom/android/server/am/oif$igw;

    invoke-virtual {v2}, Lcom/android/server/am/oif$igw;->sis()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic bio(Lcom/android/server/am/oif;Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/oif;->veq(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;Z)V

    return-void
.end method

.method private bud(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;",
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

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic bvj(Lcom/android/server/am/oif;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/oif;->G()V

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 3
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

    move v0, p0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_1

    if-eqz p3, :cond_0

    if-eqz p3, :cond_1

    const/16 v1, 0x14

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

    invoke-static {v1}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private cjf(Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;
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

    iput-wide v0, p0, Lcom/android/server/am/oif;->gck:J

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

    iget-wide v2, p0, Lcom/android/server/am/oif;->gck:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/am/oif;->gck:J

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/oif;->i0:Ljava/util/Comparator;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-object v0
.end method

.method static synthetic cno(Lcom/android/server/am/oif;)I
    .locals 0

    iget p0, p0, Lcom/android/server/am/oif;->ssp:I

    return p0
.end method

.method private d(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;
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

    const-string p1, " |FlTMs="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p2, Lcom/android/internal/os/BatterySipper;->flashlightTimeMs:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " |pkg="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/am/oif;->hmo:Landroid/content/Context;

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

    iget-object p1, p0, Lcom/android/server/am/oif;->ire:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " |pt="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-object p0, p0, Lcom/android/server/am/oif;->ire:Lcom/android/internal/os/BatteryStatsHelper;

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

    invoke-static {p0}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic dma(Lcom/android/server/am/oif;)Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/oif;->ugm:Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

    return-object p0
.end method

.method private e(Ljava/util/List;)Ljava/lang/String;
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

.method private ear(Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;
    .locals 6
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
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/oif;->dma:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

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
    const/4 v1, 0x0

    move v4, v3

    :goto_1
    new-instance v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v5, v2, v4, v1, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;-><init>(IIII)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v1, p0, Lcom/android/server/am/oif;->dma:J

    int-to-long v3, v4

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/am/oif;->dma:J

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/oif;->j0:Ljava/util/Comparator;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-object v0
.end method

.method private f(Ljava/util/List;)Ljava/lang/String;
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

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;

    invoke-virtual {v2, v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->you(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, ";"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private fto(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$bvj;",
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

    const/16 v1, 0x14

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

    invoke-static {v1}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private g(J)Ljava/lang/String;
    .locals 17

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/high16 v1, 0xff000000000000L

    and-long v1, p1, v1

    const/16 v3, 0x30

    shr-long/2addr v1, v3

    const-wide/high16 v3, -0x100000000000000L

    and-long v3, p1, v3

    const/16 v5, 0x38

    shr-long/2addr v3, v5

    const-wide/16 v5, 0x3

    and-long v7, v3, v5

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    const/4 v8, 0x4

    const/4 v11, 0x1

    if-nez v7, :cond_4

    and-long/2addr v5, v1

    long-to-int v5, v5

    add-int/2addr v5, v11

    if-eq v5, v11, :cond_3

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    if-eq v5, v8, :cond_0

    const-string v5, "screen-?"

    goto :goto_0

    :cond_0
    const-string v5, "screen-doze-suspend"

    goto :goto_0

    :cond_1
    const-string v5, "screen-doze"

    goto :goto_0

    :cond_2
    const-string v5, "screen-on"

    goto :goto_0

    :cond_3
    const-string v5, "screen-off"

    :goto_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v11

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    :goto_1
    const-wide/16 v6, 0x4

    and-long v12, v3, v6

    cmp-long v12, v12, v9

    const-string v13, ", "

    const-string v14, ""

    if-nez v12, :cond_7

    if-eqz v5, :cond_5

    move-object v5, v13

    goto :goto_2

    :cond_5
    move-object v5, v14

    :goto_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-long v5, v1, v6

    cmp-long v5, v5, v9

    if-eqz v5, :cond_6

    const-string v5, "power-save-on"

    goto :goto_3

    :cond_6
    const-string v5, "power-save-off"

    :goto_3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v11

    :cond_7
    const-wide/16 v6, 0x8

    and-long v15, v3, v6

    cmp-long v12, v15, v9

    if-nez v12, :cond_a

    if-eqz v5, :cond_8

    move-object v5, v13

    goto :goto_4

    :cond_8
    move-object v5, v14

    :goto_4
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-long v5, v1, v6

    cmp-long v5, v5, v9

    if-eqz v5, :cond_9

    const-string v5, "device-idle-on"

    goto :goto_5

    :cond_9
    const-string v5, "device-idle-off"

    :goto_5
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_a
    move v11, v5

    :goto_6
    shr-long/2addr v3, v8

    cmp-long v3, v3, v9

    if-nez v3, :cond_c

    if-eqz v11, :cond_b

    goto :goto_7

    :cond_b
    move-object v13, v14

    :goto_7
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-long/2addr v1, v8

    long-to-int v1, v1

    packed-switch v1, :pswitch_data_0

    const-string v1, "NA"

    goto :goto_8

    :pswitch_0
    const-string v1, "network-off-from-data-nr"

    goto :goto_8

    :pswitch_1
    const-string v1, "network-off-from-data-rest"

    goto :goto_8

    :pswitch_2
    const-string v1, "network-off-from-wifi"

    goto :goto_8

    :pswitch_3
    const-string v1, "network-data-nr"

    goto :goto_8

    :pswitch_4
    const-string v1, "network-data-rest"

    goto :goto_8

    :pswitch_5
    const-string v1, "network-wifi"

    goto :goto_8

    :pswitch_6
    const-string v1, "network-off"

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic gck(Lcom/android/server/am/oif;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/oif;->obl:Z

    return p1
.end method

.method private gwm(Ljava/lang/String;IJ)V
    .locals 23

    move-object/from16 v0, p0

    const-string v1, "==calculateDiff=="

    invoke-static {v1}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/android/server/am/oif;->bio:J

    sub-long/2addr v3, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#### awayFromScreenOff: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    iget-wide v5, v0, Lcom/android/server/am/oif;->bio:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    iput-wide v7, v0, Lcom/android/server/am/oif;->bio:J

    :cond_0
    iget-wide v5, v0, Lcom/android/server/am/oif;->m:J

    iget-wide v9, v0, Lcom/android/server/am/oif;->k:J

    sub-long/2addr v5, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "#### durationMs: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    iget-wide v9, v0, Lcom/android/server/am/oif;->p:J

    iget-wide v11, v0, Lcom/android/server/am/oif;->n:J

    sub-long/2addr v9, v11

    cmp-long v11, v9, v5

    if-lez v11, :cond_1

    move-wide v9, v5

    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "#### uptimeMs: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v10}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    iget v11, v0, Lcom/android/server/am/oif;->b:I

    iget v12, v0, Lcom/android/server/am/oif;->d:I

    sub-int/2addr v11, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "#### capacityDiff: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "#### chargeFull: ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lcom/android/server/am/oif;->e:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v0, Lcom/android/server/am/oif;->g:I

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "]"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "#### health: ["

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/android/server/am/oif;->h:I

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/android/server/am/oif;->j:I

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "#### mWifiApEnabled: "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v15, v0, Lcom/android/server/am/oif;->cno:Z

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "#### temp: ["

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/android/server/am/oif;->qeg:I

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v0, Lcom/android/server/am/oif;->a:I

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    iget v12, v0, Lcom/android/server/am/oif;->vdw:I

    iget v15, v0, Lcom/android/server/am/oif;->les:I

    sub-int/2addr v12, v15

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "#### connChgCountDiff: "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    iget-wide v7, v0, Lcom/android/server/am/oif;->bud:J

    move-wide/from16 v17, v1

    iget-wide v1, v0, Lcom/android/server/am/oif;->cgv:J

    sub-long/2addr v7, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### deepSleepMs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v8}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/am/oif;->B:Ljava/util/Map;

    iget-object v2, v0, Lcom/android/server/am/oif;->D:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/oif;->oxb(Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/am/oif;->E:Ljava/util/List;

    iget-object v1, v0, Lcom/android/server/am/oif;->q:Ljava/util/Map;

    iget-object v2, v0, Lcom/android/server/am/oif;->s:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/oif;->ugm(Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/am/oif;->t:Ljava/util/List;

    iget-wide v1, v0, Lcom/android/server/am/oif;->igw:J

    sub-long v1, v9, v1

    iput-wide v1, v0, Lcom/android/server/am/oif;->wtn:J

    move-wide/from16 v19, v7

    const-wide/16 v7, 0x0

    cmp-long v1, v1, v7

    if-gez v1, :cond_2

    iput-wide v7, v0, Lcom/android/server/am/oif;->wtn:J

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### mUserSpaceWLMs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lcom/android/server/am/oif;->igw:J

    invoke-static {v7, v8}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### mKernelSpaceWLMs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lcom/android/server/am/oif;->wtn:J

    invoke-static {v7, v8}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/am/oif;->u:Ljava/util/Map;

    iget-object v2, v0, Lcom/android/server/am/oif;->w:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/oif;->cjf(Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/am/oif;->x:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### mWRCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lcom/android/server/am/oif;->gck:J

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/am/oif;->F:Ljava/util/Map;

    iget-object v2, v0, Lcom/android/server/am/oif;->H:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/oif;->ear(Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/am/oif;->I:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### mUWACount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lcom/android/server/am/oif;->dma:J

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/am/oif;->J:Ljava/util/Map;

    iget-object v2, v0, Lcom/android/server/am/oif;->L:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/oif;->vdb(Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/am/oif;->M:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### mWifiPktDelta: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lcom/android/server/am/oif;->ywr:J

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/Object;

    move-wide v15, v3

    iget-wide v2, v0, Lcom/android/server/am/oif;->ywr:J

    long-to-float v2, v2

    const/high16 v3, 0x49800000    # 1048576.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const-string v2, " (%.3f MB)"

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "#### mMobilePktDelta: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v21, v5

    iget-wide v4, v0, Lcom/android/server/am/oif;->qbh:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-wide v5, v0, Lcom/android/server/am/oif;->qbh:J

    long-to-float v5, v5

    div-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v4, v8

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/am/oif;->R:Ljava/util/Map;

    iget-object v2, v0, Lcom/android/server/am/oif;->T:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/oif;->zgw(Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/am/oif;->U:Ljava/util/List;

    iget-object v1, v0, Lcom/android/server/am/oif;->V:Ljava/util/Map;

    iget-object v2, v0, Lcom/android/server/am/oif;->X:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/oif;->obl(Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/am/oif;->Y:Ljava/util/List;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/oif;->A()V

    iget-object v1, v0, Lcom/android/server/am/oif;->oif:Lnet/oneplus/odm/OpDeviceManagerInjector;

    if-eqz v1, :cond_4

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "ver"

    const-string v3, "2.1"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "p_stat"

    move-object/from16 v3, p1

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "p_duration"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "p_level_drop"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "away_from_soff"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "duration"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "uptime"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "capacity_drop"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/am/oif;->e:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/am/oif;->g:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "charge_full"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/am/oif;->h:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/am/oif;->j:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "health"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/am/oif;->qeg:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/am/oif;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "temp"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "conn_chg"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v2, v0, Lcom/android/server/am/oif;->cno:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "hotspot"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v2, v0, Lcom/android/server/am/oif;->kth:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "flashlight"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "deep_sleep"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v2, v0, Lcom/android/server/am/oif;->igw:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "wl_ms"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/am/oif;->E:Ljava/util/List;

    invoke-direct {v0, v2}, Lcom/android/server/am/oif;->k(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "wl_list"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v2, v0, Lcom/android/server/am/oif;->wtn:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "kwl_ms"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/am/oif;->t:Ljava/util/List;

    invoke-direct {v0, v2}, Lcom/android/server/am/oif;->h(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "kwl_list"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v2, v0, Lcom/android/server/am/oif;->gck:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "wr_count"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/am/oif;->x:Ljava/util/List;

    invoke-direct {v0, v2}, Lcom/android/server/am/oif;->l(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "wr_list"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v2, v0, Lcom/android/server/am/oif;->dma:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "uwa_count"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/am/oif;->I:Ljava/util/List;

    invoke-direct {v0, v2}, Lcom/android/server/am/oif;->j(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "uwa_list"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v2, v0, Lcom/android/server/am/oif;->ywr:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "wifi_pkt"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v2, v0, Lcom/android/server/am/oif;->qbh:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mobile_pkt"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/am/oif;->M:Ljava/util/List;

    invoke-direct {v0, v2}, Lcom/android/server/am/oif;->i(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pkt_list"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/am/oif;->U:Ljava/util/List;

    invoke-direct {v0, v2}, Lcom/android/server/am/oif;->e(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "rpm"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/server/am/oif;->Y:Ljava/util/List;

    invoke-direct {v0, v2}, Lcom/android/server/am/oif;->f(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "rpm_master"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v2, Lcom/android/server/am/oif;->n0:Z

    if-eqz v2, :cond_3

    invoke-direct {v0, v1}, Lcom/android/server/am/oif;->y(Ljava/util/HashMap;)V

    :cond_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "appid"

    const-string v4, "NYNCG4I0TI"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/android/server/am/oif;->oif:Lnet/oneplus/odm/OpDeviceManagerInjector;

    iget-object v0, v0, Lcom/android/server/am/oif;->hmo:Landroid/content/Context;

    const-string v4, "protoDetail"

    invoke-virtual {v3, v0, v4, v1, v2}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@@@@[calculateDiff] in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long v1, v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    return-void
.end method

.method private h(Ljava/util/List;)Ljava/lang/String;
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
    iget v3, p0, Lcom/android/server/am/oif;->ssp:I

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

.method private hmo(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/oif;->E:Ljava/util/List;

    const-string v1, "Diff-WL"

    invoke-direct {p0, v1, v0, p1}, Lcom/android/server/am/oif;->b(Ljava/lang/String;Ljava/util/List;Z)V

    iget-object v0, p0, Lcom/android/server/am/oif;->t:Ljava/util/List;

    const-string v1, "Diff-KWL"

    invoke-direct {p0, v1, v0, p1}, Lcom/android/server/am/oif;->fto(Ljava/lang/String;Ljava/util/List;Z)V

    iget-object v0, p0, Lcom/android/server/am/oif;->x:Ljava/util/List;

    const-string v1, "Diff-WR"

    invoke-direct {p0, v1, v0, p1}, Lcom/android/server/am/oif;->c(Ljava/lang/String;Ljava/util/List;Z)V

    iget-object v0, p0, Lcom/android/server/am/oif;->I:Ljava/util/List;

    const-string v1, "Diff-UWA"

    invoke-direct {p0, v1, v0, p1}, Lcom/android/server/am/oif;->vdw(Ljava/lang/String;Ljava/util/List;Z)V

    iget-object v0, p0, Lcom/android/server/am/oif;->M:Ljava/util/List;

    const-string v1, "Diff-Pkt"

    invoke-direct {p0, v1, v0, p1}, Lcom/android/server/am/oif;->lqr(Ljava/lang/String;Ljava/util/List;Z)V

    iget-object v0, p0, Lcom/android/server/am/oif;->U:Ljava/util/List;

    const-string v1, "Diff-RPM"

    invoke-direct {p0, v1, v0, p1}, Lcom/android/server/am/oif;->irq(Ljava/lang/String;Ljava/util/List;Z)V

    iget-object v0, p0, Lcom/android/server/am/oif;->Y:Ljava/util/List;

    const-string v1, "Diff-RPMMaster"

    invoke-direct {p0, v1, v0, p1}, Lcom/android/server/am/oif;->les(Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method

.method private i(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/am/oif$bio;",
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

    iget v2, p0, Lcom/android/server/am/oif;->ssp:I

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/oif$bio;

    iget-wide v2, v2, Lcom/android/server/am/oif$bio;->bio:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/oif$bio;

    invoke-virtual {v3}, Lcom/android/server/am/oif$bio;->zta()Ljava/lang/String;

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

.method private static ibl(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    :catch_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_1
    return-void
.end method

.method static synthetic igw(Lcom/android/server/am/oif;)I
    .locals 2

    iget v0, p0, Lcom/android/server/am/oif;->gwm:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/am/oif;->gwm:I

    return v0
.end method

.method private ire(Ljava/lang/String;Ljava/util/List;Z)V
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

    const/16 v5, 0x14

    if-ge v3, v5, :cond_1

    :cond_0
    invoke-direct {p0, p1, v4}, Lcom/android/server/am/oif;->d(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

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
    invoke-static {p0}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    return-void
.end method

.method private irq(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;",
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

    const/16 v1, 0x14

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

    invoke-static {v1}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private ivd(Ljava/lang/String;Ljava/util/Map;Z)V
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

    const/4 p0, 0x0

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

    if-eqz p3, :cond_0

    if-eqz p3, :cond_1

    const/16 v1, 0x14

    if-ge p0, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private j(Ljava/util/List;)Ljava/lang/String;
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

    iget v2, p0, Lcom/android/server/am/oif;->ssp:I

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

.method private k(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/am/oif$igw;",
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

    iget v2, p0, Lcom/android/server/am/oif;->ssp:I

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/oif$igw;

    iget-wide v2, v2, Lcom/android/server/am/oif$igw;->cno:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/oif$igw;

    invoke-virtual {v3}, Lcom/android/server/am/oif$igw;->you()Ljava/lang/String;

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

.method static synthetic kth(Lcom/android/server/am/oif;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/am/oif;->ssp:I

    return p1
.end method

.method private l(Ljava/util/List;)Ljava/lang/String;
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

    iget v2, p0, Lcom/android/server/am/oif;->ssp:I

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

.method private les(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;",
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

    const/16 v1, 0x14

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

    invoke-static {v1}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private lqr(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/server/am/oif$bio;",
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

    const/16 v1, 0x14

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

    invoke-static {v1}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private m()J
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/oif;->ugm:Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

    invoke-virtual {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;->rtg()V

    iget-object v0, p0, Lcom/android/server/am/oif;->ugm:Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

    invoke-virtual {v0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;->you()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/android/server/am/oif;->obl:Z

    if-eqz v2, :cond_0

    const-string v2, "[DeepSleep] Keep starting"

    invoke-static {v2}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/oif;->ugm:Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;

    invoke-virtual {p0}, Lcom/android/server/power/OnePlusStandbyAnalyzer$gwm;->tsu()V

    :cond_0
    return-wide v0
.end method

.method private n()I
    .locals 6

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    :try_start_0
    new-array v3, v1, [C

    new-instance v4, Ljava/io/FileReader;

    iget-object v5, p0, Lcom/android/server/am/oif;->Z:Ljava/lang/String;

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

    iget-boolean v3, p0, Lcom/android/server/am/oif;->a0:Z

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
    move-exception p0

    goto :goto_0

    :catch_0
    :try_start_4
    const-string v1, "ExtBatteryStatsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t get device temp w "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/oif;->Z:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v2

    :goto_0
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p0
.end method

.method private obl(Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;

    if-eqz v5, :cond_0

    new-instance v14, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    iget-wide v8, v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->sis:J

    iget-wide v10, v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->sis:J

    sub-long/2addr v8, v10

    iget-wide v10, v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->tsu:J

    iget-wide v12, v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->rtg:J

    iget-wide v3, v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->ssp:J

    iget-wide v5, v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;->ssp:J

    sub-long/2addr v3, v5

    move-object v6, v14

    move-object v5, v14

    move-wide v14, v3

    invoke-direct/range {v6 .. v15}, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;JJJJ)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method static synthetic oif(Lcom/android/server/am/oif;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/oif;->hmo:Landroid/content/Context;

    return-object p0
.end method

.method private oxb(Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;
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
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/am/oif$igw;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

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

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, v9, v3

    move-wide v5, v3

    goto :goto_1

    :cond_0
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-wide v5, v9

    :goto_1
    new-instance v11, Lcom/android/server/am/oif$igw;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lcom/android/server/am/oif$igw;-><init>(Ljava/lang/String;JJJ)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/oif;->g0:Ljava/util/Comparator;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-object v0
.end method

.method private q()V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/oif;->m0:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/am/oif;->n:J

    iput-wide v0, p0, Lcom/android/server/am/oif;->o:J

    iget-wide v0, p0, Lcom/android/server/am/oif;->k:J

    iput-wide v0, p0, Lcom/android/server/am/oif;->l:J

    iget v0, p0, Lcom/android/server/am/oif;->b:I

    iput v0, p0, Lcom/android/server/am/oif;->c:I

    iget v0, p0, Lcom/android/server/am/oif;->e:I

    iput v0, p0, Lcom/android/server/am/oif;->f:I

    iget v0, p0, Lcom/android/server/am/oif;->h:I

    iput v0, p0, Lcom/android/server/am/oif;->i:I

    iget v0, p0, Lcom/android/server/am/oif;->qeg:I

    iput v0, p0, Lcom/android/server/am/oif;->ivd:I

    iget v0, p0, Lcom/android/server/am/oif;->les:I

    iput v0, p0, Lcom/android/server/am/oif;->irq:I

    iget-wide v0, p0, Lcom/android/server/am/oif;->cgv:J

    iput-wide v0, p0, Lcom/android/server/am/oif;->vju:J

    iget-object v0, p0, Lcom/android/server/am/oif;->y:Ljava/util/List;

    iput-object v0, p0, Lcom/android/server/am/oif;->z:Ljava/util/List;

    iget-object v0, p0, Lcom/android/server/am/oif;->q:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/server/am/oif;->r:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/server/am/oif;->u:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/server/am/oif;->v:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/server/am/oif;->B:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/server/am/oif;->C:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/server/am/oif;->F:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/server/am/oif;->G:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/server/am/oif;->J:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/server/am/oif;->K:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/server/am/oif;->R:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/server/am/oif;->S:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/server/am/oif;->V:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/server/am/oif;->W:Ljava/util/Map;

    :cond_0
    const-string v0, "==handOverParameters=="

    invoke-static {v0}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/oif;->p:J

    iput-wide v0, p0, Lcom/android/server/am/oif;->n:J

    iget-wide v0, p0, Lcom/android/server/am/oif;->m:J

    iput-wide v0, p0, Lcom/android/server/am/oif;->k:J

    iget v0, p0, Lcom/android/server/am/oif;->d:I

    iput v0, p0, Lcom/android/server/am/oif;->b:I

    iget v0, p0, Lcom/android/server/am/oif;->g:I

    iput v0, p0, Lcom/android/server/am/oif;->e:I

    iget v0, p0, Lcom/android/server/am/oif;->a:I

    iput v0, p0, Lcom/android/server/am/oif;->qeg:I

    iget v0, p0, Lcom/android/server/am/oif;->vdw:I

    iput v0, p0, Lcom/android/server/am/oif;->les:I

    iget-wide v0, p0, Lcom/android/server/am/oif;->bud:J

    iput-wide v0, p0, Lcom/android/server/am/oif;->cgv:J

    iget-object v0, p0, Lcom/android/server/am/oif;->A:Ljava/util/List;

    iput-object v0, p0, Lcom/android/server/am/oif;->y:Ljava/util/List;

    iget-object v0, p0, Lcom/android/server/am/oif;->s:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/server/am/oif;->q:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/server/am/oif;->w:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/server/am/oif;->u:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/server/am/oif;->D:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/server/am/oif;->B:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/server/am/oif;->H:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/server/am/oif;->F:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/server/am/oif;->L:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/server/am/oif;->J:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/server/am/oif;->T:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/server/am/oif;->R:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/server/am/oif;->X:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/server/am/oif;->V:Ljava/util/Map;

    invoke-direct {p0}, Lcom/android/server/am/oif;->t()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/oif;->cno:Z

    invoke-direct {p0}, Lcom/android/server/am/oif;->s()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/oif;->kth:Z

    return-void
.end method

.method static synthetic qbh(Lcom/android/server/am/oif;Lcom/android/internal/os/BatteryStatsHelper;)Lcom/android/internal/os/BatteryStatsHelper;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/oif;->ire:Lcom/android/internal/os/BatteryStatsHelper;

    return-object p1
.end method

.method private qeg(Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 3
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

    if-eqz p2, :cond_1

    const/4 p0, 0x0

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

    if-eqz p3, :cond_0

    if-eqz p3, :cond_1

    const/16 v1, 0x14

    if-ge p0, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private declared-synchronized r(Lcom/android/server/am/oif$wtn;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/am/oif$wtn;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lcom/android/server/am/oif;->I(I)V

    iget-wide v0, p0, Lcom/android/server/am/oif;->veq:J

    invoke-direct {p0}, Lcom/android/server/am/oif;->H()V

    iget-wide v2, p0, Lcom/android/server/am/oif;->veq:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    iget v2, p1, Lcom/android/server/am/oif$wtn;->zta:I

    if-lez v2, :cond_1

    iget-wide v2, p1, Lcom/android/server/am/oif$wtn;->you:J

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/oif;->g(J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "##### stat: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    iget-wide v3, p1, Lcom/android/server/am/oif$wtn;->sis:J

    sub-long/2addr v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##### duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    invoke-direct {p0, v0}, Lcom/android/server/am/oif;->F(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;)V

    const-string v0, "screen-off"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/server/am/oif$wtn;->zta:I

    invoke-direct {p0, v2, v0, v3, v4}, Lcom/android/server/am/oif;->gwm(Ljava/lang/String;IJ)V

    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/oif;->q()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    invoke-direct {p0, v0}, Lcom/android/server/am/oif;->F(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;)V

    :goto_0
    iget-wide v0, p1, Lcom/android/server/am/oif$wtn;->sis:J

    iput-wide v0, p0, Lcom/android/server/am/oif;->veq:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic rtg(Lcom/android/server/am/oif;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/oif;->fto:Landroid/os/Handler;

    return-object p0
.end method

.method private s()Z
    .locals 2

    iget-object p0, p0, Lcom/android/server/am/oif;->hmo:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "flashlight_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method static synthetic sis(Lcom/android/server/am/oif;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/oif;->bio:J

    return-wide p1
.end method

.method static synthetic ssp(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/server/am/oif;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private t()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/oif;->oxb:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/oif;->hmo:Landroid/content/Context;

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    if-eqz p0, :cond_0

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

.method static synthetic tsu(Lcom/android/server/am/oif;Lcom/android/server/am/oif$wtn;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/oif;->r(Lcom/android/server/am/oif$wtn;)V

    return-void
.end method

.method private u()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/oif;->hmo:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "com.oneplus:string/config_overheat_thermal_zone_path"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/oif;->Z:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/oif;->a0:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update temp_path to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/oif;->Z:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private ugm(Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;
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

    iput-wide v2, v0, Lcom/android/server/am/oif;->igw:J

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

    iput-wide v2, v0, Lcom/android/server/am/oif;->igw:J

    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/android/server/am/oif;->h0:Ljava/util/Comparator;

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_3
    return-object v4
.end method

.method private v()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/oif;->u()V

    invoke-direct {p0}, Lcom/android/server/am/oif;->x()V

    invoke-direct {p0}, Lcom/android/server/am/oif;->w()V

    return-void
.end method

.method private vdb(Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/oif$bio;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/oif$bio;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/am/oif$bio;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/android/server/am/oif;->ywr:J

    iput-wide v2, v0, Lcom/android/server/am/oif;->qbh:J

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/oif$bio;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/oif$bio;

    if-eqz v4, :cond_0

    iget-wide v7, v6, Lcom/android/server/am/oif$bio;->sis:J

    iget-wide v9, v4, Lcom/android/server/am/oif$bio;->sis:J

    sub-long/2addr v7, v9

    iget-wide v9, v6, Lcom/android/server/am/oif$bio;->tsu:J

    iget-wide v11, v4, Lcom/android/server/am/oif$bio;->tsu:J

    sub-long/2addr v9, v11

    iget-wide v11, v6, Lcom/android/server/am/oif$bio;->ssp:J

    iget-wide v13, v4, Lcom/android/server/am/oif$bio;->ssp:J

    sub-long/2addr v11, v13

    iget-wide v13, v6, Lcom/android/server/am/oif$bio;->cno:J

    move-object/from16 p2, v3

    iget-wide v3, v4, Lcom/android/server/am/oif$bio;->cno:J

    sub-long/2addr v13, v3

    goto :goto_1

    :cond_0
    move-object/from16 p2, v3

    iget-wide v7, v6, Lcom/android/server/am/oif$bio;->sis:J

    iget-wide v9, v6, Lcom/android/server/am/oif$bio;->tsu:J

    iget-wide v11, v6, Lcom/android/server/am/oif$bio;->ssp:J

    iget-wide v13, v6, Lcom/android/server/am/oif$bio;->cno:J

    :goto_1
    move-wide/from16 v17, v7

    move-wide/from16 v19, v9

    move-wide/from16 v21, v11

    move-wide/from16 v23, v13

    iget-wide v3, v0, Lcom/android/server/am/oif;->qbh:J

    add-long v6, v17, v19

    add-long/2addr v3, v6

    iput-wide v3, v0, Lcom/android/server/am/oif;->qbh:J

    iget-wide v3, v0, Lcom/android/server/am/oif;->ywr:J

    add-long v6, v21, v23

    add-long/2addr v3, v6

    iput-wide v3, v0, Lcom/android/server/am/oif;->ywr:J

    new-instance v3, Lcom/android/server/am/oif$bio;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move-object v15, v3

    invoke-direct/range {v15 .. v24}, Lcom/android/server/am/oif$bio;-><init>(IJJJJ)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, p2

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/android/server/am/oif;->k0:Ljava/util/Comparator;

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    return-object v2
.end method

.method private vdw(Ljava/lang/String;Ljava/util/List;Z)V
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

    const/16 v1, 0x14

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

    check-cast v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;

    invoke-virtual {v2}, Lcom/android/server/power/OnePlusStandbyAnalyzer$veq;->you()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private veq(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;Z)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    sget-object v11, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    if-ne v1, v11, :cond_0

    invoke-direct {v0, v2}, Lcom/android/server/am/oif;->hmo(Z)V

    return-void

    :cond_0
    sget-object v11, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    if-ne v1, v11, :cond_1

    invoke-virtual {v11}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    iget-wide v12, v0, Lcom/android/server/am/oif;->n:J

    iget-wide v4, v0, Lcom/android/server/am/oif;->k:J

    iget v14, v0, Lcom/android/server/am/oif;->b:I

    iget v6, v0, Lcom/android/server/am/oif;->e:I

    iget v7, v0, Lcom/android/server/am/oif;->h:I

    iget v8, v0, Lcom/android/server/am/oif;->qeg:I

    iget v9, v0, Lcom/android/server/am/oif;->les:I

    iget-wide v10, v0, Lcom/android/server/am/oif;->cgv:J

    iget-object v15, v0, Lcom/android/server/am/oif;->y:Ljava/util/List;

    move-object/from16 v16, v3

    iget-object v3, v0, Lcom/android/server/am/oif;->q:Ljava/util/Map;

    move-object/from16 v17, v3

    iget-object v3, v0, Lcom/android/server/am/oif;->u:Ljava/util/Map;

    move-object/from16 v18, v3

    iget-object v3, v0, Lcom/android/server/am/oif;->B:Ljava/util/Map;

    move-object/from16 v19, v3

    iget-object v3, v0, Lcom/android/server/am/oif;->F:Ljava/util/Map;

    move-object/from16 v20, v3

    iget-object v3, v0, Lcom/android/server/am/oif;->J:Ljava/util/Map;

    move-object/from16 v21, v3

    iget-object v3, v0, Lcom/android/server/am/oif;->R:Ljava/util/Map;

    move-object/from16 v22, v3

    iget-object v3, v0, Lcom/android/server/am/oif;->V:Ljava/util/Map;

    :goto_0
    move v1, v6

    move v6, v8

    move-object/from16 v23, v18

    move-object/from16 v18, v3

    move-object/from16 v3, v16

    move-object/from16 v16, v22

    move-object/from16 v22, v17

    move-object/from16 v17, v21

    move-object/from16 v21, v23

    move-wide/from16 v24, v4

    move v5, v9

    move-wide v8, v10

    move-wide/from16 v10, v24

    move-object/from16 v26, v20

    move-object/from16 v20, v19

    move-object/from16 v19, v26

    goto/16 :goto_1

    :cond_1
    sget-object v11, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    if-ne v1, v11, :cond_2

    invoke-virtual {v11}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    iget-wide v12, v0, Lcom/android/server/am/oif;->p:J

    iget-wide v4, v0, Lcom/android/server/am/oif;->m:J

    iget v14, v0, Lcom/android/server/am/oif;->d:I

    iget v6, v0, Lcom/android/server/am/oif;->g:I

    iget v7, v0, Lcom/android/server/am/oif;->j:I

    iget v8, v0, Lcom/android/server/am/oif;->a:I

    iget v9, v0, Lcom/android/server/am/oif;->vdw:I

    iget-wide v10, v0, Lcom/android/server/am/oif;->bud:J

    iget-object v15, v0, Lcom/android/server/am/oif;->A:Ljava/util/List;

    move-object/from16 v16, v3

    iget-object v3, v0, Lcom/android/server/am/oif;->s:Ljava/util/Map;

    move-object/from16 v17, v3

    iget-object v3, v0, Lcom/android/server/am/oif;->w:Ljava/util/Map;

    move-object/from16 v18, v3

    iget-object v3, v0, Lcom/android/server/am/oif;->D:Ljava/util/Map;

    move-object/from16 v19, v3

    iget-object v3, v0, Lcom/android/server/am/oif;->H:Ljava/util/Map;

    move-object/from16 v20, v3

    iget-object v3, v0, Lcom/android/server/am/oif;->L:Ljava/util/Map;

    move-object/from16 v21, v3

    iget-object v3, v0, Lcom/android/server/am/oif;->T:Ljava/util/Map;

    move-object/from16 v22, v3

    iget-object v3, v0, Lcom/android/server/am/oif;->X:Ljava/util/Map;

    goto :goto_0

    :cond_2
    sget-object v11, Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;

    if-ne v1, v11, :cond_3

    invoke-virtual {v11}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    iget-wide v12, v0, Lcom/android/server/am/oif;->o:J

    iget-wide v4, v0, Lcom/android/server/am/oif;->l:J

    iget v14, v0, Lcom/android/server/am/oif;->c:I

    iget v6, v0, Lcom/android/server/am/oif;->f:I

    iget v7, v0, Lcom/android/server/am/oif;->i:I

    iget v8, v0, Lcom/android/server/am/oif;->ivd:I

    iget v9, v0, Lcom/android/server/am/oif;->irq:I

    iget-wide v10, v0, Lcom/android/server/am/oif;->vju:J

    iget-object v15, v0, Lcom/android/server/am/oif;->z:Ljava/util/List;

    iget-object v1, v0, Lcom/android/server/am/oif;->r:Ljava/util/Map;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/server/am/oif;->v:Ljava/util/Map;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/server/am/oif;->C:Ljava/util/Map;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/server/am/oif;->G:Ljava/util/Map;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/server/am/oif;->K:Ljava/util/Map;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/android/server/am/oif;->S:Ljava/util/Map;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/android/server/am/oif;->W:Ljava/util/Map;

    move-object/from16 v22, v16

    move-object/from16 v16, v21

    move-object/from16 v21, v17

    move-object/from16 v17, v20

    move-object/from16 v20, v18

    move-object/from16 v18, v1

    move v1, v6

    move v6, v8

    move-wide/from16 v23, v4

    move v5, v9

    move-wide v8, v10

    move-wide/from16 v10, v23

    goto :goto_1

    :cond_3
    const-string v1, ""

    move-object v15, v3

    move-object/from16 v22, v4

    move-object/from16 v21, v5

    move-object/from16 v20, v6

    move-object/from16 v19, v7

    move-object/from16 v17, v8

    move-object/from16 v16, v9

    move-object/from16 v18, v10

    move-wide v8, v12

    move-wide v10, v8

    move v5, v14

    move v6, v5

    move v7, v6

    move-object v3, v1

    move v1, v7

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "==dump== "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "### rawUptime: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "### rawRealtime: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "### capacity: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "### chargeFull: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "### battHealth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "### temp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "### conChgCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "### deepSleepMs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15, v2}, Lcom/android/server/am/oif;->ire(Ljava/lang/String;Ljava/util/List;Z)V

    move-object/from16 v4, v22

    invoke-direct {v0, v3, v4, v2}, Lcom/android/server/am/oif;->ivd(Ljava/lang/String;Ljava/util/Map;Z)V

    move-object/from16 v5, v21

    invoke-direct {v0, v3, v5, v2}, Lcom/android/server/am/oif;->a(Ljava/lang/String;Ljava/util/Map;Z)V

    move-object/from16 v6, v20

    invoke-direct {v0, v3, v6, v2}, Lcom/android/server/am/oif;->ivd(Ljava/lang/String;Ljava/util/Map;Z)V

    move-object/from16 v7, v19

    invoke-direct {v0, v3, v7, v2}, Lcom/android/server/am/oif;->qeg(Ljava/lang/String;Ljava/util/Map;Z)V

    move-object/from16 v8, v17

    invoke-virtual {v0, v3, v8, v2}, Lcom/android/server/am/oif;->cgv(Ljava/lang/String;Ljava/util/Map;Z)V

    move-object/from16 v9, v16

    invoke-direct {v0, v3, v9}, Lcom/android/server/am/oif;->vju(Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v1, v18

    invoke-direct {v0, v3, v1}, Lcom/android/server/am/oif;->bud(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private vju(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;",
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

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private w()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ExtBatteryStatsService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/oif;->lqr:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/am/oif$zta;

    iget-object v1, p0, Lcom/android/server/am/oif;->lqr:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/oif$zta;-><init>(Lcom/android/server/am/oif;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/oif;->fto:Landroid/os/Handler;

    return-void
.end method

.method static synthetic wtn(Lcom/android/server/am/oif;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/oif;->obl:Z

    return p0
.end method

.method private x()V
    .locals 10

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/oif;->Q:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/oif;->P:Ljava/util/Map;

    iget-boolean v1, p0, Lcom/android/server/am/oif;->cjf:Z

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

    iget-object v0, p0, Lcom/android/server/am/oif;->P:Ljava/util/Map;

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

    iget-object v0, p0, Lcom/android/server/am/oif;->P:Ljava/util/Map;

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

    iget-object v0, p0, Lcom/android/server/am/oif;->P:Ljava/util/Map;

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

    iget-object v0, p0, Lcom/android/server/am/oif;->Q:Ljava/util/Map;

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

    iget-object p0, p0, Lcom/android/server/am/oif;->Q:Ljava/util/Map;

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

    iget-object v0, p0, Lcom/android/server/am/oif;->P:Ljava/util/Map;

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

    iget-object p0, p0, Lcom/android/server/am/oif;->P:Ljava/util/Map;

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

.method private y(Ljava/util/HashMap;)V
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

    invoke-static {p1}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic you(Lcom/android/server/am/oif;Lnet/oneplus/odm/OpDeviceManagerInjector;)Lnet/oneplus/odm/OpDeviceManagerInjector;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/oif;->oif:Lnet/oneplus/odm/OpDeviceManagerInjector;

    return-object p1
.end method

.method static synthetic ywr(Lcom/android/server/am/oif;)Lcom/android/internal/os/BatteryStatsHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/oif;->ire:Lcom/android/internal/os/BatteryStatsHelper;

    return-object p0
.end method

.method public static z(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/oif;->n0:Z

    if-eqz v0, :cond_0

    const-string v0, "ExtBatteryStatsService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private zgw(Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;

    if-eqz v2, :cond_0

    new-instance v9, Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;

    iget v5, v2, Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;->sis:I

    iget v6, v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;->sis:I

    iget-wide v7, v1, Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;->rtg:J

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;IIJ)V

    invoke-interface {p0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method static synthetic zta(Lcom/android/server/am/oif;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/oif;->bio:J

    return-wide v0
.end method


# virtual methods
.method public addLevelSteps(IJJ)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addLevelSteps, numStepLevels: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", modeBits: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", elapsedRealtime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/oif;->fto:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/am/oif$wtn;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/oif$wtn;-><init>(Lcom/android/server/am/oif;IJJ)V

    const/16 p1, 0x1e6d

    invoke-virtual {v0, p1, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/oif;->fto:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public cgv(Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/oif$bio;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    const/4 p0, 0x0

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

    if-eqz p3, :cond_0

    if-eqz p3, :cond_1

    const/16 v1, 0x14

    if-ge p0, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public clearTime()V
    .locals 2

    const-string v0, "clearTime"

    invoke-static {v0}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/oif;->fto:Landroid/os/Handler;

    const/16 v1, 0x1e6e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/am/oif;->fto:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public cloneKernelWakelockStats()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/oif;->you:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    :try_start_0
    const-string v1, "ExtBatteryStatsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mStats.getKernelWakelockStats().size()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/oif;->you:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/HashMap;

    iget-object p0, p0, Lcom/android/server/am/oif;->you:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public cloneWakeupReasonStats()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/oif;->you:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    :try_start_0
    const-string v1, "ExtBatteryStatsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mStats.getWakeupReasonStats().size()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/oif;->you:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/HashMap;

    iget-object p0, p0, Lcom/android/server/am/oif;->you:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dumpDetail(Ljava/lang/String;Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dump, prefix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bfilter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/oif;->fto:Landroid/os/Handler;

    const/4 v1, 0x0

    const/16 v2, 0x1e71

    invoke-virtual {v0, v2, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/oif;->fto:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public flushExternal()V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/oif;->tsu:J

    sub-long v2, v0, v2

    sget v4, Lcom/android/server/am/oif;->p0:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    const-string v3, "ExtBatteryStatsService"

    if-gtz v2, :cond_0

    const-string p0, "ext-flush too soon, skip"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/oif;->sis:Lcom/android/server/am/BatteryExternalStatsWorker;

    const/16 v4, 0x1f

    const-string v5, "BGC"

    invoke-virtual {v2, v5, v4}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/oif;->ibl(Ljava/util/concurrent/Future;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@@@@ awaitUninterruptibly in "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/oif;->tsu:J

    :goto_0
    return-void
.end method

.method public initInstance(Lcom/android/server/am/BatteryStatsService;Landroid/content/Context;Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/server/am/BatteryExternalStatsWorker;)V
    .locals 2

    const-string v0, "ExtBatteryStatsService"

    const-string v1, "initInstance++++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/am/oif;->zta:Lcom/android/server/am/BatteryStatsService;

    iput-object p2, p0, Lcom/android/server/am/oif;->hmo:Landroid/content/Context;

    new-instance p1, Lcom/android/internal/os/PowerProfile;

    iget-object p2, p0, Lcom/android/server/am/oif;->hmo:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/am/oif;->vdb:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {p1}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lcom/android/server/am/oif;->zgw:I

    iput-object p3, p0, Lcom/android/server/am/oif;->you:Lcom/android/internal/os/BatteryStatsImpl;

    iput-object p4, p0, Lcom/android/server/am/oif;->sis:Lcom/android/server/am/BatteryExternalStatsWorker;

    const-string p1, "ro.board.platform"

    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "msm8996"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    const-string p2, "msm8998"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "bengal"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    iput-boolean p3, p0, Lcom/android/server/am/oif;->cjf:Z

    const-string p2, "/d/rpm_stats"

    sput-object p2, Lcom/android/server/am/oif;->e1:Ljava/lang/String;

    const-string p2, "/d/rpm_master_stats"

    sput-object p2, Lcom/android/server/am/oif;->g1:Ljava/lang/String;

    const/4 p2, 0x0

    sput-object p2, Lcom/android/server/am/oif;->h1:Ljava/lang/String;

    :cond_1
    const-string p2, "kona"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    iput-boolean p2, p0, Lcom/android/server/am/oif;->ear:Z

    :cond_2
    new-array p1, p2, [I

    const/16 p2, 0x14d

    aput p2, p1, p3

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "/sys/class/oplus_chg/battery/remaining_capacity"

    sput-object p1, Lcom/android/server/am/oif;->l1:Ljava/lang/String;

    const-string p1, "/sys/class/oplus_chg/battery/charge_full"

    sput-object p1, Lcom/android/server/am/oif;->m1:Ljava/lang/String;

    const-string p1, "/sys/class/oplus_chg/battery/battery_health"

    sput-object p1, Lcom/android/server/am/oif;->n1:Ljava/lang/String;

    :cond_3
    invoke-direct {p0}, Lcom/android/server/am/oif;->v()V

    const-string p0, "initInstance----"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public o(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;Ljava/lang/String;)Ljava/util/Map;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/16 v3, 0x400

    new-array v3, v3, [B

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    move-object/from16 v6, p2

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    :goto_0
    invoke-virtual {v5, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v8, -0x1

    if-eq v4, v8, :cond_b

    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v3, v9, v4}, Ljava/lang/String;-><init>([BII)V

    const/4 v4, 0x1

    new-array v10, v4, [I

    const/16 v11, 0x14d

    aput v11, v10, v9

    invoke-static {v10}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v9
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v11, "]"

    const-string v12, "#### ["

    const-string v13, "ExtBatteryStatsService"

    const-string v14, ", "

    if-eqz v9, :cond_2

    :try_start_2
    iget-object v9, v1, Lcom/android/server/am/oif;->Q:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v10, v16

    check-cast v10, Ljava/util/regex/Pattern;

    invoke-virtual {v10, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v16

    if-eqz v16, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v3

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " Matched...."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v10, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x4

    invoke-virtual {v10, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;

    move-object/from16 v18, v9

    new-instance v9, Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v20, v5

    :try_start_3
    move-object/from16 v5, v19

    check-cast v5, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;

    invoke-direct {v9, v5, v4, v10}, Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "] rpm_stats ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    move-object/from16 v17, v3

    move-object/from16 v20, v5

    move-object/from16 v18, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " CAN NOT Matched...."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    :goto_2
    move-object/from16 v3, v17

    move-object/from16 v9, v18

    move-object/from16 v5, v20

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_1
    move-object/from16 v17, v3

    move-object/from16 v20, v5

    goto/16 :goto_b

    :cond_2
    move-object/from16 v17, v3

    move-object/from16 v20, v5

    iget-boolean v3, v1, Lcom/android/server/am/oif;->cjf:Z

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/android/server/am/oif;->O:Ljava/util/regex/Pattern;

    :goto_3
    invoke-virtual {v3, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    goto :goto_4

    :cond_3
    iget-object v3, v1, Lcom/android/server/am/oif;->N:Ljava/util/regex/Pattern;

    goto :goto_3

    :goto_4
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "RPM Matched...."

    invoke-static {v4}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x3

    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iget-boolean v9, v1, Lcom/android/server/am/oif;->cjf:Z

    if-eqz v9, :cond_4

    sget-object v9, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;

    goto :goto_5

    :cond_4
    sget-object v9, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;

    :goto_5
    new-instance v10, Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;

    iget-boolean v15, v1, Lcom/android/server/am/oif;->cjf:Z

    if-eqz v15, :cond_5

    sget-object v15, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;->sis:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;

    goto :goto_6

    :cond_5
    sget-object v15, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;->zta:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;

    :goto_6
    invoke-direct {v10, v15, v4, v5}, Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v9, v1, Lcom/android/server/am/oif;->cjf:Z

    if-eqz v9, :cond_6

    sget-object v9, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;

    goto :goto_7

    :cond_6
    sget-object v9, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;

    :goto_7
    new-instance v10, Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;

    iget-boolean v15, v1, Lcom/android/server/am/oif;->cjf:Z

    if-eqz v15, :cond_7

    sget-object v15, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;->tsu:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;

    goto :goto_8

    :cond_7
    sget-object v15, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;

    :goto_8
    invoke-direct {v10, v15, v8, v3}, Lcom/android/server/power/OnePlusStandbyAnalyzer$oxb;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmModeType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v9, v1, Lcom/android/server/am/oif;->cjf:Z

    if-eqz v9, :cond_8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "] rpm_stats [aosd, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "], [cxsd, "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_9
    invoke-static {v13, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "] rpm_stats [vlow, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "], [vmin, "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    :cond_9
    const-string v3, "RPM Can\'t matched...."

    invoke-static {v3}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    :goto_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v6

    const-wide/16 v8, 0x1388

    cmp-long v3, v3, v8

    if-ltz v3, :cond_a

    const-string v1, "**** Exceed read timeout, force exit ***"

    invoke-static {v1}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_c

    :cond_a
    :goto_b
    move-object/from16 v3, v17

    move-object/from16 v5, v20

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_d

    :catch_0
    move-exception v0

    goto :goto_e

    :catch_1
    move-exception v0

    goto :goto_f

    :catch_2
    move-exception v0

    goto :goto_10

    :cond_b
    move-object/from16 v20, v5

    :goto_c
    :try_start_4
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_14

    :catch_3
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_14

    :catchall_1
    move-exception v0

    move-object/from16 v20, v5

    :goto_d
    move-object v1, v0

    move-object/from16 v4, v20

    goto/16 :goto_15

    :catch_4
    move-exception v0

    move-object/from16 v20, v5

    :goto_e
    move-object v1, v0

    move-object/from16 v4, v20

    goto :goto_11

    :catch_5
    move-exception v0

    move-object/from16 v20, v5

    :goto_f
    move-object v1, v0

    move-object/from16 v4, v20

    goto :goto_12

    :catch_6
    move-exception v0

    move-object/from16 v20, v5

    :goto_10
    move-object v1, v0

    move-object/from16 v4, v20

    goto :goto_13

    :catchall_2
    move-exception v0

    move-object v1, v0

    goto :goto_15

    :catch_7
    move-exception v0

    move-object v1, v0

    :goto_11
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "**** Failed, "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v4, :cond_c

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_14

    :catch_8
    move-exception v0

    move-object v1, v0

    :goto_12
    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "**** Failed to read, "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v4, :cond_c

    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_14

    :catch_9
    move-exception v0

    move-object v1, v0

    :goto_13
    :try_start_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "**** File not found, "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v4, :cond_c

    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    :cond_c
    :goto_14
    return-object v2

    :goto_15
    if-eqz v4, :cond_d

    :try_start_b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_16

    :catch_a
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_d
    :goto_16
    throw v1
.end method

.method public p(Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$SnapshotType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;",
            "Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-boolean v3, v1, Lcom/android/server/am/oif;->ear:Z

    const-string v5, " Matched...."

    const-string v6, " CAN NOT Matched...."

    const-string v7, "**** Exceed read timeout, force exit ***"

    const/4 v10, 0x0

    const/4 v11, -0x1

    const-string v12, "**** Failed, "

    const-string v13, "**** Failed to read, "

    const-string v14, "**** File not found, "

    const/4 v15, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/16 v18, 0x0

    const/16 v4, 0x400

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    :try_start_0
    new-array v3, v4, [B

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    :goto_0
    invoke-virtual {v4, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    if-eq v0, v11, :cond_2

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v3, v10, v0}, Ljava/lang/String;-><init>([BII)V

    iget-object v0, v1, Lcom/android/server/am/oif;->P:Ljava/util/Map;

    sget-object v10, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    invoke-virtual {v0, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual {v0, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v25

    const/4 v10, 0x5

    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v26

    sget-object v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    new-instance v10, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;

    sget-object v22, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    move-object/from16 v21, v10

    invoke-direct/range {v21 .. v26}, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;->you:Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v10, v10, v19

    const-wide/16 v16, 0x1388

    cmp-long v0, v10, v16

    if-ltz v0, :cond_1

    invoke-static {v7}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_1
    const/4 v10, 0x0

    const/4 v11, -0x1

    goto :goto_0

    :cond_2
    :goto_2
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    move-object/from16 v18, v4

    goto/16 :goto_a

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v18, v4

    goto/16 :goto_8

    :catch_1
    move-exception v0

    move-object/from16 v18, v4

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v18, v4

    goto :goto_6

    :catch_3
    move-exception v0

    move-object/from16 v18, v4

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_8

    :catch_4
    move-exception v0

    :goto_4
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v18, :cond_4

    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_a

    :catch_5
    move-exception v0

    move-object v3, v0

    :goto_5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    :catch_6
    move-exception v0

    :goto_6
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v18, :cond_4

    :try_start_6
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_a

    :catch_7
    move-exception v0

    move-object v3, v0

    goto :goto_5

    :catch_8
    move-exception v0

    :goto_7
    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v18, :cond_4

    :try_start_8
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9

    goto :goto_a

    :catch_9
    move-exception v0

    move-object v3, v0

    goto :goto_5

    :goto_8
    if-eqz v18, :cond_3

    :try_start_9
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a

    goto :goto_9

    :catch_a
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_9
    throw v1

    :cond_4
    :goto_a
    const/16 v3, 0x400

    :try_start_a
    new-array v0, v3, [B

    new-instance v3, Ljava/io/FileInputStream;

    move-object/from16 v4, p2

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_11
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_10
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_f
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    :goto_b
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v15, -0x1

    if-eq v4, v15, :cond_9

    new-instance v15, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v15, v0, v8, v4}, Ljava/lang/String;-><init>([BII)V

    iget-object v4, v1, Lcom/android/server/am/oif;->P:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v8, v20

    check-cast v8, Ljava/util/regex/Pattern;

    invoke-virtual {v8, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v20

    if-eqz v20, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/android/server/am/oif;->cjf:Z

    if-eqz v0, :cond_5

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v22

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v23

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v26, v0

    move-object/from16 v29, v8

    move-object/from16 v27, v22

    move-object/from16 v28, v23

    const/4 v9, 0x3

    goto :goto_d

    :cond_5
    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v22

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v23

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v26, v0

    move-object/from16 v29, v8

    move-object/from16 v27, v22

    move-object/from16 v28, v23

    :goto_d
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    new-instance v8, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v25, v18

    check-cast v25, Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;

    move-object/from16 v24, v8

    invoke-direct/range {v24 .. v29}, Lcom/android/server/power/OnePlusStandbyAnalyzer$cjf;-><init>(Lcom/android/server/power/OnePlusStandbyAnalyzer$RpmMasterType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_6
    move-object/from16 v21, v0

    const/4 v9, 0x3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    :goto_e
    move-object/from16 v0, v21

    const/4 v8, 0x0

    const/4 v9, 0x2

    goto/16 :goto_c

    :cond_7
    move-object/from16 v21, v0

    const/4 v9, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    sub-long v22, v22, v10

    const-wide/16 v15, 0x1388

    cmp-long v0, v22, v15

    if-ltz v0, :cond_8

    invoke-static {v7}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_c
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_f

    :cond_8
    move v8, v9

    move-object/from16 v0, v21

    const/4 v9, 0x2

    const/4 v15, 0x4

    goto/16 :goto_b

    :cond_9
    :goto_f
    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    goto/16 :goto_13

    :catch_b
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_13

    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object/from16 v18, v3

    goto :goto_14

    :catch_c
    move-exception v0

    move-object/from16 v18, v3

    goto :goto_10

    :catch_d
    move-exception v0

    move-object/from16 v18, v3

    goto :goto_11

    :catch_e
    move-exception v0

    move-object/from16 v18, v3

    goto :goto_12

    :catchall_3
    move-exception v0

    move-object v1, v0

    goto :goto_14

    :catch_f
    move-exception v0

    :goto_10
    :try_start_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    if-eqz v18, :cond_a

    :try_start_e
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b

    goto :goto_13

    :catch_10
    move-exception v0

    :goto_11
    :try_start_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    if-eqz v18, :cond_a

    :try_start_10
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    goto :goto_13

    :catch_11
    move-exception v0

    :goto_12
    :try_start_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    if-eqz v18, :cond_a

    :try_start_12
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b

    :cond_a
    :goto_13
    return-object v2

    :goto_14
    if-eqz v18, :cond_b

    :try_start_13
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_12

    goto :goto_15

    :catch_12
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_b
    :goto_15
    throw v1
.end method

.method public snapShotKernelWakelockStats(J)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/oif;->you:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    :try_start_0
    const-string v1, "ExtBatteryStatsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mStats.getKernelWakelockStats().size()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/oif;->you:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object p0, p0, Lcom/android/server/am/oif;->you:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Timer;

    const-wide/16 v4, 0x3e8

    mul-long v6, p1, v4

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v6

    div-long/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public snapShotWakeupReasonStats()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/oif;->you:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    :try_start_0
    const-string v1, "ExtBatteryStatsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mStats.getWakeupReasonStats().size()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/oif;->you:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsImpl;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object p0, p0, Lcom/android/server/am/oif;->you:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Timer;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public systemServicesReady()V
    .locals 2

    const-string v0, "ExtBatteryStatsService"

    const-string v1, "systemServicesReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/oif;->oxb:Z

    return-void
.end method

.method public updateCollectCount(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCollectCount, count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/oif;->fto:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x1e72

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/oif;->fto:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public updateDeepSleepStatus(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDeepSleepStatus, enter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/oif;->z(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/oif;->fto:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 v1, 0x1e6f

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/oif;->fto:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public updateKernelWakelocks()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/oif;->you:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/oif;->you:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl;->updateKernelWakelocksLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
