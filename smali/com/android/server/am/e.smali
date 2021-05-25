.class public Lcom/android/server/am/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/am/IOpRestartProcessManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/e$wtn;,
        Lcom/android/server/am/e$bio;,
        Lcom/android/server/am/e$tsu;,
        Lcom/android/server/am/e$cno;,
        Lcom/android/server/am/e$ssp;,
        Lcom/android/server/am/e$rtg;,
        Lcom/android/server/am/e$kth;,
        Lcom/android/server/am/e$igw;,
        Lcom/android/server/am/e$you;,
        Lcom/android/server/am/e$sis;
    }
.end annotation


# static fields
.field private static a:Lcom/android/server/OpPowerControllerService; = null

.field private static b:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/e$igw;",
            ">;"
        }
    .end annotation
.end field

.field private static bud:Z = false

.field public static final bvj:Ljava/lang/String; = "Low Used Packages"

.field private static c:I = 0x0

.field public static cgv:Z = false

.field private static final cjf:Ljava/lang/String; = "OpRestartProcessManager"

.field private static d:J = 0x0L

.field public static final dma:Ljava/lang/String; = "Ultra Used Packages"

.field private static e:J = 0x0L

.field private static final ear:Ljava/lang/String; = "valid_duration"

.field private static f:Z = false

.field private static final fto:Ljava/lang/String; = "enable_all_module"

.field private static g:Z = false

.field public static final gck:Ljava/lang/String; = "OpRestartProcessManager"

.field public static final gwm:Ljava/lang/String; = "persist.sys.rp.enable"

.field private static h:J = 0x0L

.field private static final hmo:Ljava/lang/String; = "enable_module"

.field private static i:J = 0x0L

.field public static final ibl:Ljava/lang/String; = "persist.sys.rp.debug"

.field private static final ire:Ljava/lang/String; = "general_duration"

.field private static irq:J = 0x0L

.field private static ivd:Lcom/android/server/am/e; = null

.field private static final j:J = 0x1b7740L

.field private static final k:J = 0x1b7740L

.field private static l:I = 0x0

.field private static les:Z = false

.field public static lqr:Z = false

.field private static m:J = 0x0L

.field private static n:J = 0x0L

.field private static final o:J = 0x36ee80L

.field public static final obl:Ljava/lang/String; = "record_backup.txt"

.field public static final oif:Ljava/lang/String; = "Seldom Used Packages"

.field private static final oxb:Z

.field private static final p:I = 0x14

.field private static final q:D = 100.0

.field public static final qbh:Ljava/lang/String; = "General Used Packages"

.field private static qeg:Ljava/lang/String; = null

.field private static r:I = 0x0

.field private static s:I = 0x0

.field private static t:I = 0x0

.field private static u:I = 0x0

.field public static final ugm:Ljava/lang/String; = "persist.sys.rp.enableall"

.field private static v:I = 0x0

.field public static final vdb:Ljava/lang/String; = "OpRestartProcessManager"

.field private static vdw:Ljava/lang/String; = null

.field public static veq:Z = false

.field private static vju:Z = false

.field private static w:I = 0x0

.field public static final ywr:Ljava/lang/String; = "High Used Packages"

.field public static final zgw:Ljava/lang/String; = "record.txt"


# instance fields
.field private bio:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cno:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/e$you;",
            ">;"
        }
    .end annotation
.end field

.field private igw:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private kth:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rtg:Ljava/io/File;

.field private sis:Ljava/io/File;

.field private ssp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/e$sis;",
            ">;"
        }
    .end annotation
.end field

.field private tsu:Landroid/util/AtomicFile;

.field private wtn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private you:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/e$igw;",
            ">;>;"
        }
    .end annotation
.end field

.field private zta:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/e$igw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/e;->oxb:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/e;->lqr:Z

    sput-boolean v0, Lcom/android/server/am/e;->veq:Z

    sput-boolean v0, Lcom/android/server/am/e;->cgv:Z

    sput-boolean v0, Lcom/android/server/am/e;->vju:Z

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/am/e;->bud:Z

    sput-boolean v0, Lcom/android/server/am/e;->les:Z

    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/android/server/am/e;->irq:J

    const-string v4, ""

    sput-object v4, Lcom/android/server/am/e;->vdw:Ljava/lang/String;

    sput-object v4, Lcom/android/server/am/e;->qeg:Ljava/lang/String;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/android/server/am/e;->b:Ljava/util/HashMap;

    sput v0, Lcom/android/server/am/e;->c:I

    sput-wide v2, Lcom/android/server/am/e;->d:J

    sput-wide v2, Lcom/android/server/am/e;->e:J

    sput-boolean v1, Lcom/android/server/am/e;->f:Z

    sput-boolean v1, Lcom/android/server/am/e;->g:Z

    const-wide/16 v2, 0x3e8

    sput-wide v2, Lcom/android/server/am/e;->h:J

    const-wide/32 v2, 0x5265c00

    sput-wide v2, Lcom/android/server/am/e;->i:J

    const/16 v0, 0x1e

    sput v0, Lcom/android/server/am/e;->l:I

    sput-wide v2, Lcom/android/server/am/e;->m:J

    const-string v0, "ro.build.beta"

    const-string v4, "0"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 v2, 0x2932e00

    :cond_0
    sput-wide v2, Lcom/android/server/am/e;->n:J

    const/4 v0, 0x3

    sput v0, Lcom/android/server/am/e;->r:I

    sput v1, Lcom/android/server/am/e;->s:I

    sput v1, Lcom/android/server/am/e;->t:I

    const/4 v2, 0x3

    add-int/2addr v2, v1

    add-int/2addr v2, v1

    sput v2, Lcom/android/server/am/e;->u:I

    sput v0, Lcom/android/server/am/e;->v:I

    const/16 v0, 0xa

    sput v0, Lcom/android/server/am/e;->w:I

    return-void
.end method

