.class public Lcom/oneplus/server/hypnus/Hypnus;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/server/hypnus/Hypnus$ThermalStatus;
    }
.end annotation


# static fields
.field public static final A:I = 0xf

.field public static final B:I = 0x10

.field public static final C:I = 0x11

.field public static final D:I = 0x12

.field public static final E:I = 0x13

.field public static final F:I = 0x14

.field public static final G:I = 0x15

.field private static H:Z = true

.field public static final a:I = 0x16

.field public static final b:I = 0x1a

.field public static final bio:I = 0x64

.field public static final bud:I = 0x10

.field public static final bvj:I = 0x186a0

.field public static final c:I = 0x1b

.field public static final cgv:I = 0xe

.field public static final cjf:I = 0x7

.field public static final cno:I = 0x96

.field public static final d:I = 0x1d

.field public static final dma:I = 0x927c0

.field public static final e:I = 0x21

.field public static final ear:I = 0x8

.field public static final f:I = 0x22

.field public static final fto:I = 0xb

.field public static final g:I = 0x23

.field public static final gck:I = 0x7530

.field public static final gwm:I = 0x1

.field public static final h:I = 0x24

.field public static final hmo:I = 0xa

.field public static final i:I = 0x26

.field public static final ibl:I = 0x0

.field public static final igw:I = 0x12c

.field public static final ire:I = 0x9

.field public static final irq:I = 0x12

.field public static final ivd:I = 0x15

.field public static final j:I = 0x27

.field public static final k:I = 0x63

.field public static final kth:I = 0x258

.field public static final l:I = 0x0

.field public static final les:I = 0x11

.field public static final lqr:I = 0xc

.field public static final m:I = 0x1

.field public static final n:I = 0x2

.field public static final o:I = 0x3

.field public static final obl:I = 0x5

.field public static final oif:I = 0x32

.field public static final oxb:I = 0x6

.field public static final p:I = 0x4

.field public static final q:I = 0x5

.field public static final qbh:I = 0xc7

.field public static final qeg:I = 0x14

.field public static final r:I = 0x6

.field private static rtg:Lcom/oneplus/server/hypnus/Hypnus; = null

.field public static final s:I = 0x7

.field private static final sis:Ljava/lang/String; = "Hypnus"

.field public static final ssp:I = 0x7d0

.field public static final t:I = 0x8

.field public static final tsu:Ljava/lang/String; = "M08"

.field public static final u:I = 0x9

.field public static final ugm:I = 0x2

.field public static final v:I = 0xa

.field public static final vdb:I = 0x3

.field public static final vdw:I = 0x13

.field public static final veq:I = 0xd

.field public static final vju:I = 0xf

.field public static final w:I = 0xb

.field public static final wtn:I = 0x1f4

.field public static final x:I = 0xc

.field public static final y:I = 0xd

.field public static final ywr:I = 0x4e20

.field public static final z:I = 0xe

.field public static final zgw:I = 0x4


# instance fields
.field private you:Z

.field private zta:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/server/hypnus/Hypnus;->zta:Z

    iput-boolean v0, p0, Lcom/oneplus/server/hypnus/Hypnus;->you:Z

    const-string v1, "persist.debug.hypnus"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/server/hypnus/Hypnus;->zta:Z

    :cond_0
    const-string v1, "persist.sys.hypnus.daemon.enable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/server/hypnus/Hypnus;->you:Z

    return-void
.end method

.method public static declared-synchronized zta()Lcom/oneplus/server/hypnus/Hypnus;
    .locals 3

    const-class v0, Lcom/oneplus/server/hypnus/Hypnus;

    monitor-enter v0

    :try_start_0
    const-string v1, "Hypnus"

    const-string v2, "getHypnus"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/oneplus/server/hypnus/Hypnus;->rtg:Lcom/oneplus/server/hypnus/Hypnus;

    if-nez v1, :cond_0

    new-instance v1, Lcom/oneplus/server/hypnus/Hypnus;

    invoke-direct {v1}, Lcom/oneplus/server/hypnus/Hypnus;-><init>()V

    sput-object v1, Lcom/oneplus/server/hypnus/Hypnus;->rtg:Lcom/oneplus/server/hypnus/Hypnus;

    :cond_0
    sget-object v1, Lcom/oneplus/server/hypnus/Hypnus;->rtg:Lcom/oneplus/server/hypnus/Hypnus;

    if-nez v1, :cond_1

    const-string v1, "Hypnus"

    const-string v2, "Hypnus is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v1, Lcom/oneplus/server/hypnus/Hypnus;->rtg:Lcom/oneplus/server/hypnus/Hypnus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public rtg()Z
    .locals 0

    sget-boolean p0, Lcom/oneplus/server/hypnus/Hypnus;->H:Z

    return p0
.end method

.method public sis(ILjava/lang/String;)V
    .locals 1

    iget-boolean p0, p0, Lcom/oneplus/server/hypnus/Hypnus;->you:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hypnusSetPackage: pid="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", name="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Hypnus"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/oneplus/server/hypnus/zta;->sis()Lcom/oneplus/server/hypnus/zta;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/server/hypnus/zta;->ssp(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public tsu(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    iget-boolean p0, p0, Lcom/oneplus/server/hypnus/Hypnus;->you:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hypnusSetScene: uid="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", pid="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", name="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", activity="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Hypnus"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/oneplus/server/hypnus/zta;->sis()Lcom/oneplus/server/hypnus/zta;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oneplus/server/hypnus/zta;->cno(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public you(I)V
    .locals 1

    iget-boolean p0, p0, Lcom/oneplus/server/hypnus/Hypnus;->you:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hypnusScreenStatus: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Hypnus"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/oneplus/server/hypnus/zta;->sis()Lcom/oneplus/server/hypnus/zta;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oneplus/server/hypnus/zta;->rtg(I)V

    :cond_0
    return-void
.end method
