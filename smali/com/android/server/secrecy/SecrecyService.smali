.class public Lcom/android/server/secrecy/SecrecyService;
.super Lcom/android/server/SystemService;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/secrecy/SecrecyService$sis;,
        Lcom/android/server/secrecy/SecrecyService$SecrecyServiceWrapper;,
        Lcom/android/server/secrecy/SecrecyService$you;
    }
.end annotation


# static fields
.field public static final bio:Ljava/lang/String; = "SecrecyService"

.field public static igw:Z = false

.field private static final wtn:Ljava/lang/String; = "oem.secrecy.support"


# instance fields
.field private cno:Lcom/android/server/secrecy/tsu/you;

.field private kth:Lcom/android/server/secrecy/tsu/sis;

.field private rtg:Z

.field private sis:Z

.field private ssp:Lcom/android/server/secrecy/sis/sis;

.field private final tsu:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/secrecy/SecrecyService$you;",
            ">;"
        }
    .end annotation
.end field

.field private final you:Lcom/android/server/ServiceThread;

.field private final zta:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/secrecy/SecrecyService;->igw:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/secrecy/SecrecyService;->tsu:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lcom/android/server/secrecy/SecrecyService;->zta:Landroid/content/Context;

    new-instance p1, Lcom/android/server/ServiceThread;

    const-string v0, "SecrecyService"

    const/4 v1, -0x2

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object p1, p0, Lcom/android/server/secrecy/SecrecyService;->you:Lcom/android/server/ServiceThread;

    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->start()V

    invoke-direct {p0}, Lcom/android/server/secrecy/SecrecyService;->bio()V

    return-void
.end method

.method private bio()V
    .locals 2

    new-instance v0, Lcom/android/server/secrecy/tsu/you;

    iget-object v1, p0, Lcom/android/server/secrecy/SecrecyService;->zta:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/secrecy/tsu/you;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/secrecy/SecrecyService;->cno:Lcom/android/server/secrecy/tsu/you;

    new-instance v0, Lcom/android/server/secrecy/tsu/sis;

    iget-object v1, p0, Lcom/android/server/secrecy/SecrecyService;->zta:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/secrecy/tsu/sis;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/secrecy/SecrecyService;->kth:Lcom/android/server/secrecy/tsu/sis;

    return-void
.end method