.method private constructor <init>(Ljava/io/File;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/e;->zta:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/e;->you:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/e;->ssp:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/e;->cno:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/e;->kth:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/e;->bio:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/e;->igw:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/e;->wtn:Ljava/util/ArrayList;

    :try_start_0
    sget-boolean v0, Lcom/android/server/am/e;->oxb:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "OpRestartProcessManager"

    if-eqz v0, :cond_0

    :try_start_1
    const-string v0, "OpRestartProcessManager start"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "persist.sys.rp.enable"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/e;->f:Z

    const-string v0, "persist.sys.rp.enableall"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/e;->g:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/am/e;->f:Z

    if-nez v0, :cond_1

    sput-boolean v2, Lcom/android/server/am/e;->f:Z

    :cond_1
    sget-boolean v0, Lcom/android/server/am/e;->oxb:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PROPERTY_RESTART_PROCESS_ENABLE : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/e;->f:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PROPERTY_RESTART_PROCESS_ENABLEAL : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/e;->g:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput-object p1, p0, Lcom/android/server/am/e;->sis:Ljava/io/File;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/server/am/e;->sis:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_3
    sget-boolean p1, Lcom/android/server/am/e;->g:Z

    if-nez p1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/e;->doCleanData(J)V

    :cond_4
    sget-boolean p1, Lcom/android/server/am/e;->g:Z

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/android/server/am/e;->initEssentials()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_0
    sput-object p0, Lcom/android/server/am/e;->ivd:Lcom/android/server/am/e;

    sget-object p0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_power_controller:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {p0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/OpPowerControllerService;

    sput-object p0, Lcom/android/server/am/e;->a:Lcom/android/server/OpPowerControllerService;

    return-void
.end method

.method private a()Z
    .locals 4

    sget-boolean p0, Lcom/android/server/am/e;->les:Z

    if-nez p0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/android/server/am/e;->irq:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/android/server/am/e;->n:J

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/server/am/e;->les:Z

    return p0
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/e;->cno:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/am/e;->ssp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/android/server/am/e;->u:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/e;->cno:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/am/e$you;

    invoke-direct {v2}, Lcom/android/server/am/e$you;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/server/am/e$sis;

    invoke-direct {v1, v0}, Lcom/android/server/am/e$sis;-><init>(I)V

    iget-object v2, p0, Lcom/android/server/am/e;->cno:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/e$you;

    invoke-virtual {v1, v2}, Lcom/android/server/am/e$sis;->cno(Lcom/android/server/am/e$you;)V

    iget-object v2, p0, Lcom/android/server/am/e;->ssp:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic bio()J
    .locals 2

    sget-wide v0, Lcom/android/server/am/e;->m:J

    return-wide v0
.end method

.method private static bud(Lcom/android/server/am/e$igw;Lcom/android/server/am/e$you;)D
    .locals 12

    iget-wide v0, p0, Lcom/android/server/am/e$igw;->you:D

    iget-wide v2, p0, Lcom/android/server/am/e$igw;->sis:D

    iget-wide v4, p0, Lcom/android/server/am/e$igw;->tsu:D

    iget-wide v6, p1, Lcom/android/server/am/e$you;->zta:D

    iget-wide v8, p1, Lcom/android/server/am/e$you;->you:D

    iget-wide v10, p1, Lcom/android/server/am/e$you;->sis:D

    invoke-static/range {v0 .. v11}, Lcom/android/server/am/e;->cgv(DDDDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic bvj(J)J
    .locals 0

    sput-wide p0, Lcom/android/server/am/e;->irq:J

    return-wide p0
.end method

.method private static cgv(DDDDDD)D
    .locals 0

    sub-double/2addr p0, p6

    const-wide/high16 p6, 0x4000000000000000L    # 2.0

    invoke-static {p0, p1, p6, p7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    sub-double/2addr p2, p8

    invoke-static {p2, p3, p6, p7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p2

    add-double/2addr p0, p2

    sub-double/2addr p4, p10

    invoke-static {p4, p5, p6, p7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p2

    add-double/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic cno()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/e;->les:Z

    return v0
.end method

.method static synthetic dma()I
    .locals 1

    sget v0, Lcom/android/server/am/e;->l:I

    return v0
.end method

.method private e(Ljava/util/ArrayList;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/e$kth;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/e$kth;

    invoke-virtual {v2}, Lcom/android/server/am/e$kth;->cjf()V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/server/am/e$rtg;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/am/e$rtg;-><init>(Lcom/android/server/am/e$zta;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/e$kth;

    invoke-static {v1}, Lcom/android/server/am/e$kth;->oif(Lcom/android/server/am/e$kth;)J

    move-result-wide v3

    sget-boolean v1, Lcom/android/server/am/e;->oxb:Z

    const-string v5, "OpRestartProcessManager"

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Max day duration : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, " got score "

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    const-wide/16 v10, 0x0

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/e$kth;

    invoke-static {v6}, Lcom/android/server/am/e$kth;->oif(Lcom/android/server/am/e$kth;)J

    move-result-wide v12

    cmp-long v10, v12, v10

    if-eqz v10, :cond_2

    invoke-static {v6}, Lcom/android/server/am/e$kth;->oif(Lcom/android/server/am/e$kth;)J

    move-result-wide v10

    long-to-double v10, v10

    long-to-double v12, v3

    div-double/2addr v10, v12

    mul-double/2addr v10, v8

    invoke-static {v6, v10, v11}, Lcom/android/server/am/e$kth;->gck(Lcom/android/server/am/e$kth;D)D

    sget-boolean v8, Lcom/android/server/am/e;->oxb:Z

    if-eqz v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Lcom/android/server/am/e$kth;->qbh(Lcom/android/server/am/e$kth;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/am/e$kth;->wtn(Lcom/android/server/am/e$kth;)D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, " in DayDuration for duration : "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/am/e$kth;->oif(Lcom/android/server/am/e$kth;)J

    move-result-wide v6

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/android/server/am/e$ssp;

    invoke-direct {v1, v2}, Lcom/android/server/am/e$ssp;-><init>(Lcom/android/server/am/e$zta;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/e$kth;

    invoke-static {v1}, Lcom/android/server/am/e$kth;->zta(Lcom/android/server/am/e$kth;)J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/e$kth;

    invoke-static {v1}, Lcom/android/server/am/e$kth;->rtg(Lcom/android/server/am/e$kth;)J

    move-result-wide v12

    sub-long/2addr v3, v12

    sget-boolean v1, Lcom/android/server/am/e;->oxb:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Max LRU Diff : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/e$kth;

    invoke-static {v6}, Lcom/android/server/am/e$kth;->zta(Lcom/android/server/am/e$kth;)J

    move-result-wide v12

    invoke-static {v6}, Lcom/android/server/am/e$kth;->rtg(Lcom/android/server/am/e$kth;)J

    move-result-wide v14

    sub-long/2addr v12, v14

    cmp-long v14, v12, v10

    if-gez v14, :cond_5

    goto :goto_2

    :cond_5
    long-to-double v14, v12

    long-to-double v10, v3

    div-double/2addr v14, v10

    mul-double/2addr v14, v8

    invoke-static {v6, v14, v15}, Lcom/android/server/am/e$kth;->ywr(Lcom/android/server/am/e$kth;D)D

    sget-boolean v10, Lcom/android/server/am/e;->oxb:Z

    if-eqz v10, :cond_6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Lcom/android/server/am/e$kth;->qbh(Lcom/android/server/am/e$kth;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/am/e$kth;->dma(Lcom/android/server/am/e$kth;)D

    move-result-wide v14

    invoke-virtual {v10, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, " in DayLRU for LRU diff : "

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-wide/16 v10, 0x0

    goto :goto_2

    :cond_7
    new-instance v1, Lcom/android/server/am/e$cno;

    invoke-direct {v1, v2}, Lcom/android/server/am/e$cno;-><init>(Lcom/android/server/am/e$zta;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/e$kth;

    invoke-static {v1}, Lcom/android/server/am/e$kth;->sis(Lcom/android/server/am/e$kth;)J

    move-result-wide v1

    sget-boolean v3, Lcom/android/server/am/e;->oxb:Z

    if-eqz v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Max launch times : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/e$kth;

    invoke-static {v3}, Lcom/android/server/am/e$kth;->sis(Lcom/android/server/am/e$kth;)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v4, v10, v12

    if-eqz v4, :cond_9

    invoke-static {v3}, Lcom/android/server/am/e$kth;->sis(Lcom/android/server/am/e$kth;)J

    move-result-wide v10

    long-to-double v10, v10

    long-to-double v14, v1

    div-double/2addr v10, v14

    mul-double/2addr v10, v8

    invoke-static {v3, v10, v11}, Lcom/android/server/am/e$kth;->igw(Lcom/android/server/am/e$kth;D)D

    sget-boolean v4, Lcom/android/server/am/e;->oxb:Z

    if-eqz v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/android/server/am/e$kth;->qbh(Lcom/android/server/am/e$kth;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/am/e$kth;->bio(Lcom/android/server/am/e$kth;)D

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, " in DayLaunchTimes for launch times : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/am/e$kth;->sis(Lcom/android/server/am/e$kth;)J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_a
    return-void
.end method

.method private ear()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/e;->kth:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/am/e;->bio:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/android/server/am/e;->igw:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private f(Ljava/io/File;)V
    .locals 10

    const-string v0, "HasWarmUp : "

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string p1, ""

    sget-boolean v1, Lcom/android/server/am/e;->oxb:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v3, "OpRestartProcessManager"

    if-eqz v1, :cond_0

    :try_start_2
    const-string v1, "Read old record"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    sget-boolean v4, Lcom/android/server/am/e;->oxb:Z

    if-eqz v4, :cond_1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/am/e;->les:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WarmUpTime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v5, Lcom/android/server/am/e;->irq:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v4, "HasWarmUp :"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v5, ":"

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    :try_start_3
    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v6

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/e;->les:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/android/server/am/e;->les:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v4, "WarmUpTime :"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v6

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    sput-wide v4, Lcom/android/server/am/e;->irq:J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StartWarmUpTime : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Lcom/android/server/am/e;->irq:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    const-string v4, "PackageName:"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v7, 0x0

    if-eqz v4, :cond_4

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, v6

    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/android/server/am/e$igw;

    invoke-direct {v1, p1, v7, v6}, Lcom/android/server/am/e$igw;-><init>(Ljava/lang/String;ZZ)V

    sget-object v4, Lcom/android/server/am/e;->b:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_4
    const-string v4, "\\s+"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/android/server/am/e$kth;

    invoke-direct {v4, p1}, Lcom/android/server/am/e$kth;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x3

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v4, v8, v9}, Lcom/android/server/am/e$kth;->you(Lcom/android/server/am/e$kth;J)J

    const/4 v5, 0x2

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v4, v8, v9}, Lcom/android/server/am/e$kth;->ugm(Lcom/android/server/am/e$kth;J)J

    aget-object v5, v1, v6

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/android/server/am/e$kth;->tsu(Lcom/android/server/am/e$kth;J)J

    aget-object v5, v1, v7

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/android/server/am/e$kth;->ssp(Lcom/android/server/am/e$kth;J)J

    array-length v5, v1

    const/16 v6, 0x8

    if-ge v5, v6, :cond_5

    invoke-static {v4, v7}, Lcom/android/server/am/e$kth;->kth(Lcom/android/server/am/e$kth;Z)Z

    goto :goto_2

    :cond_5
    const/4 v5, 0x4

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/am/e$kth;->kth(Lcom/android/server/am/e$kth;Z)Z

    const/4 v5, 0x5

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/android/server/am/e$kth;->igw(Lcom/android/server/am/e$kth;D)D

    const/4 v5, 0x6

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/android/server/am/e$kth;->gck(Lcom/android/server/am/e$kth;D)D

    const/4 v5, 0x7

    aget-object v1, v1, v5

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/android/server/am/e$kth;->ywr(Lcom/android/server/am/e$kth;D)D

    :goto_2
    sget-object v1, Lcom/android/server/am/e;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/e$igw;

    invoke-static {v1}, Lcom/android/server/am/e$igw;->wtn(Lcom/android/server/am/e$igw;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/server/am/e;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/e$igw;

    invoke-static {v4}, Lcom/android/server/am/e$kth;->rtg(Lcom/android/server/am/e$kth;)J

    move-result-wide v5

    invoke-static {v1, v5, v6}, Lcom/android/server/am/e$igw;->zta(Lcom/android/server/am/e$igw;J)J

    invoke-static {v4}, Lcom/android/server/am/e$kth;->zta(Lcom/android/server/am/e$kth;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/am/e;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/e$igw;

    invoke-static {v4}, Lcom/android/server/am/e$kth;->zta(Lcom/android/server/am/e$kth;)J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/android/server/am/e$igw;->sis(Lcom/android/server/am/e$igw;J)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :cond_6
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_5

    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_1
    move-exception p1

    :goto_3
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/e;->doCleanData(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_7

    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    :goto_4
    return-void

    :goto_5
    if-eqz v1, :cond_8

    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_6

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_6
    throw p0
.end method

.method private g()V
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/am/e;->sis:Ljava/io/File;

    const-string v2, "record.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/am/e;->sis:Ljava/io/File;

    const-string v2, "record_backup.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Use "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpRestartProcessManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/am/e;->f(Ljava/io/File;)V

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_1
    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/server/am/e;->cgv:Z

    return-void
.end method

.method static synthetic gck(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/android/server/am/e;->vdw:Ljava/lang/String;

    return-object p0
.end method

.method private hmo(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/e$igw;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/e$igw;

    invoke-static {v0}, Lcom/android/server/am/e$igw;->tsu(Lcom/android/server/am/e$igw;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private i([Ljava/lang/String;)V
    .locals 2

    array-length v0, p1

    add-int/lit8 v1, v0, -0x2

    aget-object v1, p1, v1

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    const-string v0, "high"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/e;->kth:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/am/OpAppRecordInjector;->noteHighUsedAppChanged(Ljava/util/ArrayList;Z)V

    goto :goto_1

    :cond_0
    const-string v0, "general"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/am/e;->bio:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v0, "low"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/server/am/e;->igw:Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic ibl()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/android/server/am/e;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic igw()I
    .locals 1

    sget v0, Lcom/android/server/am/e;->c:I

    return v0
.end method

.method private ire()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/am/e;->ssp:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/e$sis;

    invoke-virtual {v0}, Lcom/android/server/am/e$sis;->you()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static j(Lorg/json/JSONArray;)V
    .locals 7

    const-string v0, "OpRestartProcessManager"

    if-nez p0, :cond_0

    const-string p0, "[OnlineConfig] RestartProcess jsonArray is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_8

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/am/e;->oxb:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "value"

    if-eqz v4, :cond_1

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Online config : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", value : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v4, "valid_duration"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Lcom/android/server/am/e;->h:J

    goto :goto_2

    :cond_2
    const-string v4, "general_duration"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Lcom/android/server/am/e;->i:J

    goto :goto_2

    :cond_3
    const-string v4, "enable_module"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/e;->f:Z

    goto :goto_2

    :cond_4
    const-string v4, "enable_all_module"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    sget-boolean v3, Lcom/android/server/am/e;->g:Z

    if-eq v3, v2, :cond_6

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/server/am/e;->vdw()Lcom/android/server/am/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/e;->initEssentials()V

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/android/server/am/e;->vdw()Lcom/android/server/am/e;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/e;->doCleanData(J)V

    :cond_6
    :goto_1
    sput-boolean v2, Lcom/android/server/am/e;->g:Z

    :cond_7
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    sget-boolean p0, Lcom/android/server/am/e;->g:Z

    if-eqz p0, :cond_9

    sget-boolean p0, Lcom/android/server/am/e;->f:Z

    if-nez p0, :cond_9

    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/server/am/e;->f:Z

    :cond_9
    sget-boolean p0, Lcom/android/server/am/e;->oxb:Z

    if-eqz p0, :cond_a

    const-string p0, "[OnlineConfig] OpRestartProcessManager updated complete"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolve error message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    :goto_3
    return-void
.end method

.method private k([Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    sput v0, Lcom/android/server/am/e;->r:I

    sput v1, Lcom/android/server/am/e;->s:I

    sput p1, Lcom/android/server/am/e;->t:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    sput v0, Lcom/android/server/am/e;->u:I

    sget-boolean p1, Lcom/android/server/am/e;->oxb:Z

    if-eqz p1, :cond_0

    const-string p1, "OpRestartProcessManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NUM_CLUSTERS_HIGH : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/e;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", NUM_CLUSTERS_GENERAL : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/e;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", NUM_CLUSTERS_LOW : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/e;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/android/server/am/e;->cno:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/android/server/am/e;->ssp:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/android/server/am/e;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic kth(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/am/e;->les:Z

    return p0
.end method

.method private static l(J)V
    .locals 0

    sput-wide p0, Lcom/android/server/am/e;->i:J

    return-void
.end method

.method private lqr(Z)Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/e$igw;",
            ">;>;"
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/am/e;->f:Z

    if-eqz v0, :cond_12

    sget-boolean v0, Lcom/android/server/am/e;->g:Z

    if-nez v0, :cond_0

    goto/16 :goto_a

    :cond_0
    sget-object v0, Lcom/android/server/am/e;->a:Lcom/android/server/OpPowerControllerService;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/OpPowerControllerService;->isInDeepIdle()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/server/am/e;->o()V

    :goto_1
    iget-object p0, p0, Lcom/android/server/am/e;->you:Ljava/util/HashMap;

    return-object p0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {p0}, Lcom/android/server/am/e;->rankAllPkgs()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/e;->d:J

    goto :goto_3

    :cond_3
    sget-boolean p1, Lcom/android/server/am/e;->cgv:Z

    if-eqz p1, :cond_1

    sget-boolean p1, Lcom/android/server/am/e;->lqr:Z

    if-eqz p1, :cond_1

    sget-boolean p1, Lcom/android/server/am/e;->veq:Z

    if-eqz p1, :cond_1

    sget-wide v2, Lcom/android/server/am/e;->d:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1b7740

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    const-string p1, "OpRestartProcessManager"

    const-string v0, "Need to rank due to duration is over : 1800000"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :goto_3
    monitor-enter p0

    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/am/e;->you:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v2, p0, Lcom/android/server/am/e;->zta:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sget-boolean v3, Lcom/android/server/am/e;->oxb:Z

    if-eqz v3, :cond_4

    const-string v3, "OpRestartProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Total packages : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v2, p0, Lcom/android/server/am/e;->ssp:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/am/e$tsu;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/am/e$tsu;-><init>(Lcom/android/server/am/e$zta;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_4
    sget v5, Lcom/android/server/am/e;->t:I

    if-ge v3, v5, :cond_5

    iget-object v5, p0, Lcom/android/server/am/e;->ssp:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/e$sis;

    iget-object v5, v5, Lcom/android/server/am/e$sis;->zta:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    sget v3, Lcom/android/server/am/e;->t:I

    :goto_5
    sget v5, Lcom/android/server/am/e;->t:I

    sget v6, Lcom/android/server/am/e;->s:I

    add-int/2addr v5, v6

    if-ge v3, v5, :cond_6

    iget-object v5, p0, Lcom/android/server/am/e;->ssp:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/e$sis;

    iget-object v5, v5, Lcom/android/server/am/e$sis;->zta:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_6
    sget v3, Lcom/android/server/am/e;->t:I

    sget v5, Lcom/android/server/am/e;->s:I

    add-int/2addr v3, v5

    :goto_6
    sget v5, Lcom/android/server/am/e;->u:I

    if-ge v3, v5, :cond_7

    iget-object v5, p0, Lcom/android/server/am/e;->ssp:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/e$sis;

    iget-object v5, v5, Lcom/android/server/am/e$sis;->zta:Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_7
    sget-boolean v3, Lcom/android/server/am/e;->oxb:Z

    if-eqz v3, :cond_8

    move v3, v2

    :goto_7
    sget v5, Lcom/android/server/am/e;->u:I

    if-ge v3, v5, :cond_8

    iget-object v5, p0, Lcom/android/server/am/e;->ssp:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/e$sis;

    invoke-virtual {v5}, Lcom/android/server/am/e$sis;->sis()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    sget v5, Lcom/android/server/am/e;->w:I

    sub-int/2addr v3, v5

    if-lez v3, :cond_b

    new-instance v5, Lcom/android/server/am/e$bio;

    invoke-direct {v5, v4}, Lcom/android/server/am/e$bio;-><init>(Lcom/android/server/am/e$zta;)V

    invoke-static {p1, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v5, v2

    :goto_8
    if-ge v5, v3, :cond_b

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_a

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/e$igw;

    sget-boolean v7, Lcom/android/server/am/e;->oxb:Z

    if-eqz v7, :cond_9

    const-string v7, "OpRestartProcessManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Choose "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/am/e$igw;->tsu(Lcom/android/server/am/e$igw;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " from High to General"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_b
    sget v3, Lcom/android/server/am/e;->v:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v3, v5

    if-lez v3, :cond_e

    new-instance v5, Lcom/android/server/am/e$bio;

    invoke-direct {v5, v4}, Lcom/android/server/am/e$bio;-><init>(Lcom/android/server/am/e$zta;)V

    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v5, v2

    :goto_9
    if-ge v5, v3, :cond_e

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_d

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/e$igw;

    sget-boolean v7, Lcom/android/server/am/e;->oxb:Z

    if-eqz v7, :cond_c

    const-string v7, "OpRestartProcessManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Choose "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/am/e$igw;->tsu(Lcom/android/server/am/e$igw;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " from General to High"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_e
    new-instance v2, Lcom/android/server/am/e$bio;

    invoke-direct {v2, v4}, Lcom/android/server/am/e$bio;-><init>(Lcom/android/server/am/e$zta;)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v2, Lcom/android/server/am/e$bio;

    invoke-direct {v2, v4}, Lcom/android/server/am/e$bio;-><init>(Lcom/android/server/am/e$zta;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v2, Lcom/android/server/am/e$bio;

    invoke-direct {v2, v4}, Lcom/android/server/am/e$bio;-><init>(Lcom/android/server/am/e$zta;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v2, p0, Lcom/android/server/am/e;->you:Ljava/util/HashMap;

    const-string v3, "High Used Packages"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v2, Lcom/android/server/am/e;->oxb:Z

    if-eqz v2, :cond_f

    const-string v2, "OpRestartProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KEY_HIGH_USED_PACKAGES : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object p1, p0, Lcom/android/server/am/e;->you:Ljava/util/HashMap;

    const-string v2, "General Used Packages"

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean p1, Lcom/android/server/am/e;->oxb:Z

    if-eqz p1, :cond_10

    const-string p1, "OpRestartProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KEY_GENERAL_USED_PACKAGES : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-object p1, p0, Lcom/android/server/am/e;->you:Ljava/util/HashMap;

    const-string v0, "Low Used Packages"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean p1, Lcom/android/server/am/e;->oxb:Z

    if-eqz p1, :cond_11

    const-string p1, "OpRestartProcessManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KEY_LOW_USED_PACKAGES : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_12
    :goto_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sEnableModule is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/am/e;->f:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", sEnableAllModule is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/am/e;->g:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpRestartProcessManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/am/e;->you:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_1
.end method

.method private static m(J)V
    .locals 0

    sput-wide p0, Lcom/android/server/am/e;->h:J

    return-void
.end method

.method private n()V
    .locals 2

    const-string p0, "persist.sys.rp.debug"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.sys.rp.debug : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpRestartProcessManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/am/e;->i:J

    const-wide/32 v0, 0x1b7740

    sput-wide v0, Lcom/android/server/am/e;->m:J

    const/4 p0, 0x5

    sput p0, Lcom/android/server/am/e;->l:I

    const-wide/32 v0, 0x493e0

    sput-wide v0, Lcom/android/server/am/e;->n:J

    :cond_0
    return-void
.end method

.method private o()V
    .locals 10

    const-string v0, "persist.sys.rp.debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/e;->you:Ljava/util/HashMap;

    const-string v2, "High Used Packages"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/am/e;->you:Ljava/util/HashMap;

    const-string v3, "General Used Packages"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/am/e;->you:Ljava/util/HashMap;

    const-string v4, "Low Used Packages"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/server/am/e;->you:Ljava/util/HashMap;

    const-string v5, "High Used Packages"

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/server/am/e;->you:Ljava/util/HashMap;

    const-string v5, "General Used Packages"

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-nez v3, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/server/am/e;->you:Ljava/util/HashMap;

    const-string v5, "Low Used Packages"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v4, p0, Lcom/android/server/am/e;->kth:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/e$igw;

    invoke-virtual {v8}, Lcom/android/server/am/e$igw;->qbh()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    move v6, v1

    :goto_1
    if-nez v6, :cond_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/e$igw;

    invoke-virtual {v7}, Lcom/android/server/am/e$igw;->qbh()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    iget-object v4, p0, Lcom/android/server/am/e;->bio:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/e$igw;

    invoke-virtual {v8}, Lcom/android/server/am/e$igw;->qbh()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v6

    goto :goto_3

    :cond_b
    move v7, v1

    :goto_3
    if-nez v7, :cond_9

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/e$igw;

    invoke-virtual {v8}, Lcom/android/server/am/e$igw;->qbh()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_d
    iget-object v4, p0, Lcom/android/server/am/e;->igw:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_e
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/e$igw;

    invoke-virtual {v8}, Lcom/android/server/am/e$igw;->qbh()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v6

    goto :goto_5

    :cond_10
    move v7, v1

    :goto_5
    if-nez v7, :cond_e

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_11
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/e$igw;

    invoke-virtual {v8}, Lcom/android/server/am/e$igw;->qbh()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_12
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private obl()V
    .locals 12

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :cond_0
    :goto_0
    if-nez v1, :cond_4

    const/16 v3, 0x14

    if-le v3, v2, :cond_4

    invoke-direct {p0}, Lcom/android/server/am/e;->ire()V

    invoke-direct {p0}, Lcom/android/server/am/e;->veq()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/am/e;->zgw()V

    invoke-direct {p0}, Lcom/android/server/am/e;->oxb()V

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0}, Lcom/android/server/am/e;->veq()Ljava/util/ArrayList;

    move-result-object v4

    const-wide/16 v5, 0x0

    move v7, v0

    move-wide v8, v5

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v7, v10, :cond_1

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/e$you;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/e$you;

    invoke-static {v10, v11}, Lcom/android/server/am/e;->vju(Lcom/android/server/am/e$you;Lcom/android/server/am/e$you;)D

    move-result-wide v10

    add-double/2addr v8, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    sget-boolean v3, Lcom/android/server/am/e;->oxb:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/am/e;->ssp:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/e$sis;

    iget-object v4, v4, Lcom/android/server/am/e$sis;->you:Lcom/android/server/am/e$you;

    invoke-virtual {v4}, Lcom/android/server/am/e$you;->zta()V

    goto :goto_2

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Iteration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OpRestartProcessManager"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Centroid distances: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    cmpl-double v3, v8, v5

    if-nez v3, :cond_0

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_4
    iget-object p0, p0, Lcom/android/server/am/e;->ssp:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/e$sis;

    invoke-virtual {v0}, Lcom/android/server/am/e$sis;->tsu()Lcom/android/server/am/e$you;

    move-result-object v1

    new-instance v9, Lcom/android/server/am/e$you;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/e$you;-><init>(DDD)V

    invoke-static {v1, v9}, Lcom/android/server/am/e;->vju(Lcom/android/server/am/e$you;Lcom/android/server/am/e$you;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/am/e$sis;->tsu:D

    goto :goto_3

    :cond_5
    return-void
.end method

.method static synthetic oif()J
    .locals 2

    sget-wide v0, Lcom/android/server/am/e;->irq:J

    return-wide v0
.end method

.method private oxb()V
    .locals 12

    iget-object p0, p0, Lcom/android/server/am/e;->ssp:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/e$sis;

    invoke-virtual {v0}, Lcom/android/server/am/e$sis;->rtg()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v3, 0x0

    move-wide v5, v3

    move-wide v7, v5

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/e$igw;

    iget-wide v10, v9, Lcom/android/server/am/e$igw;->you:D

    add-double/2addr v3, v10

    iget-wide v10, v9, Lcom/android/server/am/e$igw;->sis:D

    add-double/2addr v5, v10

    iget-wide v9, v9, Lcom/android/server/am/e$igw;->tsu:D

    add-double/2addr v7, v9

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/am/e$sis;->tsu()Lcom/android/server/am/e$you;

    move-result-object v0

    if-lez v2, :cond_0

    int-to-double v1, v2

    div-double/2addr v3, v1

    div-double/2addr v5, v1

    div-double/2addr v7, v1

    iput-wide v3, v0, Lcom/android/server/am/e$you;->zta:D

    iput-wide v5, v0, Lcom/android/server/am/e$you;->you:D

    iput-wide v7, v0, Lcom/android/server/am/e$you;->sis:D

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic qbh(Lcom/android/server/am/e$igw;Lcom/android/server/am/e$you;)D
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/am/e;->bud(Lcom/android/server/am/e$igw;Lcom/android/server/am/e$you;)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic rtg(Lcom/android/server/am/e;)Landroid/util/AtomicFile;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/e;->tsu:Landroid/util/AtomicFile;

    return-object p0
.end method

.method static synthetic sis()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/e;->oxb:Z

    return v0
.end method

.method static synthetic ssp(Lcom/android/server/am/e;Landroid/util/AtomicFile;)Landroid/util/AtomicFile;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/e;->tsu:Landroid/util/AtomicFile;

    return-object p1
.end method

.method static synthetic tsu(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/am/e;->bud:Z

    return p0
.end method

.method private ugm([Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/e;->wtn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x2

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/e;->wtn:Ljava/util/ArrayList;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/server/am/e;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/android/server/am/e;->wtn:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/e$igw;

    invoke-static {v2}, Lcom/android/server/am/e$igw;->tsu(Lcom/android/server/am/e$igw;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "OpRestartProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/e$igw;

    invoke-static {v0}, Lcom/android/server/am/e$igw;->tsu(Lcom/android/server/am/e$igw;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " due to it\'s not in specific list"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private vdb([Ljava/lang/String;)V
    .locals 3

    array-length v0, p1

    add-int/lit8 v1, v0, -0x2

    aget-object v1, p1, v1

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    aget-object p1, p1, v0

    iget-object v0, p0, Lcom/android/server/am/e;->kth:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/e;->bio:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/e;->igw:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string v0, "high"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/e;->kth:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v2}, Lcom/android/server/am/OpAppRecordInjector;->noteHighUsedAppChanged(Ljava/util/ArrayList;Z)V

    goto :goto_1

    :cond_0
    const-string v0, "general"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/am/e;->bio:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v0, "low"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/server/am/e;->igw:Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static vdw()Lcom/android/server/am/e;
    .locals 4

    sget-object v0, Lcom/android/server/am/e;->ivd:Lcom/android/server/am/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/e;

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/"

    const-string v3, "OpRestartProcessManager"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/server/am/e;-><init>(Ljava/io/File;)V

    sput-object v0, Lcom/android/server/am/e;->ivd:Lcom/android/server/am/e;

    :cond_0
    sget-object v0, Lcom/android/server/am/e;->ivd:Lcom/android/server/am/e;

    return-object v0
.end method

.method private veq()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/e$you;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/server/am/e;->ssp:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/e$sis;

    invoke-virtual {v1}, Lcom/android/server/am/e$sis;->tsu()Lcom/android/server/am/e$you;

    move-result-object v1

    new-instance v9, Lcom/android/server/am/e$you;

    iget-wide v3, v1, Lcom/android/server/am/e$you;->zta:D

    iget-wide v5, v1, Lcom/android/server/am/e$you;->you:D

    iget-wide v7, v1, Lcom/android/server/am/e$you;->sis:D

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/e$you;-><init>(DDD)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static vju(Lcom/android/server/am/e$you;Lcom/android/server/am/e$you;)D
    .locals 12

    iget-wide v0, p0, Lcom/android/server/am/e$you;->zta:D

    iget-wide v2, p0, Lcom/android/server/am/e$you;->you:D

    iget-wide v4, p0, Lcom/android/server/am/e$you;->sis:D

    iget-wide v6, p1, Lcom/android/server/am/e$you;->zta:D

    iget-wide v8, p1, Lcom/android/server/am/e$you;->you:D

    iget-wide v10, p1, Lcom/android/server/am/e$you;->sis:D

    invoke-static/range {v0 .. v11}, Lcom/android/server/am/e;->cgv(DDDDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic wtn(I)I
    .locals 0

    sput p0, Lcom/android/server/am/e;->c:I

    return p0
.end method

.method static synthetic you(Lcom/android/server/am/e;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/e;->sis:Ljava/io/File;

    return-object p0
.end method

.method static synthetic ywr()J
    .locals 2

    sget-wide v0, Lcom/android/server/am/e;->h:J

    return-wide v0
.end method

.method private zgw()V
    .locals 10

    sget-object v0, Lcom/android/server/am/e;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/android/server/am/e;->b:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/e$igw;

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move v6, v1

    :goto_1
    sget v7, Lcom/android/server/am/e;->u:I

    if-ge v6, v7, :cond_1

    iget-object v7, p0, Lcom/android/server/am/e;->ssp:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/e$sis;

    invoke-virtual {v7}, Lcom/android/server/am/e$sis;->tsu()Lcom/android/server/am/e$you;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/server/am/e;->bud(Lcom/android/server/am/e$igw;Lcom/android/server/am/e$you;)D

    move-result-wide v7

    cmpg-double v9, v7, v4

    if-gez v9, :cond_0

    move v2, v6

    move-wide v4, v7

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v2}, Lcom/android/server/am/e$igw;->gwm(I)V

    iget-object v4, p0, Lcom/android/server/am/e;->ssp:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/e$sis;

    invoke-virtual {v4, v3}, Lcom/android/server/am/e$sis;->zta(Lcom/android/server/am/e$igw;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic zta(J)J
    .locals 0

    sput-wide p0, Lcom/android/server/am/e;->e:J

    return-wide p0
.end method


# virtual methods
.method public c(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/android/server/am/e;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/server/am/e;->b:Ljava/util/HashMap;

    new-instance v3, Lcom/android/server/am/e$igw;

    invoke-direct {v3, v0, v1, v1}, Lcom/android/server/am/e$igw;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-boolean v1, Lcom/android/server/am/e;->oxb:Z

    if-eqz v1, :cond_0

    const-string v1, "OpRestartProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialAllPackage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sput-boolean v1, Lcom/android/server/am/e;->bud:Z

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public cjf(J)V
    .locals 8

    sget-boolean v0, Lcom/android/server/am/e;->veq:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-boolean v2, Lcom/android/server/am/e;->oxb:Z

    const-string v3, "OpRestartProcessManager"

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Old time : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", new time : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sub-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0x36ee80

    cmp-long v2, v4, v6

    if-gez v2, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Normal time diff : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    sget-boolean v0, Lcom/android/server/am/e;->oxb:Z

    if-eqz v0, :cond_3

    const-string v0, "Clean all data due to time is changed"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/e;->doCleanData(J)V

    return-void
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/e;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/server/am/e;->f:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/server/am/e;->g:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/e;->irq(Z)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public doAddNewPackages(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/android/server/am/e;->vdw()Lcom/android/server/am/e;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/e;->gwm(Ljava/lang/String;)V

    return-void
.end method

.method public doCleanAllData(J)V
    .locals 0

    invoke-static {}, Lcom/android/server/am/e;->vdw()Lcom/android/server/am/e;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/e;->cjf(J)V

    return-void
.end method

.method public doCleanData(J)V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/e;->oxb:Z

    if-eqz v0, :cond_0

    const-string v0, "OpRestartProcessManager"

    const-string v1, "Start to clean data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/am/e;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/android/server/am/e;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/e$igw;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/e$igw;->gck(J)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/e;->les:Z

    sput-wide p1, Lcom/android/server/am/e;->irq:J

    sput v0, Lcom/android/server/am/e;->c:I

    const-wide/16 p1, 0x0

    sput-wide p1, Lcom/android/server/am/e;->d:J

    sput-wide p1, Lcom/android/server/am/e;->e:J

    iget-object p1, p0, Lcom/android/server/am/e;->zta:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/android/server/am/e;->you:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/android/server/am/e;->sis:Ljava/io/File;

    const-string v0, "record.txt"

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_2
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/android/server/am/e;->sis:Ljava/io/File;

    const-string v0, "record_backup.txt"

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-boolean p0, Lcom/android/server/am/e;->oxb:Z

    if-eqz p0, :cond_4

    const-string p0, "OpRestartProcessManager"

    const-string p1, "Finish cleaning data"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public doDump(Ljava/io/PrintWriter;Ljava/util/ArrayList;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/server/am/e;->vdw()Lcom/android/server/am/e;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/e;->fto(Ljava/io/PrintWriter;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public doGetGeneralUsedPackageList(Z)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/server/am/e;->vdw()Lcom/android/server/am/e;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/e;->les(Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public doGetHighUsedPackageList(Z)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/server/am/e;->vdw()Lcom/android/server/am/e;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/e;->irq(Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public doGetLowUsedPackageList(Z)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/server/am/e;->vdw()Lcom/android/server/am/e;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/e;->qeg(Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public doHandleCommand([Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/android/server/am/e;->vdw()Lcom/android/server/am/e;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/e;->ivd([Ljava/lang/String;)V

    return-void
.end method

.method public doIsHighUsedPackages(Ljava/lang/String;)Z
    .locals 0

    invoke-static {}, Lcom/android/server/am/e;->vdw()Lcom/android/server/am/e;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/e;->d(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public doRemovePackage(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/android/server/am/e;->vdw()Lcom/android/server/am/e;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/e;->h(Ljava/lang/String;)V

    return-void
.end method

.method public doUpdateDuration(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0

    invoke-static {}, Lcom/android/server/am/e;->vdw()Lcom/android/server/am/e;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/e;->q(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public doUpdateLaunchTime(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0

    invoke-static {}, Lcom/android/server/am/e;->vdw()Lcom/android/server/am/e;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/e;->r(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public doWriteRecord(Z)V
    .locals 0

    invoke-static {}, Lcom/android/server/am/e;->vdw()Lcom/android/server/am/e;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/e;->s(Z)V

    return-void
.end method

.method public fto(Ljava/io/PrintWriter;Ljava/util/ArrayList;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/am/e;->f:Z

    if-eqz v0, :cond_9

    sget-boolean v0, Lcom/android/server/am/e;->g:Z

    if-nez v0, :cond_0

    goto/16 :goto_8

    :cond_0
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/am/e;->lqr(Z)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/android/server/am/e;->s(Z)V

    const-string v2, "Current Restart Whitelist : "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p2, "Classification Whitelist : "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "High used : "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/am/e;->kth:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p2, "General used : "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/am/e;->bio:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string p2, "Low used : "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/am/e;->igw:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz p3, :cond_6

    const-string p2, "Current Restart Rank : "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "ScoreFG   ScoreLRU   ScoreTimes   Package Name                                           Total Launch Times   Foreground Time                    Last LaunchTime"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/am/e;->zta:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/am/e$igw;

    invoke-virtual {p3}, Lcom/android/server/am/e$igw;->bvj()V

    invoke-static {p3}, Lcom/android/server/am/e$igw;->wtn(Lcom/android/server/am/e$igw;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/e$kth;

    invoke-static {v3}, Lcom/android/server/am/e$kth;->ibl(Lcom/android/server/am/e$kth;)J

    move-result-wide v4

    invoke-static {v3}, Lcom/android/server/am/e$kth;->gwm(Lcom/android/server/am/e$kth;)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {v3, v4, v5}, Lcom/android/server/am/e$kth;->bvj(Lcom/android/server/am/e$kth;J)J

    invoke-static {v3}, Lcom/android/server/am/e$kth;->oif(Lcom/android/server/am/e$kth;)J

    move-result-wide v4

    invoke-static {p3, v4, v5}, Lcom/android/server/am/e$igw;->kth(Lcom/android/server/am/e$igw;J)J

    invoke-static {v3}, Lcom/android/server/am/e$kth;->sis(Lcom/android/server/am/e$kth;)J

    move-result-wide v3

    invoke-static {p3, v3, v4}, Lcom/android/server/am/e$igw;->igw(Lcom/android/server/am/e$igw;J)J

    goto :goto_5

    :cond_5
    const-string v2, "%1$6.2f      %2$6.2f       %3$6.2f      %4$50s  %5$18d  %6$16d   %7$32d"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v5, p3, Lcom/android/server/am/e$igw;->sis:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    iget-wide v4, p3, Lcom/android/server/am/e$igw;->tsu:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x2

    iget-wide v5, p3, Lcom/android/server/am/e$igw;->you:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p3}, Lcom/android/server/am/e$igw;->tsu(Lcom/android/server/am/e$igw;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p3}, Lcom/android/server/am/e$igw;->bio(Lcom/android/server/am/e$igw;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {p3}, Lcom/android/server/am/e$igw;->cno(Lcom/android/server/am/e$igw;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    invoke-static {p3}, Lcom/android/server/am/e$igw;->you(Lcom/android/server/am/e$igw;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_6
    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "Print All type packages : "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " : "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " (From big to small)"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_7
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/e$igw;

    invoke-static {v0}, Lcom/android/server/am/e$igw;->tsu(Lcom/android/server/am/e$igw;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    :cond_7
    const-string p3, ""

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_9
    :goto_8
    return-void
.end method

.method public getInitPackagesFromSystemReady()Z
    .locals 0

    sget-boolean p0, Lcom/android/server/am/e;->veq:Z

    return p0
.end method

.method public gwm(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/am/e;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/e;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-boolean v0, Lcom/android/server/am/e;->oxb:Z

    if-eqz v0, :cond_1

    const-string v0, "OpRestartProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Lcom/android/server/am/e$igw;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/am/e$igw;-><init>(Ljava/lang/String;ZZ)V

    sget-object v1, Lcom/android/server/am/e;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public h(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/am/e;->qeg:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/am/e;->oxb:Z

    if-eqz v0, :cond_0

    const-string v0, "OpRestartProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/am/e;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/android/server/am/e;->oxb:Z

    if-eqz v0, :cond_2

    const-string v0, "OpRestartProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public initEssentials()V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/am/e;->b()V

    invoke-direct {p0}, Lcom/android/server/am/e;->g()V

    invoke-direct {p0}, Lcom/android/server/am/e;->n()V

    sget-wide v0, Lcom/android/server/am/e;->irq:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/e;->irq:J

    :cond_0
    return-void
.end method

.method public irq(Z)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/am/e;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/am/e;->f:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/am/e;->g:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/e;->lqr(Z)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "High Used Packages"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/server/am/e;->hmo(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/server/am/OpAppRecordInjector;->noteHighUsedAppChanged(Ljava/util/ArrayList;Z)V

    return-object p0

    :cond_1
    :goto_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public ivd([Ljava/lang/String;)V
    .locals 4

    sget-boolean v0, Lcom/android/server/am/e;->f:Z

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/android/server/am/e;->g:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    sget-boolean v0, Lcom/android/server/am/e;->oxb:Z

    if-eqz v0, :cond_1

    const-string v0, "OpRestartProcessManager"

    const-string v1, "Handle command :"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    const-string v3, "OpRestartProcessManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    array-length v0, p1

    monitor-enter p0

    add-int/lit8 v1, v0, -0x1

    :try_start_0
    aget-object v1, p1, v1

    const-string v2, "cleanall"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/server/am/e;->ear()V

    goto :goto_1

    :cond_2
    const/4 v1, 0x3

    if-le v0, v1, :cond_3

    add-int/lit8 v2, v0, -0x3

    aget-object v2, p1, v2

    const-string v3, "add"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p1}, Lcom/android/server/am/e;->vdb([Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-le v0, v1, :cond_4

    add-int/lit8 v1, v0, -0x3

    aget-object v1, p1, v1

    const-string v2, "remove"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, p1}, Lcom/android/server/am/e;->i([Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-le v0, v1, :cond_5

    aget-object v1, p1, v2

    const-string v3, "specific"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0, p1}, Lcom/android/server/am/e;->ugm([Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    aget-object v0, p1, v2

    const-string v1, "clusters"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Lcom/android/server/am/e;->k([Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    aget-object p1, p1, v2

    const-string v0, "clear"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Lcom/android/server/am/e;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    iget-object p1, p0, Lcom/android/server/am/e;->you:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_8
    :goto_3
    return-void
.end method

.method public les(Z)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/am/e;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/am/e;->f:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/am/e;->g:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/e;->lqr(Z)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "General Used Packages"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/server/am/e;->hmo(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public p(Landroid/content/Context;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/e;->oxb:Z

    if-eqz v0, :cond_0

    const-string v0, "RestartProcess"

    const-string v1, "Initial from system ready"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-class v1, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherApps;

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/am/e;->c(Ljava/util/ArrayList;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/am/e;->setInitPackagesFromSystemReady(Z)V

    return-void
.end method

.method public q(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/e;->g:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/am/e;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/e$igw;

    if-eqz v0, :cond_2

    sget-boolean v1, Lcom/android/server/am/e;->vju:Z

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/android/server/am/e$igw;->rtg(Lcom/android/server/am/e$igw;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean p1, Lcom/android/server/am/e;->oxb:Z

    if-eqz p1, :cond_1

    const-string p1, "OpRestartProcessManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Screen is off, skip updateDuration : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/am/e$igw;->rtg(Lcom/android/server/am/e$igw;)Z

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveStopActivity(Landroid/content/Context;Ljava/lang/String;J)V

    if-nez v0, :cond_3

    monitor-exit p0

    return-void

    :cond_3
    invoke-virtual {v0, p1, p3, p4}, Lcom/android/server/am/e$igw;->ugm(Landroid/content/Context;J)V

    const/4 p1, 0x1

    invoke-static {v0, p1}, Lcom/android/server/am/e$igw;->ssp(Lcom/android/server/am/e$igw;Z)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public qeg(Z)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/am/e;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/am/e;->f:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/am/e;->g:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/e;->lqr(Z)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "Low Used Packages"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/server/am/e;->hmo(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public r(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2

    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveStartActivity(Landroid/content/Context;Ljava/lang/String;)V

    sget-boolean p1, Lcom/android/server/am/e;->g:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-boolean p1, Lcom/android/server/am/e;->vju:Z

    if-eqz p1, :cond_2

    sget-boolean p0, Lcom/android/server/am/e;->oxb:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Screen is off, skip updateLaunchTime : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpRestartProcessManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    monitor-enter p0

    :try_start_0
    sget-boolean p1, Lcom/android/server/am/e;->oxb:Z

    if-eqz p1, :cond_3

    const-string p1, "OpRestartProcessManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update Total Launch Times :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-object p1, Lcom/android/server/am/e;->b:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/e$igw;

    if-nez p1, :cond_5

    sput-object p2, Lcom/android/server/am/e;->vdw:Ljava/lang/String;

    sget-boolean p1, Lcom/android/server/am/e;->oxb:Z

    if-eqz p1, :cond_4

    const-string p1, "OpRestartProcessManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "sLastRunningPackage (null) : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/android/server/am/e;->vdw:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    monitor-exit p0

    return-void

    :cond_5
    invoke-virtual {p1, p3, p4}, Lcom/android/server/am/e$igw;->vdb(J)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/am/e$igw;->ssp(Lcom/android/server/am/e$igw;Z)Z

    sget-object v0, Lcom/android/server/am/e;->vdw:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1, p2}, Lcom/android/server/am/e$igw;->oif(Ljava/lang/String;)V

    :cond_6
    sput-object p2, Lcom/android/server/am/e;->vdw:Ljava/lang/String;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean p0, Lcom/android/server/am/e;->oxb:Z

    if-eqz p0, :cond_7

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Last Running Package : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/server/am/e;->vdw:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " , start time "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpRestartProcessManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public rankAllPkgs()V
    .locals 22

    move-object/from16 v1, p0

    sget-object v0, Lcom/android/server/am/e;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/am/e;->f:Z

    if-eqz v0, :cond_13

    sget-boolean v0, Lcom/android/server/am/e;->g:Z

    if-nez v0, :cond_1

    goto/16 :goto_a

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v6, v1, Lcom/android/server/am/e;->zta:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-boolean v8, Lcom/android/server/am/e;->oxb:Z

    if-eqz v8, :cond_2

    const-string v8, "OpRestartProcessManager"

    const-string v9, "Start to rank all packages"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v8, Lcom/android/server/am/e;->b:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v9, v4

    :cond_3
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    sget-object v11, Lcom/android/server/am/e;->b:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/e$igw;

    invoke-virtual {v10}, Lcom/android/server/am/e$igw;->ibl()V

    invoke-virtual {v10, v6, v7}, Lcom/android/server/am/e$igw;->oxb(J)Z

    move-result v10

    if-eqz v10, :cond_3

    move v9, v5

    goto :goto_0

    :cond_4
    if-eqz v9, :cond_5

    const-string v8, "OpRestartProcessManager"

    const-string v9, "CurrentMaxDayRecord has changed, update all packages again"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v8, Lcom/android/server/am/e;->b:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    sget-object v10, Lcom/android/server/am/e;->b:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/e$igw;

    invoke-virtual {v9, v6, v7}, Lcom/android/server/am/e$igw;->oxb(J)Z

    goto :goto_1

    :cond_5
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v7, v4

    :goto_2
    sget v8, Lcom/android/server/am/e;->c:I

    if-ge v7, v8, :cond_c

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    sget-object v8, Lcom/android/server/am/e;->b:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    sget-object v10, Lcom/android/server/am/e;->b:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/e$igw;

    invoke-static {v9}, Lcom/android/server/am/e$igw;->wtn(Lcom/android/server/am/e$igw;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v7, v10, :cond_8

    invoke-static {v9}, Lcom/android/server/am/e$igw;->wtn(Lcom/android/server/am/e$igw;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/e$kth;

    invoke-static {v9}, Lcom/android/server/am/e$kth;->zta(Lcom/android/server/am/e$kth;)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_7

    invoke-static {v9}, Lcom/android/server/am/e$kth;->ibl(Lcom/android/server/am/e$kth;)J

    move-result-wide v10

    invoke-static {v9}, Lcom/android/server/am/e$kth;->gwm(Lcom/android/server/am/e$kth;)J

    move-result-wide v12

    add-long/2addr v10, v12

    invoke-static {v9, v10, v11}, Lcom/android/server/am/e$kth;->bvj(Lcom/android/server/am/e$kth;J)J

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    sget v10, Lcom/android/server/am/e;->c:I

    sub-int/2addr v10, v5

    if-eq v7, v10, :cond_6

    invoke-static {v9, v5}, Lcom/android/server/am/e$kth;->kth(Lcom/android/server/am/e$kth;Z)Z

    goto :goto_3

    :cond_8
    const-string v10, "OpRestartProcessManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lcom/android/server/am/e$igw;->tsu(Lcom/android/server/am/e$igw;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " size is abnrmal "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lcom/android/server/am/e$igw;->wtn(Lcom/android/server/am/e$igw;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", max size is "

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v9, Lcom/android/server/am/e;->c:I

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_9
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/e$kth;

    invoke-static {v8}, Lcom/android/server/am/e$kth;->cno(Lcom/android/server/am/e$kth;)Z

    move-result v8

    if-eqz v8, :cond_a

    goto :goto_5

    :cond_a
    invoke-direct {v1, v6}, Lcom/android/server/am/e;->e(Ljava/util/ArrayList;)V

    sget v8, Lcom/android/server/am/e;->c:I

    sub-int/2addr v8, v5

    if-eq v7, v8, :cond_b

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/e$kth;

    invoke-static {v9, v5}, Lcom/android/server/am/e$kth;->kth(Lcom/android/server/am/e$kth;Z)Z

    goto :goto_4

    :cond_b
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :cond_c
    sget-object v6, Lcom/android/server/am/e;->b:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    sget-object v8, Lcom/android/server/am/e;->b:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/e$igw;

    move v8, v4

    :goto_7
    sget v9, Lcom/android/server/am/e;->c:I

    if-ge v8, v9, :cond_d

    invoke-static {v7}, Lcom/android/server/am/e$igw;->wtn(Lcom/android/server/am/e$igw;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/e$kth;

    iget-wide v10, v7, Lcom/android/server/am/e$igw;->you:D

    invoke-static {v9}, Lcom/android/server/am/e$kth;->bio(Lcom/android/server/am/e$kth;)D

    move-result-wide v12

    add-int/lit8 v8, v8, 0x1

    int-to-double v14, v8

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    iput-wide v10, v7, Lcom/android/server/am/e$igw;->you:D

    iget-wide v10, v7, Lcom/android/server/am/e$igw;->sis:D

    invoke-static {v9}, Lcom/android/server/am/e$kth;->wtn(Lcom/android/server/am/e$kth;)D

    move-result-wide v12

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    iput-wide v10, v7, Lcom/android/server/am/e$igw;->sis:D

    iget-wide v10, v7, Lcom/android/server/am/e$igw;->tsu:D

    invoke-static {v9}, Lcom/android/server/am/e$kth;->dma(Lcom/android/server/am/e$kth;)D

    move-result-wide v12

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    iput-wide v10, v7, Lcom/android/server/am/e$igw;->tsu:D

    goto :goto_7

    :cond_d
    iget-wide v8, v7, Lcom/android/server/am/e$igw;->you:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v8, v7, Lcom/android/server/am/e$igw;->sis:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v8, v7, Lcom/android/server/am/e$igw;->tsu:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, v1, Lcom/android/server/am/e;->zta:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_e
    iget-object v6, v1, Lcom/android/server/am/e;->zta:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/server/am/e$wtn;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/android/server/am/e$wtn;-><init>(Lcom/android/server/am/e$zta;)V

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    sub-int/2addr v12, v5

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sub-double v16, v12, v6

    sub-double v18, v14, v8

    sub-double v20, v2, v10

    sget-boolean v0, Lcom/android/server/am/e;->oxb:Z

    if-eqz v0, :cond_f

    const-string v0, "OpRestartProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "maxScoreX : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ", maxScoreY : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ", maxScoreZ : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OpRestartProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "minScoreX : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ", minScoreY : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ", minScoreZ : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    const/4 v0, 0x0

    :goto_8
    sget v2, Lcom/android/server/am/e;->u:I

    if-ge v0, v2, :cond_11

    iget-object v2, v1, Lcom/android/server/am/e;->cno:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/e$you;

    int-to-double v3, v0

    mul-double v12, v3, v16

    sget v5, Lcom/android/server/am/e;->u:I

    const/4 v14, 0x1

    sub-int/2addr v5, v14

    int-to-double v14, v5

    div-double/2addr v12, v14

    add-double/2addr v12, v6

    iput-wide v12, v2, Lcom/android/server/am/e$you;->zta:D

    iget-object v2, v1, Lcom/android/server/am/e;->cno:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/e$you;

    mul-double v12, v3, v18

    sget v5, Lcom/android/server/am/e;->u:I

    const/4 v14, 0x1

    sub-int/2addr v5, v14

    int-to-double v14, v5

    div-double/2addr v12, v14

    add-double/2addr v12, v8

    iput-wide v12, v2, Lcom/android/server/am/e$you;->you:D

    iget-object v2, v1, Lcom/android/server/am/e;->cno:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/e$you;

    mul-double v3, v3, v20

    sget v5, Lcom/android/server/am/e;->u:I

    const/4 v12, 0x1

    sub-int/2addr v5, v12

    int-to-double v12, v5

    div-double/2addr v3, v12

    add-double/2addr v3, v10

    iput-wide v3, v2, Lcom/android/server/am/e$you;->sis:D

    sget-boolean v2, Lcom/android/server/am/e;->oxb:Z

    if-eqz v2, :cond_10

    iget-object v2, v1, Lcom/android/server/am/e;->cno:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/e$you;

    invoke-virtual {v2}, Lcom/android/server/am/e$you;->zta()V

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/e;->obl()V

    sget-boolean v0, Lcom/android/server/am/e;->oxb:Z

    if-eqz v0, :cond_12

    const-string v0, "OpRestartProcessManager"

    const-string v2, "Finish all packages"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    monitor-exit p0

    goto :goto_9

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/e;->doCleanData(J)V

    :goto_9
    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/am/e;->lqr(Z)Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "High Used Packages"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Lcom/android/server/am/e;->hmo(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/am/OpAppRecordInjector;->noteHighUsedAppChanged(Ljava/util/ArrayList;Z)V

    :cond_13
    :goto_a
    return-void
.end method

.method public s(Z)V
    .locals 7

    sget-boolean v0, Lcom/android/server/am/e;->g:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "OpRestartProcessManager"

    if-nez p1, :cond_2

    sget-boolean p1, Lcom/android/server/am/e;->bud:Z

    if-nez p1, :cond_1

    sget-wide v3, Lcom/android/server/am/e;->e:J

    sub-long v3, v0, v3

    const-wide/32 v5, 0x1b7740

    cmp-long p1, v3, v5

    if-gez p1, :cond_2

    :cond_1
    const-string p0, "No need to write old record"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    sget-boolean p1, Lcom/android/server/am/e;->oxb:Z

    if-eqz p1, :cond_3

    const-string p1, "Start to write old record"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 p1, 0x1

    sput-boolean p1, Lcom/android/server/am/e;->bud:Z

    new-instance p1, Lcom/android/server/am/e$zta;

    invoke-direct {p1, p0, v2, v0, v1}, Lcom/android/server/am/e$zta;-><init>(Lcom/android/server/am/e;Ljava/lang/String;J)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setInitPackagesFromSystemReady(Z)V
    .locals 0

    sput-boolean p1, Lcom/android/server/am/e;->veq:Z

    return-void
.end method

.method public setScreenState(Z)V
    .locals 0

    sget-boolean p0, Lcom/android/server/am/e;->g:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    sput-boolean p1, Lcom/android/server/am/e;->vju:Z

    sget-boolean p0, Lcom/android/server/am/e;->oxb:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Screen off is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/android/server/am/e;->vju:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpRestartProcessManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public setUpdatingPackage(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/android/server/am/e;->qeg:Ljava/lang/String;

    return-void
.end method
