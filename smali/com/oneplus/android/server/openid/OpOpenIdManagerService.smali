.class public Lcom/oneplus/android/server/openid/OpOpenIdManagerService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/android/server/openid/IOpOpenIdManagerService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/openid/OpOpenIdManagerService$zta;
    }
.end annotation


# static fields
.field private static final bvj:I = 0x1

.field protected static final dma:Ljava/lang/String; = "OpenIdManager"

.field protected static final gck:Z

.field private static final gwm:[I

.field private static final ibl:I = 0x18

.field private static final oif:Landroid/net/Uri;

.field private static final qbh:Ljava/lang/String; = "oneplus_openid_toggle"

.field private static final ugm:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ywr:Ljava/lang/String; = "com.heytap.openid"


# instance fields
.field private bio:Z

.field private cno:Lcom/oneplus/android/server/openid/tsu;

.field private igw:Ljava/lang/String;

.field private kth:Lcom/oneplus/android/server/openid/ssp;

.field private rtg:Landroid/os/Handler;

.field private final sis:[Ljava/lang/String;

.field private ssp:Lcom/oneplus/android/server/openid/OpOpenIdManagerService$zta;

.field private tsu:Landroid/content/Context;

.field private wtn:Landroid/os/IBinder;

.field private you:Ljava/lang/String;

.field private zta:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->gck:Z

    const-string v0, "oneplus_openid_toggle"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->oif:Landroid/net/Uri;

    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->gwm:[I

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->ugm:Landroid/util/SparseArray;

    const/4 v2, 0x0

    const-string v3, "default"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->ugm:Landroid/util/SparseArray;

    const/4 v2, 0x1

    const-string v3, "global"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->ugm:Landroid/util/SparseArray;

    const/4 v2, 0x2

    const-string v3, "china"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->ugm:Landroid/util/SparseArray;

    const-string v2, "india"

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->ugm:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string v2, "europe"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->ugm:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const-string v2, "northamerica"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->ugm:Landroid/util/SparseArray;

    const/16 v1, 0x65

    const-string v2, "tmo"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->ugm:Landroid/util/SparseArray;

    const/16 v1, 0x66

    const-string v2, "spint"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->ugm:Landroid/util/SparseArray;

    const/16 v1, 0x67

    const-string v2, "verizon"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->ugm:Landroid/util/SparseArray;

    const/16 v1, 0x68

    const-string v2, "att"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->ugm:Landroid/util/SparseArray;

    const/16 v1, 0x69

    const-string v2, "visible"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x2
        0x3
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->zta:I

    const-string v0, "NULL"

    iput-object v0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->you:Ljava/lang/String;

    const-string v0, "enchilada"

    const-string v1, "fajita"

    const-string v2, "guacamoleb"

    const-string v3, "guacamole"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->sis:[Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->bio:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->igw:Ljava/lang/String;

    new-instance v0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService$1;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/openid/OpOpenIdManagerService$1;-><init>(Lcom/oneplus/android/server/openid/OpOpenIdManagerService;)V

    iput-object v0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->wtn:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->tsu:Landroid/content/Context;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->rtg:Landroid/os/Handler;

    new-instance p1, Lcom/oneplus/android/server/openid/tsu;

    iget-object v0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->tsu:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/oneplus/android/server/openid/tsu;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->cno:Lcom/oneplus/android/server/openid/tsu;

    new-instance p1, Lcom/oneplus/android/server/openid/ssp;

    iget-object v0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->tsu:Landroid/content/Context;

    new-instance v1, Lcom/oneplus/android/server/openid/zta;

    invoke-direct {v1, p0}, Lcom/oneplus/android/server/openid/zta;-><init>(Lcom/oneplus/android/server/openid/OpOpenIdManagerService;)V

    invoke-direct {p1, v0, v1}, Lcom/oneplus/android/server/openid/ssp;-><init>(Landroid/content/Context;Lcom/oneplus/android/server/openid/ssp$zta;)V

    iput-object p1, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->kth:Lcom/oneplus/android/server/openid/ssp;

    new-instance p1, Lcom/oneplus/android/server/openid/OpOpenIdManagerService$zta;

    iget-object v0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->rtg:Landroid/os/Handler;

    invoke-direct {p1, p0, v0}, Lcom/oneplus/android/server/openid/OpOpenIdManagerService$zta;-><init>(Lcom/oneplus/android/server/openid/OpOpenIdManagerService;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->ssp:Lcom/oneplus/android/server/openid/OpOpenIdManagerService$zta;

    return-void
.end method

.method static synthetic bio()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->oif:Landroid/net/Uri;

    return-object v0
.end method

.method private synthetic bvj(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Feature state changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "enabled"

    goto :goto_0

    :cond_0
    const-string v1, "disabled"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpenIdManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->bio:Z

    return-void
.end method

.method static synthetic cno(Lcom/oneplus/android/server/openid/OpOpenIdManagerService;)Lcom/oneplus/android/server/openid/ssp;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->kth:Lcom/oneplus/android/server/openid/ssp;

    return-object p0
.end method

.method private dma(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get openid: package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpenIdManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Only the system can request to get openid"

    invoke-static {v0}, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->gck(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->cno:Lcom/oneplus/android/server/openid/tsu;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/android/server/openid/tsu;->hmo(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static gck(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic kth(Lcom/oneplus/android/server/openid/OpOpenIdManagerService;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->tsu:Landroid/content/Context;

    return-object p0
.end method

.method private qbh()V
    .locals 4

    const-string v0, "OpenIdManager"

    :try_start_0
    invoke-direct {p0}, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->ywr()Lcom/oneplus/os/IParamService;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0x18

    invoke-interface {v1, v2}, Lcom/oneplus/os/IParamService;->getParamIntSYNC(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->zta:I

    sget-object v2, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->ugm:Landroid/util/SparseArray;

    const-string v3, "NULL"

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->you:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Custom flag value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->zta:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->you:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while getting build flag value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic rtg(Lcom/oneplus/android/server/openid/OpOpenIdManagerService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->you:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic sis(Lcom/oneplus/android/server/openid/OpOpenIdManagerService;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->wtn(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic ssp(Lcom/oneplus/android/server/openid/OpOpenIdManagerService;)Lcom/oneplus/android/server/openid/tsu;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->cno:Lcom/oneplus/android/server/openid/tsu;

    return-object p0
.end method

.method static synthetic tsu(Lcom/oneplus/android/server/openid/OpOpenIdManagerService;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->zta:I

    return p0
.end method

.method private wtn(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clearing openid: package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpenIdManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Only the system can request to clear openid"

    invoke-static {v0}, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->gck(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->cno:Lcom/oneplus/android/server/openid/tsu;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/android/server/openid/tsu;->wtn(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic you(Lcom/oneplus/android/server/openid/OpOpenIdManagerService;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->dma(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private ywr()Lcom/oneplus/os/IParamService;
    .locals 3

    const-string p0, "OpenIdManager"

    :try_start_0
    const-string v0, "ParamService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "param service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/oneplus/os/IParamService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/os/IParamService;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while getting param service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic zta(Lcom/oneplus/android/server/openid/OpOpenIdManagerService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->bio:Z

    return p0
.end method


# virtual methods
.method public gwm()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->gck:Z

    const-string v1, "OpenIdManager"

    if-eqz v0, :cond_0

    const-string v0, "OpOpenIdManagerService, onBootComplete"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->igw()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "OpOpenIdManagerService, init BuildFlag only for old project"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->qbh()V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->cno:Lcom/oneplus/android/server/openid/tsu;

    invoke-virtual {v0}, Lcom/oneplus/android/server/openid/tsu;->vju()V

    iget-object v0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->kth:Lcom/oneplus/android/server/openid/ssp;

    invoke-virtual {v0}, Lcom/oneplus/android/server/openid/ssp;->tsu()V

    iget-object v0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->ssp:Lcom/oneplus/android/server/openid/OpOpenIdManagerService$zta;

    invoke-virtual {v0}, Lcom/oneplus/android/server/openid/OpOpenIdManagerService$zta;->zta()V

    invoke-virtual {p0}, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->igw()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->igw()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->oif()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    :try_start_0
    sget-boolean v0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->gck:Z

    if-eqz v0, :cond_3

    const-string v0, "Start openid service"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v0, "openid"

    iget-object p0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->wtn:Landroid/os/IBinder;

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "Failed to start openid service!"

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_0
    return-void
.end method

.method public synthetic ibl(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->bvj(Z)V

    return-void
.end method

.method public igw()Z
    .locals 3

    iget-object v0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->igw:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_0

    const-string v0, "ro.boot.project_codename"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->igw:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkOldProjectOrNot:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->sis:[Ljava/lang/String;

    iget-object v2, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->igw:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " projectName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->igw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpenIdManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->sis:[Ljava/lang/String;

    iget-object p0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->igw:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isOpenIdProvider(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "com.heytap.openid"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public oif()Z
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->gwm:[I

    iget p0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->zta:I

    invoke-static {v0, p0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p0

    return p0
.end method

.method public ugm()V
    .locals 0

    return-void
.end method
