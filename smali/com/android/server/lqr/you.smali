.class public Lcom/android/server/lqr/you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/display/IOpDisplayPowerController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/lqr/you$cno;,
        Lcom/android/server/lqr/you$kth;
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/String; = "OpBacklightManager"

.field private static c:Z = true

.field private static d:Z = true

.field private static e:Z = false

.field private static f:Z = false

.field private static final g:Ljava/lang/String; = "OpBacklightControl"

.field public static final h:I = -0x63

.field public static i:Lcom/android/server/lqr/you;


# instance fields
.field private a:Landroid/content/BroadcastReceiver;

.field private final bio:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bud:Z

.field private bvj:Z

.field private cgv:J

.field private cjf:Z

.field private cno:Lcom/android/server/lqr/zta;

.field private dma:F

.field private ear:Z

.field private fto:I

.field private gck:F

.field private gwm:J

.field private hmo:F

.field private ibl:Z

.field private final igw:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ire:F

.field private irq:Lcom/android/server/wm/OpWindowManagerService$zta;

.field private ivd:Ljava/lang/Runnable;

.field private final kth:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/lqr/zta;",
            ">;"
        }
    .end annotation
.end field

.field private les:Lcom/android/server/OnePlusUtil$zta$you;

.field private lqr:I

.field private obl:Z

.field private oif:Z

.field private oxb:Z

.field private qbh:Ljava/lang/String;

.field private qeg:Ljava/lang/Runnable;

.field private rtg:Lcom/android/server/wm/OpScreenModeService;

.field private sis:Landroid/content/Context;

.field private ssp:Ljava/lang/Object;

.field private tsu:Lcom/android/server/display/IOpBacklightController;

.field private ugm:F

.field private vdb:F

.field private vdw:Ljava/lang/Runnable;

.field private veq:I

.field private vju:I

.field private final wtn:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/lqr/zta$zta;",
            ">;>;"
        }
    .end annotation
.end field

.field private you:Lcom/oneplus/config/ConfigObserver;

.field private ywr:F

.field private zgw:I

.field private zta:Lcom/android/server/lqr/you$kth;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/lqr/you;->e:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/lqr/you;->f:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/lqr/you;->i:Lcom/android/server/lqr/you;

    return-void
.end method

