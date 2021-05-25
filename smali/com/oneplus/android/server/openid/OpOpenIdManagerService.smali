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
.field protected static final bio:Ljava/lang/String; = "OpenIdManager"

.field private static final dma:I = 0x1

.field private static final gck:Landroid/net/Uri;

.field private static final igw:Ljava/lang/String; = "com.heytap.openid"

.field protected static final kth:Z

.field private static final wtn:Ljava/lang/String; = "oneplus_openid_toggle"


# instance fields
.field private cno:Landroid/os/IBinder;

.field private rtg:Lcom/oneplus/android/server/openid/tsu;

.field private sis:Lcom/oneplus/android/server/openid/OpOpenIdManagerService$zta;

.field private ssp:Z

.field private tsu:Lcom/oneplus/android/server/openid/sis;

.field private you:Landroid/os/Handler;

.field private zta:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->kth:Z

    const-string v0, "oneplus_openid_toggle"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->gck:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->ssp:Z

    new-instance v0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService$1;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/openid/OpOpenIdManagerService$1;-><init>(Lcom/oneplus/android/server/openid/OpOpenIdManagerService;)V

    iput-object v0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->cno:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->zta:Landroid/content/Context;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->you:Landroid/os/Handler;

    new-instance p1, Lcom/oneplus/android/server/openid/sis;

    iget-object v0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->zta:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/oneplus/android/server/openid/sis;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->tsu:Lcom/oneplus/android/server/openid/sis;

    new-instance p1, Lcom/oneplus/android/server/openid/tsu;

    iget-object v0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->zta:Landroid/content/Context;

    new-instance v1, Lcom/oneplus/android/server/openid/zta;

    invoke-direct {v1, p0}, Lcom/oneplus/android/server/openid/zta;-><init>(Lcom/oneplus/android/server/openid/OpOpenIdManagerService;)V

    invoke-direct {p1, v0, v1}, Lcom/oneplus/android/server/openid/tsu;-><init>(Landroid/content/Context;Lcom/oneplus/android/server/openid/tsu$zta;)V

    iput-object p1, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->rtg:Lcom/oneplus/android/server/openid/tsu;

    new-instance p1, Lcom/oneplus/android/server/openid/OpOpenIdManagerService$zta;

    iget-object v0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->you:Landroid/os/Handler;

    invoke-direct {p1, p0, v0}, Lcom/oneplus/android/server/openid/OpOpenIdManagerService$zta;-><init>(Lcom/oneplus/android/server/openid/OpOpenIdManagerService;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->sis:Lcom/oneplus/android/server/openid/OpOpenIdManagerService$zta;

    return-void
.end method

.method private static bio(Ljava/lang/String;)V
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

.method static synthetic cno()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->gck:Landroid/net/Uri;

    return-object v0
.end method

.method private igw(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
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

    invoke-static {v0}, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->bio(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->tsu:Lcom/oneplus/android/server/openid/sis;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/android/server/openid/sis;->hmo(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private kth(Ljava/lang/String;ILjava/lang/String;)V
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

    invoke-static {v0}, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->bio(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->tsu:Lcom/oneplus/android/server/openid/sis;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/android/server/openid/sis;->wtn(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic rtg(Lcom/oneplus/android/server/openid/OpOpenIdManagerService;)Lcom/oneplus/android/server/openid/tsu;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->rtg:Lcom/oneplus/android/server/openid/tsu;

    return-object p0
.end method

.method static synthetic sis(Lcom/oneplus/android/server/openid/OpOpenIdManagerService;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->kth(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic ssp(Lcom/oneplus/android/server/openid/OpOpenIdManagerService;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->zta:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic tsu(Lcom/oneplus/android/server/openid/OpOpenIdManagerService;)Lcom/oneplus/android/server/openid/sis;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->tsu:Lcom/oneplus/android/server/openid/sis;

    return-object p0
.end method

.method private synthetic wtn(Z)V
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

    iput-boolean p1, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->ssp:Z

    return-void
.end method

.method static synthetic you(Lcom/oneplus/android/server/openid/OpOpenIdManagerService;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->igw(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zta(Lcom/oneplus/android/server/openid/OpOpenIdManagerService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->ssp:Z

    return p0
.end method


# virtual methods
.method public dma()V
    .locals 4

    const-string v0, "OpenIdManager"

    iget-object v1, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->tsu:Lcom/oneplus/android/server/openid/sis;

    invoke-virtual {v1}, Lcom/oneplus/android/server/openid/sis;->vju()V

    iget-object v1, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->rtg:Lcom/oneplus/android/server/openid/tsu;

    invoke-virtual {v1}, Lcom/oneplus/android/server/openid/tsu;->tsu()V

    iget-object v1, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->sis:Lcom/oneplus/android/server/openid/OpOpenIdManagerService$zta;

    invoke-virtual {v1}, Lcom/oneplus/android/server/openid/OpOpenIdManagerService$zta;->zta()V

    iget-object v1, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->tsu:Lcom/oneplus/android/server/openid/sis;

    invoke-virtual {v1}, Lcom/oneplus/android/server/openid/sis;->les()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x135

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    :try_start_0
    sget-boolean v1, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->kth:Z

    if-eqz v1, :cond_1

    const-string v1, "Start openid service"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v1, "openid"

    iget-object p0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->cno:Landroid/os/IBinder;

    invoke-static {v1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v1, "Failed to start openid service!"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic gck(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/openid/OpOpenIdManagerService;->wtn(Z)V

    return-void
.end method

.method public isOpenIdProvider(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "com.heytap.openid"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public ywr()V
    .locals 0

    return-void
.end method