.method private igw(Landroid/content/pm/ActivityInfo;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/secrecy/SecrecyService;->wtn()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyService;->ssp:Lcom/android/server/secrecy/sis/sis;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/server/secrecy/sis/sis;->wtn(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyService;->cno:Lcom/android/server/secrecy/tsu/you;

    invoke-virtual {v0, p1}, Lcom/android/server/secrecy/tsu/you;->ssp(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Lcom/android/server/secrecy/SecrecyService;->cno:Lcom/android/server/secrecy/tsu/you;

    invoke-virtual {p0, p1}, Lcom/android/server/secrecy/tsu/you;->rtg(Landroid/content/pm/ActivityInfo;)Z

    move-result p0

    return p0
.end method

.method private kth()V
    .locals 3

    invoke-static {}, Lcom/android/server/secrecy/sis/sis;->igw()Lcom/android/server/secrecy/sis/sis;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/secrecy/SecrecyService;->ssp:Lcom/android/server/secrecy/sis/sis;

    iget-object v1, p0, Lcom/android/server/secrecy/SecrecyService;->zta:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/secrecy/SecrecyService;->you:Lcom/android/server/ServiceThread;

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/secrecy/sis/sis;->ugm(Landroid/content/Context;Lcom/android/server/secrecy/SecrecyService;Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic rtg(Lcom/android/server/secrecy/SecrecyService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/secrecy/SecrecyService;->ssp(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic sis(Lcom/android/server/secrecy/SecrecyService;Landroid/content/pm/ActivityInfo;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/secrecy/SecrecyService;->igw(Landroid/content/pm/ActivityInfo;)Z

    move-result p0

    return p0
.end method

.method private ssp(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    array-length v0, p3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "This device do not support secrecy dump"

    if-lez v0, :cond_d

    aget-object v0, p3, v2

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_d

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v2, 0x1

    const-string v4, "-h"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string p0, "secrecy service dump options:"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  [-h] [cmd] ..."

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  cmd may be one of:"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    l[log]: dynamically adjust secrecy log "

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v4, "-import_key"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/android/server/secrecy/SecrecyService;->wtn()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_2
    array-length p1, p3

    if-ge v2, p1, :cond_4

    aget-object p1, p3, v2

    iget-object p3, p0, Lcom/android/server/secrecy/SecrecyService;->ssp:Lcom/android/server/secrecy/sis/sis;

    invoke-virtual {p3}, Lcom/android/server/secrecy/sis/sis;->cno()Lcom/android/server/secrecy/sis/zta;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Lcom/android/server/secrecy/sis/zta;->sis(Ljava/io/PrintWriter;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    :try_start_0
    iget-object p0, p0, Lcom/android/server/secrecy/SecrecyService;->ssp:Lcom/android/server/secrecy/sis/sis;

    invoke-virtual {p0, p1}, Lcom/android/server/secrecy/sis/sis;->gck(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "ERROR: The key contains NOT hex."

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const-string p0, "ERROR: Key argument is missing."

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_5
    const-string v4, "-config"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Lcom/android/server/secrecy/SecrecyService;->wtn()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_6
    array-length p1, p3

    if-ge v1, p1, :cond_7

    aget-object p1, p3, v2

    aget-object p3, p3, v1

    iget-object p0, p0, Lcom/android/server/secrecy/SecrecyService;->ssp:Lcom/android/server/secrecy/sis/sis;

    invoke-virtual {p0}, Lcom/android/server/secrecy/sis/sis;->cno()Lcom/android/server/secrecy/sis/zta;

    move-result-object p0

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/secrecy/sis/zta;->you(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    array-length p1, p3

    if-ge v2, p1, :cond_8

    aget-object p1, p3, v2

    iget-object p0, p0, Lcom/android/server/secrecy/SecrecyService;->ssp:Lcom/android/server/secrecy/sis/sis;

    invoke-virtual {p0}, Lcom/android/server/secrecy/sis/sis;->cno()Lcom/android/server/secrecy/sis/zta;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lcom/android/server/secrecy/sis/zta;->zta(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    const-string p0, "ERROR: Config or Signature argument is missing."

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_9
    const-string p3, "-imei"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_b

    invoke-virtual {p0}, Lcom/android/server/secrecy/SecrecyService;->wtn()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_a
    iget-object p0, p0, Lcom/android/server/secrecy/SecrecyService;->ssp:Lcom/android/server/secrecy/sis/sis;

    invoke-virtual {p0}, Lcom/android/server/secrecy/sis/sis;->bio()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "IMEI: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_b
    const-string p3, "-status"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_c

    iget-object p0, p0, Lcom/android/server/secrecy/SecrecyService;->ssp:Lcom/android/server/secrecy/sis/sis;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/secrecy/sis/sis;->zgw(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    return-void

    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unknown argument: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; use -h for help"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_d
    :goto_2
    array-length v0, p3

    if-lez v0, :cond_10

    aget-object v0, p3, v2

    const-string v2, "log"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "l"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_3

    :cond_e
    const-string p3, "debug_switch"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_10

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "  all="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/android/server/secrecy/SecrecyService;->igw:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_f
    :goto_3
    invoke-virtual {p0, p2, p3}, Lcom/android/server/secrecy/SecrecyService;->cno(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void

    :cond_10
    invoke-virtual {p0}, Lcom/android/server/secrecy/SecrecyService;->wtn()Z

    move-result p3

    if-nez p3, :cond_11

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_11
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mSystemReady       = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/secrecy/SecrecyService;->sis:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mSecrecySupport       = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/secrecy/SecrecyService;->rtg:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DEBUG    = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/secrecy/SecrecyService;->igw:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LogLevel = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/secrecy/sis/ssp/zta;->ssp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/secrecy/SecrecyService;->ssp:Lcom/android/server/secrecy/sis/sis;

    const-string v0, ""

    invoke-virtual {p3, p1, p2, v0}, Lcom/android/server/secrecy/sis/sis;->rtg(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/secrecy/SecrecyService;->ssp:Lcom/android/server/secrecy/sis/sis;

    invoke-virtual {p3, v1}, Lcom/android/server/secrecy/sis/sis;->wtn(I)Z

    move-result p3

    if-nez p3, :cond_12

    iget-object p3, p0, Lcom/android/server/secrecy/SecrecyService;->cno:Lcom/android/server/secrecy/tsu/you;

    invoke-virtual {p3, p1, p2, v0}, Lcom/android/server/secrecy/tsu/you;->you(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_12
    iget-object p0, p0, Lcom/android/server/secrecy/SecrecyService;->kth:Lcom/android/server/secrecy/tsu/sis;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/secrecy/tsu/tsu;->you(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic tsu(Lcom/android/server/secrecy/SecrecyService;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/secrecy/SecrecyService;->zta:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic you(Lcom/android/server/secrecy/SecrecyService;)Lcom/android/server/secrecy/sis/sis;
    .locals 0

    iget-object p0, p0, Lcom/android/server/secrecy/SecrecyService;->ssp:Lcom/android/server/secrecy/sis/sis;

    return-object p0
.end method

.method static synthetic zta(Lcom/android/server/secrecy/SecrecyService;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/android/server/secrecy/SecrecyService;->tsu:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method


# virtual methods
.method protected cno(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dynamicallyConfigLogTag, args.length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dynamicallyConfigLogTag, args["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v0, p2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const-string p2, "********** Invalid argument! Get detail help as bellow: **********"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/secrecy/SecrecyService;->gck(Ljava/io/PrintWriter;)V

    return-void

    :cond_1
    const/4 p0, 0x1

    aget-object p0, p2, p0

    const/4 v0, 0x2

    aget-object p2, p2, v0

    const-string v0, "1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dynamicallyConfigLogTag, tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", on: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "all"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sput-boolean p2, Lcom/android/server/secrecy/SecrecyService;->igw:Z

    invoke-static {p2}, Lcom/android/server/secrecy/sis/ssp/zta;->sis(Z)V

    :cond_2
    return-void
.end method

.method public dma(Ljava/util/Map;)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/secrecy/SecrecyService;->tsu:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/secrecy/SecrecyService$you;

    :try_start_0
    iget-object v1, v0, Lcom/android/server/secrecy/SecrecyService$you;->zta:Landroid/secrecy/ISecrecyServiceReceiver;

    invoke-interface {v1, p1}, Landroid/secrecy/ISecrecyServiceReceiver;->onSecrecyStateChanged(Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {v0}, Lcom/android/server/secrecy/SecrecyService$you;->binderDied()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected gck(Ljava/io/PrintWriter;)V
    .locals 0

    const-string p0, "********************** Help begin:**********************"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "1. open all log in SecrecyService"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "cmd: dumpsys secrecy log all 0/1"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "----------------------------------"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "********************** Help end.  **********************"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public oif()V
    .locals 2

    const-string v0, "SecrecyService"

    const-string v1, "systemReady"

    invoke-static {v0, v1}, Lcom/android/server/secrecy/sis/ssp/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/secrecy/SecrecyService;->sis:Z

    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyService;->zta:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oem.secrecy.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/secrecy/SecrecyService;->qbh(Z)V

    invoke-direct {p0}, Lcom/android/server/secrecy/SecrecyService;->kth()V

    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyService;->ssp:Lcom/android/server/secrecy/sis/sis;

    iget-boolean p0, p0, Lcom/android/server/secrecy/SecrecyService;->rtg:Z

    invoke-virtual {v0, p0}, Lcom/android/server/secrecy/sis/sis;->obl(Z)V

    return-void
.end method

.method public onStart()V
    .locals 3

    const-string v0, "SecrecyService"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/android/server/secrecy/sis/ssp/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/secrecy/SecrecyService$SecrecyServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/secrecy/SecrecyService$SecrecyServiceWrapper;-><init>(Lcom/android/server/secrecy/SecrecyService;Lcom/android/server/secrecy/SecrecyService$zta;)V

    const-string v2, "secrecy"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-class v0, Landroid/secrecy/SecrecyManagerInternal;

    new-instance v2, Lcom/android/server/secrecy/SecrecyService$sis;

    invoke-direct {v2, p0, v1}, Lcom/android/server/secrecy/SecrecyService$sis;-><init>(Lcom/android/server/secrecy/SecrecyService;Lcom/android/server/secrecy/SecrecyService$zta;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public qbh(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/server/secrecy/SecrecyService;->rtg:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setSecrecySupport mSecrecySupport = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/secrecy/SecrecyService;->rtg:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SecrecyService"

    invoke-static {p1, p0}, Lcom/android/server/secrecy/sis/ssp/zta;->zta(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public wtn()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/secrecy/SecrecyService;->rtg:Z

    return p0
.end method

.method public ywr(Landroid/content/Context;)V
    .locals 2

    new-instance p1, Lcom/android/server/secrecy/SecrecyService$SecrecyServiceWrapper;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/secrecy/SecrecyService$SecrecyServiceWrapper;-><init>(Lcom/android/server/secrecy/SecrecyService;Lcom/android/server/secrecy/SecrecyService$zta;)V

    const-string v1, "secrecy"

    invoke-static {v1, p1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-class p1, Landroid/secrecy/SecrecyManagerInternal;

    new-instance v1, Lcom/android/server/secrecy/SecrecyService$sis;

    invoke-direct {v1, p0, v0}, Lcom/android/server/secrecy/SecrecyService$sis;-><init>(Lcom/android/server/secrecy/SecrecyService;Lcom/android/server/secrecy/SecrecyService$zta;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method
