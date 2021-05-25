.class public Lcom/android/server/zgw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/OnePlusUtil$zta$you;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/zgw$bio;,
        Lcom/android/server/zgw$rtg;,
        Lcom/android/server/zgw$tsu;,
        Lcom/android/server/zgw$ssp;,
        Lcom/android/server/zgw$sis;,
        Lcom/android/server/zgw$cno;,
        Lcom/android/server/zgw$you;,
        Lcom/android/server/zgw$kth;
    }
.end annotation


# static fields
.field private static final A0:Ljava/lang/String; = "bn"

.field static final B:Ljava/lang/String; = "OverHeatingDiagnosis"

.field private static final B0:Ljava/lang/String; = "vo"

.field static final C:Ljava/lang/String; = "OverHeatingDiagnosis"

.field private static final C0:Ljava/lang/String; = "cu"

.field public static final D:Ljava/lang/String; = "/data/system/power/diagnosis_heating.txt"

.field private static final D0:Ljava/lang/String; = "sk"

.field static final E:Ljava/lang/String; = "overheat"

.field private static final E0:Ljava/lang/String; = "hr"

.field static final F:Ljava/lang/String; = "/sys/class/thermal/thermal_zone27/temp"

.field private static F0:Landroid/util/ArrayMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final G:I = 0x1

.field private static G0:Landroid/content/pm/PackageManager; = null

.field static final H:Ljava/lang/String; = "com.oneplus:string/config_overheat_thermal_zone_path"

.field static final I:Ljava/lang/String; = "com.oneplus:integer/config_overheat_thermal_zone_precision"

.field static final J:Ljava/text/SimpleDateFormat;

.field static final K:J = 0x493e0L

.field static final L:J = 0x927c0L

.field static final M:J = 0x124f80L

.field static final N:J = 0x1b7740L

.field static final O:J = 0xea60L

.field static final P:I = 0x23

.field static final Q:I = 0xc8

.field static final R:I = 0x26

.field static final S:I = 0x2c

.field static final T:J = 0x3e8L

.field static final U:J = 0x2bf20L

.field static final V:I = 0x40000

.field static final W:I = 0x800

.field static final X:I = 0x28

.field static final Y:I = 0x3

.field static final Z:I = 0x64

.field static final a0:I = 0x24

.field static final b0:J = 0x2bf20L

.field static final c0:J = 0x927c0L

.field static final d0:I = 0x0

.field static final e0:I = 0x1

.field static final f0:I = 0x2

.field static final g0:I = 0x3

.field public static final h0:I = 0x17

.field public static final i0:I = 0x18

.field public static final j0:I = 0x19

.field public static final k0:I = 0x1a

.field public static final l0:I = 0x1b

.field public static final m0:I = 0x1c

.field public static final n0:I = 0x1d

.field public static final o0:I = 0x1e

.field public static final p0:I = 0x1f

.field public static final q0:I = 0x20

.field public static final r0:I = 0x21

.field public static final s0:I = 0x22

.field public static final t0:I = 0x8

.field private static final u0:Ljava/lang/String; = "NYNCG4I0TI"

.field private static final v0:Ljava/lang/String; = "overheat"

.field private static final w0:Ljava/lang/String; = "overheat_v2.0"

.field private static final x0:Ljava/lang/String; = "ht"

.field private static final y0:Ljava/lang/String; = "cl"

.field private static final z0:Ljava/lang/String; = "mt"


# instance fields
.field A:Lcom/android/server/zgw$kth;

.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/zgw$tsu;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private bio:Z

.field private bud:I

.field private bvj:J

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private cgv:I

.field private cjf:I

.field private cno:Lnet/oneplus/odm/OpDeviceManagerInjector;

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private dma:Z

.field private e:Lcom/android/server/zgw$you;

.field private ear:I

.field private f:Lcom/android/server/zgw$rtg;

.field private fto:I

.field private g:I

.field private gck:Ljava/lang/String;

.field private gwm:I

.field private h:Z

.field private hmo:J

.field private i:Z

.field private ibl:J

.field private igw:Z

.field private ire:J

.field private irq:Lcom/android/server/power/you;

.field private ivd:Lcom/android/internal/os/ProcessCpuTracker;

.field private j:Z

.field private k:J

.field private kth:Z

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private les:J

.field private lqr:I

.field private m:Landroid/telephony/TelephonyManager;

.field private n:Landroid/media/AudioManager;

.field private o:Landroid/os/BatteryManager;

.field private obl:J

.field private oif:J

.field private oxb:I

.field p:Lcom/android/server/zgw$kth;

.field q:Lcom/android/server/zgw$kth;

.field private qbh:J

.field private qeg:Lcom/android/server/zgw$ssp;

.field r:Lcom/android/server/zgw$kth;

.field private rtg:Landroid/content/Context;

.field s:Lcom/android/server/zgw$kth;

.field private sis:Landroid/content/IntentFilter;

.field private ssp:Lcom/android/server/zgw$cno;

.field t:Lcom/android/server/zgw$kth;

.field private tsu:Landroid/content/IntentFilter;

.field u:Lcom/android/server/zgw$kth;

.field private ugm:I

.field v:Lcom/android/server/zgw$kth;

.field private vdb:J

.field private vdw:Lcom/oneplus/config/ConfigObserver;

.field private veq:I

.field private vju:I

.field w:Lcom/android/server/zgw$kth;

.field private wtn:Z

.field x:Lcom/android/server/zgw$kth;

.field y:Lcom/android/server/zgw$kth;

.field private you:Lcom/android/server/zgw$sis;

.field private ywr:Z

.field z:Lcom/android/server/zgw$kth;

.field private zgw:J

