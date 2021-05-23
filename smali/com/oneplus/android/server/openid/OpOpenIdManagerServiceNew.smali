.class public Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/android/server/openid/IOpOpenIdManagerServiceNew;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew$you;
    }
.end annotation


# static fields
.field protected static final bio:Z

.field private static final dma:Landroid/net/Uri;

.field private static final gck:Ljava/lang/String; = "oneplus_openid_toggle"

.field protected static final igw:Ljava/lang/String; = "OpenIdManager"

.field public static final qbh:I = 0x1

.field private static final wtn:Ljava/lang/String; = "com.heytap.openid"

.field private static final ywr:I = 0x1


# instance fields
.field private cno:Z

.field private kth:Landroid/os/IBinder;

.field private rtg:Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew$you;

.field private sis:Landroid/os/Handler;

.field private ssp:Lcom/oneplus/android/server/openid/ssp;

.field private tsu:Lcom/oneplus/android/server/openid/rtg;

.field private you:Landroid/os/Handler;

.field private zta:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;->bio:Z

    const-string v0, "oneplus_openid_toggle"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;->dma:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;->cno:Z

    new-instance v0, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew$2;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew$2;-><init>(Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;)V

    iput-object v0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;->kth:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;->zta:Landroid/content/Context;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;->you:Landroid/os/Handler;

    new-instance p1, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew$zta;

    iget-object v0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;->you:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew$zta;-><init>(Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;->sis:Landroid/os/Handler;

    new-instance p1, Lcom/oneplus/android/server/openid/rtg;

    iget-object v0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;->zta:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;->sis:Landroid/os/Handler;

    invoke-direct {p1, v0, v1}, Lcom/oneplus/android/server/openid/rtg;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;->tsu:Lcom/oneplus/android/server/openid/rtg;

    new-instance p1, Lcom/oneplus/android/server/openid/ssp;

    iget-object v0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;->zta:Landroid/content/Context;

    new-instance v1, Lcom/oneplus/android/server/openid/you;

    invoke-direct {v1, p0}, Lcom/oneplus/android/server/openid/you;-><init>(Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;)V

    invoke-direct {p1, v0, v1}, Lcom/oneplus/android/server/openid/ssp;-><init>(Landroid/content/Context;Lcom/oneplus/android/server/openid/ssp$zta;)V

    iput-object p1, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;->ssp:Lcom/oneplus/android/server/openid/ssp;

    new-instance p1, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew$you;

    iget-object v0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;->you:Landroid/os/Handler;

    invoke-direct {p1, p0, v0}, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew$you;-><init>(Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;->rtg:Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew$you;

    return-void
.end method

.method private bio(Ljava/lang/String;ILjava/lang/String;)V
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

    invoke-static {v0}, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;->igw(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;->tsu:Lcom/oneplus/android/server/openid/rtg;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/android/server/openid/rtg;->kth(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic cno()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;->dma:Landroid/net/Uri;

    return-object v0
.end method

.method private synthetic gck(Z)V
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

    iput-boolean p1, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;->cno:Z

    return-void
.end method

.method private static igw(Ljava/lang/String;)V
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

.method static synthetic kth(Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;->oif(I)V

    return-void
.end method

.method private oif(I)V
    .locals 7

    iget-object v0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;->zta:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "oneplus_openid_toggle"

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq p1, v4, :cond_1

    iget-object p0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;->tsu:Lcom/oneplus/android/server/openid/rtg;

    invoke-static {v0, v2, v3, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_0

    move v1, v3

    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/oneplus/android/server/openid/rtg;->e(ZI)V

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;->zta:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget-object v5, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;->tsu:Lcom/oneplus/android/server/openid/rtg;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0, v2, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v3, :cond_2

    move v6, v3

    goto :goto_1

    :cond_2
    move v6, v1

    :goto_1
    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6, v4}, Lcom/oneplus/android/server/openid/rtg;->e(ZI)V

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method static synthetic rtg(Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;)Lcom/oneplus/android/server/openid/ssp;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;->ssp:Lcom/oneplus/android/server/openid/ssp;

    return-object p0
.end method

.method static synthetic sis(Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;->wtn(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic ssp(Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;->zta:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic tsu(Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;->bio(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private wtn(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
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

    invoke-static {v0}, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;->igw(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;->tsu:Lcom/oneplus/android/server/openid/rtg;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/android/server/openid/rtg;->gwm(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic you(Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;->cno:Z

    return p0
.end method

.method static synthetic zta(Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;)Lcom/oneplus/android/server/openid/rtg;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;->tsu:Lcom/oneplus/android/server/openid/rtg;

    return-object p0
.end method


# virtual methods
.method public synthetic dma(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;->gck(Z)V

    return-void
.end method

.method public isOpenIdProvider(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "com.heytap.openid"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public qbh()V
    .locals 0

    return-void
.end method

.method public ywr()V
    .locals 3

    sget-boolean v0, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;->bio:Z

    const-string v1, "OpenIdManager"

    if-eqz v0, :cond_0

    const-string v0, "OpOpenIdManagerServiceNew, onBootComplete"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;->tsu:Lcom/oneplus/android/server/openid/rtg;

    const-string v2, "MD5"

    invoke-virtual {v0, v2}, Lcom/oneplus/android/server/openid/rtg;->hmo(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;->rtg:Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew$you;

    invoke-virtual {v0}, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew$you;->zta()V

    :try_start_0
    sget-boolean v0, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;->bio:Z

    if-eqz v0, :cond_1

    const-string v0, "Start openidnew service"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v0, "openidnew"

    iget-object p0, p0, Lcom/oneplus/android/server/openid/OpOpenIdManagerServiceNew;->kth:Landroid/os/IBinder;

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "Failed to start openidnew service!"

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
