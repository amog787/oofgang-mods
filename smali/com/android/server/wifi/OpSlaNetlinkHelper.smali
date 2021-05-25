.class Lcom/android/server/wifi/OpSlaNetlinkHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/OpSlaNetlinkHelper$cjf;,
        Lcom/android/server/wifi/OpSlaNetlinkHelper$ire;,
        Lcom/android/server/wifi/OpSlaNetlinkHelper$ear;
    }
.end annotation


# static fields
.field private static final A0:I = 0x100

.field private static final A1:S = 0x20s

.field private static final B0:I = 0x64

.field private static final B1:S = 0x21s

.field private static final C0:I = 0x0

.field private static final C1:S = 0x22s

.field private static final D0:I = 0x1

.field private static final D1:S = 0x23s

.field private static final E0:I = 0x2

.field private static final E1:S = 0x24s

.field private static final F:Ljava/lang/String; = "OpSlaNetlinkHelper"

.field private static final F0:I = 0x1

.field private static final F1:S = 0x25s

.field private static G:Z = false

.field private static final G0:I = 0x0

.field private static final G1:S = 0x26s

.field private static H:Ljava/io/FileDescriptor; = null

.field private static final H0:I = 0x1

.field private static final H1:S = 0x27s

.field private static I:Ljava/lang/String; = null

.field private static final I0:I = 0x1

.field private static final I1:S = 0x28s

.field private static final J:Ljava/lang/String; = "19867"

.field private static final J0:I = 0x2

.field private static final J1:S = 0x29s

.field private static final K:Ljava/lang/String; = "com.oneplus.security.database.SafeProvider"

.field private static final K0:I = 0x3

.field private static final K1:S = 0x2as

.field private static final L:Ljava/lang/String; = "network_restrict"

.field private static final L0:I = 0x2

.field private static final L1:S = 0x2bs

.field private static final M:Ljava/lang/String; = "_id"

.field private static final M0:I = 0x8

.field private static final M1:S = 0x2cs

.field private static final N:Ljava/lang/String; = "pkg"

.field private static final N0:I = 0x4

.field private static final N1:S = 0x2ds

.field private static final O:Ljava/lang/String; = "mobile"

.field private static final O0:I = 0x4

.field private static final O1:S = 0x2es

.field private static final P:Ljava/lang/String; = "wlan"

.field private static final P0:I = 0x8

.field private static final P1:S = 0x2fs

.field private static final Q:Ljava/lang/String; = "SlaOnlineConfig"

.field private static final Q0:I = 0x2

.field private static final Q1:S = 0x30s

.field private static final R:Ljava/lang/String; = "SlaGameWhiteList"

.field private static final R0:I = 0x1

.field private static final R1:S = 0x31s

.field private static final S:Ljava/lang/String; = "SlaTopAppWhiteList"

.field private static final S0:I = 0x2

.field private static final S1:S = 0x37s

.field private static final T:Ljava/lang/String; = "oneplus_link_turbo_value"

.field private static final T0:I = 0x1

.field private static final T1:[Ljava/lang/String;

.field private static final U:Ljava/lang/String; = "oneplus_smart_link_selection"

.field private static final U0:I = 0x2

.field private static U1:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final V:Ljava/lang/String; = "wifi_auto_change_to_mobile_data"

.field private static final V0:I = 0x3

.field private static V1:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final W:Ljava/lang/String; = "sla_game_mark"

.field private static final W0:I = 0x4

.field private static final X:Ljava/lang/String; = "op_gamemode_removed_packages_by_user"

.field private static final X0:I = 0x5

.field private static final Y:Ljava/lang/String; = "game_mode_apps"

.field private static final Y0:I = 0x6

.field private static final Z:Ljava/lang/String; = "config_current_primary_sub"

.field private static final Z0:I = 0x7

.field private static final a0:Ljava/lang/String; = "android.intent.action.ENABLE_DOWNLOAD_SWITCH"

.field private static final a1:I = 0x8

.field private static final b0:Ljava/lang/String; = "android.intent.action.ENABLE_SLS_APP_SWITCH"

.field private static final b1:I = 0x9

.field private static final c0:Ljava/lang/String; = "sla_download_onetime_notify"

.field private static final c1:I = 0xa

.field private static final d0:Ljava/lang/String; = "sls_app_onetime_notify"

.field private static final d1:I = 0xb

.field private static final e0:Ljava/lang/String; = "download_smart_link_aggregation"

.field private static final e1:I = 0xc

.field private static final f0:Ljava/lang/String; = "sla_enable_notify"

.field private static final f1:I = 0xd

.field private static final g0:Ljava/lang/String; = "sla_downloading_dm_notify"

.field private static final g1:I = 0xe

.field private static final h0:Ljava/lang/String; = "sla_downloading_ota_notify"

.field private static final h1:I = 0xf

.field private static final i0:Ljava/lang/String; = "sla_downloading_heytap_notify"

.field private static final i1:I = 0x10

.field private static final j0:Ljava/lang/String; = "android.intent.action.GO_ACCELERATION_SETTINGS"

.field private static final j1:I = 0x11

.field private static final k0:Ljava/lang/String; = "oneplus.intent.action.OP_SLA"

.field private static final k1:I = 0x1d

.field private static final l0:Ljava/lang/String; = "android.net.network.INTERNET_LOST"

.field private static final l1:S = 0x11s

.field private static final m0:Ljava/lang/String; = "NETWORK_SLA_STATUS"

.field private static final m1:S = 0x12s

.field private static final n0:Ljava/lang/String; = "NETWORK_SLS_STATUS"

.field private static final n1:S = 0x13s

.field private static final o0:Ljava/lang/String; = "NETWORK_SLA_ALERTS"

.field private static final o1:S = 0x14s

.field private static final p0:Ljava/lang/String; = "wifi_dbs_enable"

.field private static final p1:S = 0x15s

.field private static final q0:Landroid/net/Uri;

.field private static final q1:S = 0x16s

.field private static final r0:Landroid/net/Uri;

.field private static final r1:S = 0x17s

.field private static final s0:J = 0x12cL

.field private static final s1:S = 0x18s

.field private static final t0:J = 0x1d4c0L

.field private static final t1:S = 0x19s

.field private static final u0:J = 0x124f80L

.field private static final u1:S = 0x1as

.field private static final v0:J = 0x2710L

.field private static final v1:S = 0x1bs

.field private static final w0:J = 0x4e20L

.field private static final w1:S = 0x1cs

.field private static final x0:I = -0xc8

.field private static final x1:S = 0x1ds

.field private static final y0:I = 0x3ec

.field private static final y1:S = 0x1es

.field private static final z0:I = 0x1

.field private static final z1:S = 0x1fs


# instance fields
.field private A:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final C:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Network;",
            "Landroid/net/NetworkState;",
            ">;"
        }
    .end annotation
.end field

.field private final D:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private E:Landroid/app/IProcessObserver;

.field private a:I

.field private b:J

.field private bio:Landroid/telephony/SubscriptionManager;

.field private bud:I

.field private bvj:Landroid/telephony/TelephonyManager;

.field private c:J

.field private cgv:Lcom/android/server/wifi/WifiInjector;

.field private cjf:Lcom/android/internal/net/IOemNetd;

.field private cno:Landroid/os/UserManager;

.field private d:Z

.field private dma:Landroid/net/NetworkRequest;

.field private e:Z

.field private ear:Lcom/oneplus/config/ConfigObserver;

.field private f:Z

.field private fto:Landroid/net/Network;

.field private g:Z

.field private gck:Landroid/app/NotificationChannel;

.field private gwm:Landroid/telephony/PhoneStateListener;

.field private h:Z

.field private hmo:Landroid/net/Network;

.field private i:Z

.field private ibl:Landroid/telephony/TelephonyManager;

.field private igw:Landroid/app/NotificationChannel;

.field private ire:Landroid/os/Handler;

.field private irq:I

.field private ivd:I

.field private j:Z

.field private k:Z

.field private kth:Landroid/app/NotificationManager;

.field private l:Z

.field private les:I

.field private lqr:Landroid/net/ConnectivityManager$NetworkCallback;

.field private m:Z

.field private n:Z

.field private o:Z

.field private obl:Landroid/content/BroadcastReceiver;

.field private oif:Landroid/app/IActivityManager;

.field private oxb:Landroid/net/INetd;

.field private p:Z

.field private q:Z

.field private qbh:Landroid/app/ActivityManager;

.field private qeg:I

.field private r:Z

.field private rtg:Landroid/app/AppOpsManager;

.field private s:Z

.field private sis:Landroid/os/Handler;

.field private ssp:Landroid/telephony/ServiceState;

.field private t:Z

.field private tsu:Ljava/lang/Thread;

.field private u:Z

.field private ugm:Lcom/android/server/OnePlusUtil$zta$you;

.field private v:Z

.field private vdb:Landroid/net/ConnectivityManager;

.field private vdw:I

.field private veq:Landroid/net/ConnectivityManager$NetworkCallback;

.field private vju:Lcom/android/server/wifi/WifiSettingsConfigStore;

.field private w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private wtn:Landroid/app/NotificationChannel;

.field private x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private you:Landroid/os/Handler;

.field private ywr:Lcom/android/server/pm/PackageManagerService;

.field private z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zgw:Landroid/content/BroadcastReceiver;