.field private final zta:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/zgw;->J:Ljava/text/SimpleDateFormat;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/zgw;->F0:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/zgw;->G0:Landroid/content/pm/PackageManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/zgw;->zta:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/zgw;->a:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/zgw;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/zgw;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/zgw;->d:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/zgw$you;

    const/4 v8, 0x0

    invoke-direct {v0, p0, v8}, Lcom/android/server/zgw$you;-><init>(Lcom/android/server/zgw;Lcom/android/server/zgw$zta;)V

    iput-object v0, p0, Lcom/android/server/zgw;->e:Lcom/android/server/zgw$you;

    new-instance v0, Lcom/android/server/zgw$rtg;

    invoke-direct {v0, p0, v8}, Lcom/android/server/zgw$rtg;-><init>(Lcom/android/server/zgw;Lcom/android/server/zgw$zta;)V

    iput-object v0, p0, Lcom/android/server/zgw;->f:Lcom/android/server/zgw$rtg;

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/zgw;->h:Z

    iput-boolean v9, p0, Lcom/android/server/zgw;->i:Z

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/server/zgw;->j:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/zgw;->k:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/zgw;->l:Ljava/util/ArrayList;

    new-instance v11, Lcom/android/server/zgw$kth;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/16 v5, 0x25

    const/16 v6, 0x29

    const-string v7, "overheat"

    move-object v0, v11

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/zgw$kth;-><init>(Lcom/android/server/zgw;ZZZIILjava/lang/String;)V

    iput-object v11, p0, Lcom/android/server/zgw;->p:Lcom/android/server/zgw$kth;

    new-instance v11, Lcom/android/server/zgw$kth;

    const-string v7, "overheat_v2.0"

    move-object v0, v11

    invoke-direct/range {v0 .. v7}, Lcom/android/server/zgw$kth;-><init>(Lcom/android/server/zgw;ZZZIILjava/lang/String;)V

    iput-object v11, p0, Lcom/android/server/zgw;->q:Lcom/android/server/zgw$kth;

    new-instance v11, Lcom/android/server/zgw$kth;

    const-string v7, "overheat_v2.0"

    move-object v0, v11

    invoke-direct/range {v0 .. v7}, Lcom/android/server/zgw$kth;-><init>(Lcom/android/server/zgw;ZZZIILjava/lang/String;)V

    iput-object v11, p0, Lcom/android/server/zgw;->r:Lcom/android/server/zgw$kth;

    new-instance v11, Lcom/android/server/zgw$kth;

    const-string v7, "overheat_v2.0"

    move-object v0, v11

    invoke-direct/range {v0 .. v7}, Lcom/android/server/zgw$kth;-><init>(Lcom/android/server/zgw;ZZZIILjava/lang/String;)V

    iput-object v11, p0, Lcom/android/server/zgw;->s:Lcom/android/server/zgw$kth;

    new-instance v11, Lcom/android/server/zgw$kth;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x27

    const/16 v6, 0x2a

    const-string v7, "overheat_v2.0"

    move-object v0, v11

    invoke-direct/range {v0 .. v7}, Lcom/android/server/zgw$kth;-><init>(Lcom/android/server/zgw;ZZZIILjava/lang/String;)V

    iput-object v11, p0, Lcom/android/server/zgw;->t:Lcom/android/server/zgw$kth;

    new-instance v11, Lcom/android/server/zgw$kth;

    const/4 v2, 0x1

    const/16 v5, 0x25

    const/16 v6, 0x29

    const-string v7, "overheat"

    move-object v0, v11

    invoke-direct/range {v0 .. v7}, Lcom/android/server/zgw$kth;-><init>(Lcom/android/server/zgw;ZZZIILjava/lang/String;)V

    iput-object v11, p0, Lcom/android/server/zgw;->u:Lcom/android/server/zgw$kth;

    new-instance v11, Lcom/android/server/zgw$kth;

    const/4 v4, 0x1

    const/16 v5, 0x27

    const/16 v6, 0x2a

    const-string v7, "overheat_v2.0"

    move-object v0, v11

    invoke-direct/range {v0 .. v7}, Lcom/android/server/zgw$kth;-><init>(Lcom/android/server/zgw;ZZZIILjava/lang/String;)V

    iput-object v11, p0, Lcom/android/server/zgw;->v:Lcom/android/server/zgw$kth;

    new-instance v11, Lcom/android/server/zgw$kth;

    const/16 v5, 0x25

    const/16 v6, 0x29

    const-string v7, "overheat"

    move-object v0, v11

    invoke-direct/range {v0 .. v7}, Lcom/android/server/zgw$kth;-><init>(Lcom/android/server/zgw;ZZZIILjava/lang/String;)V

    iput-object v11, p0, Lcom/android/server/zgw;->w:Lcom/android/server/zgw$kth;

    new-instance v11, Lcom/android/server/zgw$kth;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x27

    const/16 v6, 0x2a

    const-string v7, "overheat_v2.0"

    move-object v0, v11

    invoke-direct/range {v0 .. v7}, Lcom/android/server/zgw$kth;-><init>(Lcom/android/server/zgw;ZZZIILjava/lang/String;)V

    iput-object v11, p0, Lcom/android/server/zgw;->x:Lcom/android/server/zgw$kth;

    new-instance v11, Lcom/android/server/zgw$kth;

    const-string v7, "overheat_v2.0"

    move-object v0, v11

    invoke-direct/range {v0 .. v7}, Lcom/android/server/zgw$kth;-><init>(Lcom/android/server/zgw;ZZZIILjava/lang/String;)V

    iput-object v11, p0, Lcom/android/server/zgw;->y:Lcom/android/server/zgw$kth;

    new-instance v11, Lcom/android/server/zgw$kth;

    const-string v7, "overheat_v2.0"

    move-object v0, v11

    invoke-direct/range {v0 .. v7}, Lcom/android/server/zgw$kth;-><init>(Lcom/android/server/zgw;ZZZIILjava/lang/String;)V

    iput-object v11, p0, Lcom/android/server/zgw;->z:Lcom/android/server/zgw$kth;

    new-instance v11, Lcom/android/server/zgw$kth;

    const/4 v2, 0x1

    const/4 v4, 0x1

    const-string v7, "overheat_v2.0"

    move-object v0, v11

    invoke-direct/range {v0 .. v7}, Lcom/android/server/zgw$kth;-><init>(Lcom/android/server/zgw;ZZZIILjava/lang/String;)V

    iput-object v11, p0, Lcom/android/server/zgw;->A:Lcom/android/server/zgw$kth;

    const-string v0, "OverHeatingDiagnosis"

    if-nez p1, :cond_0

    const-string v1, "context cannot be null"

    invoke-static {v0, v1}, Lcom/android/server/igw$zta;->sis(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-boolean v9, p0, Lcom/android/server/zgw;->kth:Z

    iput-boolean v10, p0, Lcom/android/server/zgw;->bio:Z

    iput-boolean v9, p0, Lcom/android/server/zgw;->igw:Z

    iput-boolean v9, p0, Lcom/android/server/zgw;->wtn:Z

    iput-boolean v10, p0, Lcom/android/server/zgw;->dma:Z

    iput-boolean v10, p0, Lcom/android/server/zgw;->ywr:Z

    const-wide/32 v1, 0x493e0

    iput-wide v1, p0, Lcom/android/server/zgw;->qbh:J

    const-wide/32 v1, 0x927c0

    iput-wide v1, p0, Lcom/android/server/zgw;->oif:J

    const-wide/32 v3, 0x124f80

    iput-wide v3, p0, Lcom/android/server/zgw;->bvj:J

    const-wide/32 v3, 0xea60

    iput-wide v3, p0, Lcom/android/server/zgw;->ibl:J

    const/4 v3, 0x3

    iput v3, p0, Lcom/android/server/zgw;->gwm:I

    const/16 v3, 0x24

    iput v3, p0, Lcom/android/server/zgw;->ugm:I

    iput-wide v1, p0, Lcom/android/server/zgw;->vdb:J

    const-string v1, "/sys/class/thermal/thermal_zone27/temp"

    iput-object v1, p0, Lcom/android/server/zgw;->gck:Ljava/lang/String;

    iput v9, p0, Lcom/android/server/zgw;->fto:I

    const/16 v1, 0x23

    iput v1, p0, Lcom/android/server/zgw;->oxb:I

    const/16 v1, 0xc8

    iput v1, p0, Lcom/android/server/zgw;->cjf:I

    const-wide/16 v1, 0x3e8

    iput-wide v1, p0, Lcom/android/server/zgw;->ire:J

    const-wide/32 v1, 0x2bf20

    iput-wide v1, p0, Lcom/android/server/zgw;->hmo:J

    iput-object p1, p0, Lcom/android/server/zgw;->rtg:Landroid/content/Context;

    new-instance v1, Lcom/android/server/zgw$ssp;

    invoke-direct {v1, p0, v8}, Lcom/android/server/zgw$ssp;-><init>(Lcom/android/server/zgw;Lcom/android/server/zgw$zta;)V

    iput-object v1, p0, Lcom/android/server/zgw;->qeg:Lcom/android/server/zgw$ssp;

    new-instance v1, Lcom/android/server/zgw$sis;

    invoke-direct {v1, p0, v8}, Lcom/android/server/zgw$sis;-><init>(Lcom/android/server/zgw;Lcom/android/server/zgw$zta;)V

    iput-object v1, p0, Lcom/android/server/zgw;->you:Lcom/android/server/zgw$sis;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/android/server/zgw;->sis:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/android/server/zgw;->tsu:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/zgw;->tsu:Landroid/content/IntentFilter;

    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/zgw$cno;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/zgw$cno;-><init>(Lcom/android/server/zgw;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/zgw;->ssp:Lcom/android/server/zgw$cno;

    new-instance v1, Lcom/android/server/power/you;

    const/16 v2, 0x28

    const-string v3, "/data/system/power/diagnosis_heating.txt"

    invoke-direct {v1, v3, v2}, Lcom/android/server/power/you;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/zgw;->irq:Lcom/android/server/power/you;

    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/zgw;->cno:Lnet/oneplus/odm/OpDeviceManagerInjector;

    iget-object v1, p0, Lcom/android/server/zgw;->rtg:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/server/zgw;->m:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/zgw;->rtg:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/zgw;->n:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/server/zgw;->rtg:Landroid/content/Context;

    const-string v2, "batterymanager"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryManager;

    iput-object v1, p0, Lcom/android/server/zgw;->o:Landroid/os/BatteryManager;

    iget-object v1, p0, Lcom/android/server/zgw;->rtg:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "com.oneplus:string/config_overheat_thermal_zone_path"

    invoke-virtual {v1, v2, v8, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/zgw;->gck:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "res com.oneplus:string/config_overheat_thermal_zone_path : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/zgw;->gck:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/igw$zta;->zta(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v2, "res com.oneplus:string/config_overheat_thermal_zone_path not found"

    invoke-static {v0, v2}, Lcom/android/server/igw$zta;->sis(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v2, "com.oneplus:integer/config_overheat_thermal_zone_precision"

    invoke-virtual {v1, v2, v8, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/zgw;->fto:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "res com.oneplus:integer/config_overheat_thermal_zone_precision : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/zgw;->fto:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/igw$zta;->zta(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string v1, "res com.oneplus:integer/config_overheat_thermal_zone_precision not found"

    invoke-static {v0, v1}, Lcom/android/server/igw$zta;->sis(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/zgw;->k:J

    return-void
.end method

.method private B(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/zgw;->G0:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/zgw;->rtg:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    sput-object p0, Lcom/android/server/zgw;->G0:Landroid/content/pm/PackageManager;

    :cond_0
    sget-object p0, Lcom/android/server/zgw;->G0:Landroid/content/pm/PackageManager;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot find package name: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OverHeatingDiagnosis"

    invoke-static {p1, p0}, Lcom/android/server/igw$zta;->sis(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private D()I
    .locals 2

    iget-object p0, p0, Lcom/android/server/zgw;->rtg:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "screen_brightness"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private F([II)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    add-int/lit8 p0, p2, -0x1

    aget p0, p1, p0

    sub-int/2addr p2, v2

    aget p1, p1, p2

    if-lt p0, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    add-int/lit8 v3, p2, -0x1

    invoke-direct {p0, p1, v3}, Lcom/android/server/zgw;->F([II)Z

    move-result p0

    if-eqz p0, :cond_3

    aget p0, p1, v3

    sub-int/2addr p2, v2

    aget p1, p1, p2

    if-lt p0, p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0
.end method

.method private G(Z)Z
    .locals 9

    iget-boolean v0, p0, Lcom/android/server/zgw;->kth:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/zgw;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Lcom/android/server/zgw;->gwm:I

    if-lt v0, v2, :cond_7

    new-array v0, v2, [I

    iget-object v3, p0, Lcom/android/server/zgw;->a:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/zgw$tsu;

    invoke-virtual {v3}, Lcom/android/server/zgw$tsu;->ssp()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/zgw;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/zgw$tsu;

    invoke-virtual {v5}, Lcom/android/server/zgw$tsu;->ssp()J

    move-result-wide v5

    sub-long/2addr v3, v5

    move v5, v1

    :goto_0
    if-ge v5, v2, :cond_1

    iget-object v6, p0, Lcom/android/server/zgw;->a:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/zgw$tsu;

    invoke-virtual {v6}, Lcom/android/server/zgw$tsu;->rtg()I

    move-result v6

    aput v6, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const-string v5, "OverHeatingDiagnosis"

    if-eqz p1, :cond_2

    aget p1, v0, v1

    add-int/lit8 v6, v2, -0x1

    aget v6, v0, v6

    if-ne p1, v6, :cond_2

    iput-boolean v1, p0, Lcom/android/server/zgw;->i:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isTempIncrease: "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/zgw;->i:Z

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/android/server/igw$zta;->zta(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean p1, p0, Lcom/android/server/zgw;->dma:Z

    const/4 v6, 0x1

    if-eqz p1, :cond_3

    return v6

    :cond_3
    iget-wide v7, p0, Lcom/android/server/zgw;->oif:J

    cmp-long p1, v3, v7

    if-lez p1, :cond_4

    return v1

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "last temp: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v2, v6

    aget v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/android/server/igw$zta;->zta(Ljava/lang/String;Ljava/lang/String;)I

    aget p1, v0, v2

    iget v2, p0, Lcom/android/server/zgw;->ugm:I

    if-ge p1, v2, :cond_5

    return v1

    :cond_5
    iget-object p1, p0, Lcom/android/server/zgw;->a:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/server/zgw;->gwm:I

    sub-int/2addr v2, v6

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/zgw$tsu;

    invoke-virtual {p1}, Lcom/android/server/zgw$tsu;->tsu()Z

    move-result p1

    iget-object v2, p0, Lcom/android/server/zgw;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/zgw$tsu;

    invoke-virtual {v2}, Lcom/android/server/zgw$tsu;->tsu()Z

    move-result v2

    if-eq p1, v2, :cond_6

    iget-object p0, p0, Lcom/android/server/zgw;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return v1

    :cond_6
    const/4 p1, 0x3

    invoke-direct {p0, v0, p1}, Lcom/android/server/zgw;->F([II)Z

    move-result p0

    return p0

    :cond_7
    return v1
.end method

.method public static X(Landroid/util/ArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sput-object p0, Lcom/android/server/zgw;->F0:Landroid/util/ArrayMap;

    return-void
.end method

.method static synthetic a(Lcom/android/server/zgw;)I
    .locals 0

    iget p0, p0, Lcom/android/server/zgw;->ugm:I

    return p0
.end method

.method private a0()Z
    .locals 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/zgw;->i:Z

    iget-boolean v1, p0, Lcom/android/server/zgw;->kth:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/server/zgw;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_8

    new-array v1, v3, [I

    iget-object v4, p0, Lcom/android/server/zgw;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/zgw$tsu;

    invoke-virtual {v4}, Lcom/android/server/zgw$tsu;->ssp()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/zgw;->a:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/zgw$tsu;

    invoke-virtual {v6}, Lcom/android/server/zgw$tsu;->ssp()J

    move-result-wide v6

    sub-long/2addr v4, v6

    move v6, v2

    :goto_0
    if-ge v6, v3, :cond_1

    iget-object v7, p0, Lcom/android/server/zgw;->a:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/zgw$tsu;

    invoke-virtual {v7}, Lcom/android/server/zgw$tsu;->rtg()I

    move-result v7

    aput v7, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v3, p0, Lcom/android/server/zgw;->dma:Z

    if-eqz v3, :cond_2

    return v0

    :cond_2
    iget-wide v6, p0, Lcom/android/server/zgw;->oif:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    iget-object p0, p0, Lcom/android/server/zgw;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return v2

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "last temp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OverHeatingDiagnosis"

    invoke-static {v4, v3}, Lcom/android/server/igw$zta;->zta(Ljava/lang/String;Ljava/lang/String;)I

    aget v3, v1, v0

    aget v4, v1, v2

    if-ge v3, v4, :cond_4

    iget-object p0, p0, Lcom/android/server/zgw;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return v2

    :cond_4
    aget v3, v1, v0

    iget v4, p0, Lcom/android/server/zgw;->ugm:I

    if-ge v3, v4, :cond_5

    iget-object p0, p0, Lcom/android/server/zgw;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return v2

    :cond_5
    iget-object v3, p0, Lcom/android/server/zgw;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/zgw$tsu;

    invoke-virtual {v3}, Lcom/android/server/zgw$tsu;->tsu()Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/zgw;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/zgw$tsu;

    invoke-virtual {v4}, Lcom/android/server/zgw$tsu;->tsu()Z

    move-result v4

    if-eq v3, v4, :cond_6

    iget-object p0, p0, Lcom/android/server/zgw;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return v2

    :cond_6
    aget p0, v1, v0

    aget v1, v1, v2

    if-lt p0, v1, :cond_7

    goto :goto_1

    :cond_7
    move v0, v2

    :goto_1
    return v0

    :cond_8
    return v2
.end method

.method static synthetic b(Lcom/android/server/zgw;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/zgw;->ugm:I

    return p1
.end method

.method static synthetic bio(Lcom/android/server/zgw;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/zgw;->h:Z

    return p1
.end method

.method static synthetic bud(Lcom/android/server/zgw;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/zgw;->bvj:J

    return-wide v0
.end method

.method static synthetic bvj(Lcom/android/server/zgw;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/zgw;->wtn:Z

    return p0
.end method

.method static synthetic c(Lcom/android/server/zgw;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/zgw;->vdb:J

    return-wide v0
.end method

.method static synthetic cgv(Lcom/android/server/zgw;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/zgw;->oif:J

    return-wide v0
.end method

.method static synthetic cjf(Lcom/android/server/zgw;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/zgw;->fto:I

    return p1
.end method

.method static synthetic cno(Lcom/android/server/zgw;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/zgw;->a0()Z

    move-result p0

    return p0
.end method

.method static synthetic d(Lcom/android/server/zgw;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/zgw;->vdb:J

    return-wide p1
.end method

.method static synthetic dma(Lcom/android/server/zgw;)Lcom/android/server/zgw$rtg;
    .locals 0

    iget-object p0, p0, Lcom/android/server/zgw;->f:Lcom/android/server/zgw$rtg;

    return-object p0
.end method

.method static synthetic e(Lcom/android/server/zgw;)I
    .locals 0

    iget p0, p0, Lcom/android/server/zgw;->oxb:I

    return p0
.end method

.method static synthetic ear(Lcom/android/server/zgw;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/zgw;->dma:Z

    return p0
.end method

.method static synthetic f(Lcom/android/server/zgw;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/zgw;->oxb:I

    return p1
.end method

.method static synthetic fto(Lcom/android/server/zgw;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/zgw;->ywr:Z

    return p1
.end method

.method static synthetic g(Lcom/android/server/zgw;)I
    .locals 0

    iget p0, p0, Lcom/android/server/zgw;->cjf:I

    return p0
.end method

.method static synthetic gck(Lcom/android/server/zgw;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/zgw;->kth:Z

    return p1
.end method

.method static synthetic gwm(Lcom/android/server/zgw;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/zgw;->bio:Z

    return p1
.end method

.method static synthetic h(Lcom/android/server/zgw;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/zgw;->cjf:I

    return p1
.end method

.method static synthetic hmo(Lcom/android/server/zgw;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/zgw;->ywr:Z

    return p0
.end method

.method static synthetic i(Lcom/android/server/zgw;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/zgw;->ire:J

    return-wide v0
.end method

.method static synthetic ibl(Lcom/android/server/zgw;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/zgw;->bio:Z

    return p0
.end method

.method static synthetic igw(Lcom/android/server/zgw;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/zgw;->zta:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic ire(Lcom/android/server/zgw;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/zgw;->dma:Z

    return p1
.end method

.method static synthetic irq(Lcom/android/server/zgw;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/zgw;->qbh:J

    return-wide v0
.end method

.method static synthetic ivd(Lcom/android/server/zgw;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/zgw;->ibl:J

    return-wide p1
.end method

.method static synthetic j(Lcom/android/server/zgw;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/zgw;->ire:J

    return-wide p1
.end method

.method static synthetic k(Lcom/android/server/zgw;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/zgw;->hmo:J

    return-wide v0
.end method

.method static synthetic kth(Lcom/android/server/zgw;Z)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/zgw;->G(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic l(Lcom/android/server/zgw;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/zgw;->hmo:J

    return-wide p1
.end method

.method static synthetic les(Lcom/android/server/zgw;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/zgw;->bvj:J

    return-wide p1
.end method

.method static synthetic lqr(Lcom/android/server/zgw;)I
    .locals 0

    iget p0, p0, Lcom/android/server/zgw;->gwm:I

    return p0
.end method

.method static synthetic m(Lcom/android/server/zgw;)Lcom/android/internal/os/ProcessCpuTracker;
    .locals 0

    iget-object p0, p0, Lcom/android/server/zgw;->ivd:Lcom/android/internal/os/ProcessCpuTracker;

    return-object p0
.end method

.method static synthetic n(Lcom/android/server/zgw;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/zgw;->rtg:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic o(Lcom/android/server/zgw;)Lcom/android/server/zgw$cno;
    .locals 0

    iget-object p0, p0, Lcom/android/server/zgw;->ssp:Lcom/android/server/zgw$cno;

    return-object p0
.end method

.method static synthetic obl(Lcom/android/server/zgw;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/zgw;->gck:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic oif(Lcom/android/server/zgw;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/server/zgw;->l:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic oxb(Lcom/android/server/zgw;)I
    .locals 0

    iget p0, p0, Lcom/android/server/zgw;->fto:I

    return p0
.end method

.method static synthetic p(Lcom/android/server/zgw;)Lcom/android/server/zgw$sis;
    .locals 0

    iget-object p0, p0, Lcom/android/server/zgw;->you:Lcom/android/server/zgw$sis;

    return-object p0
.end method

.method static synthetic q(Lcom/android/server/zgw;)Landroid/content/IntentFilter;
    .locals 0

    iget-object p0, p0, Lcom/android/server/zgw;->sis:Landroid/content/IntentFilter;

    return-object p0
.end method

.method static synthetic qbh(Lcom/android/server/zgw;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/zgw;->vju:I

    return p1
.end method

.method static synthetic qeg(Lcom/android/server/zgw;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/zgw;->ibl:J

    return-wide v0
.end method

.method static synthetic r(Lcom/android/server/zgw;)Landroid/content/IntentFilter;
    .locals 0

    iget-object p0, p0, Lcom/android/server/zgw;->tsu:Landroid/content/IntentFilter;

    return-object p0
.end method

.method static synthetic rtg(Lcom/android/server/zgw;)I
    .locals 0

    iget p0, p0, Lcom/android/server/zgw;->bud:I

    return p0
.end method

.method static synthetic sis(Lcom/android/server/zgw;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/zgw;->veq:I

    return p1
.end method

.method static synthetic ssp(Lcom/android/server/zgw;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/zgw;->bud:I

    return p1
.end method

.method static synthetic tsu(Lcom/android/server/zgw;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/zgw;->cgv:I

    return p1
.end method

.method static synthetic ugm(Lcom/android/server/zgw;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/zgw;->igw:Z

    return p0
.end method

.method static synthetic vdb(Lcom/android/server/zgw;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/zgw;->igw:Z

    return p1
.end method

.method static synthetic vdw(Lcom/android/server/zgw;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/zgw;->qbh:J

    return-wide p1
.end method

.method static synthetic veq(Lcom/android/server/zgw;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/zgw;->gwm:I

    return p1
.end method

.method static synthetic vju(Lcom/android/server/zgw;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/zgw;->oif:J

    return-wide p1
.end method

.method static synthetic wtn(Lcom/android/server/zgw;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/zgw;->kth:Z

    return p0
.end method

.method static synthetic you(Lcom/android/server/zgw;)I
    .locals 0

    iget p0, p0, Lcom/android/server/zgw;->veq:I

    return p0
.end method

.method static synthetic ywr(Lcom/android/server/zgw;)I
    .locals 0

    iget p0, p0, Lcom/android/server/zgw;->vju:I

    return p0
.end method

.method static synthetic zgw(Lcom/android/server/zgw;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/zgw;->gck:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zta(Lcom/android/server/zgw;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/zgw;->lqr:I

    return p1
.end method


# virtual methods
.method A()I
    .locals 6

    const-string v0, "OverHeatingDiagnosis"

    const/16 v1, 0xa

    const/4 v2, 0x0

    :try_start_0
    new-array v3, v1, [C

    new-instance v4, Ljava/io/FileReader;

    iget-object v5, p0, Lcom/android/server/zgw;->gck:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v4, v3, v2, v1}, Ljava/io/FileReader;->read([CII)I

    move-result v1

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3, v2, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget v3, p0, Lcom/android/server/zgw;->fto:I

    div-int/2addr v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDeviceTemp="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/igw$zta;->igw(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t get device temp w "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/zgw;->gck:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/igw$zta;->igw(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public C(Ljava/lang/String;)Lcom/android/server/zgw$kth;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "foreground"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "install"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "camera hardware"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_1

    :sswitch_3
    const-string v0, "PhoneCall"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    goto :goto_1

    :sswitch_4
    const-string v0, "environment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xb

    goto :goto_1

    :sswitch_5
    const-string v0, "unknown"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_1

    :sswitch_6
    const-string v0, "total_cpu_load"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x7

    goto :goto_1

    :sswitch_7
    const-string v0, "otaUpgrade"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_8
    const-string v0, "system"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_9
    const-string v0, "flashlight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x9

    goto :goto_1

    :sswitch_a
    const-string v0, "background"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_b
    const-string v0, "dexopt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/android/server/zgw;->A:Lcom/android/server/zgw$kth;

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lcom/android/server/zgw;->z:Lcom/android/server/zgw$kth;

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lcom/android/server/zgw;->y:Lcom/android/server/zgw$kth;

    return-object p0

    :pswitch_3
    iget-object p0, p0, Lcom/android/server/zgw;->x:Lcom/android/server/zgw$kth;

    return-object p0

    :pswitch_4
    iget-object p0, p0, Lcom/android/server/zgw;->w:Lcom/android/server/zgw$kth;

    return-object p0

    :pswitch_5
    iget-object p0, p0, Lcom/android/server/zgw;->v:Lcom/android/server/zgw$kth;

    return-object p0

    :pswitch_6
    iget-object p0, p0, Lcom/android/server/zgw;->u:Lcom/android/server/zgw$kth;

    return-object p0

    :pswitch_7
    iget-object p0, p0, Lcom/android/server/zgw;->t:Lcom/android/server/zgw$kth;

    return-object p0

    :pswitch_8
    iget-object p0, p0, Lcom/android/server/zgw;->s:Lcom/android/server/zgw$kth;

    return-object p0

    :pswitch_9
    iget-object p0, p0, Lcom/android/server/zgw;->r:Lcom/android/server/zgw$kth;

    return-object p0

    :pswitch_a
    iget-object p0, p0, Lcom/android/server/zgw;->q:Lcom/android/server/zgw$kth;

    return-object p0

    :pswitch_b
    iget-object p0, p0, Lcom/android/server/zgw;->p:Lcom/android/server/zgw$kth;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f93e0c4 -> :sswitch_b
        -0x4f67aad2 -> :sswitch_a
        -0x468444da -> :sswitch_9
        -0x34e38dd1 -> :sswitch_8
        -0x336274a0 -> :sswitch_7
        -0x23467848 -> :sswitch_6
        -0x10fa53b6 -> :sswitch_5
        -0x51ecded -> :sswitch_4
        0x3a14e4cc -> :sswitch_3
        0x58f4bc83 -> :sswitch_2
        0x74ae259b -> :sswitch_1
        0x76486943 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method E()V
    .locals 3

    const-string v0, "OverHeatingDiagnosis"

    const-string v1, "[OnlineConfig] grabOnlineConfig"

    invoke-static {v0, v1}, Lcom/android/server/igw$zta;->igw(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/oneplus/config/ConfigGrabber;

    iget-object v2, p0, Lcom/android/server/zgw;->rtg:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/zgw;->qeg:Lcom/android/server/zgw$ssp;

    invoke-virtual {v1}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/zgw$ssp;->zta(Lorg/json/JSONArray;)V

    return-void
.end method

.method H()V
    .locals 13

    const-string v0, "OverHeatingDiagnosis"

    const-string v1, "monitorEndLocked()"

    invoke-static {v0, v1}, Lcom/android/server/igw$zta;->zta(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/zgw;->bud:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/zgw;->bud:I

    iget-object v1, p0, Lcom/android/server/zgw;->f:Lcom/android/server/zgw$rtg;

    invoke-virtual {v1}, Lcom/android/server/zgw$rtg;->tsu()V

    iget-object v1, p0, Lcom/android/server/zgw;->ivd:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->rtg()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/server/OnePlusUtil$zta;->dma(Lcom/android/server/OnePlusUtil$zta$you;)V

    sget-object v3, Lcom/android/server/am/AppRecordManager$ListenerType;->ssp:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v4, p0, Lcom/android/server/zgw;->e:Lcom/android/server/zgw$you;

    invoke-static {v3, v4}, Lcom/android/server/am/AppRecordManager;->obl(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/bvj;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/zgw;->ivd:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v4, v1, v2}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/igw$zta;->zta(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\nprintCurrentLoad:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/zgw;->ivd:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentLoad()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/igw$zta;->zta(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "countStats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/zgw;->ivd:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/igw$zta;->zta(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "countWorkingStats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/zgw;->ivd:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->countWorkingStats()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/igw$zta;->zta(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/zgw;->ivd:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->countWorkingStats()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/zgw;->ivd:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->getTotalCpuPercent()F

    move-result v2

    float-to-int v2, v2

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/zgw;->ivd:Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/internal/os/ProcessCpuTracker;->getWorkingStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v1

    if-eqz v1, :cond_4

    iget v3, v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    invoke-static {v3}, Lcom/android/server/am/AppRecordManager;->cno(I)I

    iget v5, v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    iget-wide v3, v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    iget v6, v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v7, v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    add-int/2addr v6, v7

    int-to-long v6, v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "name = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", uid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", pid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", CPU usage = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6, v7, v3, v4}, Lcom/android/server/zgw;->z(JJ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/android/server/igw$zta;->zta(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, 0x0

    cmp-long v0, v3, v8

    if-nez v0, :cond_1

    const-wide/16 v3, 0x1

    :cond_1
    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    div-long/2addr v6, v3

    const-wide/16 v3, 0xa

    div-long v7, v6, v3

    iget-object v0, v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_2

    invoke-static {v5}, Lcom/android/server/am/AppRecordManager;->bio(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    move-object v6, v3

    goto :goto_0

    :cond_2
    move-object v6, v0

    :goto_0
    const/16 v0, 0x3e8

    if-ne v5, v0, :cond_3

    move-object v11, v4

    goto :goto_1

    :cond_3
    invoke-direct {p0, v6}, Lcom/android/server/zgw;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    :goto_1
    int-to-long v9, v2

    iget v12, v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    move-object v4, p0

    invoke-virtual/range {v4 .. v12}, Lcom/android/server/zgw;->t(ILjava/lang/String;JJLjava/lang/String;I)V

    :cond_4
    return-void
.end method

.method I()V
    .locals 4

    const-string v0, "OverHeatingDiagnosis"

    const-string v1, "monitorStartLocked()"

    invoke-static {v0, v1}, Lcom/android/server/igw$zta;->zta(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/zgw;->bud:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/zgw;->ear:I

    iput-boolean v0, p0, Lcom/android/server/zgw;->h:Z

    sput-boolean v1, Lcom/android/server/pm/OpReserveAppInjector;->runningDexoptState:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/zgw;->zgw:J

    iget-object v1, p0, Lcom/android/server/zgw;->ivd:Lcom/android/internal/os/ProcessCpuTracker;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/internal/os/ProcessCpuTracker;

    invoke-direct {v1, v0}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/zgw;->ivd:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-static {v1}, Lcom/android/internal/os/ExtProcessCpuTrackerInjector;->addProcessCpuTracker(Lcom/android/internal/os/ProcessCpuTracker;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/zgw;->ivd:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->init()V

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->rtg()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/OnePlusUtil$zta;->tsu()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/zgw;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/zgw;->ssp:Lcom/android/server/zgw$cno;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput v0, v1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/android/server/zgw;->ssp:Lcom/android/server/zgw$cno;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->rtg()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/OnePlusUtil$zta;->bio(Lcom/android/server/OnePlusUtil$zta$you;)V

    sget-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->ssp:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v1, p0, Lcom/android/server/zgw;->e:Lcom/android/server/zgw$you;

    invoke-static {v0, v1}, Lcom/android/server/am/AppRecordManager;->vdb(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/bvj;)V

    iget-object v0, p0, Lcom/android/server/zgw;->f:Lcom/android/server/zgw$rtg;

    invoke-virtual {v0}, Lcom/android/server/zgw$rtg;->you()V

    iget v0, p0, Lcom/android/server/zgw;->veq:I

    and-int/lit8 v0, v0, 0xf

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/zgw;->f:Lcom/android/server/zgw$rtg;

    invoke-virtual {v0}, Lcom/android/server/zgw$rtg;->sis()V

    :cond_1
    iget-object v0, p0, Lcom/android/server/zgw;->ssp:Lcom/android/server/zgw$cno;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/zgw;->ssp:Lcom/android/server/zgw$cno;

    iget-wide v2, p0, Lcom/android/server/zgw;->ibl:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method J()V
    .locals 4

    const-string v0, "OverHeatingDiagnosis"

    const-string v1, "monitorUpdateLocked()"

    invoke-static {v0, v1}, Lcom/android/server/igw$zta;->zta(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/zgw;->bud:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/zgw;->A()I

    move-result v1

    iget v2, p0, Lcom/android/server/zgw;->ear:I

    if-le v1, v2, :cond_1

    iput v1, p0, Lcom/android/server/zgw;->ear:I

    invoke-static {v1}, Lcom/android/internal/os/ExtProcessCpuTrackerInjector;->startTracer(I)V

    :cond_1
    const-string v1, "start to update process cpu info."

    invoke-static {v0, v1}, Lcom/android/server/igw$zta;->zta(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/zgw;->zgw:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/zgw;->qbh:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/zgw;->h:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/zgw;->H()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/zgw;->ssp:Lcom/android/server/zgw$cno;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/zgw;->ssp:Lcom/android/server/zgw$cno;

    iget-wide v2, p0, Lcom/android/server/zgw;->ibl:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void
.end method

.method K(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "change from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to TOP"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OverHeatingDiagnosis"

    invoke-static {v0, p2}, Lcom/android/server/igw$zta;->zta(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/server/zgw;->b:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/server/zgw;->b:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p2, p0, Lcom/android/server/zgw;->ssp:Lcom/android/server/zgw$cno;

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    iput p1, p2, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/android/server/zgw;->ssp:Lcom/android/server/zgw$cno;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method L()V
    .locals 5

    const-string v0, "OverHeatingDiagnosis"

    const-string v1, "[OnlineConfig] registerOnlineConfig"

    invoke-static {v0, v1}, Lcom/android/server/igw$zta;->igw(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/oneplus/config/ConfigObserver;

    iget-object v2, p0, Lcom/android/server/zgw;->rtg:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/zgw;->ssp:Lcom/android/server/zgw$cno;

    iget-object v4, p0, Lcom/android/server/zgw;->qeg:Lcom/android/server/zgw$ssp;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/zgw;->vdw:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v1}, Lcom/oneplus/config/ConfigObserver;->register()V

    return-void
.end method

.method M(IILjava/lang/String;JILjava/lang/String;IJ)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p6

    move-object/from16 v4, p7

    move-wide/from16 v5, p9

    invoke-direct/range {p0 .. p0}, Lcom/android/server/zgw;->D()I

    move-result v7

    iget-object v8, v0, Lcom/android/server/zgw;->n:Landroid/media/AudioManager;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v8

    iput v9, v0, Lcom/android/server/zgw;->bud:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "reportAbnormalHeating: type="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " reason="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "OverHeatingDiagnosis"

    invoke-static {v10, v9}, Lcom/android/server/igw$zta;->zta(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "background"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v11, ",mSkipUidMap"

    const-string v12, ",currentNow="

    const-string v13, ",currentVolume="

    const-string v14, ",brightness="

    const-string v15, ",temp="

    const-string v4, ",cpu="

    move-object/from16 v16, v10

    const-string v10, "pid="

    if-eqz v9, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/android/server/am/AppRecordManager;->wtn(I)I

    move-result v9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",proc state="

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/zgw;->F0:Landroid/util/ArrayMap;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, v0, Lcom/android/server/zgw;->irq:Lcom/android/server/power/you;

    move/from16 v9, p2

    invoke-virtual {v4, v9, v2, v1}, Lcom/android/server/power/you;->kth(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/zgw;->irq:Lcom/android/server/power/you;

    invoke-virtual {v1}, Lcom/android/server/power/you;->tsu()V

    iget-object v1, v0, Lcom/android/server/zgw;->rtg:Landroid/content/Context;

    const-string v4, "opdiagnose"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/OPDiagnoseManager;

    if-eqz v1, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "writeDiagData: type="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", reason="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v10, v16

    invoke-static {v10, v4}, Lcom/android/server/igw$zta;->zta(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v9, v2}, Landroid/os/OPDiagnoseManager;->writeDiagData(ILjava/lang/String;)Z

    :cond_1
    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/android/server/zgw;->C(Ljava/lang/String;)Lcom/android/server/zgw$kth;

    move-result-object v1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    iget-boolean v10, v1, Lcom/android/server/zgw$kth;->zta:Z

    goto :goto_1

    :cond_2
    move v10, v4

    :goto_1
    if-eqz v1, :cond_3

    iget-boolean v11, v1, Lcom/android/server/zgw$kth;->you:Z

    goto :goto_2

    :cond_3
    move v11, v4

    :goto_2
    if-eqz v1, :cond_4

    iget-boolean v4, v1, Lcom/android/server/zgw$kth;->sis:Z

    :cond_4
    if-eqz v1, :cond_5

    iget-object v1, v1, Lcom/android/server/zgw$kth;->ssp:Ljava/lang/String;

    goto :goto_3

    :cond_5
    const-string v1, "overheat"

    :goto_3
    iget-boolean v12, v0, Lcom/android/server/zgw;->igw:Z

    if-eqz v12, :cond_6

    if-nez v11, :cond_7

    :cond_6
    iget-boolean v11, v0, Lcom/android/server/zgw;->dma:Z

    if-eqz v11, :cond_9

    :cond_7
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "ht"

    invoke-virtual {v11, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    const-string v13, "cl"

    invoke-virtual {v11, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v12, "mt"

    invoke-virtual {v11, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v7, "bn"

    invoke-virtual {v11, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v7, "vo"

    invoke-virtual {v11, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p9 .. p10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const-string v5, "cu"

    invoke-virtual {v11, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/server/zgw;->F0:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "sk"

    invoke-virtual {v11, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v5, "appid"

    const-string v6, "NYNCG4I0TI"

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "hr"

    if-eqz v2, :cond_8

    const-string v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_8
    const-string v6, "NA"

    :goto_4
    invoke-virtual {v11, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v0, Lcom/android/server/zgw;->cno:Lnet/oneplus/odm/OpDeviceManagerInjector;

    if-eqz v5, :cond_9

    iget-object v6, v0, Lcom/android/server/zgw;->rtg:Landroid/content/Context;

    invoke-virtual {v5, v6, v1, v11, v3}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    :cond_9
    iget-boolean v1, v0, Lcom/android/server/zgw;->bio:Z

    if-eqz v1, :cond_a

    if-nez v10, :cond_b

    :cond_a
    iget-boolean v1, v0, Lcom/android/server/zgw;->dma:Z

    if-eqz v1, :cond_c

    :cond_b
    invoke-virtual {v0, v9, v2, v4}, Lcom/android/server/zgw;->d0(ILjava/lang/String;Z)V

    :cond_c
    return-void
.end method

.method public N(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/zgw;->bio:Z

    return-void
.end method

.method public O(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/zgw;->oxb:I

    return-void
.end method

.method public P(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/zgw;->igw:Z

    return-void
.end method

.method public Q(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/zgw;->kth:Z

    return-void
.end method

.method public R(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/zgw;->dma:Z

    return-void
.end method

.method public S(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/zgw;->gwm:I

    return-void
.end method

.method public T(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/zgw;->qbh:J

    return-void
.end method

.method public U(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/zgw;->ugm:I

    return-void
.end method

.method public V(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/zgw;->wtn:Z

    return-void
.end method

.method public W(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/zgw;->gck:Ljava/lang/String;

    return-void
.end method

.method public Y()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/zgw;->dma:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/zgw;->ssp:Lcom/android/server/zgw$cno;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/zgw;->ssp:Lcom/android/server/zgw$cno;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/zgw;->ssp:Lcom/android/server/zgw$cno;

    const-wide/32 v1, 0x2bf20

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void
.end method

.method public Z()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/zgw;->ssp:Lcom/android/server/zgw$cno;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public b0()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/zgw;->ssp:Lcom/android/server/zgw$cno;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public c0(Lorg/json/JSONObject;Ljava/lang/String;Lcom/android/server/zgw$kth;)V
    .locals 8

    const-string p0, "OverHeatingDiagnosis"

    :try_start_0
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "value"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/zgw$kth;->zta(ZZZIILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/server/zgw$kth;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/igw$zta;->zta(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[OnlineConfig] Failed to process onlineconfig! \n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/igw$zta;->igw(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method d0(ILjava/lang/String;Z)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/zgw;->rtg:Landroid/content/Context;

    const-string v1, "dropbox"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/os/DropBoxManager;

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v0, 0x1000

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    new-instance v0, Lcom/android/server/zgw$zta;

    const-string v3, "Overheat dump: overheat"

    move-object v1, v0

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    move v9, p3

    invoke-direct/range {v1 .. v10}, Lcom/android/server/zgw$zta;-><init>(Lcom/android/server/zgw;Ljava/lang/String;Ljava/lang/StringBuilder;ILjava/lang/String;JZLandroid/os/DropBoxManager;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public frontPackageChanged(Ljava/lang/String;IILjava/lang/String;II)V
    .locals 0

    if-eq p2, p5, :cond_0

    invoke-virtual {p0, p2, p5}, Lcom/android/server/zgw;->K(II)V

    :cond_0
    return-void
.end method

.method s(IIIZ)V
    .locals 7

    new-instance v6, Lcom/android/server/zgw$tsu;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p4

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/zgw$tsu;-><init>(Lcom/android/server/zgw;IIZI)V

    iget-object p1, p0, Lcom/android/server/zgw;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Add new record, and total size is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/zgw;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OverHeatingDiagnosis"

    invoke-static {p2, p1}, Lcom/android/server/igw$zta;->zta(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/zgw;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/zgw$tsu;

    invoke-virtual {p1}, Lcom/android/server/zgw$tsu;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/server/igw$zta;->zta(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method t(ILjava/lang/String;JJLjava/lang/String;I)V
    .locals 20

    move-object/from16 v11, p0

    move/from16 v1, p1

    move-object/from16 v0, p2

    move-wide/from16 v4, p3

    move-object/from16 v2, p7

    iget-object v3, v11, Lcom/android/server/zgw;->f:Lcom/android/server/zgw$rtg;

    invoke-virtual {v3}, Lcom/android/server/zgw$rtg;->zta()J

    move-result-wide v6

    iget-object v3, v11, Lcom/android/server/zgw;->o:Landroid/os/BatteryManager;

    const/4 v8, 0x2

    invoke-virtual {v3, v8}, Landroid/os/BatteryManager;->getLongProperty(I)J

    move-result-wide v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "arbitrate: uid="

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " procName="

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " version="

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " cpuUsage="

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " totalCpuUsage="

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v12, p5

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " totalChargeTime="

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " mTopAppList="

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v11, Lcom/android/server/zgw;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " mTopCameraAppList="

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v11, Lcom/android/server/zgw;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " currentNow="

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v12, "OverHeatingDiagnosis"

    invoke-static {v12, v3}, Lcom/android/server/igw$zta;->zta(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v13, v11, Lcom/android/server/zgw;->oxb:I

    int-to-long v13, v13

    cmp-long v13, v4, v13

    const-string v14, "unknown"

    const-string v15, "PhoneCall"

    const-string v8, "camera hardware"

    const/16 v16, 0x1a

    const-string v17, "flashlight"

    const-string v18, "environment"

    if-ltz v13, :cond_e

    const/16 v8, 0x3e8

    if-ne v1, v8, :cond_4

    sget-object v2, Lcom/android/server/zgw;->G0:Landroid/content/pm/PackageManager;

    if-nez v2, :cond_0

    iget-object v2, v11, Lcom/android/server/zgw;->rtg:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sput-object v2, Lcom/android/server/zgw;->G0:Landroid/content/pm/PackageManager;

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mIgnoreInstallRuleForced:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v11, Lcom/android/server/zgw;->ywr:Z

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isDeviceUpgrading:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/android/server/zgw;->G0:Landroid/content/pm/PackageManager;

    invoke-virtual {v8}, Landroid/content/pm/PackageManager;->isDeviceUpgrading()Z

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/android/server/igw$zta;->zta(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/zgw;->G0:Landroid/content/pm/PackageManager;

    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->isDeviceUpgrading()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    iget-wide v4, v11, Lcom/android/server/zgw;->k:J

    sub-long/2addr v13, v4

    const-wide/32 v4, 0x1b7740

    cmp-long v2, v13, v4

    if-gez v2, :cond_1

    const-string v0, "OTA upgrade"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "otaUpgrade"

    goto/16 :goto_2

    :cond_1
    iget-object v2, v11, Lcom/android/server/zgw;->l:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, v11, Lcom/android/server/zgw;->ywr:Z

    if-nez v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INSTALL "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/server/zgw;->l:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " APPS"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "install"

    goto/16 :goto_2

    :cond_2
    sget-boolean v2, Lcom/android/server/pm/OpReserveAppInjector;->runningDexoptState:Z

    if-eqz v2, :cond_3

    const-string v0, "Running dexopt"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "dexopt"

    goto/16 :goto_2

    :cond_3
    const-string v2, "system:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "system"

    goto/16 :goto_2

    :cond_4
    iget-object v4, v11, Lcom/android/server/zgw;->b:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "foreground"

    const-string v8, "fg:"

    if-eqz v4, :cond_5

    :goto_0
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    iget-object v4, v11, Lcom/android/server/zgw;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_0

    :cond_6
    const-string v4, "bg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "background"

    move-object v5, v4

    :goto_1
    iget-object v4, v11, Lcom/android/server/zgw;->c:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, v11, Lcom/android/server/zgw;->c:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":camera"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/android/server/am/AppRecordManager;->ssp(I)I

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "actionFlag:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Lcom/android/server/igw$zta;->zta(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit16 v4, v0, 0x80

    const-string v8, ":"

    if-eqz v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "traffic"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "audio"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "gps"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    if-eqz v2, :cond_b

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    move-object v0, v5

    :goto_2
    iget v2, v11, Lcom/android/server/zgw;->veq:I

    and-int/lit8 v4, v2, 0x8

    if-eqz v4, :cond_c

    const/16 v2, 0x17

    :goto_3
    move-object v8, v0

    const/4 v4, 0x0

    move-object/from16 v19, v3

    move v3, v2

    move-object/from16 v2, v19

    goto/16 :goto_a

    :cond_c
    and-int/lit8 v2, v2, 0x7

    if-eqz v2, :cond_d

    const/16 v2, 0x18

    goto :goto_3

    :cond_d
    const/16 v2, 0x19

    goto :goto_3

    :cond_e
    iget-object v0, v11, Lcom/android/server/zgw;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v11, Lcom/android/server/zgw;->veq:I

    and-int/lit8 v0, v0, 0xf

    if-eqz v0, :cond_f

    const/16 v0, 0x1b

    goto :goto_4

    :cond_f
    const/16 v0, 0x1c

    :goto_4
    move-object v2, v3

    :goto_5
    const/4 v4, 0x0

    move v3, v0

    goto/16 :goto_a

    :cond_10
    iget-object v0, v11, Lcom/android/server/zgw;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, v11, Lcom/android/server/zgw;->rtg:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "flashlight_enabled"

    const/4 v4, 0x0

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_11

    goto/16 :goto_8

    :cond_11
    iget-object v0, v11, Lcom/android/server/zgw;->m:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v4, 0x2

    if-eq v4, v0, :cond_18

    iget-object v0, v11, Lcom/android/server/zgw;->m:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-ne v2, v0, :cond_12

    move-object v2, v3

    const/4 v4, 0x0

    goto/16 :goto_6

    :cond_12
    const-wide/16 v4, 0x0

    cmp-long v0, v9, v4

    if-lez v0, :cond_14

    iget-wide v4, v11, Lcom/android/server/zgw;->vdb:J

    cmp-long v0, v9, v4

    if-gtz v0, :cond_14

    const-string v0, "Environmental cause"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v11, Lcom/android/server/zgw;->veq:I

    and-int/lit8 v0, v0, 0xf

    if-nez v0, :cond_13

    const/16 v0, 0x22

    move-object v2, v3

    move-object/from16 v8, v18

    goto :goto_5

    :cond_13
    move-object v2, v3

    move/from16 v3, v16

    move-object/from16 v8, v18

    const/4 v4, 0x0

    goto/16 :goto_a

    :cond_14
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 p5, v3

    iget-wide v2, v11, Lcom/android/server/zgw;->obl:J

    sub-long/2addr v4, v2

    iget-wide v2, v11, Lcom/android/server/zgw;->bvj:J

    cmp-long v2, v4, v2

    if-gez v2, :cond_15

    const/4 v2, 0x0

    iput v2, v11, Lcom/android/server/zgw;->bud:I

    iget-object v0, v11, Lcom/android/server/zgw;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v11, Lcom/android/server/zgw;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v11, Lcom/android/server/zgw;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v11, Lcom/android/server/zgw;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v11, Lcom/android/server/zgw;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_15
    iget-boolean v2, v11, Lcom/android/server/zgw;->i:Z

    const/4 v4, 0x0

    if-nez v2, :cond_16

    iput v4, v11, Lcom/android/server/zgw;->bud:I

    iget-object v0, v11, Lcom/android/server/zgw;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v11, Lcom/android/server/zgw;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v11, Lcom/android/server/zgw;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v11, Lcom/android/server/zgw;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v11, Lcom/android/server/zgw;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_16
    iget v2, v11, Lcom/android/server/zgw;->veq:I

    and-int/lit8 v2, v2, 0xf

    if-eqz v2, :cond_17

    const/16 v2, 0x21

    move v3, v2

    move-object v8, v14

    move-object/from16 v2, p5

    goto :goto_a

    :cond_17
    move-object/from16 v2, p5

    move-object v8, v14

    move/from16 v3, v16

    goto :goto_a

    :cond_18
    const/4 v4, 0x0

    move-object v2, v3

    :goto_6
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v11, Lcom/android/server/zgw;->veq:I

    and-int/lit8 v3, v3, 0xf

    if-eqz v3, :cond_19

    const/16 v3, 0x1f

    goto :goto_7

    :cond_19
    const/16 v3, 0x20

    :goto_7
    move-object v8, v15

    goto :goto_a

    :cond_1a
    :goto_8
    move-object v2, v3

    const/4 v4, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "flashlight :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x10

    invoke-static {v5}, Lcom/android/server/am/AppRecordManager;->igw(I)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v11, Lcom/android/server/zgw;->veq:I

    and-int/lit8 v3, v3, 0xf

    if-eqz v3, :cond_1b

    const/16 v3, 0x1d

    goto :goto_9

    :cond_1b
    const/16 v3, 0x1e

    :goto_9
    move-object/from16 v8, v17

    :goto_a
    invoke-virtual {v11, v8}, Lcom/android/server/zgw;->C(Ljava/lang/String;)Lcom/android/server/zgw$kth;

    move-result-object v5

    if-nez v5, :cond_1c

    return-void

    :cond_1c
    iget-wide v13, v11, Lcom/android/server/zgw;->hmo:J

    cmp-long v6, v6, v13

    const-string v7, "Critical temp is "

    if-ltz v6, :cond_1d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/server/zgw$kth;->rtg:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Lcom/android/server/igw$zta;->zta(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, v11, Lcom/android/server/zgw;->ear:I

    iget v5, v5, Lcom/android/server/zgw$kth;->rtg:I

    if-lt v6, v5, :cond_1e

    goto :goto_b

    :cond_1d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/server/zgw$kth;->tsu:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Lcom/android/server/igw$zta;->zta(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, v11, Lcom/android/server/zgw;->ear:I

    iget v5, v5, Lcom/android/server/zgw$kth;->tsu:I

    if-lt v6, v5, :cond_1e

    :goto_b
    const/4 v0, 0x1

    goto :goto_c

    :cond_1e
    move v0, v4

    :goto_c
    if-nez v0, :cond_20

    iget-boolean v0, v11, Lcom/android/server/zgw;->dma:Z

    if-eqz v0, :cond_1f

    goto :goto_d

    :cond_1f
    move v12, v4

    goto :goto_e

    :cond_20
    :goto_d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, v11, Lcom/android/server/zgw;->ear:I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v3

    move-object v3, v5

    move v12, v4

    move-wide/from16 v4, p3

    move-object v7, v8

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/zgw;->M(IILjava/lang/String;JILjava/lang/String;IJ)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, v11, Lcom/android/server/zgw;->obl:J

    :goto_e
    iget-object v0, v11, Lcom/android/server/zgw;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v11, Lcom/android/server/zgw;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v11, Lcom/android/server/zgw;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v11, Lcom/android/server/zgw;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v11, Lcom/android/server/zgw;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput v12, v11, Lcom/android/server/zgw;->bud:I

    return-void
.end method

.method u(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_0
    const-string p0, "ISSUE_HEAT_CAMERA"

    return-object p0

    :pswitch_1
    const-string p0, "ISSUE_HEAT_CAMERA_WHEN_CHARGE"

    return-object p0

    :pswitch_2
    const-string p0, "ISSUE_HEAT_UNKNOWN_REASON"

    return-object p0

    :pswitch_3
    const-string p0, "ISSUE_HEAT_CPU_LOAD"

    return-object p0

    :pswitch_4
    const-string p0, "ISSUE_HEAT_PLAY_WHEN_CHARGE"

    return-object p0

    :pswitch_5
    const-string p0, "ISSUE_HEAT_PLAY_WHEN_DASH"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method v(Ljava/io/PrintWriter;)V
    .locals 4

    const-string v0, "**** OverHeatingDiagnosis ****"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/zgw;->kth:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEnabledBugreport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/zgw;->bio:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEnabledMDM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/zgw;->igw:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEnabledOnlineConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/zgw;->wtn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mThermalZonePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/zgw;->gck:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mThermalZonePrecision="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/zgw;->fto:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMonitorForced="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/zgw;->dma:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMonitorNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/zgw;->gwm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMonitorPeriod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/zgw;->qbh:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTriggerPeriod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/zgw;->oif:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMinDetectPeriod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/zgw;->bvj:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMonitorFrequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/zgw;->ibl:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMonitorTemp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/zgw;->ugm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNormalCurrent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/zgw;->vdb:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCriticalCpu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/zgw;->oxb:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCriticalTotalCpu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/zgw;->cjf:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCriticalForeground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/zgw;->ire:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "systemRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/zgw;->p:Lcom/android/server/zgw$kth;

    invoke-virtual {v1}, Lcom/android/server/zgw$kth;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "otaUpgradeRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/zgw;->q:Lcom/android/server/zgw$kth;

    invoke-virtual {v1}, Lcom/android/server/zgw$kth;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "installRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/zgw;->r:Lcom/android/server/zgw$kth;

    invoke-virtual {v1}, Lcom/android/server/zgw$kth;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dexoptRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/zgw;->s:Lcom/android/server/zgw$kth;

    invoke-virtual {v1}, Lcom/android/server/zgw$kth;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fgRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/zgw;->t:Lcom/android/server/zgw$kth;

    invoke-virtual {v1}, Lcom/android/server/zgw$kth;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bgRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/zgw;->u:Lcom/android/server/zgw$kth;

    invoke-virtual {v1}, Lcom/android/server/zgw$kth;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknownRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/zgw;->v:Lcom/android/server/zgw$kth;

    invoke-virtual {v1}, Lcom/android/server/zgw$kth;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "totalCpuLoadRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/zgw;->w:Lcom/android/server/zgw$kth;

    invoke-virtual {v1}, Lcom/android/server/zgw$kth;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cameraHardwareRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/zgw;->x:Lcom/android/server/zgw$kth;

    invoke-virtual {v1}, Lcom/android/server/zgw$kth;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "flashlightRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/zgw;->y:Lcom/android/server/zgw$kth;

    invoke-virtual {v1}, Lcom/android/server/zgw$kth;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "phoneCallRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/zgw;->z:Lcom/android/server/zgw$kth;

    invoke-virtual {v1}, Lcom/android/server/zgw$kth;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "envRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/zgw;->A:Lcom/android/server/zgw$kth;

    invoke-virtual {v1}, Lcom/android/server/zgw$kth;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "BatteryRecords:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/zgw;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/zgw;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/zgw$tsu;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/zgw$tsu;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public w()Ljava/lang/StringBuilder;
    .locals 12

    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v4, "ro.build.display.id"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ro.build.fingerprint"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ro.build.version.sdk"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ro.product.model"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "persist.sys.timezone"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "========================================================\n"

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "== dumpstate: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Build: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Build fingerprint: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x27

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "DeviceID: null\n"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ro.build.version.sdk]: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ro.product.model]: ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[persist.sys.timezone]: ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-------------------------------------------------------------------------------\n"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/server/am/BatteryOutlierInjector;->getPidMap(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "DUMP OF SERVICE batterystats:\n"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/server/am/BatteryOutlierInjector;->dumpBatteryStats(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "== Checkins\n"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "------ CHECKIN BATTERYSTATS (dumpsys -t 30 batterystats -c) ------\n"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-c"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/server/am/BatteryOutlierInjector;->dumpBatteryStats(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    long-to-double v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--------- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "s was the duration of dumpLightBugreport"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public x()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/zgw;->ssp:Lcom/android/server/zgw$cno;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/zgw;->ssp:Lcom/android/server/zgw$cno;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public y(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/zgw;->d:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/zgw;->d:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method z(JJ)Ljava/lang/String;
    .locals 5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    const-wide/16 p3, 0x1

    :cond_0
    const-wide/16 v2, 0x3e8

    mul-long/2addr p1, v2

    div-long/2addr p1, p3

    const-wide/16 p3, 0xa

    div-long v2, p1, p3

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    cmp-long v4, v2, p3

    if-gez v4, :cond_1

    mul-long/2addr v2, p3

    sub-long/2addr p1, v2

    cmp-long p3, p1, v0

    if-eqz p3, :cond_1

    const/16 p3, 0x2e

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