.method private constructor <init>()V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/lqr/you;->sis:Landroid/content/Context;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/lqr/you;->ssp:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/lqr/zta;

    invoke-direct {v0}, Lcom/android/server/lqr/zta;-><init>()V

    iput-object v0, p0, Lcom/android/server/lqr/you;->cno:Lcom/android/server/lqr/zta;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/lqr/you;->kth:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/lqr/you;->bio:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/lqr/you;->igw:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/lqr/you;->wtn:Ljava/util/HashMap;

    const/high16 v0, 0x42f00000    # 120.0f

    iput v0, p0, Lcom/android/server/lqr/you;->gck:F

    const v0, 0x3f7d70a4    # 0.99f

    iput v0, p0, Lcom/android/server/lqr/you;->dma:F

    const/high16 v0, 0x42a00000    # 80.0f

    iput v0, p0, Lcom/android/server/lqr/you;->ywr:F

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/lqr/you;->qbh:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0xed

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/lqr/you;->oif:Z

    iput-boolean v3, p0, Lcom/android/server/lqr/you;->bvj:Z

    iput-boolean v3, p0, Lcom/android/server/lqr/you;->ibl:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/lqr/you;->gwm:J

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lcom/android/server/lqr/you;->ugm:F

    const/high16 v5, 0x43c80000    # 400.0f

    iput v5, p0, Lcom/android/server/lqr/you;->vdb:F

    const v6, 0x75300

    iput v6, p0, Lcom/android/server/lqr/you;->zgw:I

    iput-boolean v0, p0, Lcom/android/server/lqr/you;->obl:Z

    iput-boolean v3, p0, Lcom/android/server/lqr/you;->oxb:Z

    iput-boolean v3, p0, Lcom/android/server/lqr/you;->cjf:Z

    iput-boolean v3, p0, Lcom/android/server/lqr/you;->ear:Z

    iput v4, p0, Lcom/android/server/lqr/you;->ire:F

    iput v5, p0, Lcom/android/server/lqr/you;->hmo:F

    iput v3, p0, Lcom/android/server/lqr/you;->fto:I

    const/16 v0, 0x190

    iput v0, p0, Lcom/android/server/lqr/you;->lqr:I

    const/16 v0, 0x17c

    iput v0, p0, Lcom/android/server/lqr/you;->veq:I

    iput-wide v1, p0, Lcom/android/server/lqr/you;->cgv:J

    const/16 v0, 0x3a98

    iput v0, p0, Lcom/android/server/lqr/you;->vju:I

    iput-boolean v3, p0, Lcom/android/server/lqr/you;->bud:Z

    new-instance v0, Lcom/android/server/lqr/you$zta;

    invoke-direct {v0, p0}, Lcom/android/server/lqr/you$zta;-><init>(Lcom/android/server/lqr/you;)V

    iput-object v0, p0, Lcom/android/server/lqr/you;->irq:Lcom/android/server/wm/OpWindowManagerService$zta;

    new-instance v0, Lcom/android/server/lqr/you$you;

    invoke-direct {v0, p0}, Lcom/android/server/lqr/you$you;-><init>(Lcom/android/server/lqr/you;)V

    iput-object v0, p0, Lcom/android/server/lqr/you;->vdw:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/lqr/you$sis;

    invoke-direct {v0, p0}, Lcom/android/server/lqr/you$sis;-><init>(Lcom/android/server/lqr/you;)V

    iput-object v0, p0, Lcom/android/server/lqr/you;->qeg:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/lqr/you$tsu;

    invoke-direct {v0, p0}, Lcom/android/server/lqr/you$tsu;-><init>(Lcom/android/server/lqr/you;)V

    iput-object v0, p0, Lcom/android/server/lqr/you;->ivd:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/lqr/you$rtg;

    invoke-direct {v0, p0}, Lcom/android/server/lqr/you$rtg;-><init>(Lcom/android/server/lqr/you;)V

    iput-object v0, p0, Lcom/android/server/lqr/you;->a:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/lqr/you$kth;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/lqr/you$kth;-><init>(Lcom/android/server/lqr/you;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/lqr/you;->zta:Lcom/android/server/lqr/you$kth;

    new-instance v0, Lcom/android/server/lqr/zta$zta;

    const-string v3, "default"

    const-wide v4, 0x3fed70a3d70a3d71L    # 0.92

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const/16 v8, 0x2710

    const/16 v9, 0x2710

    const/4 v10, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/android/server/lqr/zta$zta;-><init>(Ljava/lang/String;DDIII)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/lqr/you;->wtn:Ljava/util/HashMap;

    const-string v2, "default"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/server/lqr/zta$zta;

    const-string v4, "temp"

    const-wide v5, 0x3feb333333333333L    # 0.85

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const/16 v9, 0x7530

    const/16 v10, 0x7530

    const/4 v11, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Lcom/android/server/lqr/zta$zta;-><init>(Ljava/lang/String;DDIII)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/lqr/you;->wtn:Ljava/util/HashMap;

    const-string v2, "temp"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/server/lqr/zta$zta;

    const-string v4, "wireless"

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Lcom/android/server/lqr/zta$zta;-><init>(Ljava/lang/String;DDIII)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/lqr/you;->wtn:Ljava/util/HashMap;

    const-string v2, "wireless"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/server/lqr/zta$zta;

    const-string v4, "game"

    const-wide v5, 0x3fe999999999999aL    # 0.8

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Lcom/android/server/lqr/zta$zta;-><init>(Ljava/lang/String;DDIII)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/lqr/you;->wtn:Ljava/util/HashMap;

    const-string v0, "game"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private A(Z)V
    .locals 9

    iget-boolean v0, p0, Lcom/android/server/lqr/you;->oif:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/lqr/you;->ssp:Ljava/lang/Object;

    monitor-enter v0

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_4

    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/lqr/you;->ibl:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1

    iput-boolean v4, p0, Lcom/android/server/lqr/you;->ibl:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/lqr/you;->gwm:J

    goto/16 :goto_2

    :cond_1
    iget-boolean v3, p0, Lcom/android/server/lqr/you;->bvj:Z

    if-nez v3, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/server/lqr/you;->gwm:J

    sub-long/2addr v5, v7

    iget v3, p0, Lcom/android/server/lqr/you;->zgw:I

    int-to-long v7, v3

    cmp-long v3, v5, v7

    if-ltz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wireless-reduce "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mWirelessTriggerTime="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/lqr/you;->gwm:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", inTemp="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/server/lqr/you;->oxb:Z

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/lqr/you;->j(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/lqr/you;->oxb:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/server/lqr/you;->igw:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/android/server/lqr/you;->qbh:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    iput-boolean v4, p0, Lcom/android/server/lqr/you;->bvj:Z

    iget-object p1, p0, Lcom/android/server/lqr/you;->zta:Lcom/android/server/lqr/you$kth;

    iget-object p0, p0, Lcom/android/server/lqr/you;->qeg:Ljava/lang/Runnable;

    :goto_0
    invoke-virtual {p1, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :cond_4
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/lqr/you;->ibl:Z

    iget-boolean v3, p0, Lcom/android/server/lqr/you;->bvj:Z

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wireless-reduce resume, inTemp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/lqr/you;->oxb:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/lqr/you;->j(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/server/lqr/you;->bvj:Z

    iput-wide v1, p0, Lcom/android/server/lqr/you;->gwm:J

    iget-boolean p1, p0, Lcom/android/server/lqr/you;->oxb:Z

    if-eqz p1, :cond_5

    monitor-exit v0

    return-void

    :cond_5
    iget-object p1, p0, Lcom/android/server/lqr/you;->zta:Lcom/android/server/lqr/you$kth;

    iget-object p0, p0, Lcom/android/server/lqr/you;->qeg:Ljava/lang/Runnable;

    goto :goto_0

    :cond_6
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private a(Lcom/android/server/lqr/zta;)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/lqr/you;->wtn:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/lqr/you;->wtn:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/server/lqr/zta;->sis()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

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

.method private b(Lcom/android/server/lqr/zta;)Lcom/android/server/lqr/zta$zta;
    .locals 4

    iget-object v0, p0, Lcom/android/server/lqr/you;->wtn:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/lqr/you;->wtn:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/server/lqr/zta;->sis()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/lqr/zta;->zta()I

    move-result p1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p1, v3, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception for no next param: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/lqr/you;->cno:Lcom/android/server/lqr/zta;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/lqr/you;->k(Ljava/lang/String;)V

    monitor-exit v0

    return-object v2

    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/lqr/zta$zta;

    monitor-exit v0

    return-object p0

    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic bio(Lcom/android/server/lqr/you;)F
    .locals 0

    iget p0, p0, Lcom/android/server/lqr/you;->dma:F

    return p0
.end method

.method private bud()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/lqr/you;->cno:Lcom/android/server/lqr/zta;

    invoke-direct {p0, v0}, Lcom/android/server/lqr/you;->b(Lcom/android/server/lqr/zta;)Lcom/android/server/lqr/zta$zta;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAnimateDurationLocked is null: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/lqr/you;->cno:Lcom/android/server/lqr/zta;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/lqr/you;->k(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/lqr/zta$zta;->sis()I

    move-result p0

    return p0
.end method

.method static synthetic bvj(Lcom/android/server/lqr/you;)F
    .locals 0

    iget p0, p0, Lcom/android/server/lqr/you;->ywr:F

    return p0
.end method

.method private c(Lcom/android/server/lqr/zta;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/lqr/you;->cno:Lcom/android/server/lqr/zta;

    invoke-virtual {v0}, Lcom/android/server/lqr/zta;->you()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/lqr/you;->cno:Lcom/android/server/lqr/zta;

    invoke-direct {p0, v0}, Lcom/android/server/lqr/you;->b(Lcom/android/server/lqr/zta;)Lcom/android/server/lqr/zta$zta;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/android/server/lqr/you;->vju(Lcom/android/server/lqr/zta;Lcom/android/server/lqr/zta$zta;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/lqr/zta;->cno(I)I

    :cond_0
    iput-object p1, p0, Lcom/android/server/lqr/you;->cno:Lcom/android/server/lqr/zta;

    return-void
.end method

.method private cgv()V
    .locals 8

    const-string v0, "exit reduce..."

    invoke-static {v0}, Lcom/android/server/lqr/you;->j(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/lqr/you;->cno:Lcom/android/server/lqr/zta;

    invoke-direct {p0, v0}, Lcom/android/server/lqr/you;->b(Lcom/android/server/lqr/zta;)Lcom/android/server/lqr/zta$zta;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getParamLocked is null, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/lqr/you;->cno:Lcom/android/server/lqr/zta;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/lqr/you;->k(Ljava/lang/String;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/lqr/you;->ire:F

    iget v1, p0, Lcom/android/server/lqr/you;->hmo:F

    iget-object v2, p0, Lcom/android/server/lqr/you;->cno:Lcom/android/server/lqr/zta;

    invoke-virtual {v2}, Lcom/android/server/lqr/zta;->tsu()Ljava/lang/String;

    move-result-object v2

    const-string v3, "special_wireless"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v0, p0, Lcom/android/server/lqr/you;->ugm:F

    iget v1, p0, Lcom/android/server/lqr/you;->vdb:F

    :cond_1
    move v6, v0

    move v5, v1

    iget-object v2, p0, Lcom/android/server/lqr/you;->tsu:Lcom/android/server/display/IOpBacklightController;

    if-nez v2, :cond_2

    return-void

    :cond_2
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    iget v7, p0, Lcom/android/server/lqr/you;->ywr:F

    invoke-interface/range {v2 .. v7}, Lcom/android/server/display/IOpBacklightController;->animateScreenBrightness(DFFF)V

    return-void
.end method

.method static synthetic cjf(Lcom/android/server/lqr/you;)Lcom/android/server/lqr/zta;
    .locals 0

    iget-object p0, p0, Lcom/android/server/lqr/you;->cno:Lcom/android/server/lqr/zta;

    return-object p0
.end method

.method static synthetic cno(Lcom/android/server/lqr/you;Lcom/android/server/lqr/zta;)Lcom/android/server/lqr/zta$zta;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/lqr/you;->b(Lcom/android/server/lqr/zta;)Lcom/android/server/lqr/zta$zta;

    move-result-object p0

    return-object p0
.end method

.method private d(I)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleUsePccore: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/lqr/you;->k(Ljava/lang/String;)V

    const/4 p0, 0x1

    if-lt p1, p0, :cond_0

    invoke-static {}, Lcom/android/server/wm/OnePlusPerfManager;->getInstance()Lcom/android/server/wm/OnePlusPerfManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/OnePlusPerfManager;->acquirePccore()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/server/wm/OnePlusPerfManager;->getInstance()Lcom/android/server/wm/OnePlusPerfManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/OnePlusPerfManager;->releasePccore()V

    :goto_0
    return-void
.end method

.method static synthetic dma(Lcom/android/server/lqr/you;)F
    .locals 0

    iget p0, p0, Lcom/android/server/lqr/you;->ugm:F

    return p0
.end method

.method static synthetic ear(Lcom/android/server/lqr/you;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/lqr/you;->r()V

    return-void
.end method

.method private fto(Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/lqr/you;->i(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/lqr/you;->cno:Lcom/android/server/lqr/zta;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/android/server/lqr/zta;->igw(I)V

    iget-object p1, p0, Lcom/android/server/lqr/you;->zta:Lcom/android/server/lqr/you$kth;

    iget-object p2, p0, Lcom/android/server/lqr/you;->ivd:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/lqr/you;->cno:Lcom/android/server/lqr/zta;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/server/lqr/zta;->igw(I)V

    iget-object p1, p0, Lcom/android/server/lqr/you;->zta:Lcom/android/server/lqr/you$kth;

    iget-object p2, p0, Lcom/android/server/lqr/you;->ivd:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    iget-object p1, p0, Lcom/android/server/lqr/you;->zta:Lcom/android/server/lqr/you$kth;

    iget-object p2, p0, Lcom/android/server/lqr/you;->ivd:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iget-object p1, p0, Lcom/android/server/lqr/you;->zta:Lcom/android/server/lqr/you$kth;

    iget-object p2, p0, Lcom/android/server/lqr/you;->ivd:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/server/lqr/you;->irq()I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic gck(Lcom/android/server/lqr/you;)F
    .locals 0

    iget p0, p0, Lcom/android/server/lqr/you;->hmo:F

    return p0
.end method

.method static synthetic gwm(Lcom/android/server/lqr/you;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/server/lqr/you;->vdw:Ljava/lang/Runnable;

    return-object p0
.end method

.method private h(Lcom/android/server/lqr/zta;)Z
    .locals 2

    iget-object p0, p0, Lcom/android/server/lqr/you;->rtg:Lcom/android/server/wm/OpScreenModeService;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/lqr/zta;->tsu()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/OpScreenModeService;->getRawRefreshRate(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    const/16 v1, -0x63

    if-ne p0, v1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/lqr/zta;->rtg()I

    move-result p0

    :cond_1
    const/4 p1, 0x1

    if-ne p0, p1, :cond_2

    move v0, p1

    :cond_2
    return v0
.end method

.method static synthetic hmo(Lcom/android/server/lqr/you;Lcom/android/server/lqr/zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/lqr/you;->x(Lcom/android/server/lqr/zta;)V

    return-void
.end method

.method private i(Ljava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/lqr/you;->rtg:Lcom/android/server/wm/OpScreenModeService;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/OpScreenModeService;->getRawRefreshRate(Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v0, p1

    :cond_0
    return v0
.end method

.method static synthetic ibl(Lcom/android/server/lqr/you;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/server/lqr/you;->qeg()I

    move-result p0

    return p0
.end method

.method static synthetic igw(Lcom/android/server/lqr/you;)F
    .locals 0

    iget p0, p0, Lcom/android/server/lqr/you;->gck:F

    return p0
.end method

.method static synthetic ire(Lcom/android/server/lqr/you;Ljava/lang/String;)Lcom/android/server/lqr/zta;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/lqr/you;->les(Ljava/lang/String;)Lcom/android/server/lqr/zta;

    move-result-object p0

    return-object p0
.end method

.method private irq()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/lqr/you;->cno:Lcom/android/server/lqr/zta;

    invoke-direct {p0, v0}, Lcom/android/server/lqr/you;->b(Lcom/android/server/lqr/zta;)Lcom/android/server/lqr/zta$zta;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentDelayMillisecodLocked is null: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/lqr/you;->cno:Lcom/android/server/lqr/zta;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/lqr/you;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/lqr/zta$zta;->you()I

    move-result p0

    return p0
.end method

.method public static declared-synchronized ivd()Lcom/android/server/lqr/you;
    .locals 2

    const-class v0, Lcom/android/server/lqr/you;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/lqr/you;->i:Lcom/android/server/lqr/you;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/lqr/you;

    invoke-direct {v1}, Lcom/android/server/lqr/you;-><init>()V

    sput-object v1, Lcom/android/server/lqr/you;->i:Lcom/android/server/lqr/you;

    :cond_0
    sget-object v1, Lcom/android/server/lqr/you;->i:Lcom/android/server/lqr/you;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static j(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/lqr/you;->f:Z

    if-eqz v0, :cond_0

    const-string v0, "OpBacklightManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static k(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/lqr/you;->e:Z

    if-eqz v0, :cond_0

    const-string v0, "OpBacklightManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic kth(Lcom/android/server/lqr/you;)Lcom/android/server/display/IOpBacklightController;
    .locals 0

    iget-object p0, p0, Lcom/android/server/lqr/you;->tsu:Lcom/android/server/display/IOpBacklightController;

    return-object p0
.end method

.method private l(Ljava/io/PrintWriter;)V
    .locals 1

    const-string p0, "********************** Help begin:**********************"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "1. dump all info"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "cmd: dumpsys display opbacklight dump"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "----------------------------------"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "2. feature switch"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "cmd: dumpsys display opbacklight enable 0/1"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "cmd: dumpsys display opbacklight enable_common 0/1"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "cmd: dumpsys display opbacklight debug 0/1"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "3. add/remove package"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "cmd: dumpsys display opbacklight add/remove PKGNAME LEVEL TYPE"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "4. add/remove black package"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "cmd: dumpsys display opbacklight add/remove black PKGNAME"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "5. add level item(index is the position of this item)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "cmd: dumpsys display opbacklight add LEVEL DEC INC IN OUT DELAY INDEX"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "6. remove level\'s all items"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "cmd: dumpsys display opbacklight level remove LEVEL"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "********************** Help end.  **********************"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private les(Ljava/lang/String;)Lcom/android/server/lqr/zta;
    .locals 4

    iget-object v0, p0, Lcom/android/server/lqr/you;->bio:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/lqr/you;->bio:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/android/server/lqr/you;->kth:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_1
    iget-object p0, p0, Lcom/android/server/lqr/you;->kth:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/lqr/zta;

    invoke-virtual {v0}, Lcom/android/server/lqr/zta;->tsu()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit v1

    return-object v0

    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string p0, "special_batterytemp"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x4

    if-eqz p0, :cond_3

    new-instance p0, Lcom/android/server/lqr/zta;

    const-string v1, "temp"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/lqr/zta;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object p0

    :cond_3
    const-string p0, "special_wireless"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance p0, Lcom/android/server/lqr/zta;

    const-string v1, "wireless"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/lqr/zta;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object p0

    :cond_4
    const-string p0, "special_game"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    new-instance p0, Lcom/android/server/lqr/zta;

    const-string v1, "game"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/lqr/zta;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object p0

    :cond_5
    sget-boolean p0, Lcom/android/server/lqr/you;->d:Z

    if-eqz p0, :cond_7

    invoke-static {p1}, Lcom/android/server/am/AppRecordManager;->ywr(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/android/server/am/AppRecordManager;->gwm(I)Z

    move-result p0

    if-nez p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is system app!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/lqr/you;->j(Ljava/lang/String;)V

    return-object v2

    :cond_6
    new-instance p0, Lcom/android/server/lqr/zta;

    const/4 v0, 0x0

    const-string v1, "default"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/lqr/zta;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object p0

    :cond_7
    return-object v2

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method private m(Lorg/json/JSONArray;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resolvePerfConfigFromJSON "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/lqr/you;->k(Ljava/lang/String;)V

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1a

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "list"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v6, "value"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_1

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "pkg"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "type"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const-string v11, "level"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v11, Lcom/android/server/lqr/zta;

    invoke-direct {v11, v9, v10, v8}, Lcom/android/server/lqr/zta;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    iget-object v6, v0, Lcom/android/server/lqr/you;->kth:Ljava/util/ArrayList;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v7, v0, Lcom/android/server/lqr/you;->kth:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-object v7, v0, Lcom/android/server/lqr/you;->kth:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v6

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :cond_2
    :goto_2
    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "black"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    const-string v6, "value"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_3

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    iget-object v6, v0, Lcom/android/server/lqr/you;->bio:Ljava/util/HashSet;

    monitor-enter v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v7, v0, Lcom/android/server/lqr/you;->bio:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    iget-object v7, v0, Lcom/android/server/lqr/you;->bio:Ljava/util/HashSet;

    invoke-virtual {v7, v5}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    monitor-exit v6

    goto :goto_4

    :catchall_1
    move-exception v0

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    :cond_4
    :goto_4
    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "white"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    const-string v6, "value"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const/4 v7, 0x0

    :goto_5
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_5

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_5
    iget-object v6, v0, Lcom/android/server/lqr/you;->igw:Ljava/util/HashSet;

    monitor-enter v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-object v7, v0, Lcom/android/server/lqr/you;->igw:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    iget-object v7, v0, Lcom/android/server/lqr/you;->igw:Ljava/util/HashSet;

    invoke-virtual {v7, v5}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    monitor-exit v6

    goto :goto_6

    :catchall_2
    move-exception v0

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v0

    :cond_6
    :goto_6
    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "param"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "value"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const/4 v7, 0x0

    :goto_7
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_9

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "level"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "item"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    const/4 v15, 0x0

    :goto_8
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v15, v11, :cond_7

    invoke-virtual {v9, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "dec"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    const-string v12, "inc"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    const-string v12, "in"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    const-string v12, "out"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    const-string v12, "delay"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    new-instance v12, Lcom/android/server/lqr/zta$zta;

    move-object v11, v12

    move-object v2, v12

    move-object v12, v10

    move/from16 v21, v15

    move-wide/from16 v15, v16

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    invoke-direct/range {v11 .. v19}, Lcom/android/server/lqr/zta$zta;-><init>(Ljava/lang/String;DDIII)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v21, 0x1

    goto :goto_8

    :cond_7
    if-eqz v10, :cond_8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    invoke-virtual {v5, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_9
    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v0, Lcom/android/server/lqr/you;->wtn:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    iget-object v6, v0, Lcom/android/server/lqr/you;->wtn:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    iget-object v6, v0, Lcom/android/server/lqr/you;->wtn:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    monitor-exit v2

    goto :goto_9

    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    throw v0

    :cond_a
    :goto_9
    const-string v2, "name"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "feature"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "value"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {v0, v2}, Lcom/android/server/lqr/you;->t(Z)V

    :cond_b
    const-string v2, "name"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "feature_common"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "value"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {v0, v2}, Lcom/android/server/lqr/you;->s(Z)V

    :cond_c
    const-string v2, "name"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "feature_temp"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "value"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {v0, v2}, Lcom/android/server/lqr/you;->u(Z)V

    :cond_d
    const-string v2, "name"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "feature_wireless"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "value"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {v0, v2}, Lcom/android/server/lqr/you;->v(Z)V

    :cond_e
    const-string v2, "name"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "minTempNit"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "value"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v0, Lcom/android/server/lqr/you;->hmo:F

    :cond_f
    const-string v2, "name"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "maxTempNitPercent"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "value"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v0, Lcom/android/server/lqr/you;->ire:F

    :cond_10
    const-string v2, "name"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "minWirelessNit"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "value"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v0, Lcom/android/server/lqr/you;->vdb:F

    :cond_11
    const-string v2, "name"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "maxWirelessNitPercent"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v2, "value"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v0, Lcom/android/server/lqr/you;->ugm:F

    :cond_12
    const-string v2, "name"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "charging"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v2, "value"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/lqr/you;->zgw:I

    :cond_13
    const-string v2, "name"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "triggerTemp"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v2, "value"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/lqr/you;->lqr:I

    :cond_14
    const-string v2, "name"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "resumeTemp"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v2, "value"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/lqr/you;->veq:I

    :cond_15
    const-string v2, "name"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "resumeDuration"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, "value"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/lqr/you;->vju:I

    :cond_16
    const-string v2, "name"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "minNit"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const-string v2, "value"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-direct {v0, v2}, Lcom/android/server/lqr/you;->z(F)V

    :cond_17
    const-string v2, "name"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "maxNitPercent"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v2, "value"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-direct {v0, v2}, Lcom/android/server/lqr/you;->y(F)V

    :cond_18
    const-string v2, "name"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "adjustNitsInterval"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    const-string v2, "value"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-direct {v0, v2}, Lcom/android/server/lqr/you;->o(F)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] OpBacklightManager Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpBacklightManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    return-void
.end method

.method private n()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v1, p0, Lcom/android/server/lqr/you;->sis:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/lqr/you;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private o(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/lqr/you;->ssp:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/android/server/lqr/you;->ywr:F

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic obl(Lcom/android/server/lqr/you;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/server/lqr/you;->ivd:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic oif(Lcom/android/server/lqr/you;Lcom/android/server/lqr/zta;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/lqr/you;->a(Lcom/android/server/lqr/zta;)I

    move-result p0

    return p0
.end method

.method static synthetic oxb(Lcom/android/server/lqr/you;)Lcom/android/server/lqr/you$kth;
    .locals 0

    iget-object p0, p0, Lcom/android/server/lqr/you;->zta:Lcom/android/server/lqr/you$kth;

    return-object p0
.end method

.method private q()V
    .locals 9

    iget-boolean v0, p0, Lcom/android/server/lqr/you;->obl:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/lqr/you;->fto:I

    iget v1, p0, Lcom/android/server/lqr/you;->lqr:I

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    if-lt v0, v1, :cond_1

    iput-wide v3, p0, Lcom/android/server/lqr/you;->cgv:J

    iget-boolean v0, p0, Lcom/android/server/lqr/you;->oxb:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/lqr/you;->cjf:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/lqr/you;->igw:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/server/lqr/you;->qbh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "updateBatteryTemperatureLocked trigger high temp!"

    invoke-static {v0}, Lcom/android/server/lqr/you;->j(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/android/server/lqr/you;->oxb:Z

    iget-object v0, p0, Lcom/android/server/lqr/you;->zta:Lcom/android/server/lqr/you$kth;

    iget-object p0, p0, Lcom/android/server/lqr/you;->vdw:Ljava/lang/Runnable;

    invoke-virtual {v0, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/lqr/you;->oxb:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/server/lqr/you;->cjf:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/lqr/you;->igw:Ljava/util/HashSet;

    iget-object v5, p0, Lcom/android/server/lqr/you;->qbh:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v2

    :goto_1
    iget v5, p0, Lcom/android/server/lqr/you;->fto:I

    iget v6, p0, Lcom/android/server/lqr/you;->veq:I

    if-gt v5, v6, :cond_5

    iget-wide v5, p0, Lcom/android/server/lqr/you;->cgv:J

    cmp-long v5, v5, v3

    if-nez v5, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/lqr/you;->cgv:J

    const-string v2, "temp-reduce first resume time"

    invoke-static {v2}, Lcom/android/server/lqr/you;->j(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/server/lqr/you;->cgv:J

    sub-long/2addr v5, v7

    iget v7, p0, Lcom/android/server/lqr/you;->vju:I

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-ltz v5, :cond_5

    const-string v0, "temp-reduce to resume backlight"

    invoke-static {v0}, Lcom/android/server/lqr/you;->j(Ljava/lang/String;)V

    iput-wide v3, p0, Lcom/android/server/lqr/you;->cgv:J

    goto :goto_3

    :cond_5
    :goto_2
    move v2, v0

    :goto_3
    if-eqz v2, :cond_6

    const-string v0, "temp-reduce need resume!"

    invoke-static {v0}, Lcom/android/server/lqr/you;->j(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/server/lqr/you;->oxb:Z

    iget-object v0, p0, Lcom/android/server/lqr/you;->zta:Lcom/android/server/lqr/you$kth;

    iget-object p0, p0, Lcom/android/server/lqr/you;->vdw:Ljava/lang/Runnable;

    invoke-virtual {v0, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    return-void
.end method

.method static synthetic qbh(Lcom/android/server/lqr/you;)F
    .locals 0

    iget p0, p0, Lcom/android/server/lqr/you;->vdb:F

    return p0
.end method

.method private qeg()I
    .locals 3

    iget-object v0, p0, Lcom/android/server/lqr/you;->cno:Lcom/android/server/lqr/zta;

    invoke-direct {p0, v0}, Lcom/android/server/lqr/you;->b(Lcom/android/server/lqr/zta;)Lcom/android/server/lqr/zta$zta;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDelayForNextAnimationLocked is null: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/lqr/you;->cno:Lcom/android/server/lqr/zta;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/lqr/you;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/android/server/lqr/you;->cno:Lcom/android/server/lqr/zta;

    invoke-virtual {v1}, Lcom/android/server/lqr/zta;->you()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/server/lqr/you;->cno:Lcom/android/server/lqr/zta;

    invoke-virtual {v1}, Lcom/android/server/lqr/zta;->you()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/lqr/you;->cno:Lcom/android/server/lqr/zta;

    invoke-virtual {p0}, Lcom/android/server/lqr/zta;->you()I

    move-result p0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_2

    invoke-virtual {v0}, Lcom/android/server/lqr/zta$zta;->you()I

    move-result p0

    invoke-virtual {v0}, Lcom/android/server/lqr/zta$zta;->tsu()I

    move-result v0

    add-int/2addr p0, v0

    return p0

    :cond_2
    invoke-virtual {v0}, Lcom/android/server/lqr/zta$zta;->you()I

    move-result p0

    return p0

    :cond_3
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/lqr/zta$zta;->you()I

    move-result p0

    invoke-virtual {v0}, Lcom/android/server/lqr/zta$zta;->sis()I

    move-result v0

    add-int/2addr p0, v0

    return p0
.end method

.method private r()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/lqr/you;->bud:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->rtg()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/OnePlusUtil$zta;->sis()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/lqr/you;->les(Ljava/lang/String;)Lcom/android/server/lqr/zta;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/lqr/you;->h(Lcom/android/server/lqr/zta;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/lqr/zta;->you()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    invoke-virtual {v0, v2}, Lcom/android/server/lqr/zta;->igw(I)V

    invoke-direct {p0, v0}, Lcom/android/server/lqr/you;->a(Lcom/android/server/lqr/zta;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/lqr/zta;->cno(I)I

    iput-object v0, p0, Lcom/android/server/lqr/you;->cno:Lcom/android/server/lqr/zta;

    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/lqr/you;->x(Lcom/android/server/lqr/zta;)V

    return-void
.end method

.method static synthetic rtg(Lcom/android/server/lqr/you;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/lqr/you;->A(Z)V

    return-void
.end method

.method private s(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/lqr/you;->ssp:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/server/lqr/you;->d:Z

    if-ne v1, p1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFeatureCommonEnable from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/lqr/you;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/lqr/you;->k(Ljava/lang/String;)V

    sput-boolean p1, Lcom/android/server/lqr/you;->d:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/server/lqr/you;->zta:Lcom/android/server/lqr/you$kth;

    iget-object v1, p0, Lcom/android/server/lqr/you;->ivd:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/lqr/you;->zta:Lcom/android/server/lqr/you$kth;

    iget-object v1, p0, Lcom/android/server/lqr/you;->ivd:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iget-object p1, p0, Lcom/android/server/lqr/you;->cno:Lcom/android/server/lqr/zta;

    invoke-virtual {p1}, Lcom/android/server/lqr/zta;->you()I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/lqr/you;->kth:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/lqr/you;->cno:Lcom/android/server/lqr/zta;

    invoke-virtual {v1}, Lcom/android/server/lqr/zta;->tsu()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/server/lqr/you;->cno:Lcom/android/server/lqr/zta;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/android/server/lqr/zta;->igw(I)V

    iget-object p1, p0, Lcom/android/server/lqr/you;->zta:Lcom/android/server/lqr/you$kth;

    iget-object p0, p0, Lcom/android/server/lqr/you;->ivd:Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

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

.method static synthetic sis(Lcom/android/server/lqr/you;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/lqr/you;->ibl:Z

    return p0
.end method

.method static synthetic ssp(Lcom/android/server/lqr/you;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/lqr/you;->cgv()V

    return-void
.end method

.method private t(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/lqr/you;->ssp:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/server/lqr/you;->c:Z

    if-ne v1, p1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFeatureEnable from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/lqr/you;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/lqr/you;->k(Ljava/lang/String;)V

    sput-boolean p1, Lcom/android/server/lqr/you;->c:Z

    if-nez p1, :cond_2

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/lqr/you;->cgv:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/lqr/you;->bvj:Z

    iput-boolean p1, p0, Lcom/android/server/lqr/you;->oxb:Z

    iget-object p1, p0, Lcom/android/server/lqr/you;->zta:Lcom/android/server/lqr/you$kth;

    iget-object v3, p0, Lcom/android/server/lqr/you;->ivd:Ljava/lang/Runnable;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/lqr/you;->zta:Lcom/android/server/lqr/you$kth;

    iget-object v3, p0, Lcom/android/server/lqr/you;->ivd:Ljava/lang/Runnable;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iget-object p1, p0, Lcom/android/server/lqr/you;->cno:Lcom/android/server/lqr/zta;

    invoke-virtual {p1}, Lcom/android/server/lqr/zta;->you()I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/lqr/you;->cno:Lcom/android/server/lqr/zta;

    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Lcom/android/server/lqr/zta;->igw(I)V

    iget-object p1, p0, Lcom/android/server/lqr/you;->zta:Lcom/android/server/lqr/you$kth;

    iget-object p0, p0, Lcom/android/server/lqr/you;->ivd:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

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

.method static synthetic tsu(Lcom/android/server/lqr/you;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/lqr/you;->bud:Z

    return p1
.end method

.method private u(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/lqr/you;->ssp:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFeatureTemp from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/lqr/you;->obl:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", inTemp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/lqr/you;->oxb:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/lqr/you;->k(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/server/lqr/you;->obl:Z

    iget-boolean v1, p0, Lcom/android/server/lqr/you;->oxb:Z

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/lqr/you;->cgv:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/lqr/you;->oxb:Z

    iget-boolean p1, p0, Lcom/android/server/lqr/you;->oif:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/server/lqr/you;->bvj:Z

    if-eqz p1, :cond_0

    const-string p1, "special_wireless"

    invoke-direct {p0, p1}, Lcom/android/server/lqr/you;->les(Ljava/lang/String;)Lcom/android/server/lqr/zta;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/lqr/you;->x(Lcom/android/server/lqr/zta;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/lqr/you;->r()V

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

.method static synthetic ugm(Lcom/android/server/lqr/you;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/lqr/you;->d(I)V

    return-void
.end method

.method private v(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/lqr/you;->ssp:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFeatureWireless from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/lqr/you;->oif:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", inWireless="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/lqr/you;->bvj:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/lqr/you;->k(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/server/lqr/you;->oif:Z

    iget-boolean v1, p0, Lcom/android/server/lqr/you;->bvj:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/lqr/you;->bvj:Z

    invoke-direct {p0}, Lcom/android/server/lqr/you;->r()V

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

.method static synthetic vdb(Lcom/android/server/lqr/you;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/lqr/you;->m(Lorg/json/JSONArray;)V

    return-void
.end method

.method private vdw()D
    .locals 2

    iget-object v0, p0, Lcom/android/server/lqr/you;->cno:Lcom/android/server/lqr/zta;

    invoke-direct {p0, v0}, Lcom/android/server/lqr/you;->b(Lcom/android/server/lqr/zta;)Lcom/android/server/lqr/zta$zta;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentPercent is null: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/lqr/you;->cno:Lcom/android/server/lqr/zta;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/lqr/you;->k(Ljava/lang/String;)V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/lqr/zta$zta;->zta()D

    move-result-wide v0

    return-wide v0
.end method

.method private veq(Ljava/io/PrintWriter;)V
    .locals 5

    const-string v0, " OpBacklightManager: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/lqr/you;->ssp:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   feature="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/lqr/you;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   feature_common="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/lqr/you;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "     mMinNits="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/lqr/you;->gck:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "     mMaxNitPercent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/lqr/you;->dma:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "     mAdjustNitsInterval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/lqr/you;->ywr:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   feature_temp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/lqr/you;->obl:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "     mTempMinNit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/lqr/you;->hmo:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "     mTempMaxNitPercent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/lqr/you;->ire:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "     mTempTriggerThreshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/lqr/you;->lqr:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "     mTempResumeThreshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/lqr/you;->veq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "     mTempResumeDuration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/lqr/you;->vju:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "     mTempResumeTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/lqr/you;->cgv:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "     inHBM="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/lqr/you;->cjf:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "     inGameMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/lqr/you;->ear:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "     mCurrentBatteryTemp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/lqr/you;->fto:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "     inTemperatureReduce="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/lqr/you;->oxb:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   feature_wireless="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/lqr/you;->oif:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "     mWirelessMinNit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/lqr/you;->vdb:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "     mWirelessMaxNit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/lqr/you;->ugm:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "     mWirelessChargingDuration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/lqr/you;->zgw:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "     mWirelessCharging="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/lqr/you;->ibl:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "     inWirelessReduce="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/lqr/you;->bvj:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "     mWirelessTriggerTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/lqr/you;->gwm:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   mCurrentPkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/lqr/you;->qbh:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   mCurrentConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/lqr/you;->cno:Lcom/android/server/lqr/zta;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    iget-object v1, p0, Lcom/android/server/lqr/you;->kth:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_1
    const-string v0, "   PkgList: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/lqr/you;->kth:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/lqr/zta;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/lqr/zta;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    iget-object v0, p0, Lcom/android/server/lqr/you;->bio:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_2
    const-string v1, "   BlackList: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/lqr/you;->bio:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v1, p0, Lcom/android/server/lqr/you;->igw:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_3
    const-string v0, "   WhiteList: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/lqr/you;->igw:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v0, p0, Lcom/android/server/lqr/you;->wtn:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_4
    const-string v1, "   ParamList: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/lqr/you;->wtn:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/lqr/zta$zta;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/lqr/zta$zta;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const-string p0, " "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0

    :catchall_3
    move-exception p0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p0

    :catchall_4
    move-exception p0

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw p0
.end method

.method private vju(Lcom/android/server/lqr/zta;Lcom/android/server/lqr/zta$zta;)I
    .locals 8

    iget-object v0, p0, Lcom/android/server/lqr/you;->wtn:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/lqr/you;->wtn:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/server/lqr/zta;->sis()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    const/4 p1, 0x0

    if-eqz p0, :cond_2

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    move-wide v2, v1

    move v1, p1

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/lqr/zta$zta;

    invoke-virtual {v4}, Lcom/android/server/lqr/zta$zta;->zta()D

    move-result-wide v4

    invoke-virtual {p2}, Lcom/android/server/lqr/zta$zta;->zta()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v6, v4, v2

    if-gez v6, :cond_0

    move v1, p1

    move-wide v2, v4

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v1

    :cond_2
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic wtn(Lcom/android/server/lqr/you;)F
    .locals 0

    iget p0, p0, Lcom/android/server/lqr/you;->ire:F

    return p0
.end method

.method private x(Lcom/android/server/lqr/zta;)V
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/lqr/you;->c(Lcom/android/server/lqr/zta;)V

    iget-object p1, p0, Lcom/android/server/lqr/you;->zta:Lcom/android/server/lqr/you$kth;

    iget-object v3, p0, Lcom/android/server/lqr/you;->ivd:Ljava/lang/Runnable;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/lqr/you;->zta:Lcom/android/server/lqr/you$kth;

    iget-object v3, p0, Lcom/android/server/lqr/you;->ivd:Ljava/lang/Runnable;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object p1, p0, Lcom/android/server/lqr/you;->cno:Lcom/android/server/lqr/zta;

    invoke-virtual {p1}, Lcom/android/server/lqr/zta;->ssp()I

    move-result p1

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/android/server/lqr/you;->cno:Lcom/android/server/lqr/zta;

    invoke-virtual {p1}, Lcom/android/server/lqr/zta;->tsu()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/lqr/you;->i(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/lqr/you;->cno:Lcom/android/server/lqr/zta;

    invoke-virtual {p1, v0}, Lcom/android/server/lqr/zta;->igw(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/server/lqr/you;->cno:Lcom/android/server/lqr/zta;

    invoke-virtual {p1, v2}, Lcom/android/server/lqr/zta;->igw(I)V

    :goto_0
    iget-object p1, p0, Lcom/android/server/lqr/you;->zta:Lcom/android/server/lqr/you$kth;

    iget-object v0, p0, Lcom/android/server/lqr/you;->ivd:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/server/lqr/you;->irq()I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/server/lqr/you;->cno:Lcom/android/server/lqr/zta;

    invoke-virtual {p1}, Lcom/android/server/lqr/zta;->you()I

    move-result p1

    if-eq p1, v2, :cond_3

    iget-object p1, p0, Lcom/android/server/lqr/you;->cno:Lcom/android/server/lqr/zta;

    invoke-virtual {p1}, Lcom/android/server/lqr/zta;->you()I

    move-result p1

    if-ne p1, v1, :cond_5

    :cond_3
    iget-object p1, p0, Lcom/android/server/lqr/you;->zta:Lcom/android/server/lqr/you$kth;

    iget-object v1, p0, Lcom/android/server/lqr/you;->ivd:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/server/lqr/you;->zta:Lcom/android/server/lqr/you$kth;

    iget-object v1, p0, Lcom/android/server/lqr/you;->ivd:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_4
    iget-object p1, p0, Lcom/android/server/lqr/you;->cno:Lcom/android/server/lqr/zta;

    invoke-virtual {p1, v0}, Lcom/android/server/lqr/zta;->igw(I)V

    iget-object p1, p0, Lcom/android/server/lqr/you;->zta:Lcom/android/server/lqr/you$kth;

    iget-object p0, p0, Lcom/android/server/lqr/you;->ivd:Ljava/lang/Runnable;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_1
    return-void
.end method

.method private y(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/lqr/you;->ssp:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/android/server/lqr/you;->dma:F

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic you(Lcom/android/server/lqr/you;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/lqr/you;->bud:Z

    return p0
.end method

.method static synthetic ywr(Lcom/android/server/lqr/you;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/lqr/you;->oxb:Z

    return p0
.end method

.method private z(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/lqr/you;->ssp:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/android/server/lqr/you;->gck:F

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic zgw(Lcom/android/server/lqr/you;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/lqr/you;->bvj:Z

    return p0
.end method

.method static synthetic zta(Lcom/android/server/lqr/you;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/lqr/you;->ssp:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public e(Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    .locals 13

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_12

    aget-object v0, p2, v1

    const-string v3, "opbacklight"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    array-length v0, p2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    aget-object v0, p2, v2

    const-string v3, "dump"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/lqr/you;->veq(Ljava/io/PrintWriter;)V

    return v2

    :cond_1
    array-length v0, p2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    aget-object v0, p2, v2

    const-string v4, "enable"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    aget-object p1, p2, v1

    const-string p2, "0"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v2

    invoke-direct {p0, p1}, Lcom/android/server/lqr/you;->t(Z)V

    return v2

    :cond_2
    aget-object v0, p2, v2

    const-string v4, "enable_common"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    aget-object p1, p2, v1

    const-string p2, "0"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v2

    invoke-direct {p0, p1}, Lcom/android/server/lqr/you;->s(Z)V

    return v2

    :cond_3
    aget-object v0, p2, v2

    const-string v4, "debug"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    aget-object p0, p2, v1

    const-string p1, "0"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v2

    sput-boolean p0, Lcom/android/server/lqr/you;->e:Z

    sput-boolean p0, Lcom/android/server/lqr/you;->f:Z

    return v2

    :cond_4
    :try_start_0
    array-length v0, p2

    const/4 v4, 0x5

    const/4 v5, 0x4

    if-ne v0, v4, :cond_8

    const-string v0, "add"

    aget-object v4, p2, v2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    aget-object v1, p2, v1

    aget-object v3, p2, v3

    aget-object p2, p2, v5

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iget-object v4, p0, Lcom/android/server/lqr/you;->kth:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v5, p0, Lcom/android/server/lqr/you;->kth:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/lqr/zta;

    invoke-virtual {v6}, Lcom/android/server/lqr/zta;->tsu()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/server/lqr/you;->kth:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/lqr/you;->kth:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/server/lqr/zta;

    invoke-direct {v5, v1, p2, v3}, Lcom/android/server/lqr/zta;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    monitor-exit v4

    return v2

    :catchall_0
    move-exception p2

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2

    :cond_8
    array-length v0, p2

    if-ne v0, v5, :cond_b

    const-string v0, "level"

    aget-object v6, p2, v2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "remove"

    aget-object v6, p2, v1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    aget-object p2, p2, v3

    iget-object v0, p0, Lcom/android/server/lqr/you;->wtn:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/lqr/you;->wtn:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return v2

    :catchall_1
    move-exception p2

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p2

    :cond_9
    const-string v0, "black"

    aget-object v6, p2, v1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "add"

    aget-object v6, p2, v2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/lqr/you;->bio:Ljava/util/HashSet;

    monitor-enter v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-object v6, p0, Lcom/android/server/lqr/you;->bio:Ljava/util/HashSet;

    aget-object v7, p2, v3

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_1

    :catchall_2
    move-exception p2

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw p2

    :cond_a
    const-string v0, "remove"

    aget-object v6, p2, v2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/lqr/you;->bio:Ljava/util/HashSet;

    monitor-enter v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    iget-object v6, p0, Lcom/android/server/lqr/you;->bio:Ljava/util/HashSet;

    aget-object v7, p2, v3

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_1

    :catchall_3
    move-exception p2

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    throw p2

    :cond_b
    :goto_1
    array-length v0, p2

    const/16 v6, 0x9

    if-ne v0, v6, :cond_11

    const-string v0, "add"

    aget-object v6, p2, v2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string p2, "cmd should like: dumpsys display opbacklight add LEVEL DEC INC IN OUT DELAY INDEX"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_c
    aget-object v0, p2, v1

    aget-object v1, p2, v3

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    aget-object v1, p2, v5

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    aget-object v1, p2, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x6

    aget-object v3, p2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v3, 0x7

    aget-object v3, p2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/16 v3, 0x8

    aget-object p2, p2, v3

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    new-instance v12, Lcom/android/server/lqr/zta$zta;

    move-object v3, v12

    move-object v4, v0

    move-wide v5, v6

    move-wide v7, v8

    move v9, v1

    invoke-direct/range {v3 .. v11}, Lcom/android/server/lqr/zta$zta;-><init>(Ljava/lang/String;DDIII)V

    iget-object v1, p0, Lcom/android/server/lqr/you;->wtn:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :try_start_9
    iget-object v3, p0, Lcom/android/server/lqr/you;->wtn:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_e

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_d

    const-string p2, "this first level item\'s index must be 0"

    :goto_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_d
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/android/server/lqr/you;->wtn:Ljava/util/HashMap;

    invoke-virtual {p2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_e
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, p2, :cond_f

    const-string p2, "error for index > level size!"

    goto :goto_2

    :cond_f
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, p2, :cond_10

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_10
    invoke-virtual {v3, p2, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_3
    monitor-exit v1

    return v2

    :catchall_4
    move-exception p2

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    throw p2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_11
    invoke-direct {p0, p1}, Lcom/android/server/lqr/you;->l(Ljava/io/PrintWriter;)V

    return v2

    :cond_12
    :goto_4
    return v1
.end method

.method public f(Landroid/content/Context;)V
    .locals 4

    iput-object p1, p0, Lcom/android/server/lqr/you;->sis:Landroid/content/Context;

    new-instance p1, Lcom/oneplus/config/ConfigObserver;

    iget-object v0, p0, Lcom/android/server/lqr/you;->sis:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/lqr/you;->zta:Lcom/android/server/lqr/you$kth;

    new-instance v2, Lcom/android/server/lqr/you$cno;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/lqr/you$cno;-><init>(Lcom/android/server/lqr/you;Lcom/android/server/lqr/you$zta;)V

    const-string v3, "OpBacklightControl"

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/lqr/you;->you:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigObserver;->register()V

    invoke-static {}, Lcom/android/server/wm/OpWindowManagerService;->getInstance()Lcom/android/server/wm/OpWindowManagerService;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/lqr/you;->irq:Lcom/android/server/wm/OpWindowManagerService$zta;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/OpWindowManagerService;->registeSplitScreenModeListener(Lcom/android/server/wm/OpWindowManagerService$zta;)V

    invoke-direct {p0}, Lcom/android/server/lqr/you;->n()V

    return-void
.end method

.method public g(Lcom/android/server/wm/OpScreenModeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/lqr/you;->rtg:Lcom/android/server/wm/OpScreenModeService;

    return-void
.end method

.method public hookDisplayPowerController(Lcom/android/server/display/IOpBacklightController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/lqr/you;->tsu:Lcom/android/server/display/IOpBacklightController;

    new-instance p1, Lcom/android/server/lqr/you$ssp;

    invoke-direct {p1, p0}, Lcom/android/server/lqr/you$ssp;-><init>(Lcom/android/server/lqr/you;)V

    iput-object p1, p0, Lcom/android/server/lqr/you;->les:Lcom/android/server/OnePlusUtil$zta$you;

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->rtg()Lcom/android/server/OnePlusUtil$zta;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/lqr/you;->les:Lcom/android/server/OnePlusUtil$zta$you;

    invoke-virtual {p1, p0}, Lcom/android/server/OnePlusUtil$zta;->bio(Lcom/android/server/OnePlusUtil$zta$you;)V

    return-void
.end method

.method public lqr(Ljava/lang/String;I)V
    .locals 3

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->rtg()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/OnePlusUtil$zta;->sis()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/server/lqr/you;->qbh:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/server/lqr/you;->i(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/server/wm/OnePlusPerfManager;->getInstance()Lcom/android/server/wm/OnePlusPerfManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/OnePlusPerfManager;->isUsingPccore(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/server/wm/OnePlusPerfManager;->getInstance()Lcom/android/server/wm/OnePlusPerfManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/OnePlusPerfManager;->getPccoreState()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/lqr/you;->zta:Lcom/android/server/lqr/you$kth;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/lqr/you;->zta:Lcom/android/server/lqr/you$kth;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/lqr/you;->zta:Lcom/android/server/lqr/you$kth;

    invoke-virtual {v0, v2, v2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/lqr/you;->zta:Lcom/android/server/lqr/you$kth;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/server/wm/OnePlusPerfManager;->getInstance()Lcom/android/server/wm/OnePlusPerfManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/OnePlusPerfManager;->getPccoreState()Z

    move-result v0

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/android/server/lqr/you;->zta:Lcom/android/server/lqr/you$kth;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/lqr/you;->zta:Lcom/android/server/lqr/you$kth;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/server/lqr/you;->zta:Lcom/android/server/lqr/you$kth;

    invoke-virtual {v0, v2, v1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_4
    iget-object v0, p0, Lcom/android/server/lqr/you;->ssp:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/lqr/you;->q()V

    iget-boolean v1, p0, Lcom/android/server/lqr/you;->oxb:Z

    if-nez v1, :cond_b

    iget-boolean v1, p0, Lcom/android/server/lqr/you;->bvj:Z

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    sget-boolean v1, Lcom/android/server/lqr/you;->c:Z

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/android/server/lqr/you;->bud:Z

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/android/server/lqr/you;->tsu:Lcom/android/server/display/IOpBacklightController;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/lqr/you;->sis:Landroid/content/Context;

    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/android/server/lqr/you;->cno:Lcom/android/server/lqr/zta;

    invoke-virtual {v1}, Lcom/android/server/lqr/zta;->tsu()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/server/lqr/you;->cno:Lcom/android/server/lqr/zta;

    invoke-virtual {v1}, Lcom/android/server/lqr/zta;->you()I

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/server/lqr/you;->cno:Lcom/android/server/lqr/zta;

    invoke-virtual {v1, v2}, Lcom/android/server/lqr/zta;->igw(I)V

    iget-object v1, p0, Lcom/android/server/lqr/you;->cno:Lcom/android/server/lqr/zta;

    invoke-virtual {v1}, Lcom/android/server/lqr/zta;->ssp()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/android/server/lqr/you;->cno:Lcom/android/server/lqr/zta;

    invoke-virtual {v1}, Lcom/android/server/lqr/zta;->rtg()I

    move-result v1

    if-eq v1, p2, :cond_7

    invoke-direct {p0, p1, p2}, Lcom/android/server/lqr/you;->fto(Ljava/lang/String;I)V

    :cond_7
    iget-object p0, p0, Lcom/android/server/lqr/you;->cno:Lcom/android/server/lqr/zta;

    invoke-virtual {p0, p2}, Lcom/android/server/lqr/zta;->kth(I)V

    goto :goto_1

    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/lqr/you;->les(Ljava/lang/String;)Lcom/android/server/lqr/zta;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1, p2}, Lcom/android/server/lqr/zta;->kth(I)V

    :cond_9
    invoke-direct {p0, p1}, Lcom/android/server/lqr/you;->x(Lcom/android/server/lqr/zta;)V

    :goto_1
    monitor-exit v0

    return-void

    :cond_a
    :goto_2
    monitor-exit v0

    return-void

    :cond_b
    :goto_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public p(IZ)V
    .locals 2

    sget-boolean v0, Lcom/android/server/lqr/you;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateBatteryInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/lqr/you;->j(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/lqr/you;->ssp:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/android/server/lqr/you;->fto:I

    invoke-direct {p0}, Lcom/android/server/lqr/you;->q()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p2}, Lcom/android/server/lqr/you;->A(Z)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public updateHBMStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/lqr/you;->cjf:Z

    sget-boolean p1, Lcom/android/server/lqr/you;->c:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/server/lqr/you;->ssp:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/lqr/you;->q()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public w(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/lqr/you;->ssp:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/lqr/you;->ear:Z

    sget-boolean v1, Lcom/android/server/lqr/you;->c:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/lqr/you;->bud:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/lqr/you;->tsu:Lcom/android/server/display/IOpBacklightController;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/lqr/you;->sis:Landroid/content/Context;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/lqr/you;->oxb:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/lqr/you;->bvj:Z

    if-nez v1, :cond_2

    if-eqz p1, :cond_1

    const-string p1, "special_game"

    invoke-direct {p0, p1}, Lcom/android/server/lqr/you;->les(Ljava/lang/String;)Lcom/android/server/lqr/zta;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/lqr/you;->x(Lcom/android/server/lqr/zta;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/lqr/you;->r()V

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/server/lqr/you;->q()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