.field private zta:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 34

    const-string v0, "ro.boot.project_name"

    const-string v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->I:Ljava/lang/String;

    const-string v0, "content://com.oneplus.security.database.SafeProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->q0:Landroid/net/Uri;

    const-string v1, "network_restrict"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->r0:Landroid/net/Uri;

    const-string v1, "OP_SLA_NOTIFY_WIFI_SCORE"

    const-string v2, "OP_SLA_NOTIFY_PID"

    const-string v3, "OP_SLA_ENABLE"

    const-string v4, "OP_SLA_DISABLE"

    const-string v5, "OP_SLA_WIFI_UP"

    const-string v6, "OP_SLA_CELLULAR_UP"

    const-string v7, "OP_SLA_WIFI_DOWN"

    const-string v8, "OP_SLA_CELLULAR_DOWN"

    const-string v9, "OP_SLA_SWITCH_APP_NETWORK"

    const-string v10, "OP_SLA_NOTIFY_GAME_UID"

    const-string v11, "OP_SLA_NOTIFY_GAME_RTT"

    const-string v12, "OP_SLA_NOTIFY_TOP_APP"

    const-string v13, "OP_SLA_ENABLED"

    const-string v14, "OP_SLA_DISABLED"

    const-string v15, "OP_SLA_ENABLE_GAME_RTT"

    const-string v16, "OP_SLA_DISABLE_GAME_RTT"

    const-string v17, "OP_SLA_NOTIFY_GAME_SWITCH_STATE"

    const-string v18, "OP_SLA_NOTIFY_SPEED_RTT"

    const-string v19, "OP_SLA_SWITCH_GAME_NETWORK"

    const-string v20, "OP_SLA_NOTIFY_SCREEN_STATE"

    const-string v21, "OP_SLA_NOTIFY_CELL_SCORE"

    const-string v22, "OP_SLA_SEND_GAME_APP_STATISTIC"

    const-string v23, "OP_SLA_GET_SYN_RETRAN_INFO"

    const-string v24, "OP_SLA_GET_SPEED_UP_APP"

    const-string v25, "OP_SLA_SET_DEBUG"

    const-string v26, "OP_SLA_NOTIFY_DEFAULT_NETWORK"

    const-string v27, "OP_SLA_NOTIFY_PARAMS"

    const-string v28, "OP_SLA_NOTIFY_GAME_STATE"

    const-string v29, "OP_SLA_ENABLE_LINK_TURBO"

    const-string v30, "OP_SLA_SET_GAME_MARK"

    const-string v31, "OP_SLA_SET_NETWORK_VALID"

    const-string v32, "OP_SLA_NOTIFY_APP_SWITCH_STATE"

    const-string v33, "OP_SLA_NOTIFY_SWITCH_APP_NETWORK"

    filled-new-array/range {v1 .. v33}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->T1:[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.tencent.tmgp.sgame"

    const-string v2, "com.tencent.tmgp.pubgmhd"

    const-string v3, "com.tencent.ig"

    const-string v4, "com.rekoo.pubgm"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->U1:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.tencent.mm"

    const-string v2, "com.tencent.mobileqq"

    const-string v3, "com.sina.weibo"

    const-string v4, "com.ss.android.ugc.aweme"

    const-string v5, "com.ss.android.ugc.trill"

    const-string v6, "com.whatsapp"

    const-string v7, "com.facebook.orca"

    const-string v8, "com.facebook.katana"

    const-string v9, "com.instagram.android"

    const-string v10, "com.snapchat.android"

    const-string v11, "com.twitter.android"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->V1:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const-string v0, "OpSlaNetlinkHelper"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->tsu:Ljava/lang/Thread;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->bud:I

    const/16 v2, -0xc8

    iput v2, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->les:I

    iput v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->irq:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->vdw:I

    iput v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->qeg:I

    iput v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->ivd:I

    iput v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->a:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->b:J

    iput-wide v2, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->c:J

    iput-boolean v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->d:Z

    iput-boolean v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->e:Z

    iput-boolean v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->f:Z

    iput-boolean v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->g:Z

    iput-boolean v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->h:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->i:Z

    iput-boolean v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->j:Z

    iput-boolean v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->k:Z

    iput-boolean v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->l:Z

    iput-boolean v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->m:Z

    iput-boolean v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->n:Z

    iput-boolean v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->o:Z

    iput-boolean v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->p:Z

    iput-boolean v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->q:Z

    iput-boolean v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->r:Z

    iput-boolean v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->s:Z

    iput-boolean v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->t:Z

    iput-boolean v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->u:Z

    iput-boolean v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->v:Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->w:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->x:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->y:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->z:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->A:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->C:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->D:Ljava/util/HashMap;

    new-instance v3, Lcom/android/server/wifi/OpSlaNetlinkHelper$2;

    invoke-direct {v3, p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper$2;-><init>(Lcom/android/server/wifi/OpSlaNetlinkHelper;)V

    iput-object v3, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->E:Landroid/app/IProcessObserver;

    iput-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    const-string p1, "package"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/PackageManagerService;

    iput-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->ywr:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->bvj:Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/net/util/NetdService;->get()Landroid/net/INetd;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->oxb:Landroid/net/INetd;

    :try_start_0
    invoke-interface {p1}, Landroid/net/INetd;->getOemNetd()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/net/IOemNetd$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IOemNetd;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->cjf:Lcom/android/internal/net/IOemNetd;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot get OemNetd:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    const-string v3, "appops"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->rtg:Landroid/app/AppOpsManager;

    iget-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->kth:Landroid/app/NotificationManager;

    iget-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    const-string v3, "telephony_subscription_service"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    iput-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->bio:Landroid/telephony/SubscriptionManager;

    iget-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->cno:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->B:Ljava/util/List;

    new-instance p1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->dma:Landroid/net/NetworkRequest;

    new-instance p1, Lcom/android/server/wifi/OpSlaNetlinkHelper$ear;

    invoke-direct {p1, p0, v2}, Lcom/android/server/wifi/OpSlaNetlinkHelper$ear;-><init>(Lcom/android/server/wifi/OpSlaNetlinkHelper;I)V

    iput-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->veq:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->qbh:Landroid/app/ActivityManager;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->oif:Landroid/app/IActivityManager;

    invoke-static {}, Lcom/android/server/wifi/WifiInjector;->getInstance()Lcom/android/server/wifi/WifiInjector;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->cgv:Lcom/android/server/wifi/WifiInjector;

    invoke-virtual {p1}, Lcom/android/server/wifi/WifiInjector;->getSettingsConfigStore()Lcom/android/server/wifi/WifiSettingsConfigStore;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->vju:Lcom/android/server/wifi/WifiSettingsConfigStore;

    :try_start_1
    iget-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->oif:Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->E:Landroid/app/IProcessObserver;

    invoke-interface {p1, v2}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot register activity monitoring:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    new-instance p1, Lcom/android/server/wifi/OpSlaNetlinkHelper$wtn;

    invoke-direct {p1, p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper$wtn;-><init>(Lcom/android/server/wifi/OpSlaNetlinkHelper;)V

    iput-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->you:Landroid/os/Handler;

    new-instance p1, Landroid/os/HandlerThread;

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/wifi/OpSlaNetlinkHelper$cjf;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/server/wifi/OpSlaNetlinkHelper$cjf;-><init>(Lcom/android/server/wifi/OpSlaNetlinkHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->sis:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->s1()V

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->V0()V

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->U0()V

    invoke-direct {p0, p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->W0(Landroid/os/HandlerThread;)V

    iget-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "mobile_data"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->K1(I)V

    iget-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "game_mode_status"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->irq:I

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->a1()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->v:Z

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->Y0()V

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->t1()V

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->sis:Landroid/os/Handler;

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method static synthetic A(Lcom/android/server/wifi/OpSlaNetlinkHelper;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->vdw:I

    return p1
.end method

.method private A0()Z
    .locals 2

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "download_smart_link_aggregation"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private A1(Z)V
    .locals 2

    const/16 v0, 0x24

    invoke-direct {p0, v0, p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->F1(SI)Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "After sendScreenStateToKernel:result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " screenState="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpSlaNetlinkHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic B(Lcom/android/server/wifi/OpSlaNetlinkHelper;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->l0(I)V

    return-void
.end method

.method private B0()Z
    .locals 2

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "sla_downloading_dm_notify"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private B1()V
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Landroid/app/NotificationChannel;

    iget-object v2, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    const v3, 0x1040545

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "NETWORK_SLA_STATUS"

    const/4 v4, 0x3

    invoke-direct {v1, v3, v2, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iput-object v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->igw:Landroid/app/NotificationChannel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    iget-object v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->igw:Landroid/app/NotificationChannel;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    iget-object v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->kth:Landroid/app/NotificationManager;

    iget-object v4, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->igw:Landroid/app/NotificationChannel;

    invoke-virtual {v1, v4}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    iget-object v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    const v4, 0x50f00e6

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "android.substName"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-direct {v1, v4, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v3, 0x5070172

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x50f00e8

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x50f00e7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v1, "android.intent.action.GO_ACCELERATION_SETTINGS"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->z0(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->kth:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const v3, 0x33954bb

    invoke-virtual {v1, v3, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iput v2, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->a:I

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "sla_working"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method static synthetic C(Lcom/android/server/wifi/OpSlaNetlinkHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->h0()V

    return-void
.end method

.method private C0()Z
    .locals 2

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "sla_downloading_heytap_notify"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private C1()V
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Landroid/app/NotificationChannel;

    iget-object v2, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    const v3, 0x1040543

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "NETWORK_SLA_ALERTS"

    const/4 v4, 0x4

    invoke-direct {v1, v3, v2, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iput-object v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->gck:Landroid/app/NotificationChannel;

    iget-object v2, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->kth:Landroid/app/NotificationManager;

    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    iget-object v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    const v2, 0x1040387

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.substName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/app/Notification$Action$Builder;

    iget-object v2, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x50f00e3

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "android.intent.action.ENABLE_DOWNLOAD_SWITCH"

    invoke-direct {p0, v4}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->z0(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v5, v2, v4}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v1

    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-direct {v2, v4, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v3, 0x5070173

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x50f00e5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x50f00e4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v2, "android.intent.action.GO_ACCELERATION_SETTINGS"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->z0(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->kth:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const v3, 0x33954bb

    invoke-virtual {v1, v3, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iput v2, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->a:I

    return-void
.end method

.method static synthetic D(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Landroid/net/ConnectivityManager;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->vdb:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method private D0()Z
    .locals 2

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "sla_downloading_ota_notify"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private D1()V
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->sis:Landroid/os/Handler;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v1, Landroid/app/NotificationChannel;

    iget-object v3, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    const v4, 0x1040545

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "NETWORK_SLS_STATUS"

    const/4 v5, 0x3

    invoke-direct {v1, v4, v3, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iput-object v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->wtn:Landroid/app/NotificationChannel;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    iget-object v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->wtn:Landroid/app/NotificationChannel;

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v5}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    iget-object v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->kth:Landroid/app/NotificationManager;

    iget-object v5, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->wtn:Landroid/app/NotificationChannel;

    invoke-virtual {v1, v5}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    iget-object v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    const v5, 0x50f00f4

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "android.substName"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-direct {v1, v5, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v4, 0x5070174

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x50f00f3

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x50f00f2

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v1, "android.intent.action.GO_ACCELERATION_SETTINGS"

    invoke-direct {p0, v1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->z0(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->kth:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const v4, 0x33954be

    invoke-virtual {v1, v4, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iput v3, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->ivd:I

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->sis:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v4, 0x4e20

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "sls_working"

    invoke-static {p0, v0, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method static synthetic E(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Landroid/net/NetworkRequest;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->dma:Landroid/net/NetworkRequest;

    return-object p0
.end method

.method private E0()Z
    .locals 2

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "sla_enable_notify"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private E1()V
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Landroid/app/NotificationChannel;

    iget-object v2, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    const v3, 0x1040543

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "NETWORK_SLA_ALERTS"

    const/4 v4, 0x4

    invoke-direct {v1, v3, v2, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iput-object v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->gck:Landroid/app/NotificationChannel;

    iget-object v2, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->kth:Landroid/app/NotificationManager;

    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    iget-object v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    const v2, 0x1040387

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.substName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/app/Notification$Action$Builder;

    iget-object v2, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x50f00ee

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "android.intent.action.ENABLE_SLS_APP_SWITCH"

    invoke-direct {p0, v4}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->z0(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v5, v2, v4}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v1

    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-direct {v2, v4, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v3, 0x5070173

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x50f00f0    # 6.724E-36f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x50f00ef    # 6.723999E-36f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v2, "android.intent.action.GO_ACCELERATION_SETTINGS"

    invoke-direct {p0, v2}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->z0(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->kth:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const v3, 0x33954be

    invoke-virtual {v1, v3, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iput v2, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->ivd:I

    return-void
.end method

.method static synthetic F(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->veq:Landroid/net/ConnectivityManager$NetworkCallback;

    return-object p0
.end method

.method private F0()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->rtg:Landroid/app/AppOpsManager;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x3ec

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v2}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {v2}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v5

    invoke-direct {p0, v4}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->g1(I)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v7

    if-ne v7, v3, :cond_2

    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v2}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    return-object v1
.end method

.method private F1(SI)Z
    .locals 9

    sget-object v0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->H:Ljava/io/FileDescriptor;

    const/4 v1, 0x0

    const-string v2, "OpSlaNetlinkHelper"

    if-eqz v0, :cond_1

    :try_start_0
    new-instance p0, Landroid/net/netlink/StructNlMsgHdr;

    invoke-direct {p0}, Landroid/net/netlink/StructNlMsgHdr;-><init>()V

    const/16 v0, 0x14

    iput v0, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    iput-short p1, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    const/4 p1, 0x1

    iput-short p1, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_flags:S

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_pid:I

    iget v0, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    new-array v4, v0, [B

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v3}, Landroid/net/netlink/StructNlMsgHdr;->pack(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v3, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    sget-object v3, Lcom/android/server/wifi/OpSlaNetlinkHelper;->H:Ljava/io/FileDescriptor;

    const/4 v5, 0x0

    const-wide/16 v7, 0x12c

    move v6, v0

    invoke-static/range {v3 .. v8}, Landroid/net/netlink/NetlinkSocket;->sendMessage(Ljava/io/FileDescriptor;[BIIJ)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, p0, :cond_0

    move v1, p1

    :cond_0
    return v1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception when sendToKernel:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/16 p2, 0x11

    if-lt p1, p2, :cond_2

    const/16 p2, 0x37

    if-ge p1, p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendToKernel ["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->x0(S)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] failed, mNlfd=null !!!"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "sendToKernel invalid message type:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method static synthetic G(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Landroid/telephony/SubscriptionManager;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->bio:Landroid/telephony/SubscriptionManager;

    return-object p0
.end method

.method private G0()Z
    .locals 2

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "oneplus_link_turbo_value"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private G1(S[I)Z
    .locals 9

    sget-object v0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->H:Ljava/io/FileDescriptor;

    const-string v1, "OpSlaNetlinkHelper"

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    :try_start_0
    new-instance p0, Landroid/net/netlink/StructNlMsgHdr;

    invoke-direct {p0}, Landroid/net/netlink/StructNlMsgHdr;-><init>()V

    const/16 v0, 0x10

    if-nez p2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    array-length v3, p2

    :goto_0
    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v0, v3

    iput v0, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    iput-short p1, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    const/4 p1, 0x1

    iput-short p1, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_flags:S

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_pid:I

    iget v0, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    new-array v4, v0, [B

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v3}, Landroid/net/netlink/StructNlMsgHdr;->pack(Ljava/nio/ByteBuffer;)V

    if-eqz p2, :cond_1

    array-length p0, p2

    move v5, v2

    :goto_1
    if-ge v5, p0, :cond_1

    aget v6, p2, v5

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/android/server/wifi/OpSlaNetlinkHelper;->H:Ljava/io/FileDescriptor;

    const/4 v5, 0x0

    const-wide/16 v7, 0x12c

    move v6, v0

    invoke-static/range {v3 .. v8}, Landroid/net/netlink/NetlinkSocket;->sendMessage(Ljava/io/FileDescriptor;[BIIJ)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, p0, :cond_2

    move v2, p1

    :cond_2
    return v2

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception when sendToKernel:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_3
    const/16 p2, 0x11

    if-lt p1, p2, :cond_4

    const/16 p2, 0x37

    if-ge p1, p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendToKernel ["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->x0(S)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] failed, mNldf=null !!!"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "sendToKernel invalid message type:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method static synthetic H(Lcom/android/server/wifi/OpSlaNetlinkHelper;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->m0(Z)V

    return-void
.end method

.method private H0()Z
    .locals 2

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "sla_download_onetime_notify"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private H1()V
    .locals 14

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->ywr:Lcom/android/server/pm/PackageManagerService;

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->L0()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [I

    iget-object v3, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->w:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->w:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x0

    move v6, v2

    move v5, v4

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_7

    iget-object v7, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->A:Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "OpSlaNetlinkHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "restrict top app:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_0
    iget-object v7, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->ywr:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/high16 v9, 0x10000

    invoke-virtual {v7, v8, v9, v4}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v7

    const/16 v8, 0x3e8

    const/4 v10, -0x1

    if-gt v7, v8, :cond_3

    sget-boolean v7, Lcom/android/server/wifi/OpSlaNetlinkHelper;->G:Z

    if-eqz v7, :cond_1

    const-string v7, "OpSlaNetlinkHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendTopAppUid invalid uid for app:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    aput v10, v1, v6

    add-int/lit8 v6, v6, 0x1

    if-nez v5, :cond_6

    aput v10, v1, v6

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    iget-object v11, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->w:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aput v7, v1, v6

    sget-boolean v11, Lcom/android/server/wifi/OpSlaNetlinkHelper;->G:Z

    if-eqz v11, :cond_4

    const-string v11, "OpSlaNetlinkHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sendTopAppUid data["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "]="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    add-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->ywr:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const/16 v12, 0x3e7

    invoke-virtual {v7, v11, v9, v12}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v7

    if-le v7, v8, :cond_5

    iget-object v8, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->w:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aput v7, v1, v6

    sget-boolean v8, Lcom/android/server/wifi/OpSlaNetlinkHelper;->G:Z

    if-eqz v8, :cond_2

    const-string v8, "OpSlaNetlinkHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sendTopAppUid data["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "]="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    if-nez v5, :cond_6

    aput v10, v1, v6

    goto :goto_1

    :cond_6
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_7
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v6, v2

    aput v6, v1, v4

    const/16 v0, 0x1c

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->G1(S[I)Z

    goto :goto_3

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_8
    :goto_3
    return-void
.end method

.method static synthetic I(Lcom/android/server/wifi/OpSlaNetlinkHelper;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->P1(Z)V

    return-void
.end method

.method private I0()Z
    .locals 2

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "oneplus_smart_link_selection"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method static synthetic J(Lcom/android/server/wifi/OpSlaNetlinkHelper;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->U1(Z)V

    return-void
.end method

.method private J0()Z
    .locals 2

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "sls_app_onetime_notify"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private J1(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->e:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->e:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->c1()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->j:Z

    iget-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->sis:Landroid/os/Handler;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->n1()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->m1()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic K(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->Z1()Z

    move-result p0

    return p0
.end method

.method private K0()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->y:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->y:Ljava/util/ArrayList;

    return-object p0

    :cond_0
    sget-object p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->U1:Ljava/util/ArrayList;

    return-object p0
.end method

.method private K1(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCellSettingsState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpSlaNetlinkHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->d:Z

    if-eqz v0, :cond_3

    sget-object p1, Lcom/android/server/wifi/OpSlaNetlinkHelper;->H:Ljava/io/FileDescriptor;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->tsu:Ljava/lang/Thread;

    if-nez p1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->z1()V

    :cond_2
    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->n1()V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->m1()V

    :goto_1
    return-void
.end method

.method static synthetic L(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->n:Z

    return p0
.end method

.method private L0()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->z:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->z:Ljava/util/ArrayList;

    return-object p0

    :cond_0
    sget-object p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->V1:Ljava/util/ArrayList;

    return-object p0
.end method

.method private L1([I)V
    .locals 1

    const/16 v0, 0x2f

    invoke-direct {p0, v0, p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->G1(S[I)Z

    return-void
.end method

.method static synthetic M(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->A0()Z

    move-result p0

    return p0
.end method

.method private M0()Landroid/content/ComponentName;
    .locals 2

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->qbh:Landroid/app/ActivityManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return-object v0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    return-object p0

    :cond_1
    return-object v0
.end method

.method private M1(ZLandroid/net/NetworkCapabilities;)V
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [I

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v4

    const/16 v5, 0xc

    invoke-virtual {p2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    const/16 v6, 0x10

    invoke-virtual {p2, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move p2, v3

    :goto_0
    iput-boolean p2, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->n:Z

    goto :goto_2

    :cond_2
    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move p2, v3

    :goto_1
    iput-boolean p2, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->o:Z

    :cond_4
    :goto_2
    iget-boolean p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->n:Z

    aput p1, v0, v3

    iget-boolean p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->o:Z

    aput p1, v0, v1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->L1([I)V

    if-nez v2, :cond_5

    if-eqz v4, :cond_8

    if-eqz v5, :cond_8

    :cond_5
    iget p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->qeg:I

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->n:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->o:Z

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->n1()V

    goto :goto_3

    :cond_6
    iget p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->qeg:I

    if-ne p1, v1, :cond_8

    iget-boolean p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->n:Z

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->o:Z

    if-nez p1, :cond_8

    :cond_7
    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->m1()V

    :cond_8
    :goto_3
    return-void
.end method

.method static synthetic N(Lcom/android/server/wifi/OpSlaNetlinkHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->n0()V

    return-void
.end method

.method private N0()Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->M0()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private N1()V
    .locals 5

    iget v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->qeg:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "OpSlaNetlinkHelper"

    const-string v1, "disableSla.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->cjf:Lcom/android/internal/net/IOemNetd;

    invoke-interface {v2}, Lcom/android/internal/net/IOemNetd;->setOPSlaDisable()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "setOPSlaDisable failed!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setOPSlaDisable result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mSlaEnableState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->qeg:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    iput v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->qeg:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->b:J

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->q0()V

    :cond_0
    return-void
.end method

.method static synthetic O(Lcom/android/server/wifi/OpSlaNetlinkHelper;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->o1(Z)V

    return-void
.end method

.method private O0()I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->M0()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->P0(Landroid/content/ComponentName;)I

    move-result p0

    return p0
.end method

.method private O1()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->f:Z

    const-string v1, "OpSlaNetlinkHelper"

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->e:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->qeg:I

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->cjf:Lcom/android/internal/net/IOemNetd;

    invoke-interface {v0}, Lcom/android/internal/net/IOemNetd;->setOPSlaEnable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOPSlaEnable failed! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-boolean v2, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->f:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->e:Z

    if-eqz v2, :cond_1

    :try_start_1
    const-string v2, "setOPSlaEnable failed!! try to recover..."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->cjf:Lcom/android/internal/net/IOemNetd;

    invoke-interface {v2}, Lcom/android/internal/net/IOemNetd;->setOPSlaDisable()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setOPSlaEnable failed to setOPSlaDisable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->cjf:Lcom/android/internal/net/IOemNetd;

    invoke-interface {v2}, Lcom/android/internal/net/IOemNetd;->setOPSlaEnable()Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setOPSlaEnable failed to recover:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->qeg:I

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOPSlaEnable result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mWifiConnected="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->f:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mCellConnected="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->e:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mSlaEnableState="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->qeg:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic P(Lcom/android/server/wifi/OpSlaNetlinkHelper;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->b2(I)V

    return-void
.end method

.method private P0(Landroid/content/ComponentName;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->ywr:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/high16 v0, 0x10000

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method private P1(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "download_smart_link_aggregation"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method static synthetic Q(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->K0()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private Q0(Landroid/net/Network;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->C:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAvailable for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpSlaNetlinkHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->C:Ljava/util/HashMap;

    new-instance v7, Landroid/net/NetworkState;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private Q1(I)V
    .locals 1

    const/16 v0, 0x2e

    invoke-direct {p0, v0, p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->F1(SI)Z

    return-void
.end method

.method static synthetic R()Ljava/io/FileDescriptor;
    .locals 1

    sget-object v0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->H:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method private R0(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->C:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkState;

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p2, v1}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLinkPropertiesChanged for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpSlaNetlinkHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->C:Ljava/util/HashMap;

    new-instance v9, Landroid/net/NetworkState;

    const/4 v3, 0x0

    iget-object v5, v0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v9

    move-object v4, p2

    move-object v6, p1

    invoke-direct/range {v2 .. v8}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v2, 0x1

    invoke-direct {p0, v2, p2, v1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->o0(ZLandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V

    iget-object v1, v0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v2, p2, v1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->k0(ZLandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V

    iget-object v1, v0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v2, p2, v1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->R1(ZLandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V

    iget-object v0, v0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->j0(Landroid/net/Network;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private R1(ZLandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V
    .locals 9

    if-eqz p2, :cond_d

    if-nez p3, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    instance-of v4, v3, Ljava/net/Inet4Address;

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v0

    move-object v4, v1

    goto :goto_0

    :cond_2
    move-object v3, v2

    move-object v4, v3

    :goto_0
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    instance-of v1, v0, Ljava/net/Inet4Address;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p2

    move-object v5, p2

    goto :goto_1

    :cond_4
    move-object v5, v2

    :goto_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v7, "OpSlaNetlinkHelper"

    if-nez p2, :cond_c

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_c

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto/16 :goto_7

    :cond_5
    const/4 p2, 0x1

    invoke-virtual {p3, p2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p2

    const/4 v8, 0x0

    invoke-virtual {p3, v8}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    const/16 v1, 0xc

    invoke-virtual {p3, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p3

    if-eqz p2, :cond_7

    invoke-direct {p0, p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->V1(Z)V

    iget-boolean p3, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->p:Z

    if-ne p3, p1, :cond_6

    return-void

    :cond_6
    iput-boolean p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->l:Z

    const-string p3, "1"

    :goto_2
    move-object v1, p3

    goto :goto_3

    :cond_7
    if-eqz v0, :cond_b

    if-eqz p3, :cond_b

    invoke-direct {p0, p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->J1(Z)V

    iget-boolean p3, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->q:Z

    if-ne p3, p1, :cond_8

    return-void

    :cond_8
    iput-boolean p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->m:Z

    const-string p3, "2"

    goto :goto_2

    :goto_3
    if-eqz p1, :cond_9

    :try_start_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setSlaIfaceUp:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v7, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->cjf:Lcom/android/internal/net/IOemNetd;

    move-object v2, v6

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/net/IOemNetd;->setOPSlaIfaceUp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception setSlaIfaceUp: "

    goto :goto_4

    :cond_9
    :try_start_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setSlaIfaceDown:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v7, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->cjf:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p3, v1, v6}, Lcom/android/internal/net/IOemNetd;->setOPSlaIfaceDown(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception setSlaIfaceDown: "

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v7, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setSlaIface result:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v7, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_b

    if-eqz p2, :cond_a

    iput-boolean p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->p:Z

    goto :goto_6

    :cond_a
    iput-boolean p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->q:Z

    :goto_6
    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->n1()V

    :cond_b
    return-void

    :cond_c
    :goto_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ignore to set sla iface:slaIface="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " slaIpaddr="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " slaDns="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_8
    return-void
.end method

.method static synthetic S(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;
    .locals 0

    sput-object p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->H:Ljava/io/FileDescriptor;

    return-object p0
.end method

.method private S0(Landroid/net/Network;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->C:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLost for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpSlaNetlinkHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->C:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkState;

    iget-object v0, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    iget-object v1, p1, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->o0(ZLandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V

    iget-object v0, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    iget-object v1, p1, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->k0(ZLandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V

    iget-object v0, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    iget-object v1, p1, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->R1(ZLandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V

    iget-object p1, p1, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v2, p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->M1(ZLandroid/net/NetworkCapabilities;)V

    return-void
.end method

.method private S1(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "sla_download_onetime_notify"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method static synthetic T(Lcom/android/server/wifi/OpSlaNetlinkHelper;SI)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->F1(SI)Z

    move-result p0

    return p0
.end method

.method private T0(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->C:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkState;

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {p2, v1}, Landroid/net/NetworkCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCapabilitiesChanged for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpSlaNetlinkHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->C:Ljava/util/HashMap;

    new-instance v9, Landroid/net/NetworkState;

    const/4 v3, 0x0

    iget-object v4, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v9

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v2 .. v8}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    const/4 v1, 0x1

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->o0(ZLandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V

    iget-object p1, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->R1(ZLandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V

    invoke-direct {p0, v1, p2}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->M1(ZLandroid/net/NetworkCapabilities;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private T1(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "sls_app_onetime_notify"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method static synthetic U(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Lcom/android/server/wifi/WifiSettingsConfigStore;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->vju:Lcom/android/server/wifi/WifiSettingsConfigStore;

    return-object p0
.end method

.method private U0()V
    .locals 9

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ENABLE_DOWNLOAD_SWITCH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.GO_ACCELERATION_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ENABLE_SLS_APP_SWITCH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.network.INTERNET_LOST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.telephony.action.NETWORK_COUNTRY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/wifi/OpSlaNetlinkHelper$dma;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper$dma;-><init>(Lcom/android/server/wifi/OpSlaNetlinkHelper;)V

    iput-object v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zgw:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "package"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v4, Lcom/android/server/wifi/OpSlaNetlinkHelper$ywr;

    invoke-direct {v4, p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper$ywr;-><init>(Lcom/android/server/wifi/OpSlaNetlinkHelper;)V

    iput-object v4, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->obl:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private U1(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_smart_link_selection"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "wifi_auto_change_to_mobile_data"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method static synthetic V(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->f1()Z

    move-result p0

    return p0
.end method

.method private V0()V
    .locals 1

    new-instance v0, Lcom/android/server/wifi/OpSlaNetlinkHelper$igw;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper$igw;-><init>(Lcom/android/server/wifi/OpSlaNetlinkHelper;)V

    iput-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->ugm:Lcom/android/server/OnePlusUtil$zta$you;

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->rtg()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->ugm:Lcom/android/server/OnePlusUtil$zta$you;

    invoke-virtual {v0, p0}, Lcom/android/server/OnePlusUtil$zta;->bio(Lcom/android/server/OnePlusUtil$zta$you;)V

    return-void
.end method

.method private V1(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWifiState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpSlaNetlinkHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->f:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->H:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->tsu:Ljava/lang/Thread;

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->z1()V

    :cond_1
    iput-boolean p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->f:Z

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->n1()V

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->y0()V

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->ire:Landroid/os/Handler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->f:Z

    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    const/16 v0, -0xc8

    invoke-direct {p0, v0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->b2(I)V

    iput-boolean p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->f:Z

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->m1()V

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic W(Lcom/android/server/wifi/OpSlaNetlinkHelper;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->ivd:I

    return p1
.end method

.method private W0(Landroid/os/HandlerThread;)V
    .locals 4

    new-instance v0, Lcom/android/server/wifi/OpSlaNetlinkHelper$gck;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper$gck;-><init>(Lcom/android/server/wifi/OpSlaNetlinkHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->ire:Landroid/os/Handler;

    new-instance p1, Lcom/oneplus/config/ConfigObserver;

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->ire:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/wifi/OpSlaNetlinkHelper$ire;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper$ire;-><init>(Lcom/android/server/wifi/OpSlaNetlinkHelper;)V

    const-string v3, "SlaOnlineConfig"

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->ear:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigObserver;->register()V

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->ire:Landroid/os/Handler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x7530

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private W1(Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/android/server/wifi/OpSlaNetlinkHelper$oif;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper$oif;-><init>(Lcom/android/server/wifi/OpSlaNetlinkHelper;Landroid/widget/Toast;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/android/server/wifi/OpSlaNetlinkHelper$bvj;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper$bvj;-><init>(Lcom/android/server/wifi/OpSlaNetlinkHelper;Landroid/widget/Toast;)V

    int-to-long p0, p2

    invoke-virtual {v0, v1, p0, p1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method static synthetic X(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->J0()Z

    move-result p0

    return p0
.end method

.method private X0()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->ibl:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->gwm:Landroid/telephony/PhoneStateListener;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    new-instance v0, Lcom/android/server/wifi/OpSlaNetlinkHelper$bio;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper$bio;-><init>(Lcom/android/server/wifi/OpSlaNetlinkHelper;)V

    iput-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->gwm:Landroid/telephony/PhoneStateListener;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->c1()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->j:Z

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpSlaNetlinkHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->bvj:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->ibl:Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->gwm:Landroid/telephony/PhoneStateListener;

    const v1, 0x20000141

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method private X1()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->you:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x50f00ed

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic Y(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->H0()Z

    move-result p0

    return p0
.end method

.method private Y0()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->u0(Z)V

    return-void
.end method

.method private Y1()Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->bvj:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x5

    if-ne v3, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->Z0()Z

    move-result v3

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->j1()Z

    move-result v4

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->c1()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->j:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "slaEnableConditionCheck, mSlaEnableState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->qeg:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mWifiConnected:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->f:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mCellEnabled:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->d:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " simCardReady:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mWifiHasIpv4:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->l:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isDataRoaming:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mSlaWifiUp:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->p:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isVpnUsed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mUsingLTE:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->j:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mUsingPrivateDns:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->k:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mWifiValidate:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->n:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mDbsEnabled:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->v:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OpSlaNetlinkHelper"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->qeg:I

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->f:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->l:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->d:Z

    if-eqz v5, :cond_1

    if-eqz v0, :cond_1

    if-nez v3, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->p:Z

    if-eqz v0, :cond_1

    if-nez v4, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->j:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->k:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->n:Z

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->v:Z

    if-nez p0, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method static synthetic Z(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->Y1()Z

    move-result p0

    return p0
.end method

.method private Z0()Z
    .locals 3

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpSlaNetlinkHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->bvj:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->ssp:Landroid/telephony/ServiceState;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private Z1()Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->bvj:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x5

    if-ne v3, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->Z0()Z

    move-result v3

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->j1()Z

    move-result v4

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->c1()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->j:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "slsWanDetectConditionCheck, mSlaEnableState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->qeg:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mWifiConnected:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->f:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mCellEnabled:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->d:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " simCardReady:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isDataRoaming:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isVpnUsed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mUsingLTE:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->j:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OpSlaNetlinkHelper"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->qeg:I

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->f:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->d:Z

    if-eqz v5, :cond_1

    if-eqz v0, :cond_1

    if-nez v3, :cond_1

    if-nez v4, :cond_1

    iget-boolean p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->j:Z

    if-eqz p0, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method static synthetic a(Lcom/android/server/wifi/OpSlaNetlinkHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->y0()V

    return-void
.end method

.method static synthetic a0(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Landroid/net/Network;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->fto:Landroid/net/Network;

    return-object p0
.end method

.method private a1()Z
    .locals 2

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "wifi_dbs_enable"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private a2()V
    .locals 2

    const-string v0, "OpSlaNetlinkHelper"

    const-string v1, "stopListening..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->H:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_0

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->H:Ljava/io/FileDescriptor;

    iput-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->tsu:Ljava/lang/Thread;

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->m1()V

    return-void
.end method

.method static synthetic b(Lcom/android/server/wifi/OpSlaNetlinkHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->H1()V

    return-void
.end method

.method static synthetic b0(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->you:Landroid/os/Handler;

    return-object p0
.end method

.method private b1(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->x:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->x:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

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

.method private b2(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->les:I

    return-void
.end method

.method static synthetic bio(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->t:Z

    return p0
.end method

.method static synthetic bud(Lcom/android/server/wifi/OpSlaNetlinkHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->q0()V

    return-void
.end method

.method static synthetic bvj(Lcom/android/server/wifi/OpSlaNetlinkHelper;Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->T0(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method static synthetic c()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->G:Z

    return v0
.end method

.method static synthetic c0(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Landroid/net/Network;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->hmo:Landroid/net/Network;

    return-object p0
.end method

.method private c1()Z
    .locals 5

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->bvj:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v0}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v2

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->bvj:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkType(I)I

    move-result p0

    sget-boolean v0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->G:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "voice type:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " data type:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "OpSlaNetlinkHelper"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v0, 0xd

    if-eq v2, v0, :cond_3

    const/16 v3, 0x13

    if-eq v2, v3, :cond_3

    const/16 v4, 0x14

    if-eq v2, v4, :cond_3

    if-eq p0, v0, :cond_3

    if-eq p0, v3, :cond_3

    if-ne p0, v4, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic cgv(Lcom/android/server/wifi/OpSlaNetlinkHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->h:Z

    return p1
.end method

.method static synthetic cjf(Lcom/android/server/wifi/OpSlaNetlinkHelper;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->x1(I)V

    return-void
.end method

.method static synthetic cno(Lcom/android/server/wifi/OpSlaNetlinkHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->s:Z

    return p1
.end method

.method static synthetic d(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->v:Z

    return p0
.end method

.method static synthetic d0(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->d1()Z

    move-result p0

    return p0
.end method

.method private d1()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->M0()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->P0(Landroid/content/ComponentName;)I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->b1(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic dma(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->i:Z

    return p0
.end method

.method static synthetic e(Lcom/android/server/wifi/OpSlaNetlinkHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->v:Z

    return p1
.end method

.method static synthetic e0(Lcom/android/server/wifi/OpSlaNetlinkHelper;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->O0()I

    move-result p0

    return p0
.end method

.method private e1(I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->D:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->D:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pkgname = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is killed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpSlaNetlinkHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "com.android.providers.downloads"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->s:Z

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "sla_downloading_dm_notify"

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_0
    const-string v2, "com.heytap.market"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->u:Z

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "sla_downloading_heytap_notify"

    goto :goto_0

    :cond_1
    const-string v2, "com.oneplus.opbackup"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->t:Z

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "sla_downloading_ota_notify"

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->D:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method static synthetic ear(Lcom/android/server/wifi/OpSlaNetlinkHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->w1()V

    return-void
.end method

.method static synthetic f(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->a1()Z

    move-result p0

    return p0
.end method

.method static synthetic f0(Lcom/android/server/wifi/OpSlaNetlinkHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->a2()V

    return-void
.end method

.method private f1()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->M0()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->P0(Landroid/content/ComponentName;)I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->h1(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic fto(Lcom/android/server/wifi/OpSlaNetlinkHelper;Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->R0(Landroid/net/Network;Landroid/net/LinkProperties;)V

    return-void
.end method

.method static synthetic g(Lcom/android/server/wifi/OpSlaNetlinkHelper;)I
    .locals 0

    iget p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->qeg:I

    return p0
.end method

.method static synthetic g0(Lcom/android/server/wifi/OpSlaNetlinkHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->p0()V

    return-void
.end method

.method private g1(I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->B:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method static synthetic gck(Lcom/android/server/wifi/OpSlaNetlinkHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->u:Z

    return p1
.end method

.method static synthetic gwm(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->C0()Z

    move-result p0

    return p0
.end method

.method static synthetic h(Lcom/android/server/wifi/OpSlaNetlinkHelper;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->qeg:I

    return p1
.end method

.method private h0()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->vdb:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->vdb:Landroid/net/ConnectivityManager;

    :cond_0
    return-void
.end method

.method private h1(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->w:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->w:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

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

.method static synthetic hmo(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->G0()Z

    move-result p0

    return p0
.end method

.method static synthetic i(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->j:Z

    return p0
.end method

.method private i0()V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->c1()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->j:Z

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->sis:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    sget-boolean v0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->G:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceStateChanged mUsingLTE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpSlaNetlinkHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->qeg:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->Z0()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->j:Z

    if-nez v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->m1()V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->qeg:I

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->j:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->n1()V

    :cond_3
    :goto_0
    return-void
.end method

.method private static i1()Z
    .locals 2

    sget-object v0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->I:Ljava/lang/String;

    const-string v1, "19867"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic ibl(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->D0()Z

    move-result p0

    return p0
.end method

.method static synthetic igw(Lcom/android/server/wifi/OpSlaNetlinkHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->t:Z

    return p1
.end method

.method static synthetic ire(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->sis:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic irq(Lcom/android/server/wifi/OpSlaNetlinkHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->n1()V

    return-void
.end method

.method static synthetic ivd(Lcom/android/server/wifi/OpSlaNetlinkHelper;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->Q1(I)V

    return-void
.end method

.method static synthetic j(Lcom/android/server/wifi/OpSlaNetlinkHelper;)I
    .locals 0

    iget p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->bud:I

    return p0
.end method

.method private j0(Landroid/net/Network;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V
    .locals 5

    if-nez p3, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "capabilities is null, network:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpSlaNetlinkHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    const/16 v4, 0xc

    invoke-virtual {p3, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p3

    if-eqz v1, :cond_2

    iput-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->hmo:Landroid/net/Network;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result p1

    if-eqz p1, :cond_1

    move v2, v0

    :cond_1
    iput-boolean v2, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->l:Z

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_4

    if-eqz p3, :cond_4

    iput-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->fto:Landroid/net/Network;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result p1

    if-eqz p1, :cond_3

    move v2, v0

    :cond_3
    iput-boolean v2, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->m:Z

    :cond_4
    :goto_0
    iget-boolean p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->l:Z

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->m:Z

    if-nez p1, :cond_6

    :cond_5
    iget p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->qeg:I

    if-ne p1, v0, :cond_6

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->m1()V

    :cond_6
    return-void
.end method

.method private j1()Z
    .locals 2

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {p0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "tun0"

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic k(Lcom/android/server/wifi/OpSlaNetlinkHelper;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->bud:I

    return p1
.end method

.method private k0(ZLandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p3

    invoke-virtual {p2}, Landroid/net/LinkProperties;->isPrivateDnsActive()Z

    move-result p2

    if-eqz p3, :cond_3

    if-eqz p1, :cond_2

    iput-boolean p2, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->k:Z

    if-eqz p2, :cond_1

    iget p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->qeg:I

    if-ne p1, v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->m1()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->n1()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->k:Z

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic k1(Lcom/android/server/wifi/WifiSettingsConfigStore$Key;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->v0(Z)V

    return-void
.end method

.method static synthetic kth(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->B0()Z

    move-result p0

    return p0
.end method

.method static synthetic l(Lcom/android/server/wifi/OpSlaNetlinkHelper;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->ssp:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method private l0(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->e1(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->s:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->u:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->t:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->p0()V

    :cond_0
    return-void
.end method

.method static synthetic les(Lcom/android/server/wifi/OpSlaNetlinkHelper;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->T1(Z)V

    return-void
.end method

.method static synthetic lqr(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->I0()Z

    move-result p0

    return p0
.end method

.method static synthetic m(Lcom/android/server/wifi/OpSlaNetlinkHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->i0()V

    return-void
.end method

.method private m0(Z)V
    .locals 2

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->a:I

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->B1()V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->ivd:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->q0()V

    iput v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->ivd:I

    :cond_1
    iget p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->a:I

    if-ne p1, v1, :cond_2

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->p0()V

    iput v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->a:I

    :cond_2
    :goto_0
    return-void
.end method

.method private declared-synchronized m1()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "OpSlaNetlinkHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maybeDisableSla mSlaEnableState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->qeg:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->lqr:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->vdb:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->lqr:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->lqr:Landroid/net/ConnectivityManager$NetworkCallback;

    :cond_0
    iget v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->qeg:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->N1()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic n(Lcom/android/server/wifi/OpSlaNetlinkHelper;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->h1(I)Z

    move-result p0

    return p0
.end method

.method private n0()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSlsAppEnableState():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->I0()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " getSlsAppOneTimeNotify():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->J0()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpSlaNetlinkHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->I0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->J0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->T1(Z)V

    :cond_0
    return-void
.end method

.method private n1()V
    .locals 5

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->G0()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->I0()Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->l:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->m:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->d1()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->g:Z

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->f1()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->h:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "maybeEnableSla gameSwitchState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " appSwitchState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mSlaGameOnFocus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->g:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mSlaTopAppOnFocus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->h:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mCellConnected:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->e:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mMobileHasIpv4:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->m:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mSlaCellularUp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->q:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mMobileValidate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->o:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OpSlaNetlinkHelper"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->g:Z

    if-nez v0, :cond_2

    :cond_1
    if-eqz v1, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->h:Z

    if-eqz v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->Y1()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "enableSla..."

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->sis:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->r1()V

    iget-boolean v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->e:Z

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->q:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->o:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->O1()V

    :cond_3
    return-void
.end method

.method static synthetic o(Lcom/android/server/wifi/OpSlaNetlinkHelper;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->b1(I)Z

    move-result p0

    return p0
.end method

.method private o0(ZLandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "tun0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    const/4 p2, 0x4

    invoke-virtual {p3, p2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_3

    return-void

    :cond_3
    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->m1()V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->n1()V

    :goto_1
    return-void
.end method

.method private o1(Z)V
    .locals 2

    xor-int/lit8 v0, p1, 0x1

    const/16 v1, 0x2a

    invoke-direct {p0, v1, v0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->F1(SI)Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDefaultNetwork -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p1, "WiFi"

    goto :goto_0

    :cond_0
    const-string p1, "Cell"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", result="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpSlaNetlinkHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic obl(Lcom/android/server/wifi/OpSlaNetlinkHelper;)I
    .locals 0

    iget p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->irq:I

    return p0
.end method

.method static synthetic oif(Lcom/android/server/wifi/OpSlaNetlinkHelper;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->a:I

    return p1
.end method

.method static synthetic oxb(Lcom/android/server/wifi/OpSlaNetlinkHelper;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->irq:I

    return p1
.end method

.method static synthetic p(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->L0()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private p0()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->kth:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->a:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->kth:Landroid/app/NotificationManager;

    const/4 v2, 0x0

    const v3, 0x33954bb

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    iput v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->a:I

    :cond_1
    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "sla_working"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private p1(Lorg/json/JSONArray;)V
    .locals 9

    if-nez p1, :cond_0

    const-string p0, "OpSlaNetlinkHelper"

    const-string p1, "jsonArray is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->G:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseConfigFromJson jsonArray="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpSlaNetlinkHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SlaGameWhiteList"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->y:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v4, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->y:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const-string v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v4, "OpSlaNetlinkHelper"

    const-string v5, "[OnlineConfig] Sla game white list from online config:"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "OpSlaNetlinkHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->y:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->sis:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string v2, "OpSlaNetlinkHelper"

    const-string v3, "[OnlineConfig] Sla game white list online config updated complete"

    :goto_2
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :cond_3
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SlaTopAppWhiteList"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->z:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-object v4, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->z:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const-string v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v4, "OpSlaNetlinkHelper"

    const-string v5, "[OnlineConfig] Sla top app from online config:"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v0

    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "OpSlaNetlinkHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->z:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-object v2, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->sis:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string v2, "OpSlaNetlinkHelper"

    const-string v3, "[OnlineConfig] Sla top app online config updated complete"
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p0
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] Exception:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] JSONException:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    :goto_5
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpSlaNetlinkHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method static synthetic q(Lcom/android/server/wifi/OpSlaNetlinkHelper;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->W1(Ljava/lang/String;I)V

    return-void
.end method

.method private q0()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->kth:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->ivd:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->kth:Landroid/app/NotificationManager;

    const/4 v2, 0x0

    const v3, 0x33954be

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    iput v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->ivd:I

    :cond_1
    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "sls_working"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private q1(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "com.heytap.market"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.providers.downloads"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.oneplus.opbackup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->D:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SlaPkgNameMap:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->D:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpSlaNetlinkHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method static synthetic qbh(Lcom/android/server/wifi/OpSlaNetlinkHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->B1()V

    return-void
.end method

.method static synthetic qeg(Lcom/android/server/wifi/OpSlaNetlinkHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->g:Z

    return p1
.end method

.method static synthetic r(Lcom/android/server/wifi/OpSlaNetlinkHelper;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->q1(Ljava/lang/String;I)V

    return-void
.end method

.method private r0(I)V
    .locals 4

    const-string v0, "OpSlaNetlinkHelper"

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->M0()Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->P0(Landroid/content/ComponentName;)I

    move-result v1

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_0

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    const/4 v2, 0x3

    if-gt p1, v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->b1(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroyGameAppSockets("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->cjf:Lcom/android/internal/net/IOemNetd;

    invoke-interface {p0, v1, p1}, Lcom/android/internal/net/IOemNetd;->destroySockets(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception destroyGameAppSockets: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private r1()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->lqr:Landroid/net/ConnectivityManager$NetworkCallback;

    const-string v1, "OpSlaNetlinkHelper"

    if-eqz v0, :cond_0

    const-string p0, "registerMobileNetworkRequest() already registered"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    new-instance v2, Lcom/android/server/wifi/OpSlaNetlinkHelper$ear;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/android/server/wifi/OpSlaNetlinkHelper$ear;-><init>(Lcom/android/server/wifi/OpSlaNetlinkHelper;I)V

    iput-object v2, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->lqr:Landroid/net/ConnectivityManager$NetworkCallback;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requesting mobile network: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->vdb:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->lqr:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0, p0}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method static synthetic rtg(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->E0()Z

    move-result p0

    return p0
.end method

.method static synthetic s(Lcom/android/server/wifi/OpSlaNetlinkHelper;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->t0(Z)V

    return-void
.end method

.method private s0()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroyStartSlaPackageSockets pkg uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->vdw:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpSlaNetlinkHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->vdw:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->cjf:Lcom/android/internal/net/IOemNetd;

    const/4 v2, 0x1

    invoke-interface {p0, v0, v2}, Lcom/android/internal/net/IOemNetd;->destroySockets(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception OP_SLA_ENABLED CLEAR TOP UID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private s1()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "download_smart_link_aggregation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/wifi/OpSlaNetlinkHelper$ibl;

    iget-object v3, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->sis:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/wifi/OpSlaNetlinkHelper$ibl;-><init>(Lcom/android/server/wifi/OpSlaNetlinkHelper;Landroid/os/Handler;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sla_enable_notify"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/wifi/OpSlaNetlinkHelper$gwm;

    iget-object v4, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->sis:Landroid/os/Handler;

    invoke-direct {v2, p0, v4}, Lcom/android/server/wifi/OpSlaNetlinkHelper$gwm;-><init>(Lcom/android/server/wifi/OpSlaNetlinkHelper;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sla_downloading_dm_notify"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/wifi/OpSlaNetlinkHelper$ugm;

    iget-object v4, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->sis:Landroid/os/Handler;

    invoke-direct {v2, p0, v4}, Lcom/android/server/wifi/OpSlaNetlinkHelper$ugm;-><init>(Lcom/android/server/wifi/OpSlaNetlinkHelper;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sla_downloading_ota_notify"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/wifi/OpSlaNetlinkHelper$vdb;

    iget-object v4, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->sis:Landroid/os/Handler;

    invoke-direct {v2, p0, v4}, Lcom/android/server/wifi/OpSlaNetlinkHelper$vdb;-><init>(Lcom/android/server/wifi/OpSlaNetlinkHelper;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sla_downloading_heytap_notify"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/wifi/OpSlaNetlinkHelper$zgw;

    iget-object v4, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->sis:Landroid/os/Handler;

    invoke-direct {v2, p0, v4}, Lcom/android/server/wifi/OpSlaNetlinkHelper$zgw;-><init>(Lcom/android/server/wifi/OpSlaNetlinkHelper;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/wifi/OpSlaNetlinkHelper$obl;

    iget-object v4, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->sis:Landroid/os/Handler;

    invoke-direct {v2, p0, v4}, Lcom/android/server/wifi/OpSlaNetlinkHelper$obl;-><init>(Lcom/android/server/wifi/OpSlaNetlinkHelper;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "config_current_primary_sub"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/wifi/OpSlaNetlinkHelper$oxb;

    iget-object v4, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->sis:Landroid/os/Handler;

    invoke-direct {v2, p0, v4}, Lcom/android/server/wifi/OpSlaNetlinkHelper$oxb;-><init>(Lcom/android/server/wifi/OpSlaNetlinkHelper;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_mode_status"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/wifi/OpSlaNetlinkHelper$zta;

    iget-object v4, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->sis:Landroid/os/Handler;

    invoke-direct {v2, p0, v4}, Lcom/android/server/wifi/OpSlaNetlinkHelper$zta;-><init>(Lcom/android/server/wifi/OpSlaNetlinkHelper;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_mode_apps"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/wifi/OpSlaNetlinkHelper$you;

    iget-object v4, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->sis:Landroid/os/Handler;

    invoke-direct {v2, p0, v4}, Lcom/android/server/wifi/OpSlaNetlinkHelper$you;-><init>(Lcom/android/server/wifi/OpSlaNetlinkHelper;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_gamemode_removed_packages_by_user"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/wifi/OpSlaNetlinkHelper$sis;

    iget-object v4, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->sis:Landroid/os/Handler;

    invoke-direct {v2, p0, v4}, Lcom/android/server/wifi/OpSlaNetlinkHelper$sis;-><init>(Lcom/android/server/wifi/OpSlaNetlinkHelper;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_link_turbo_value"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/wifi/OpSlaNetlinkHelper$tsu;

    iget-object v4, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->sis:Landroid/os/Handler;

    invoke-direct {v2, p0, v4}, Lcom/android/server/wifi/OpSlaNetlinkHelper$tsu;-><init>(Lcom/android/server/wifi/OpSlaNetlinkHelper;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_smart_link_selection"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/wifi/OpSlaNetlinkHelper$rtg;

    iget-object v4, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->sis:Landroid/os/Handler;

    invoke-direct {v2, p0, v4}, Lcom/android/server/wifi/OpSlaNetlinkHelper$rtg;-><init>(Lcom/android/server/wifi/OpSlaNetlinkHelper;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sla_game_mark"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/wifi/OpSlaNetlinkHelper$ssp;

    iget-object v4, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->sis:Landroid/os/Handler;

    invoke-direct {v2, p0, v4}, Lcom/android/server/wifi/OpSlaNetlinkHelper$ssp;-><init>(Lcom/android/server/wifi/OpSlaNetlinkHelper;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/wifi/OpSlaNetlinkHelper;->r0:Landroid/net/Uri;

    new-instance v2, Lcom/android/server/wifi/OpSlaNetlinkHelper$cno;

    iget-object v4, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->sis:Landroid/os/Handler;

    invoke-direct {v2, p0, v4}, Lcom/android/server/wifi/OpSlaNetlinkHelper$cno;-><init>(Lcom/android/server/wifi/OpSlaNetlinkHelper;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_dbs_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/wifi/OpSlaNetlinkHelper$kth;

    iget-object v4, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->sis:Landroid/os/Handler;

    invoke-direct {v2, p0, v4}, Lcom/android/server/wifi/OpSlaNetlinkHelper$kth;-><init>(Lcom/android/server/wifi/OpSlaNetlinkHelper;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->vju:Lcom/android/server/wifi/WifiSettingsConfigStore;

    sget-object v1, Lcom/android/server/wifi/WifiSettingsConfigStore;->WIFI_VERBOSE_LOGGING_ENABLED:Lcom/android/server/wifi/WifiSettingsConfigStore$Key;

    new-instance v2, Lcom/android/server/wifi/zta;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/zta;-><init>(Lcom/android/server/wifi/OpSlaNetlinkHelper;)V

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->sis:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/wifi/WifiSettingsConfigStore;->registerChangeListener(Lcom/android/server/wifi/WifiSettingsConfigStore$Key;Lcom/android/server/wifi/WifiSettingsConfigStore$OnSettingsChangedListener;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic sis(Lcom/android/server/wifi/OpSlaNetlinkHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->X1()V

    return-void
.end method

.method static synthetic ssp(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->s:Z

    return p0
.end method

.method static synthetic t(Lcom/android/server/wifi/OpSlaNetlinkHelper;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->c:J

    return-wide p1
.end method

.method private t0(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/16 v0, 0x1f

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->F1(SI)Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "After enableGameRttDetect("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "):result="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpSlaNetlinkHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private t1()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->A0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->H0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->S1(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->I0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->J0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->T1(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "sla_downloading_dm_notify"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "sla_downloading_ota_notify"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "sla_downloading_heytap_notify"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method static synthetic tsu(Lcom/android/server/wifi/OpSlaNetlinkHelper;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->S1(Z)V

    return-void
.end method

.method static synthetic u(Lcom/android/server/wifi/OpSlaNetlinkHelper;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->p1(Lorg/json/JSONArray;)V

    return-void
.end method

.method private u0(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->S1(Z)V

    invoke-direct {p0, p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->T1(Z)V

    return-void
.end method

.method private u1()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->I0()Z

    move-result v0

    const/16 v1, 0x30

    invoke-direct {p0, v1, v0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->F1(SI)Z

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "After sendAppSwitchStateToKernel:enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " result="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpSlaNetlinkHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic ugm(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic v(Lcom/android/server/wifi/OpSlaNetlinkHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->z1()V

    return-void
.end method

.method private v1()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->c1()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->j:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->bud:I

    goto :goto_0

    :cond_0
    const/16 v0, -0xc8

    :goto_0
    const/16 v1, 0x25

    invoke-direct {p0, v1, v0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->F1(SI)Z

    move-result v0

    sget-boolean v1, Lcom/android/server/wifi/OpSlaNetlinkHelper;->G:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "After sendCellScoreToKernel:result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " score="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->bud:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpSlaNetlinkHelper_score"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method static synthetic vdb(Lcom/android/server/wifi/OpSlaNetlinkHelper;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->K1(I)V

    return-void
.end method

.method static synthetic vdw(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->g:Z

    return p0
.end method

.method static synthetic veq(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->h:Z

    return p0
.end method

.method static synthetic vju(Lcom/android/server/wifi/OpSlaNetlinkHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->m1()V

    return-void
.end method

.method static synthetic w(Lcom/android/server/wifi/OpSlaNetlinkHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->v1()V

    return-void
.end method

.method private w0(Z)V
    .locals 2

    const/16 v0, 0x2d

    invoke-direct {p0, v0, p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->F1(SI)Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "After enableWhiteListLinkTurbo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "):result="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpSlaNetlinkHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private w1()V
    .locals 15

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->ywr:Lcom/android/server/pm/PackageManagerService;

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->F0()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->K0()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [I

    iget-object v4, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->x:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->x:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    const/16 v5, 0x1a

    const/4 v6, 0x0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    move v7, v3

    move v0, v6

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_8

    iget-object v8, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->A:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    const/4 v9, -0x1

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "OpSlaNetlinkHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "restrict game app:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aput v9, v2, v7

    add-int/lit8 v7, v7, 0x1

    if-nez v0, :cond_7

    aput v9, v2, v7

    goto :goto_1

    :cond_1
    iget-object v8, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->ywr:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/high16 v11, 0x10000

    invoke-virtual {v8, v10, v11, v6}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v8

    const/16 v10, 0x3e8

    if-gt v8, v10, :cond_4

    sget-boolean v8, Lcom/android/server/wifi/OpSlaNetlinkHelper;->G:Z

    if-eqz v8, :cond_2

    const-string v8, "OpSlaNetlinkHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sendGameAppUid invalid uid for app:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    aput v9, v2, v7

    add-int/lit8 v7, v7, 0x1

    if-nez v0, :cond_7

    aput v9, v2, v7

    :cond_3
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    iget-object v12, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->x:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aput v8, v2, v7

    sget-boolean v12, Lcom/android/server/wifi/OpSlaNetlinkHelper;->G:Z

    if-eqz v12, :cond_5

    const-string v12, "OpSlaNetlinkHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "sendGameAppUid data["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "]="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    add-int/lit8 v7, v7, 0x1

    if-nez v0, :cond_7

    iget-object v8, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->ywr:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const/16 v13, 0x3e7

    invoke-virtual {v8, v12, v11, v13}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v8

    if-le v8, v10, :cond_6

    iget-object v9, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->x:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aput v8, v2, v7

    sget-boolean v9, Lcom/android/server/wifi/OpSlaNetlinkHelper;->G:Z

    if-eqz v9, :cond_3

    const-string v9, "OpSlaNetlinkHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sendGameAppUid data["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "]="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    aput v9, v2, v7

    goto :goto_1

    :cond_7
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_8
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v7, v3

    aput v7, v2, v6

    invoke-direct {p0, v5, v2}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->G1(S[I)Z

    goto :goto_4

    :cond_9
    :goto_3
    :try_start_1
    const-string v0, "OpSlaNetlinkHelper"

    const-string v1, "gameApps empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aput v6, v2, v6

    invoke-direct {p0, v5, v2}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->G1(S[I)Z

    monitor-exit v4

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_a
    :goto_4
    return-void
.end method

.method static synthetic wtn(Lcom/android/server/wifi/OpSlaNetlinkHelper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->u:Z

    return p0
.end method

.method static synthetic x(Lcom/android/server/wifi/OpSlaNetlinkHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->y1()V

    return-void
.end method

.method private x0(S)Ljava/lang/String;
    .locals 2

    const/16 p0, 0x11

    if-lt p1, p0, :cond_1

    add-int/lit8 p0, p1, -0x11

    sget-object v0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->T1:[Ljava/lang/String;

    array-length v1, v0

    if-le p0, v1, :cond_0

    goto :goto_0

    :cond_0
    aget-object p0, v0, p0

    return-object p0

    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid message:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private x1(I)V
    .locals 2

    const/16 v0, 0x2c

    invoke-direct {p0, v0, p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->F1(SI)Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "After sendGameModeState: gameModeStarted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " result="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpSlaNetlinkHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic y(Lcom/android/server/wifi/OpSlaNetlinkHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->u1()V

    return-void
.end method

.method private y0()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->A:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/server/wifi/OpSlaNetlinkHelper;->r0:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "pkg"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "wlan"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v3, "mobile"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    or-int/2addr v2, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->A:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, v3}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    :try_start_1
    const-string v1, "OpSlaNetlinkHelper"

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void

    :goto_3
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw p0
.end method

.method private y1()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->G0()Z

    move-result v0

    const/16 v1, 0x21

    invoke-direct {p0, v1, v0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->F1(SI)Z

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "After sendGameSwitchStateToKernel:enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " result="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpSlaNetlinkHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic you(Lcom/android/server/wifi/OpSlaNetlinkHelper;Landroid/net/Network;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->S0(Landroid/net/Network;)V

    return-void
.end method

.method static synthetic ywr(Lcom/android/server/wifi/OpSlaNetlinkHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->i:Z

    return p1
.end method

.method static synthetic z(Lcom/android/server/wifi/OpSlaNetlinkHelper;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->A1(Z)V

    return-void
.end method

.method private z0(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x1000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->zta:Landroid/content/Context;

    const/4 p1, 0x0

    const/high16 v1, 0x8000000

    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private z1()V
    .locals 1

    sget-object v0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->H:Ljava/io/FileDescriptor;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->tsu:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/server/wifi/OpSlaNetlinkHelper$qbh;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper$qbh;-><init>(Lcom/android/server/wifi/OpSlaNetlinkHelper;)V

    iput-object v0, p0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->tsu:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_1
    :goto_0
    const-string p0, "OpSlaNetlinkHelper"

    const-string v0, "Already listening!!"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic zgw(Lcom/android/server/wifi/OpSlaNetlinkHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->X0()V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/wifi/OpSlaNetlinkHelper;Landroid/net/Network;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->Q0(Landroid/net/Network;)V

    return-void
.end method


# virtual methods
.method public I1(I)V
    .locals 2

    const/16 v0, 0x11

    invoke-direct {p0, v0, p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->F1(SI)Z

    move-result p0

    sget-boolean v0, Lcom/android/server/wifi/OpSlaNetlinkHelper;->G:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "After sendWifiScoreToKernel:result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " score="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpSlaNetlinkHelper_score"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public synthetic l1(Lcom/android/server/wifi/WifiSettingsConfigStore$Key;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->k1(Lcom/android/server/wifi/WifiSettingsConfigStore$Key;Ljava/lang/Boolean;)V

    return-void
.end method

.method public v0(Z)V
    .locals 1

    sput-boolean p1, Lcom/android/server/wifi/OpSlaNetlinkHelper;->G:Z

    const/16 v0, 0x29

    invoke-direct {p0, v0, p1}, Lcom/android/server/wifi/OpSlaNetlinkHelper;->F1(SI)Z

    return-void
.end method
